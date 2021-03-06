//Main menu
 mnFile.Caption  := Trans('&File'    , '&Archivo'       , '&Khipu'        , '&Datei');
 mnEdit.Caption  := Trans('&Edit'    , '&Edición'       , '&Allichay'     , '&Bearbeiten');
 mnFind.Caption  := Trans('&Search'  , '&Buscar'        , '&Maskhay'      , '&Suchen');
 mnView.Caption  := Trans('&View'    , '&Ver'           , '&Qhaway'       , '&Ansicht');
 mnTools.Caption := Trans('&Tools'   , '&Herramientas'  , '&Llamk''anakuna' , '&Werkzeuge');

//File Actions
 acArcNewProj.Caption := Trans('New &Project', 'Nuevo &Proyecto'  , ''            ,'Neues &Projekt');
 acArcNewFile.Caption := Trans('New &File'      , 'Nuevo &Archivo'   , 'Musuq &Khipu'        ,'&Neu');
 acArcNewFile.Hint    := Trans('New File'       , 'Nuevo Archivo'    , 'Musuq Khipu'         , 'Neue Datei');
 acArcNewProj.Caption := Trans('New &Project'   , 'Nuevo &Proyecto'  , 'Musuq &Proyecto'     ,'Neues &Projekt');
 acArcNewProj.Hint    := Trans('New &Project'   , 'Nuevo Proyecto'   , 'Musuq Proyecto'      ,'Neues &Projekt');
 acArcOpen.Caption    := Trans('&Open...'       , '&Abrir...'        , 'K&ichay'             ,'&Öffnen...');
 acArcOpen.Hint       := Trans('Open file'      , 'Abrir archivo'    , 'Khiputa kichay'      , 'Datei Öffnen');
 acArcSave.Caption    := Trans('&Save'          , '&Guardar'         , '&Waqaychay'          , '&Speichern');
 acArcSave.Hint       := Trans('Save file'      , 'Guardar archivo'  , 'Khiputa waqaychay'   , 'Datei speichern');
 acArcSaveAs.Caption  := Trans('Sa&ve As...'    , 'G&uardar Como...' , 'Kay hinata &waqaychay', 'Speichern &unter ...');
 acArcSaveAs.Hint     := Trans('Save file as...','Guardar como...'  , 'Kay hinata waqaychay','Datei mit unter neuem Namen speichern ...');
 acArcCloseFile.Caption:=Trans('&Close File'    , '&Cerrar archivo'  , 'Khiputa wi&sqay'     , 'Datei s&chließen');
 acArcCloseProj.Caption:=Trans('Close Project'  , 'Cerrar Proyecto'  , 'Proyectota wisqay'   , 'Projekt schließen');
 mnSamples.Caption    := Trans('Samples'        , 'Ejemplos'         , 'Qhawarinakuna'       , 'Beispiele');
 acArcQuit.Caption    := Trans('&Quit'          , '&Salir'           , 'Ll&uqsiy'            , '&Beenden');
 acArcQuit.Hint       := Trans('Close the program','Cerrar el programa','Programata wi&sqay', 'Programm beenden');

//Edit Actions
 acEdUndo.Caption     := Trans('&Undo'       , '&Deshacer'        , '&Paskay', '&Zurück');
 acEdUndo.Hint        := Trans('Undo'        , 'Deshacer'         , 'Paskay', 'Änderung zurücknehmen');
 acEdRedo.Caption     := Trans('&Redo'       , '&Rehacer'         , '&Ruwapay', '&Wiederholen');
 acEdRedo.Hint        := Trans('Redo'        , 'Reahacer'         , 'Ruwapay', 'Änderung wiederholen');
 acEdCut.Caption      := Trans('C&ut'        , 'Cor&tar'          , 'Ku&chuy', 'A&usschneiden');
 acEdCut.Hint         := Trans('Cut'         , 'Cortar'           , 'Kuchuy', 'Ausschneiden');
 acEdCopy.Caption     := Trans('&Copy'       , '&Copiar'          , 'Kiki&nchay', '&Kopieren');
 acEdCopy.Hint        := Trans('Copy'        , 'Copiar'           , 'Kikinchay', 'Kopieren');
 acEdPaste.Caption    := Trans('&Paste'      , '&Pegar'           , 'k''ask&ay', '&Einfügen');
 acEdPaste.Hint       := Trans('Paste'       , 'Pegar'            , 'K''askay', 'Einfügen');
 acEdSelecAll.Caption := Trans('Select &All'    , 'Seleccionar &Todo'  , 'Llapan&ta Akllay', 'Alles &Auswählen');
 acEdSelecAll.Hint    := Trans('Select all'  , 'Seleccionar todo' , 'Llapanta Akllay', 'Alles auswählen');

