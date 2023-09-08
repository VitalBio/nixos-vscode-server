moduleConfig: { lib, ... }: let
  inherit (lib) mkDefault;
  mkVSCodeService = import ../lib/mkVSCodeService.nix;
in {
  vscode-cli = mkVSCodeService moduleConfig "cli" { installPath = mkDefault "~/.vscode-cli/code-stable"; };
  vscode-server = mkVSCodeService moduleConfig "server" { installPath = mkDefault "~/.vscode-server"; };
}
