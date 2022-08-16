# installing libguestfs-tools only required once, prior to first run
sudo apt update -y
sudo apt install libguestfs-tools -y

# remove existing image in case last execution did not complete successfully
rm focal-server-cloudimg-amd64.img
wget https://cloud-images.ubuntu.com/focal/current/focal-server-cloudimg-amd64.img
sudo virt-customize -a focal-server-cloudimg-amd64.img --install qemu-guest-agent
sudo qm create 10000 --name "ubuntu-cloudinit-template" --memory 4096 --cores 4 --net0 virtio,bridge=vmbr0
sudo qm importdisk 10000 focal-server-cloudimg-amd64.img villager-1
sudo qm set 10000 --scsihw virtio-scsi-pci --scsi0 villager-1:vm-10000-disk-0
sudo qm set 10000 --boot c --bootdisk scsi0
sudo qm set 10000 --ide2 villager-1:cloudinit
sudo qm set 10000 --serial0 socket --vga serial0
sudo qm set 10000 --ipconfig0 ip=dhcp
sudo qm resize 10000 scsi0 32G
sudo qm set 10000 --agent enabled=1
sudo qm template 10000
rm focal-server-cloudimg-amd64.img
echo "next up, clone VM, then expand the disk"
echo "you also still need to copy ssh keys to the newly cloned VM"