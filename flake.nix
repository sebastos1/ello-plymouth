{
  description = "ello";
  outputs =
    { self, nixpkgs }:
    {
      packages.x86_64-linux.default = nixpkgs.legacyPackages.x86_64-linux.stdenvNoCC.mkDerivation {
        name = "ello-plymouth";
        src = self;
        installPhase = ''
          mkdir -p $out/share/plymouth/themes/ello
          cp -r ello/* $out/share/plymouth/themes/ello/
        '';
      };
    };
}
