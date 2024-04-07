unit ProjOOP.src.model.usuario;

interface

type
  TUsuario = class
  private
    Fnome: String;
    Femail: String;
    Fsenha: String;
    Fid: Integer;
  public
    property id: Integer read Fid write Fid;
    property nome: String read Fnome write Fnome;
    property email: String read Femail write Femail;
    property senha: String read Fsenha write Fsenha;
  end;

implementation

end.
