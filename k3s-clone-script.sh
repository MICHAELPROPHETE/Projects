#k3s Clone Script

#k3s-01
sudo qm clone 10000 401 --full --storage villager-1 --name k3s-01
sudo qm set 401 --net0 virtio,bridge=vmbr0,macaddr=ba:ba:f9:4f:0e:b3
vzdump 401
#k3s-02
sudo qm clone 10000 402 --full --storage villager-1 --name k3s-02
sudo qm set 402 --net0 virtio,bridge=vmbr0,macaddr=fa:f7:48:99:5a:5c
vzdump 402
#k3s-03
sudo qm clone 10000 403 --full --storage villager-1 --name k3s-03
sudo qm set 403 --net0 virtio,bridge=vmbr0,macaddr=62:30:3f:87:4c:0e
vzdump 403
#k3s-04
sudo qm clone 10000 404 --full --storage villager-1 --name k3s-04
sudo qm set 404 --net0 virtio,bridge=vmbr0,macaddr=46:2a:ca:da:ae:02
vzdump 404
#k3s-05
sudo qm clone 10000 405 --full --storage villager-1 --name k3s-05
sudo qm set 405 --net0 virtio,bridge=vmbr0,macaddr=b2:39:3f:55:35:8c
vzdump 405

clear

echo "the vm's are set,backed up, and ready to go"