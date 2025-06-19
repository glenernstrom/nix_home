with import <nixpkgs> {};
let customPlugins = {
  nvim-r = vimUtils.buildVimPlugin {
    name = "nvim-r";
    src = fetchgit {
      url= "https://github.com/jalvesaq/nvim-r";
      rev =  "c53b5a402a26df5952718f483c7461af5bb459eb";
      sha256 = "13xbb05gnpgmyaww6029saplzjq7cq2dxzlxylcynxhhyibz5ibv";
      };
    buildInputs = [ which vim  zip];
  };
};

...
...
in vim_configurable.customize {
  name = "vim";
  vimrcConfig.customRC = ''
  vimrc things go here
  '';
    vimrcConfig.vam.knownPlugins = pkgs.vimPlugins // customPlugins;
    vimrcConfig.vam.pluginDictionaries = [
      { names = [
        "nvim-r"
        "other normal vim plugins"
      ]; }
    ];
}
