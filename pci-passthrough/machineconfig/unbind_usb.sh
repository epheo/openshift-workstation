echo 0000:0b:00.3 > /sys/bus/pci/devices/0000\:0b\:00.3/driver/unbind
echo 1043 87c0 > /sys/bus/pci/drivers/vfio-pci/new_id
