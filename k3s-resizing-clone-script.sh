#k3s resizing clone script

qm resize 401 scsi0 +168G && qm resize 402 scsi0 +168G && qm resize 403 scsi0 +168G && qm resize 404 scsi0 +368G && qm resize 405 scsi0 +368G

clear

echo "vm's 401, 402, 403, 404, & 405 memory has been resized"