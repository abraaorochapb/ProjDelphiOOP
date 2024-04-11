unit ProjOOP.src.dao.daousuario;

interface

uses
  ProjOOP.src.model.usuario, ProjOOP.src.model.conexaodb, System.SysUtils;

type
  TDAOUsuario = class
  private
    FConn: TdmConexao;
    function preencheObj: TUsuario;
  public
    constructor Create;
    destructor Destroy; override;
    procedure Inserir(aUsuario: TUsuario);
    procedure povoarGrid;
    procedure Deletar(aUsuario: TUsuario);
    function Editar(aUsuario: TUsuario): TUsuario;
    function LoginUsuario(aEmail, aSenha: String): TUsuario;
  end;

implementation

uses
  Vcl.Dialogs;

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
  FConn.StartTransaction;
  try
    FConn.SQL('DELETE FROM USUARIOS WHERE ID =:id');
    FConn.FDQuery1.ParamByName('id').AsInteger := aUsuario.ID;
    FConn.execSQL;
    FConn.commit;
    ShowMessage('Registro deletado com sucesso!');
  except
    FConn.rollback;
    raise Exception.Create('Erro ao Deletar registro');
  end;
end;

function TDAOUsuario.Editar(aUsuario: TUsuario): TUsuario;
begin
  FConn.StartTransaction;
  try
    FConn.SQL(
      'UPDATE USUARIOS SET NOME =:nome, EMAIL =:email, SENHA =:senha WHERE ID =:id');
    FConn.FDQuery1.ParamByName('nome').AsString := aUsuario.Nome;
    FConn.FDQuery1.ParamByName('email').AsString := aUsuario.Email;
    FConn.FDQuery1.ParamByName('senha').AsString := aUsuario.Senha;
    FConn.FDQuery1.ParamByName('id').AsInteger := aUsuario.ID;
    FConn.execSQL;
    FConn.commit;
    ShowMessage('Registro atualizado com sucesso!');
  except
    FConn.rollback;
    raise Exception.Create('Erro ao alterar registro');
  end;
end;

procedure TDAOUsuario.Inserir(aUsuario: TUsuario);
begin
  FConn.StartTransaction;
  try
    FConn.SQL(
      'INSERT INTO USUARIOS(NOME, EMAIL, SENHA) VALUES(:nome, :email, :senha)');
    FConn.FDQuery1.ParamByName('nome').AsString := aUsuario.Nome;
    FConn.FDQuery1.ParamByName('email').AsString := aUsuario.Email;
    FConn.FDQuery1.ParamByName('senha').AsString := aUsuario.Senha;
    FConn.execSQL;
    FConn.commit;
    ShowMessage('Registro inserido com sucesso!');
  except
    FConn.rollback;
    raise Exception.Create('Erro ao inserir registro');
  end;
end;

function TDAOUsuario.LoginUsuario(aEmail, aSenha: String): TUsuario;
begin
  FConn.SQL('SELECT * FROM USUARIOS WHERE email=:email and senha=:senha');
  FConn.FDQuery1.ParamByName('email').AsString := aEmail;
  FConn.FDQuery1.ParamByName('senha').AsString := aSenha;
  FConn.Open;

  if FConn.DataSet.IsEmpty then
  begin
    ShowMessage('Credenciais inválidas');
  end;

  Result := preencheObj;

end;

procedure TDAOUsuario.povoarGrid;
begin
  FConn.StartTransaction;
  try
    FConn.SQL('SELECT * FROM USUARIOS');
    FConn.execSQL;
    FConn.commit;
  except
    FConn.rollback;
  end;
end;

function TDAOUsuario.preencheObj: TUsuario;
begin
  Result := TUsuario.Create;
  FConn.DataSet.First;
  while not FConn.DataSet.Eof do
  begin
    Result.id := FConn.DataSet.FieldByName('id').AsInteger;
    Result.nome := FConn.DataSet.FieldByName('nome').AsString;
    Result.email := FConn.DataSet.FieldByName('email').AsString;
    Result.senha := FConn.DataSet.FieldByName('senha').AsString;
    FConn.DataSet.Next;
  end;

end;

end.
