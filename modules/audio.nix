# Audio configuration: PipeWire and MPD
{ ... }:

{
  # PipeWire
  services.pipewire = {
    enable = true;
    pulse.enable = true;
  };

  # MPD (Music Player Daemon)
  services.mpd = {
    enable = true;
    user = "phillip";
    musicDirectory = "/home/phillip/music";
    extraConfig = ''
      audio_output {
        type "pipewire"
        name "My PipeWire Output"
      }
    '';
  };
}
