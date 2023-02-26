# GNS3 Utilization

## Enable the server daemon

By default, the daemon installed by the gns3-server package necessary to enable the GNS3 server is disabled. To enable this daemon, you can run the ```/usr/share/kaisen-services-management/gns3-enable``` if the kaisen-services-management package is installed on your system.  

It is also possible to enable this service by running the ```sudo systemctl start gns3-server``` command, only to start the service or running the ```sudo systemctl enable --now gns3-server``` to start and activate the daemon at system startup.

## Using the GNS3 client with a remote server

If you need to use GNS3 with a remotely server connexion, you can create a GNS3 project directly in your home directory.

The GNS3 daemon must be disabled for this use case.

## Using the GNS3 client with the GNS3 server on the localhost

If you need to use GNS3 with the GNS3 server installed and used directly on the localhost, the GNS3 server only accepts to write in the **/var/lib/gns3** directory, because the gns3-server package was built to automatically add all usable users on the system in the GNS3 group. You can create a GNS3 project in the **/var/lib/gns3** directory.

The GNS3 daemon must be enabled for this use case.

## GNS3 server configuration

The configuration file for the GNS3 server can be found here: ```/var/lib/gns3/gns3_server.conf```. In this configuration file, you can set many settings like the TCP port or the IP address.