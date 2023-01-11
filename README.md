#Reproducer for echo packets through vrfs

This aims to be a simple reproducer to show echo packets not passing when using bgp + bfd though a vrf.

To spin it up:

`docker-compose up` will bring up two frr containers configured to talk between themselves.

`docker-compose exec withvrf /data/node_setup.sh` will create the vrf and set the proper sysctl to make bfd work.

Then enter in the peer using `docker-compose exec peer bash` and check the echo counters are 0 with `show bfd peers counters` from vtysh.
