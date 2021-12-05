{ qtModule
, qtbase
, libglvnd, libxkbcommon, vulkan-headers # TODO should be inherited from qtbase
, qtdeclarative # TODO verify
, libiconv
# FIXME Configure summary: qt5compat is not using libiconv. bug in qt6?
, icu
, openssl
, qttest
}:

qtModule {
  pname = "qt5compat";
  qtInputs = [ qttest ];
  buildInputs = [ libiconv icu openssl openssl.dev libglvnd libxkbcommon vulkan-headers ];
}
