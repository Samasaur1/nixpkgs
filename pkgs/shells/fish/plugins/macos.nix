{
  lib,
  buildFishPlugin,
  fetchFromGitHub,
}:

buildFishPlugin rec {
  pname = "macos";
  version = "7.0.0";

  src = fetchFromGitHub {
    owner = "halostatue";
    repo = "fish-macos";
    tag = "v${version}";
    hash = "sha256-o5VBeoA62KRDcnJXdXzllF1FMaSLMW1rxhaRC4rzWrg=";
  };

  meta = with lib; {
    description = "MacOS functions for Fish";
    homepage = "https://github.com/halostatue/fish-macos";
    license = licenses.mit;
    maintainers = with maintainers; [ samasaur ];
  };
}
