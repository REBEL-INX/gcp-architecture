output "instance_external_ip" {
    value = {
        vm1 = "http://${google_compute_instance.main-instance.network_interface[0].access_config[0].nat_ip}"
        vm2 = "http://${google_compute_instance.hoop-tracker.network_interface[0].access_config[0].nat_ip}"
        # vm3 = "http://${google_compute_instance.hoop-tracker2.network_interface[0].access_config[0].nat_ip}"
    }
    description = "The external IP address of the GCE instance."  
}