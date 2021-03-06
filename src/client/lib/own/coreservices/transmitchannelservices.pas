unit transmitchannelservices;

interface

uses coreconfigurations, coreservices, synacode, dbtablemanagers,
     channeltables, servermanagers, loggers, identities,
     SysUtils, Classes;

type TTransmitChannelServiceThread = class(TTransmitServiceThread)
 public
  constructor Create(var servMan : TServerManager; proxy, port : String; var logger : TLogger;
                     var conf : TCoreConfiguration; var tableman : TDbTableManager;
                     channame, chantype : String; content : AnsiString);
 protected
  procedure Execute; override;

 private
    content_   : AnsiString;
    channame_,
    chantype_  : String;
    function  getPHPArguments() : AnsiString;
    procedure insertTransmission();
end;


implementation

constructor TTransmitChannelServiceThread.Create(var servMan : TServerManager;
                     proxy, port : String; var logger : TLogger;
                     var conf : TCoreConfiguration; var tableman : TDbTableManager;
                     channame, chantype : String; content : AnsiString);
begin
 inherited Create(servMan, proxy, port, logger, '[TTransmitChannelServiceThread]> ', conf, tableman);
 content_  := content;
 channame_ := channame;
 chantype_ := chantype;
end;

procedure TTransmitChannelServiceThread.insertTransmission();
var row : TDbChannelRow;
begin
  row.content           := content_;
  row.server_id         := srv_.id;
  row.externalid        := -1;
  row.nodename          := myGPUId.nodename;
  row.nodeid            := myGPUId.NodeId;
  row.user              := myUserid.username;
  row.channame          := channame_;
  row.chantype          := chantype_;
  row.create_dt         := Now();
  row.usertime_dt       := Now();
  tableman_.getChannelTable().insert(row);
  logger_.log(LVL_DEBUG, 'Added message '+IntToStr(row.id)+' to tbchannel table.');
end;

function TTransmitChannelServiceThread.getPHPArguments() : AnsiString;
var rep : AnsiString;
begin
with myGPUID do
 begin
  rep :=     'nodename='+encodeURL(nodename)+'&';
  rep := rep+'nodeid='+encodeURL(nodeid)+'&';
  rep := rep+'user='+encodeURL(myUserid.username)+'&';
  rep := rep+'channame='+encodeURL(channame_)+'&';
  rep := rep+'chantype='+encodeURL(chantype_)+'&';
  rep := rep+'usertime='+encodeURL(FloatToStr(Now))+'&'; //TODO: FloatToStr with formatset
  rep := rep+'content='+encodeURL(content_)+'&';
 end;

 logger_.log(LVL_DEBUG, logHeader_+'Reporting string is:');
 logger_.log(LVL_DEBUG, rep);
 Result := rep;
end;


procedure TTransmitChannelServiceThread.Execute;
begin
 insertTransmission();
 transmit('/channel/report_channel_message.php?'+getPHPArguments(), false);
 finishTransmit('Channel content transmitted :-)');
end;


end.
