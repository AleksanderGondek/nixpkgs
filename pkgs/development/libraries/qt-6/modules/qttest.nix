{ symlinkJoin
, qtbase
, qtdeclarative
, qtshadertools
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
  ];
}

