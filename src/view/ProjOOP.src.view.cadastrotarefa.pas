unit ProjOOP.src.view.cadastrotarefa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, System.Generics.Collections,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  ProjOOP.src.model.tarefa;

type
  TfrmCadastroTarefa = class(TForm)
    pnlTela: TPanel;
    pnlBotoes: TPanel;
    btnNovo: TButton;
    btnCancelar: TButton;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    edtTitulo: TEdit;
    memoDescricao: TMemo;
    procedure btnCancelarClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
  private
    { Private declarations }
  public
    FTarefas: TObjectList<TTarefa>;
    constructor Create(AOwner: TComponent; aTarefa: TObjectList<TTarefa>);
  end;

var
  frmCadastroTarefa: TfrmCadastroTarefa;

implementation

{$R *.dfm}

procedure TfrmCadastroTarefa.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadastroTarefa.btnNovoClick(Sender: TObject);
var
ltarefa: TTarefa;
begin
  ltarefa.Create;
  ltarefa.id := FTarefas.Count + 1;
  ltarefa.id_usuario := 1;
  ltarefa.titulo := edtTitulo.Text;
  ltarefa.descricao := memoDescricao.Text;
  FTarefas.Add(ltarefa);
  edtTitulo.Clear;
  memoDescricao.Clear;
  ltarefa.Free;
end;

constructor TfrmCadastroTarefa.Create(AOwner: TComponent;
  aTarefa: TObjectList<TTarefa>);
begin
  inherited Create(AOwner);
  FTarefas := aTarefa;
end;

end.
