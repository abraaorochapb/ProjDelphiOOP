program projOOP;

uses
  Vcl.Forms,
  ProjOOP.src.view.main in 'src\view\ProjOOP.src.view.main.pas' {frmMain},
  ProjOOP.src.model.usuario in 'src\model\ProjOOP.src.model.usuario.pas',
  ProjOOP.src.model.tarefa in 'src\model\ProjOOP.src.model.tarefa.pas',
  ProjOOP.src.view.cadastrousuario in 'src\view\ProjOOP.src.view.cadastrousuario.pas' {frmCadastroUsuario},
  ProjOOP.src.view.cadastrotarefa in 'src\view\ProjOOP.src.view.cadastrotarefa.pas' {frmCadastroTarefa},
  ProjOOP.src.view.login in 'src\view\ProjOOP.src.view.login.pas' {frmLogin},
  ProjOOP.src.model.conexaodb in 'src\model\ProjOOP.src.model.conexaodb.pas' {dmConexao: TDataModule},
  ProjOOP.src.dao.daousuario in 'src\dao\ProjOOP.src.dao.daousuario.pas';

{$R *.res}

begin
  Application.Initialize;
  ReportMemoryLeaksOnShutdown := True;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;

end.
