unit Main.Form;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Menus;

type
  TForm1 = class(TForm)
    Button1: TButton;
    MainMenu1: TMainMenu;
    barLanguage: TMenuItem;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  Resources,
  LocOnFly;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  showmessage(rsHello);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  LocalizerOnFly.PopulateMenu(barLanguage, 0, False);
end;

end.
