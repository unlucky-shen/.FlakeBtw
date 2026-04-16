{ configs, pkgs, ... }:

let
  hadoop_home = "/var/lib/hadoop";
in
{
  # Install Hadoop
  environment.systemPackages = [ pkgs.hadoop pkgs.jdk11 ];

  # Create a dedicated user
  users.users.hadoop = {
    isSystemUser = true;
    group = "hadoop";
    home = hadoop_home;
    createHome = true;
    shell = pkgs.bash;
  };
  users.groups.hadoop = {};

  # Systemd Services
  systemd.services.hadoop-namenode = {
    description = "Hadoop NameNode";
    after = [ "network.target" ];
    wantedBy = [ "multi-user.target" ];
    serviceConfig = {
      User = "hadoop";
      WorkingDirectory = hadoop_home;
      # Note: You'll need to point to your actual hdfs-site.xml/core-site.xml
      ExecStart = "${pkgs.hadoop}/bin/hdfs --config ${hadoop_home}/config namenode";
      Restart = "always";
    };
  };

  systemd.services.hadoop-datanode = {
    description = "Hadoop DataNode";
    after = [ "network.target" "hadoop-namenode.service" ];
    wantedBy = [ "multi-user.target" ];
    serviceConfig = {
      User = "hadoop";
      WorkingDirectory = hadoop_home;
      ExecStart = "${pkgs.hadoop}/bin/hdfs --config ${hadoop_home}/config datanode";
      Restart = "always";
    };
  };
}
