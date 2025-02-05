{
  description = "แอปพลิเคชันตรวจจับวัตถุและราคา";

  environment = {
    systemPackages = with pkgs; [
      libGL 
      mesa.libGL 
      libglu1-mesa
      freeglut3-dev
    ];
  };
}