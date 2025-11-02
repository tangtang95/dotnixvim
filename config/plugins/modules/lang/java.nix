{
  pkgs,
  lib,
  ...
}:
{
  plugins.treesitter = {
    settings = {
      ensureInstalled = [ "java" ];
    };
  };

  plugins.jdtls = {
    enable = true;
    settings = {
      cmd = [
        "${pkgs.jdt-language-server}/bin/jdtls"
      ];
      settings = {
        java = {
          maven = {
            downloadSources = true;
          };
        };
      };
      root_dir = lib.nixvim.mkRaw "require('jdtls.setup').find_root({'.git', 'mvnw', 'gradlew', 'pom.xml'})";
    };
  };
}
