moduleConfig: { lib, ... }: let
  inherit (lib) mkDefault;
  mkVSCodeService = import ../lib/mkVSCodeService.nix;
in {
  imports = [
    (mkVSCodeService moduleConfig "cli" { installPath = mkDefault "~/.vscode-cli/code-stable"; })
    (mkVSCodeService moduleConfig "server" { installPath = mkDefault "~/.vscode-server"; })
  ];
}
