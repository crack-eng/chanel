{
  pkgs ? import <nixpkgs> { },
}:

pkgs.stdenv.mkDerivation rec {
  pname = "yc";
  version = "0.130.0";

  src = pkgs.fetchurl {
    url = "https://storage.yandexcloud.net/yandexcloud-yc/release/0.130.0/darwin/amd64/yc";
    sha256 = "1wmddcrcp08ip5bsxrsd4zamndabkwwmq41smgxb3y18j2flhrw4";
  };

  phases = [ "installPhase" ];

  installPhase = ''
    install -D "${src}" "$out/bin/yc"
  '';

}
