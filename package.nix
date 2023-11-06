{ stdenv

, meson
, ninja

, pkg-config
, vala

, glib
, gtk4

, fabric-ui
}:

stdenv.mkDerivation {
  pname = "fabric.toys.hello";
  version = "0.1";

  src = ./.;

  buildInputs = [
    glib
    gtk4
    fabric-ui
  ];

  nativeBuildInputs = [
    meson
    ninja

    pkg-config
    vala
  ];
}
