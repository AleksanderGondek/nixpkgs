{ qtModule
, qtbase
, libglvnd, libxkbcommon, vulkan-headers # TODO should be inherited from qtbase
, qtdeclarative # TODO verify
, openssl
, qttest
, pkg-config
, zlib
}:

qtModule {
  pname = "qtquick3d";
  qtInputs = [ qttest ];
  buildInputs = [ openssl openssl.dev libglvnd libxkbcommon vulkan-headers zlib pkg-config ];
  outputs = [ "out" "dev" "bin" ];
  configureFlags = [
    "-verbose"
    "-pkg-config"
    "-system-zlib"
    "-L" "${zlib.out}/lib"
    "-I" "${zlib.dev}/include"
  ];
}
