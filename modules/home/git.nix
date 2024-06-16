{ pkgs, ... }: 
{
  programs.git = {
    enable = true;
    
    userName = "janmejai2002";
    userEmail = "janmejai2002@gmail.com";
    
    extraConfig = { 
      init.defaultBranch = "main";
      credential.helper = "store";
    };
  };

  # home.packages = [ pkgs.gh pkgs.git-lfs ];
}
