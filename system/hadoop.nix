{ configs, pkgs, ... }:

let
  hadoop_home = "/var/lib/hadoop";
in
{
  # 1. Install the package
  environment.systemPackages = [ pkgs.hadoop pkgs.jdk11 ];

  # 2. Create a dedicated user/group
  users.users.hadoop = {
    isSystemUser = true;
    group = "hadoop";
    home = hadoop_home;
    createHome = true;
    shell = pkgs.bash;
  };
  users.groups.hadoop = {};

  # 3. Manual Systemd Services
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
