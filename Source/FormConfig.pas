{Modelo de formulario de configuración que usa dos Frame de configuración}
unit FormConfig;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, SynEdit, Forms, Controls, Graphics, Dialogs,
  Buttons, StdCtrls, ExtCtrls, ComCtrls, FrameCfgSynEdit, MiConfigXML, MisUtils;
type
  //Tipo de Barra de herramientas
  TStyleToolbar = (stb_SmallIcon, stb_BigIcon);
  //Tipo de declaración de variables
  TVarDecType = (dvtDBDb,  //Estilo DB/Db/DW
                 dvtEQU    //Estilo usando macros y EQU
                 );
  //Niveles de optimización
  TOptimLev = (olvFool,   //Nivel básico de optimización
               olvSmart   //Nivel mayor de optimización
               );

  { TConfig }
  TConfig = class(TForm)
    BitAplicar: TBitBtn;
    BitCancel: TBitBtn;
    BitAceptar: TBitBtn;
    chkIncDecVar: TCheckBox;
    chkIncAddress: TCheckBox;
    chkIncComment: TCheckBox;
    chkIncHeadMpu: TCheckBox;
    Edit1: TEdit;
    fcEditor: TfraCfgSynEdit;
    PageControl1: TPageControl;
    Panel1: TPanel;
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    grpOptimLev: TRadioGroup;
    tabGeneral: TTabSheet;
    tabEditor: TTabSheet;
    tabEnsamb: TTabSheet;
    tabOutput: TTabSheet;
    procedure BitAceptarClick(Sender: TObject);
    procedure BitAplicarClick(Sender: TObject);
    procedure SetLanguage(lang: string);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    FViewPanMsg: boolean;
    FViewStatusbar: Boolean;
    FViewToolbar: boolean;
    procedure cfgFilePropertiesChanges;
    procedure SetViewPanMsg(AValue: boolean);
    procedure SetViewStatusbar(AValue: Boolean);
    procedure SetViewToolbar(AValue: boolean);
  public  //Propiedades generales
    OnPropertiesChanges: procedure of object;
    StateToolbar: TStyleToolbar;
    property ViewStatusbar: Boolean read FViewStatusbar write SetViewStatusbar;
    property ViewToolbar: boolean read FViewToolbar write SetViewToolbar;
    property ViewPanMsg: boolean read FViewPanMsg write SetViewPanMsg;
  public  //Configuraciones para ensamblador
    IncHeadMpu: boolean;  //Incluye encabezado con información del MPU
    IncVarDec : boolean;  //Incluye declaración de varaibles
    VarDecType: TVarDecType;  //tipo de declaración de variables
    IncAddress: boolean;  //Incluye dirección física en el código desensamblado
    IncComment: boolean;  //Incluye comentarios en el código desensamblado
    //Configuracions para Salida
    OptimLev : TOptimLev;
  public
    procedure Iniciar(ed0, edAsm: TSynEdit);
    procedure Mostrar;
    procedure SaveToFile;
  end;

var
  Config: TConfig;

implementation

{$R *.lfm}

{ TConfig }

procedure TConfig.FormCreate(Sender: TObject);
begin
  cfgFile.VerifyFile;
end;
procedure TConfig.BitAceptarClick(Sender: TObject);
begin
  bitAplicarClick(Self);
  if cfgFile.MsjErr<>'' then exit;  //hubo error
  self.Close;  //sale si no hay error
end;
procedure TConfig.BitAplicarClick(Sender: TObject);
begin
  cfgFile.WindowToProperties;
  if cfgFile.MsjErr<>'' then begin
    MsgErr(cfgFile.MsjErr);
    exit;
  end;
  SaveToFile;
