unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs,
  FireDAC.Phys.SQLiteWrapper.Stat, FireDAC.VCLUI.Wait, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls,
  Vcl.StdCtrls, Vcl.Mask, FireDAC.Phys.MySQLDef, FireDAC.Phys.MySQL,
  Data.Bind.EngExt, Vcl.Bind.DBEngExt, System.Rtti, System.Bindings.Outputs,
  Vcl.Bind.Editors, Data.Bind.Components, Data.Bind.DBScope, Vcl.ComCtrls,
  Vcl.Tabs;

type
  TForm1 = class(TForm)
    FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink;
    DblivrariaConnection: TFDConnection;
    DataSource1: TDataSource;
    TbalunoTable: TFDQuery;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    DBGrid1: TDBGrid;
    BindingsList1: TBindingsList;
    DBGrid2: TDBGrid;
    DataSource2: TDataSource;
    FDQuery1: TFDQuery;
    DBNavigator1: TDBNavigator;
    DBGrid3: TDBGrid;
    DBNavigator3: TDBNavigator;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    BindSourceDB1: TBindSourceDB;
    LinkControlToField2: TLinkControlToField;
    LinkControlToField1: TLinkControlToField;
    DBGrid4: TDBGrid;
    Label5: TLabel;
    DBNavigator4: TDBNavigator;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    BindSourceDB2: TBindSourceDB;
    LinkPropertyToFieldCaption: TLinkPropertyToField;
    LinkPropertyToFieldCaption2: TLinkPropertyToField;
    LinkPropertyToFieldCaption3: TLinkPropertyToField;
    Label14: TLabel;
    Label15: TLabel;
    Button1: TButton;
    Edit4: TEdit;
    SpbuscaalunoProc: TFDStoredProc;
    SpbuscaalunoProcNuMatricula: TIntegerField;
    SpbuscaalunoProcNoAluno: TStringField;
    SpbuscaalunoProcTxIngresso: TStringField;
    SpbuscaalunoProcNoCurso: TStringField;
    DataSource3: TDataSource;
    TbalunoTableNuMatricula: TIntegerField;
    TbalunoTableNoAluno: TStringField;
    TbalunoTableTxIngresso: TStringField;
    TbalunoTableNoCurso: TStringField;
    FDQuery2: TFDQuery;
    FDQuery1NuMatricula: TFDAutoIncField;
    FDQuery1NoAluno: TStringField;
    FDQuery1TxIngresso: TStringField;
    FDQuery1IdCurso: TShortintField;
    FDQuery1NomeCurso: TStringField;
    DBLookupComboBox1: TDBLookupComboBox;
    procedure Button1Click(Sender: TObject);
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
  SpbuscaalunoProc.Close;
  SpbuscaalunoProc.ParamByName('nome1').AsString := Edit4.Text + '%';
  SpbuscaalunoProc.Open;
end;

end.
