unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, StdCtrls, RpCon, RpConDS, RpBase,
  RpSystem, RpDefine, RpRave;

type
  TForm1 = class(TForm)
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Button1: TButton;
    Button2: TButton;
    RvProject1: TRvProject;
    RvSystem1: TRvSystem;
    RvDataSetConnection1: TRvDataSetConnection;
    Button3: TButton;
    Edit5: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
 
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin

ADOQuery1.Close; ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('INSERT INTO TABLO1(ADI,SOYADI,KULUP,OYNANAN_BAHIS) values(:A,:S,:K,:O)');
ADOQuery1.Parameters.ParamByName('A').Value:=trim(Edit1.text);
ADOQuery1.Parameters.ParamByName('S').Value:=trim(Edit2.text);
ADOQuery1.Parameters.ParamByName('K').Value:=trim(Edit3.text);
ADOQuery1.Parameters.ParamByName('O').Value:=trim(Edit4.text);
ADOQuery1.ExecSQL;

ADOQuery1.SQL.text:='SELECT * FROM TABLO1';
ADOQuery1.Open;
Edit1.clear;    Edit2.clear;  Edit3.clear;  Edit4.clear;

end;
 procedure TForm1.DBGrid1CellClick(Column: TColumn);
begin
edit5.Text:=ADOQuery1['Kimlik'];
Edit1.text:=ADOQuery1['ADI'];
Edit2.text:=ADOQuery1['SOYADI'];
Edit3.text:=ADOQuery1['KULUP']  ;
Edit4.text:=ADOQuery1['OYNANAN_BAHIS'];


end;

procedure TForm1.Button3Click(Sender: TObject);
begin
if(DBGrid1.SelectedRows.Count<1)then
ShowMessage('SÝLÝNECEK VERÝYÝ SEÇÝNÝZ')
else begin ADOQuery1.Close;
ADOQuery1.SQL.clear;
ADOQuery1.SQL.Add('DELETE FROM TABLO1 TABLO1 WHERE kimlik=(R)');
ADOQuery1.Parameters.ParamByName('R').Value:=trim(Edit5.text);
ADOQuery1.ExecSQL;

ADOQuery1.SQL.text:='SELECT * FROM  TABLO1';
ADOQuery1.Open;
end;
end;
procedure TForm1.Button2Click(Sender: TObject);
begin
RvProject1.Execute;
end;

end.




