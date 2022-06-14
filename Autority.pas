unit Autority;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, DB, ADODB;

type
  TForm3 = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    Label2: TLabel;
    ADOQuery1: TADOQuery;
    DBLookupComboBox1: TDBLookupComboBox;
    DataSource1: TDataSource;
    ADOTable1: TADOTable;
    ADOTable1DSDesigner: TAutoIncField;
    ADOTable1DSDesigner2: TWideStringField;
    ADOTable1DSDesigner3: TWideStringField;
    ADOTable1DSDesigner4: TWideStringField;
    ADOTable1DSDesigner5: TWideStringField;
    ADOTable1DSDesigner6: TDateTimeField;
    ADOTable1HESH: TWideStringField;
    DataSource2: TDataSource;
    ADOTable2: TADOTable;
    AutoIncField1: TAutoIncField;
    WideStringField1: TWideStringField;
    WideStringField2: TWideStringField;
    WideStringField3: TWideStringField;
    WideStringField4: TWideStringField;
    DateTimeField1: TDateTimeField;
    WideStringField5: TWideStringField;
    ADOQuery2: TADOQuery;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
   
  private
    { Private declarations }
  public
  result: integer;
    { Public declarations }
  end;

var

  Form3: TForm3;

implementation
          uses Hash, Unit1;
{$R *.dfm}

procedure TForm3.Button2Click(Sender: TObject);
begin
 if (result=1) then
hide
else
close;
end;

procedure TForm3.Button1Click(Sender: TObject);
begin

 ///////

           if (result=1)   then begin

  with ADOQuery1 do   //  изменяем пароль
  begin
  Close;
  Parameters.ParamByName('n').Value :=DBLookupComboBox1.KeyValue;
                                    //  DBLookupComboBox1.Field;

  Parameters.ParamByName('hesh').Value := Hashf(Edit1.Text+DBLookupComboBox1.Text);//  обновление хеша
  ExecSQL ;

  end;

  Application.MessageBox('Пароль обнавлен', 'Успешно', MB_OK+MB_ICONEXCLAMATION)

 end
 else
 begin
   with ADOQuery2 do
   begin
   Close;
   Parameters.ParamByName('n').Value :=Hashf(Edit1.Text+DBLookupComboBox1.Text);
   Open ;
  end;
  // ADOQuery2.First;
  if  ADOQuery2.Eof then
  begin
  Application.MessageBox('Неверные логин или пароль!', 'Ошибка', MB_OK+MB_ICONEXCLAMATION);
 // Application.Destroy;
  end
  else
  begin
  hide;
  Form1.Label6.Caption:='Пользователь '+DBLookupComboBox1.Text;
  if  (ADOQuery2.Fields[1].AsString='Директор') then
  begin
    Form1.Label6.Caption:=Form1.Label6.Caption+' Директор'   ;
  Form1.DBGrid3.Enabled:=true;
   Form1.DBnavigator2.Enabled:=true;
   Form1.Button2000.Enabled:=true;
  end
  else
  begin
  Form1.Label6.Caption:=Form1.Label6.Caption+' Официант' ;
          Form1.DBnavigator2.Enabled:=false;
   Form1.DBGrid3.Enabled:=false;
  Form1.Button2000.Enabled:=false;
  end;
  Form1.Refresh;
  Form1.show;
  end;
 end;
 //
 //////////
 Edit1.Text:='';
//close;
end;




procedure TForm3.FormCreate(Sender: TObject);
begin
 DBLookupComboBox1.KeyValue:=1;
end;

end.
