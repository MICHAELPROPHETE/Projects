#k3s Clone Script

#k3s-01
sudo qm clone 10000 401 --full --storage villager-1 --name k3s-01
sudo qm set 401 --net0 virtio,bridge=vmbr0,macaddr=<my vm mac address>
vzdump 401
#k3s-02
sudo qm clone 10000 402 --full --storage villager-1 --name k3s-02
sudo qm set 402 --net0 virtio,bridge=vmbr0,macaddr=<my vm mac address>
vzdump 402
#k3s-03
sudo qm clone 10000 403 --full --storage villager-1 --name k3s-03
sudo qm set 403 --net0 virtio,bridge=vmbr0,macaddr=<my vm mac address>
vzdump 403
#k3s-04
sudo qm clone 10000 404 --full --storage villager-1 --name k3s-04
sudo qm set 404 --net0 virtio,bridge=vmbr0,macaddr=<my vm mac address>
vzdump 404
#k3s-05
sudo qm clone 10000 405 --full --storage villager-1 --name k3s-05
sudo qm set 405 --net0 virtio,bridge=vmbr0,macaddr=<my vm mac address>
vzdump 405

clear

echo "the vm's are set,backed up, and ready to go"