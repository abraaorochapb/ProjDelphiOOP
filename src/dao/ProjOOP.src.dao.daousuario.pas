unit ProjOOP.src.dao.daousuario;

interface

uses
  ProjOOP.src.model.usuario, ProjOOP.src.model.conexaodb;

type
  TDAOUsuario = class
    private
    FConn : TdmConexao;
    public
    constructor Create;
    destructor Destroy; override;
    procedure Inserir(aUsuario: TUsuario);
    procedure Deletar(aUsuario: TUsuario);
    function Editar(aUsuario: TUsuario): TUsuario;
    function LoginUsuario(aEmail, aSenha: String): TUsuario;
  end;

implementation

{ TDAOUsuario }

constructor TDAOUsuario.Create;
begin
  FConn := TdmConexao.Create(nil);

end;

destructor TDAOUsuario.Destroy;
begin
  FConn.Free;
  inherited;
end;

procedure TDAOUsuario.Deletar(aUsuario: TUsuario);
begin

end;

function TDAOUsuario.Editar(aUsuario: TUsuario): TUsuario;
begin

end;

procedure TDAOUsuario.Inserir(aUsuario: TUsuario);
begin

end;

function TDAOUsuario.LoginUsuario(aEmail, aSenha: String): TUsuario;
begin

end;

end.