//Search Actions
 acSearFind.Caption    := Trans('Find...'      , 'Buscar...'          , 'Maskhay', 'Suchen...');
 acSearFind.Hint       := Trans('Find text'    , 'Buscar texto'       , 'Qillqata maskhay', 'Text suchen');
 acSearFindNxt.Caption := Trans('Find &Next'   , 'Buscar &Siguiente'  , '&Hamuqta Maskhay', 'Weitersuche&n');
 acSearFindNxt.Hint    := Trans('Find Next'    , 'Buscar Siguiente'   , 'Hamuqta Maskhay', 'Nächste Stelle suchen');
 acSearFindPrv.Caption := Trans('Find &Previous','Buscar &Anterior'   , '', '');
 acSearFindPrv.Hint    := Trans('Find &Previous','Buscar &Anterior'   , '', '');
 acSearReplac.Caption  := Trans('&Replace...'    , '&Reemplazar...'     , '&Yankiy', '&Ersetzen...');
 acSearReplac.Hint     := Trans('Replace text'   , 'Reemplazar texto'   , 'Qillqata yankiy', 'Text ersetzen');

//View actions
 acViewMsgPan.Caption := Trans('&Messages Panel'         , 'Panel de &Mensajes'           , '&Willanakuna qhawachiq','&Nachrichten Panel');
 acViewMsgPan.Hint    := Trans('Show/hide Messages Panel', 'Mostrar/Ocultar el Panel de Mensajes', 'Willanakuna qhawachiqta Rikuchiy/Pakachiy', 'Nachrichten Panel zeigen oder verbergen');
 acViewStatbar.Caption:= Trans('&Status Bar'             , 'Barra de &Estado'             , '&Imayna kasqanta Qhawachiq','&Statuszeile');
 acViewStatbar.Hint   := Trans('Show/hide Status Bar'    , 'Mostrar/Ocultar la barra de estado', 'Imayna Kasqanta Rikuchiy/Pakachiy','Statuszeile zeigen oder verbergen');
 acViewToolbar.Caption:= Trans('&Tool Bar'               , 'Barra de &Herramientas'       , '&Llamk''anakuna Qhawachiq','&Werkzeugleiste');
 acViewToolbar.Hint   := Trans('Show/hide Tool Bar'      , 'Mostrar/Ocultar la barra de herramientas', 'Llamk''anakuna Qhawachiqta Rikuchiy/Pakachiy', 'Werkzeugleiste zeigen oder verbergen');
 acViewSynTree.Caption:= Trans('&Code explorer'          , '&Explorador de código.'       , '&Chimpukunata t''aqwiq', '&Quelltext-Explorer');
 acViewAsmPan.Caption := Trans('&Assembler Panel'        , '&Panel de ensamblador.'       , '', '');


//Tool actions
 acToolCompil.Caption := Trans('&Compile'                , '&Compilar'                    , '&Compilay', '&Compilieren');
 acToolCompil.Hint    := Trans('Compile the source code' , 'Compila el código fuente'     , 'Pachanmanta chimpukuna kaqta compilay', 'Compiliere den Quelltext');
 acToolComEjec.Caption:= Trans('Compile and E&xecute'    , 'Compilar y Ej&ecutar'         , 'Compilay chaymanta &Hinay', 'Compilieren und Au&sführen');
 acToolComEjec.Hint   := Trans('Compile and Execute'     , 'Compilar y Ejecutar'          , 'Compilay chaymanta &Hinay', 'Compilieren und Ausführen');
 acToolPICExpl.Caption:= Trans('PIC E&xplorer'           , 'E&xplorador de PIC'           , 'PIC nisqakunata T''aqwiq', 'PIC E&xplorer');
 acToolPICExpl.Hint   := Trans('Open the PIC devices explorer','Abrir el explorador de dispos. PIC', 'Dispos. PIC nisqa t''aqwiqta kichariy','Öffne den PIC Geräte explorer');
 acToolASMDebug.Caption  := Trans('ASM &Debugger'        , '&Depurador de ASM'            , '', '');
 acToolASMDebug.Hint     := Trans('ASM &Debugger'        , '&Depurador de ASM'            , '', '');

 acToolListRep.Caption:= Trans('&List Report'            , '&Reporte de listado'          , '', '');
 acToolConfig.Caption := Trans('&Settings'               , '&Configuración'                , 'Kamachina', '&Einstellungen');
 acToolConfig.Hint    := Trans('Settings dialog'         , 'Ver configuración'            , 'Kamachinata qhaway', 'Einstellungs-Dialog');
 acToolFindDec.Caption:= Trans('Find declaration' , 'Ir a la declaración' , 'Riqsichikusqan k''itiman riy', 'Finde Deklaration');

//Messages
 MSG_MODIF   := Trans('(*)Modified'      , '(*)Modificado'                  , '', '');
 MSG_SAVED   := Trans('Saved'            , 'Guardado'                       , '', '');
 MSG_NOFILES := Trans('No files.'        , 'Sin archivos'                   , '', '');
 MSG_NOFOUND_:= Trans('No found "%s"'    , 'No se encuentra: "%s"'          , '', '');
 MSG_N_REPLAC:= Trans('%d words replaced', 'Se reemplazaron %d ocurrencias.', '', '');
 MSG_REPTHIS := Trans('Replace this?'    , '¿Reemplazar esta ocurrencia?'   , '', '');

