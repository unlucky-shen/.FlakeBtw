{ config, pkgs, ... }:

{
	environment.systemPackages = with pkgs; [
		hadoop
		jdk
	];

	# Configure the single-node Hadoop cluster
	services.hadoop = {
		# The equivalent of core-site.xml
		coreSite = {
			"fs.defaultFS" = "hdfs://localhost:8020";
		};

		# Set up HDFS (Storage)
		hdfs = {
			namenode = {
				enable = true;
				formatOnInit = true; 
			};
			datanode = {
				enable = true;
			};
		};

		# YARN / MapReduce
		yarn = {
			resourcemanager = {
				enable = true;
			};
			nodemanager = {
				enable = true;
			};
		};
	};
}
