{
  plugins = {
    nvim-autopairs.enable = true;
    todo-comments = {
      enable = true;
      settings = {
        signs = true;
      };
    };
    grug-far = {
      enable = true;
      settings = {
        headerMaxWidth = 80;
      };
    };
    nvim-surround = {
      enable = true;
    };
  };

  keymaps = [
    {
      mode = [
        "n"
        "v"
      ];
      key = "<leader>sr";
      action = "<cmd>GrugFar<cr>";
      options = {
        desc = "Search and Replace";
      };
    }
  ];
}
