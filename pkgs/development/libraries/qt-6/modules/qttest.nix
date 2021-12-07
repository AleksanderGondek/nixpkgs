{ symlinkJoin
, qtbase
, qtdeclarative
, qtshadertools
, qtsvg
}:

symlinkJoin {
  name = "qttest";
  paths = [
    qtbase
    qtbase.dev
    qtdeclarative
    qtdeclarative.dev
    qtdeclarative.bin
    qtshadertools
    qtshadertools.dev
    qtsvg
    qtsvg.dev
    qtsvg.bin
  ];
}