end;
procedure TConfig.Iniciar(ed0, edAsm: TSynEdit);
//Inicia el formulario de configuración. Debe llamarse antes de usar el formulario y
//después de haber cargado todos los frames.
begin
  //Configuraciones generales
  cfgFile.Asoc_Enum('StateStatusbar', @StateToolbar, SizeOf(TStyleToolbar), RadioGroup1, 1);
  cfgFile.Asoc_Bol('VerPanMensaj', @FViewPanMsg  , true);
  cfgFile.Asoc_Bol('VerStatusbar', @ViewStatusbar, true);
  cfgFile.Asoc_Bol('VerBarHerram', @FViewToolbar , true);
  //Configuraciones del Editor
  fcEditor.Iniciar('Edit', cfgFile, ed0);
  //Configuraciones de Ensamblador
  cfgFile.Asoc_Bol('IncHeadMpu', @IncHeadMpu, chkIncHeadMpu, false);
  cfgFile.Asoc_Bol('IncDecVar' , @IncVarDec , chkIncDecVar , true);
  cfgFile.Asoc_Enum('VarDecType',@VarDecType, Sizeof(TVarDecType), RadioGroup2, 1);
  cfgFile.Asoc_Bol('IncAddress', @IncAddress, chkIncAddress, true);
  cfgFile.Asoc_Bol('IncComment', @IncComment, chkIncComment, false);
  //Configuraciones de salida
  cfgFile.Asoc_Enum('OptimLev',@OptimLev, Sizeof(TOptimLev), grpOptimLev, 1);
  //////////////////////////////////////////////////
  cfgFile.OnPropertiesChanges := @cfgFilePropertiesChanges;
  if not cfgFile.FileToProperties then begin
    MsgErr(cfgFile.MsjErr);
  end;
end;
procedure TConfig.FormShow(Sender: TObject);
begin
  if not cfgFile.PropertiesToWindow then begin
    MsgErr(cfgFile.MsjErr);
  end;
end;
procedure TConfig.cfgFilePropertiesChanges;
begin
  fcEditor.ConfigEditor;
  if OnPropertiesChanges<>nil then OnPropertiesChanges;
end;
procedure TConfig.SetViewPanMsg(AValue: boolean);
begin
  if FViewPanMsg = AValue then Exit;
  FViewPanMsg := AValue;
  cfgFilePropertiesChanges;
end;
procedure TConfig.SetViewStatusbar(AValue: Boolean);
begin
  if FViewStatusbar = AValue then Exit;
  FViewStatusbar := AValue;
  cfgFilePropertiesChanges;
end;
procedure TConfig.SetViewToolbar(AValue: boolean);
begin
  if FViewToolbar = AValue then Exit;
  FViewToolbar := AValue;
  cfgFilePropertiesChanges;
end;
procedure TConfig.Mostrar;
//Muestra el formulario para configurarlo
begin
  Showmodal;
end;
procedure TConfig.SaveToFile;
begin
  if not cfgFile.PropertiesToFile then begin
    MsgErr(cfgFile.MsjErr);
  end;
end;
procedure TConfig.SetLanguage(lang: string);
begin
  fcEditor.SetLanguage(lang);
//  fcEdiAsm.SetLanguage(lang);
  case lowerCase(lang) of
  'es': begin
      Caption := 'Configuración';
      tabGeneral.Caption := 'General';
      tabEditor.Caption := 'Editor';
      tabEnsamb.Caption := 'Ensamblador';
      tabOutput.Caption := 'Salida';
      grpOptimLev.Caption := 'Nivel de optimización:';
      grpOptimLev.Items[0] := 'Tonto';
      grpOptimLev.Items[1] := 'Inteligente';
      chkIncHeadMpu.Caption := 'Incluir &Encabezado de MPU';
      chkIncDecVar.Caption := 'Incluir Declaración de variables';
      chkIncAddress.Caption := 'Incluir &Dirección de memoria';
      chkIncComment.Caption := 'Incluir &Comentarios';
    end;
  'en': begin
      Caption := 'Settings';
      tabGeneral.Caption := 'General';
      tabEditor.Caption := 'Editor';
      tabEnsamb.Caption := 'Assembler';
      tabOutput.Caption := 'Output';
      grpOptimLev.Caption := 'Optimization Level:';
      grpOptimLev.Items[0] := 'Fool';
      grpOptimLev.Items[1] := 'Smart';
      chkIncHeadMpu.Caption := 'Include MPU &Header';
      chkIncDecVar.Caption := 'Include &Variables declaration';
      chkIncAddress.Caption := 'Include &Memory Address';
      chkIncComment.Caption := 'Include &Comments';
    end;
  end;
end;

end.

