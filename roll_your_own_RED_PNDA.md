# Roll your own RED PNDA

## Prerequisities

**OS Prerequisite**

This guide assumes your machine have access to the internet.

Also assumes you are running on Linux Ubuntu distro.

**RAM:** 4GB

**Disk Space:** Minimum 7GB

**CPUs:** 2 VCores preferred.

## Next Steps

The starting point would be to refer to the **`scripts/install-dependencies.sh`** file which installs all the necessary dependencies and starts installing the required components one by one.

Run it as root:

    sudo bash scripts/install-dependencies.sh <reachable-network-interface here e.g. eth0 or eth1>
    
It might take a while but once it's done, reboot your system once:

    sudo reboot
    
After reboot, if you see any issue with opentsdb service, it might require a restart as it might be a bit finicky, execute the script:

    sudo bash /opt/pnda/zk-opentsdb-restart.sh
    

Go to your browser and type `http://<your-ip-here>` to view the PNDA console.

If it doesn't work, check your nginx configuration. 

Congratulations, you have successfully installed Red PNDA on your own!

## Development

Alternatively, for development purposes, you can start the PNDA console in local mode:

    cd /opt/pnda/console-frontend
    sudo npm install -g grunt-cli
    grunt
    grunt serve

Go to your browser and type `http://<your-ip-here>:8006` to view the console.