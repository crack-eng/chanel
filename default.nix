{
  pkgs ? import <nixpkgs> { },
}:

{
  yc = import ./yc.nix { inherit pkgs; };
}
