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
    luaConfig.pre = ''
      local cacheDir = vim.fn.stdpath('cache') .. '/nvim-jdtls'
    '';
    settings = {
      cmd = [
        "${pkgs.jdt-language-server}/bin/jdtls"
        "--jvm-arg=-javaagent:${pkgs.lombok}/share/java/lombok.jar"
        "-configuration"
        (lib.nixvim.mkRaw "cacheDir .. '/' .. 'jdtls-config'")
        "-data"
        (lib.nixvim.mkRaw "cacheDir .. '/' .. vim.fn.fnamemodify(vim.fn.getcwd(), ':p:h:t')")
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
