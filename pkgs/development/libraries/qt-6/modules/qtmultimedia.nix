{ qtModule
, lib
, stdenv
, qtbase
, qtdeclarative
, pkg-config
, alsa-lib
, gstreamer
, gst-plugins-base
, libpulseaudio
, wayland
, pcre
, libGL
, xorg
, qttest
, libxkbcommon
}:

qtModule {
  pname = "qtmultimedia";
  qtInputs = [ qttest qtdeclarative ];
  nativeBuildInputs = [ pkg-config ];
  buildInputs = [ gstreamer gst-plugins-base libpulseaudio 
    pcre.dev pcre.out pcre.bin libGL 
    xorg.libX11 xorg.libX11.dev xorg.libxcb xorg.libxcb.dev
    libxkbcommon libxkbcommon.dev
  ] ++ lib.optionals stdenv.isLinux [ alsa-lib wayland ]
    ++ qtbase.buildInputs
    ++ qtdeclarative.buildInputs
  ;
  outputs = [ "dev" "out" ];
  qmakeFlags = [ "GST_VERSION=1.0" ];
  NIX_LDFLAGS = lib.optionalString stdenv.isDarwin "-lobjc";
  postFixup = ''
    echo "AAAAAAAA"
    ls -alh
  '';
}
