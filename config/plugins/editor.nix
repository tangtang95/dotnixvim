{
  plugins = {
    nvim-autopairs.enable = true;
    grug-far = {
      enable = true;
      settings = {
        headerMaxWidth = 80;
      };
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
