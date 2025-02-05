{
  description = "แอปพลิเคชันตรวจจับวัตถุและราคา";

  environment = {
    systemPackages = with pkgs; [
      libGL 
      mesa.libGL 
    ];
  };
}