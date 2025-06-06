{
  buildGoModule,
  fetchFromGitHub,
  lib,
}:

buildGoModule rec {
  pname = "rime-cli";
  version = "0.0.3";

  src = fetchFromGitHub {
    owner = "puddinging";
    repo = "rime-cli";
    rev = "v${version}";
    hash = "sha256-CI0Jva7oA/zUGatv+wCdByqbTBNQRw+4clr8IDKX6HQ=";
  };

  vendorHash = null;

  meta = {
    homepage = "https://github.com/puddinging/rime-cli";
    changelog = "https://github.com/puddinging/rime-cli/releases/tag/v${version}";
    description = "Command line tool to add customized vocabulary for Rime IME";
    license = lib.licenses.asl20;
    maintainers = with lib.maintainers; [ urandom ];
    mainProgram = "rime-cli";
  };
}
