let
  pkgs = import <nixpkgs> { };
  baseEnvironment = import ./base.nix;
in

pkgs.mkShell {
  inherit (baseEnvironment) name venvDir buildInputs;

  # Merge the two postShellHooks
  postShellHook = baseEnvironment.postShellHook + ''
    nvim
  '';

}

