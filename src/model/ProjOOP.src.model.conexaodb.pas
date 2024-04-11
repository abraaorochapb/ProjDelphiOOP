unit ProjOOP.src.model.conexaodb;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TdmConexao = class(TDataModule)
    FDConnection1: TFDConnection;
    FDQuery1: TFDQuery;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    function DataSet: TDataSet;
    procedure SQL(aSQL: String);
    procedure execSQL;
    procedure Open;
    procedure StartTransaction;
    procedure commit;
    procedure rollback;
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

{ TDataModule1 }

procedure TdmConexao.DataModuleCreate(Sender: TObject);
begin
  FDConnection1.Connected;
end;

function TdmConexao.DataSet: TDataSet;
begin
  Result := FDQuery1;
end;

procedure TdmConexao.execSQL;
begin
  FDQuery1.ExecSQL;
end;

procedure TdmConexao.Open;
begin
  FDQuery1.Open;
end;

procedure TdmConexao.SQL(aSQL: String);
begin
  FDQuery1.SQL.Clear;
  FDQuery1.SQL.Add(aSQL);
end;

procedure TdmConexao.StartTransaction;
begin
  FDConnection1.StartTransaction;
end;

procedure TdmConexao.rollback;
begin
  FDConnection1.Rollback;
end;

procedure TdmConexao.commit;
begin
  FDConnection1.Commit;
end;

end.
