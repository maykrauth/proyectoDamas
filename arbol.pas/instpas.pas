program trabajoInstaPas;

Uses 
    sysutils, DateUtils;


const MAX= 15;
    UbiArchivoUsuario = '/home/Mayra/Documentos/PAscal/ArchivoUsua.dat';
    UbiArchivoHistorias= '/home/Mayra/Documentos/PAscal/ArchivoHisto.dat';
    UbiArchivoSeguidos= '/home/Mayra/Documentos/PAscal/archivoSeguidos.dat'; 


type

    listHistorias=^nodoHistoria;
    nodoHistoria=record
        tipoFecha:TDateTime;
        texto:string[150];
        ste:listHistorias
    end;
    
    arbUsuarios=^nodoArbol;
    nodoArbol=record
        Nombre:string[15];
        password:string[8];
        email:string[15];
        usuario:arbUsuarios;
        historias:listHistorias;
        izq, der:arbUsuarios
    end;

    {fecha=record
        dia:[1..30];
        mes:[1..12];
        anio:[2023];
        hora:string[15]
    end;}

    Usuario=record
        seguidor:string;
        seguido:string
    end;

    archUsurarios=record
        Nombre:string[15];
        password:string[8];
        emial:string[15]
    end;

    archHistorias=record
        tipoFecha:TDateTime;
        texto:string[150]
    end;
    
    archSeguidos=record
        nombredeUsuario:Usuario
    end;
    archUsu=file of archUsurarios;
    archSeg=file of archSeguidos;
    archHist=file of archHistorias;

/////////////////////////////////////////////Definicion de variables///////////////////////////////////////////////
var Arbol:arbUsuarios;
        Lista:arbUsuarios;
        ArchSegui:archSeg;
        ArchHisto:archHist;
        ArchUsuario:archUsu;


procedure CrearUsuario(var Arbol:arbUsuarios;var Salir:Boolean);
begin
    writeLn('Crear usuario');
    //NuevoUsuario(Arbol);
    Salir:=True;
end;

procedure Nivel_2();
begin
    writeln('Nivel 2');
end;

function verificaUsuarioLogin( Usuario:string; Pass:string; Arbol:arbUsuarios ) : arbUsuarios;
var auxNodoUsuario: arbUsuarios;
begin
    auxNodoUsuario := nil;
    verificaUsuarioLogin := auxNodoUsuario;
end;

procedure Login(var Arbol:arbUsuarios);
var Usuario:string[15]; Pass:string[8];
begin
    writeLn('Ingresar usuario');
    readln(Usuario);
    writeLn('Ingresar contraseña');
    readln(Pass);
    if verificaUsuarioLogin(Usuario, Pass, Arbol) <> nil then
        Nivel_2()
    else
        writeLn('Datos de usuario o contraseña invalidos...')
end;
procedure Nivel_1 (var ArchSegui:archSeg;var ArchHisto:archHist;var ArchUsuario:archUsu;var Arbol:arbUsuarios;var Lista:arbUsuarios);
var //Opcion:Topciones;
    Opcion: integer;
    Salir:Boolean;
begin
    Salir:=True;
    while Salir=True do begin
        writeln('Bienvenido');
        writeln(('1)Login'),'', ('2)Crear NuevoUsuario  '));
        writeln(('3)Indice total de cantidad de Usuarios '),('4) cantidad promedio de Usuarios   '));
        //writeln(('5) Mostrar Historias') ('6)Salir y guardar datos'));
        readln(Opcion);
        //clrscr;
        {case Opcion of 
            1:Login(Lista, Arbol, Salir);
            2:CrearUsuario(Arbol,);
            3:CantUsuario(Arbol);
            4:PromedioSeguidores(Arbol)
            5:UsuarioHistorias(ArchHisto)
            6:Salir:=False;
        end;}
    end;
    //Salir(ArchSegui,ArchHisto,ArchUsuario,Arbol,Lista);
    writeln('Programa Finalizado');
end;

// PROGRAMA PRINCIPAL //

begin
    writeLn('programa principal');
end.