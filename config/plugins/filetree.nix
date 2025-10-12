{
  plugins = {
    oil = {
      enable = true;
      settings = {
        delete_to_trash = true;
        view_options = {
          show_hidden = true;
        };
      };
    };

    neo-tree = {
      enable = true;
    };
  };


  keymaps = [
    {
      key = "-";
      action = "<cmd>Oil<cr>";
      options = {
        desc = "Open parent directory";
      };
    }
    {
      key = "<leader>e";
      action = "<cmd>Neotree toggle<cr>";
      options = {
        desc = "NeoTree toggle";
      };
    }
  ];
}
