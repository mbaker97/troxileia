Troxileia is a Kubernetes controller that reconfigures a network tap if pods are consistently crashing on a node and/or if "sensor" label on a node is changed from true to false. Troxileia is designed to be used with sensors like Zeek, Moloch, and Suricata. It assures that the load balancing being done by the tap is consistent with the current state of the cluster.
![](http://github.com/mbaker97/troxileia/blob/master/trox.jpg?raw=true "Troxileia")

