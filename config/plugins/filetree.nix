{
  plugins.oil = {
    enable = true;
    settings = {
      delete_to_trash = true;
      view_options = {
        show_hidden = true;
      };
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
  ];
}
