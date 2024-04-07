unit ProjOOP.src.model.tarefa;

interface

type
  TTarefa = class
  private
    Ftitulo: String;
    Fdescricao: String;
    Fdata_criacao: TDateTime;
    Fid: Integer;
    Fid_usuario: Integer;
  public
    property id_usuario: Integer read Fid_usuario write Fid_usuario;
    property id: Integer read Fid write Fid;
    property titulo: String read Ftitulo write Ftitulo;
    property descricao: String read Fdescricao write Fdescricao;
    property data_criacao: TDateTime read Fdata_criacao write Fdata_criacao;

  end;

implementation

{ TTarefa }

end.
