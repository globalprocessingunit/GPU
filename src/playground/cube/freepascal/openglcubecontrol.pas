unit openglcubecontrol;

{$mode objfpc}{$H+}

interface

uses
  Classes, Controls, SysUtils, GL, GLU, arcball, OpenGLContext, plotcubes;

  type
    TOpenGLCubeControl = class(TOpenGLControl)
       public
         constructor Create(obj : TComponent);
         procedure setRotate(rotate : Boolean);

         procedure openGLCubeControlResize(Sender: TObject);
         procedure openGLCubeControlPaint(Sender: TObject);

         procedure MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
         procedure MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
         procedure MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);

       private

         theBall : TArcBall;
         cube_rotationx: GLFloat;
         cube_rotationy: GLFloat;
         cube_rotationz: GLFloat;
         _angle  : Double;
         _rotate : Boolean;
         glCube  : TGLCube;
   end;

implementation

constructor TOpenGLCubeControl.Create(obj : TComponent);
begin
  inherited Create(obj);

  theBall := TArcBall.Create;
  theBall.Init(256);

  _angle := 0;
  _rotate := true;

  onPaint := @openGLCubeControlPaint;
  onResize := @openGLCubeControlResize;
  onMouseDown := @MouseDown;
  onMouseUP := @MouseUp;
  onMouseMove := @MouseMove;

  glCube := TGLCube.Create();
end;

procedure TOpenGLCubeControl.setRotate(rotate : Boolean);
begin
  _rotate := rotate;
end;



procedure TOpenGLCubeControl.MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbLeft then
 	begin
         theBall.BeginDrag;
 	 Paint;
 	end;
end;

procedure TOpenGLCubeControl.MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  theBall.MouseMove(X, Y);
  Paint;
end;

procedure TOpenGLCubeControl.MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbLeft then
 	begin
 	 theBall.EndDrag;
 	 Paint;
 	end;
end;

procedure TOpenGLCubeControl.OpenGLCubeControlPaint(Sender: TObject);
var
  sphere : PGLUquadric;
  Tex1, Tex2: GLuint;

begin
  if Sender=nil then ;

  glClear(GL_COLOR_BUFFER_BIT or GL_DEPTH_BUFFER_BIT);

  glMatrixMode(GL_PROJECTION);
  glLoadIdentity();
  glOrtho(-2, 2, -1.5, 1.5, -2, 2);
  glMatrixMode(GL_MODELVIEW);

  glLoadIdentity();
  glLoadMatrixf(@theBall.Matrix);
  if _rotate then glRotatef(_angle, 0.0, 1.0, 0.0);

  //glEnable(GL_BLEND);
  glCube.plotCube;
  //glDisable(GL_BLEND);


  SwapBuffers;
  if _rotate then
     begin
       _angle := _angle + 1;
       if (_angle>359) then _angle := 0;
     end;
end;

procedure TOpenGLCubeControl.openGLCubeControlResize(Sender: TObject);
begin
  if Sender=nil then ;
  if Height <= 0 then exit;
end;


end.
