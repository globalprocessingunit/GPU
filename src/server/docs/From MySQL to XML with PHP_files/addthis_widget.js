/* (c) 2008-2012 AddThis, Inc */
if(!((window._atc||{}).ver)){var _atd="www.addthis.com/",_atr=window.addthis_cdn||"//s9.addthis.com/",_atrc="//c.copyth.is/",_euc=encodeURIComponent,_duc=decodeURIComponent,_atc={dbg:0,rrev:119513,dr:0,ver:250,loc:0,enote:"",cwait:500,bamp:0.25,camp:1,csmp:0.0001,damp:0,famp:0.02,pamp:0.2,tamp:1,lamp:1,plmp:0.00001,vamp:1,vrmp:0,ohmp:0,ltj:1,xamp:1,abf:!!window.addthis_do_ab,qs:0,cdn:0,rsrcs:{bookmark:_atr+"static/r07/bookmark038.html",atimg:_atr+"static/r07/atimg038.html",countercss:_atr+"static/r07/counter012.css",counterIE67css:_atr+"static/r07/counterIE67004.css",counter:_atr+"static/r07/counter014.js",core:_atr+"static/r07/core065.js",wombat:_atr+"static/r07/bar021.js",wombatcss:_atr+"static/r07/bar008.css",qbarcss:_atr+"bannerQuirks.css",fltcss:_atr+"static/r07/floating010.css",barcss:_atr+"static/r07/banner006.css",barjs:_atr+"static/r07/banner004.js",contentcss:_atr+"static/r07/content007.css",contentjs:_atr+"static/r07/content009.js",copythis:_atrc+"static/r07/copythis00C.js",copythiscss:_atrc+"static/r07/copythis00C.css",ssojs:_atr+"static/r07/ssi004.js",ssocss:_atr+"static/r07/ssi004.css",authjs:_atr+"static/r07/auth013.js",peekaboocss:_atr+"static/r07/peekaboo002.css",overlayjs:_atr+"static/r07/overlay005.js",widget32css:_atr+"static/r07/widgetbig052.css",widget20css:_atr+"static/r07/widgetmed003.css",widgetcss:_atr+"static/r07/widget107.css",widgetIE67css:_atr+"static/r07/widgetIE67006.css",widgetpng:"//s9.addthis.com/static/r07/widget051.gif",embed:_atr+"static/r07/embed008.js",embedcss:_atr+"static/r07/embed002.css",link:_atr+"static/r07/link005.html",pinit:_atr+"static/r07/pinit012.html",linkedin:_atr+"static/r07/linkedin020.html",fbshare:_atr+"static/r07/fbshare004.html",tweet:_atr+"static/r07/tweet025.html",menujs:_atr+"static/r07/menu144.js",sh:_atr+"static/r07/sh114.html"}};}(function(){var h,q=window,E=document;var t=(window.location.protocol=="https:"),I,n,A,C=(navigator.userAgent||"unk").toLowerCase(),y=(/firefox/.test(C)),p=(/msie/.test(C)&&!(/opera/.test(C))),c={0:_atr,1:"//ct1.addthis.com/",2:"//ct2.addthis.com/",3:"//ct3.addthis.com/",4:"//ct4.addthis.com/",5:"//ct5.addthis.com/",10:"//ct6a.addthis.com/",11:"//ct6b.addthis.com/",100:"//ct0.addthis.com/"},H={ch:"1",co:"1",cl:"1",is:"1",vn:"1",ar:"1",au:"1",id:"1",ru:"1",tw:"1",tr:"1",th:"1",pe:"1",ph:"1",jp:"1",hk:"1",br:"1",sg:"1",my:"1",kr:"1"},J={},l={},g={gb:"1",nl:"1",no:"1"},o={gr:"1",it:"1",cz:"1",ie:"1",es:"1",pt:"1",ro:"1",ca:"1",pl:"1",be:"1",fr:"1",dk:"1",hr:"1",de:"1",hu:"1",fi:"1",us:"1",ua:"1",mx:"1",se:"1",at:"1"};_atc.cdn=0;if(!window.addthis||window.addthis.nodeType!==h){try{I=window.navigator?(navigator.userLanguage||navigator.language):"";n=I.split("-").pop().toLowerCase();A=I.substring(0,2);if(n.length!=2){n="unk";}var G=Math.random();if(_atr.indexOf("-")>-1){}else{if(window.addthis_cdn!==h){_atc.cdn=window.addthis_cdn;}else{if(A=="en"&&G<0.01){_atc.cdn=10;}else{if(A=="en"&&G<0.02){_atc.cdn=11;}else{if(H[n]){_atc.cdn=5;}else{if(g[n]){_atc.cdn=(y||p)?5:1;}else{if(J[n]){_atc.cdn=(p||(/chrome/.test(C)))?5:1;}else{if(l[n]){_atc.cdn=y?5:1;}else{if(o[n]){_atc.cdn=(p)?5:1;}}}}}}}}}if(_atc.cdn){for(var B in _atc.rsrcs){if(_atc.rsrcs.hasOwnProperty(B)){_atc.rsrcs[B]=_atc.rsrcs[B].replace(_atr,typeof(window.addthis_cdn)==="string"?window.addthis_cdn:c[_atc.cdn]).replace(/live\/([a-z])07/,"live/$107");}}_atr=c[_atc.cdn];}}catch(D){}function b(k,e,d,a){return function(){if(!this.qs){this.qs=0;}_atc.qs++;if(!((this.qs++>0&&a)||_atc.qs>1000)&&window.addthis){window.addthis.plo.push({call:k,args:arguments,ns:e,ctx:d});}};}function z(e){var d=this,a=this.queue=[];this.name=e;this.call=function(){a.push(arguments);};this.call.queuer=this;this.flush=function(s,r){this.flushed=1;for(var k=0;k<a.length;k++){s.apply(r||d,a[k]);}return s;};}window.addthis={ost:0,cache:{},plo:[],links:[],ems:[],timer:{load:((new Date()).getTime())},_Queuer:z,_queueFor:b,data:{getShareCount:b("getShareCount","data")},bar:{show:b("show","bar"),initialize:b("initialize","bar")},login:{initialize:b("initialize","login"),connect:b("connect","login")},configure:function(e){if(!q.addthis_config){q.addthis_config={};}if(!q.addthis_share){q.addthis_share={};}for(var a in e){if(a=="share"&&typeof(e[a])=="object"){for(var d in e[a]){if(e[a].hasOwnProperty(d)){if(!addthis.ost){q.addthis_share[d]=e[a][d];}else{addthis.update("share",d,e[a][d]);}}}}else{if(e.hasOwnProperty(a)){if(!addthis.ost){q.addthis_config[a]=e[a];}else{addthis.update("config",a,e[a]);}}}}},box:b("box"),toaster:b("toaster"),button:b("button"),counter:b("counter"),count:b("count"),toolbox:b("toolbox"),update:b("update"),init:b("init"),ad:{menu:b("menu","ad","ad"),event:b("event","ad"),getPixels:b("getPixels","ad")},util:{getServiceName:b("getServiceName")},ready:b("ready"),addEventListener:b("addEventListener","ed","ed"),removeEventListener:b("removeEventListener","ed","ed"),user:{getID:b("getID","user"),getGeolocation:b("getGeolocation","user",null,true),getPreferredServices:b("getPreferredServices","user",null,true),getServiceShareHistory:b("getServiceShareHistory","user",null,true),ready:b("ready","user"),isReturning:b("isReturning","user"),isOptedOut:b("isOptedOut","user"),isUserOf:b("isUserOf","user"),hasInterest:b("hasInterest","user"),isLocatedIn:b("isLocatedIn","user"),interests:b("getInterests","user"),services:b("getServices","user"),location:b("getLocation","user")},session:{source:b("getSource","session"),isSocial:b("isSocial","session"),isSearch:b("isSearch","session")},_pmh:new z("pmh")};var v=document.getElementsByTagName("script")[0];function f(a){a.style.width=a.style.height="1px";a.style.position="absolute";a.style.zIndex=100000;}if(document.location.href.indexOf(_atr)==-1){var u=document.getElementById("_atssh");if(!u){u=document.createElement("div");u.style.visibility="hidden";u.id="_atssh";f(u);v.parentNode.appendChild(u);}function i(a){if(a&&!(a.data||{})["addthisxf"]){if(addthis._pmh.flushed){_ate.pmh(a);}else{addthis._pmh.call(a);}}}if(window.postMessage){if(window.attachEvent){window.attachEvent("onmessage",i);}else{if(window.addEventListener){window.addEventListener("message",i,false);}}}if(!u.firstChild){var j,C=navigator.userAgent.toLowerCase(),x=Math.floor(Math.random()*1000);j=document.createElement("iframe");j.id="_atssh"+x;j.title="AddThis utility frame";u.appendChild(j);f(j);j.frameborder=j.style.border=0;j.style.top=j.style.left=0;_atc._atf=j;}}var F=document.createElement("script");F.type="text/javascript";F.src=(t?"https:":"http:")+_atc.rsrcs.core;v.parentNode.appendChild(F);var m=10000;setTimeout(function(){if(!window.addthis.timer.core){if(Math.random()<_atc.ohmp){(new Image()).src="//m.addthisedge.com/live/t00/oh.gif?"+Math.floor(Math.random()*4294967295).toString(36)+"&cdn="+_atc.cdn+"&sr="+_atc.ohmp+"&rev="+_atc.rrev+"&to="+m;}if(_atc.cdn!==0){var d=document.createElement("script");d.type="text/javascript";d.src=(t?"https:":"http:")+_atr+"static/r07/core065.js";v.parentNode.appendChild(d);}}},m);}})();