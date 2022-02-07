unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, jpeg, ExtCtrls, ComCtrls;

type
  TForm1 = class(TForm)
    img1: TImage;
    lbl1: TLabel;
    lbl2: TLabel;
    ProgressBar1: TProgressBar;
    Timer1: TTimer;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
   
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2, Unit5;

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
begin
form2.Show
end;
procedure TForm1.btn2Click(Sender: TObject);
begin
form1.Close;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
ProgressBar1.Position:=ProgressBar1.Position+27;
If (ProgressBar1.Position=ProgressBar1.Max) Then
begin
form2.Show;
Form1.Hide;
Timer1.Enabled:=False;
Form2.lbl1.Visible:=False;
end;
end;

end.
