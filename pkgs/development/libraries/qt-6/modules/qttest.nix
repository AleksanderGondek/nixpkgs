{ symlinkJoin
, qtbase
, qtshadertools
}:

symlinkJoin {
  name = "qttest";
  paths = [
    qtbase
    qtbase.dev
    qtshadertools
    qtshadertools.dev
  ];
}

