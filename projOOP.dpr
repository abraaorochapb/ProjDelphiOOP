program projOOP;

uses
  Vcl.Forms,
  projOOP.src.view.main in 'src\view\ProjOOP.src.view.main.pas' {frmMain} ,
  projOOP.src.model.usuario in 'src\model\ProjOOP.src.model.usuario.pas',
  projOOP.src.model.tarefa in 'src\model\ProjOOP.src.model.tarefa.pas',
  projOOP.src.view.CadastroUsuario
    in 'src\view\ProjOOP.src.view.cadastrousuario.pas' {frmCadastroUsuario} ,
  projOOP.src.view.cadastrotarefa
    in 'src\view\ProjOOP.src.view.cadastrotarefa.pas' {frmCadastroTarefa};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TfrmCadastroUsuario, frmCadastroUsuario);
  Application.CreateForm(TfrmCadastroTarefa, frmCadastroTarefa);
  Application.Run;

end.
