{
  lib,
  fetchzip,
  stdenv,
}:

stdenv.mkDerivation rec {
  pname = "cyberchef";
  version = "10.19.4";

  src = fetchzip {
    url = "https://github.com/gchq/CyberChef/releases/download/v${version}/CyberChef_v${version}.zip";
    sha256 = "sha256-eOMo7kdxC5HfmMrKUhGZU3vnBXibO2Fz1ftIS9RAbjY=";
    stripRoot = false;
  };

  installPhase = ''
    mkdir -p "$out/share/cyberchef"
    mv "CyberChef_v${version}.html" index.html
    mv * "$out/share/cyberchef"
  '';

  meta = {
    description = "Cyber Swiss Army Knife for encryption, encoding, compression and data analysis";
    homepage = "https://gchq.github.io/CyberChef";
    changelog = "https://github.com/gchq/CyberChef/blob/v${version}/CHANGELOG.md";
    maintainers = with lib.maintainers; [ sebastianblunt ];
    license = lib.licenses.asl20;
    platforms = lib.platforms.all;
  };
}
