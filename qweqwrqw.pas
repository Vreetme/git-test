unit Unit19;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IniFiles, StdCtrls, jpeg, ExtCtrls, DateUtils;

type
  TForm19 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    Button1: TButton;
    Button4: TButton;
    Label4: TLabel;
    Label5: TLabel;
    Edit4: TEdit;
    Edit5: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    ListBox1: TListBox;
    Label8: TLabel;
    Button2: TButton;
    Button3: TButton;
    Label9: TLabel;
    Edit6: TEdit;
    Image1: TImage;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Label10: TLabel;
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form19: TForm19;
   INI:TIniFile;
   dt,dd:TDateTime;
   qw,er, tt,ty :string;
   cc:integer;

implementation

{$R *.dfm}

procedure TForm19.FormShow(Sender: TObject);
begin
INI:=TIniFile.Create(ExtractFilePath(ParamStr(0))+ '\Users.ini');
INI.ReadSections(Listbox1.Items);
//INI.ReadString(Sel,'Password','error')
ini.free;
end;

procedure TForm19.Button2Click(Sender: TObject);
begin
INI:=TIniFile.Create(ExtractFilePath(ParamStr(0))+ '\Users.ini');
INI.EraseSection(ListBox1.Items[ListBox1.ItemIndex]);
{
  Sel:=Edit3.text;													//ïðèñâàèâàåì ëîãèí
 if INI.SectionExists(Sel) then										//åñëè òàêîé çàðåãàí òî...
 begin
   if Edit4.text = INI.ReadString(Sel,'Password','error') then		//åñëè ïàðîëü ïðàâèëüíûé òî...
      begin   }
INI.ReadSections(Listbox1.Items);
ini.free;
end;

procedure TForm19.Button1Click(Sender: TObject);
begin
dd:=0;
if (Edit1.Text = '') or (Edit2.Text = '')
then ShowMessage('Çàïîëíèòå ïóñòîå ïîëå') else
INI:=TIniFile.Create(ExtractFilePath(ParamStr(0))+ '\Users.ini');
Ini.WriteString(edit1.Text,'Password',edit2.text);
ini.WriteString(edit1.Text,'Time',edit3.text);
dd:=now;
INI.ReadSections(Listbox1.Items);
ini.WriteDateTime(edit1.Text,'DateTime',dd);
ini.free;
end;

procedure TForm19.Button3Click(Sender: TObject);
begin
INI:=TIniFile.Create(ExtractFilePath(ParamStr(0))+ '\Users.ini');
INI.ReadSections(Listbox1.Items);
ini.free;
end;

procedure TForm19.Button4Click(Sender: TObject);
begin
dd:=0;
INI:=TIniFile.Create(ExtractFilePath(ParamStr(0))+ '\Users.ini');
if (Edit4.Text = '') or (Edit5.Text = '')
then ShowMessage('Çàïîëíèòå ïóñòîå ïîëå') else
  begin
if INI.SectionExists(ListBox1.Items[ListBox1.ItemIndex]) then
qw:=ListBox1.Items[ListBox1.ItemIndex];
ty:=INI.ReadString(ListBox1.Items[ListBox1.ItemIndex],'Password',ty);
er:=qw;
//edit4.text:=er;
//edit5.Text:=ty;
INI.EraseSection(qw);
INI.WriteString(edit4.text,'Password',edit5.text);
ini.WriteString(edit4.Text,'Time',edit6.text);
dd:=now;
ini.WriteDateTime(edit4.Text,'DateTime',dd);
INI.ReadSections(Listbox1.Items);
ini.free;
  end;
end;

procedure TForm19.ListBox1Click(Sender: TObject);
begin
INI:=TIniFile.Create(ExtractFilePath(ParamStr(0))+ '\Users.ini');
edit6.Clear;
edit4.Text:=ListBox1.Items[ListBox1.ItemIndex];
edit5.Text:=INI.ReadString(ListBox1.Items[ListBox1.ItemIndex],'Password',edit5.text);
edit6.Text:=INI.ReadString(ListBox1.Items[ListBox1.ItemIndex],'Time',edit6.text);
tt:=intToStr(MinutesBetween(INI.ReadDateTime(ListBox1.Items[ListBox1.ItemIndex],'DateTime',now),now));
ty:=INI.ReadString(ListBox1.Items[ListBox1.ItemIndex],'Time',ty);
cc:=strtoint(ty)-strtoint(tt);
begin
  if cc<0
  then label10.Caption:=('Ïàðîëü ïðîñðî÷åí íà ' + inttostr(cc) +' ìèíóò')
  else label10.Caption:=('Ñðîê äåéñòâèÿ ïàðîëÿ '+ inttostr(cc) +' ìèíóò');
end;
ini.free;
end;

procedure TForm19.Button6Click(Sender: TObject);
begin
edit3.text:='1440';
end;

procedure TForm19.Button5Click(Sender: TObject);
begin
edit3.Text:='60';
end;

procedure TForm19.Button7Click(Sender: TObject);
begin
edit6.Text:='60';
end;

procedure TForm19.Button8Click(Sender: TObject);
begin
edit6.text:='1440';
end;

end.