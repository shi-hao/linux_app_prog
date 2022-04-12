service - run a System V init script  
  
service -SCRIPT-  -COMMAND-  [OPTIONS]  
	service runs a System V init script or systemd unit in as predictable an environment as possible,   
	remov‐ing most environment variables and with the current working directory set to /.  

	The SCRIPT parameter specifies a System V init script, located in /etc/init.d/SCRIPT,or the name of a 
	systemd unit.  

	All scripts should support at least the start and stop commands.  
  
FILES  
	/etc/init.d  
	The directory containing System V init scripts.  
