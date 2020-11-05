# kernel panic
linux x-windows出现问题，只要能够成功切换到命令行，那么问题基本上就解决了。
kernel panic问题出现了，问题就很棘手，因为系统无法正常启动。

## live usb
系统无法正常boot，可以制作一个live usb设备来将系统启动，启动后，选择
try ubuntu，然后可以正常看到之前系统的盘符，可以拷贝文件，或者尝试进行修复
系统。

This page describes methods for using the Ubuntu Live CD for recovering from
different kinds of problems. If you do not have an Ubuntu disk, please refer
to GettingUbuntu. If you have any issues booting the LiveCD, please have a
look at the BootFromCD page. Most of the methods described below can also be
used from RecoveryMode

### Lost Password
Here is how you can use the Live CD to change the administrative password on 
your machine if you have lost/forgot the current password. Please note that 
you can usually boot into RecoveryMode and run the passwd command directly.

1.Boot the Ubuntu Live CD.
2.Press Ctrl-Alt-F1
3.sudo mount /dev/sda1 /mnt
4.If you created a custom partition layout when installing Ubuntu you have to 
  find your root partition using the fdisk utility. See the section Finding your root partition.
5.sudo chroot /mnt 

You can now use the passwd command to reset a password.
Note: In the mount command, /dev/sda1 will need to be replaced with the 
partition where the root of the file system resides. 

### Add User to a Group
If you have removed yourself from a group, you can use the following to add 
yourself again. Please note that you can usually use RecoveryMode and run the adduser command directly.

    Boot the Ubuntu Live CD.

    Press Ctrl-Alt-F1

    sudo mount /dev/sda1 /mnt

    sudo chroot /mnt

    adduser username groupname

### Update Failure
If there was an update that made your system non-bootable and they have fixed it 
in the repositories, you can use the Live CD to run apt-get to get the new files to fix your system.

    Boot the Ubuntu Live CD.

    Press Ctrl-Alt-F1

    sudo mount /dev/sda1 /mnt

    sudo mount --bind /dev /mnt/dev

    sudo mount --bind /proc /mnt/proc

    sudo mount --bind /sys /mnt/sys

    sudo chroot /mnt

    apt update

    apt upgrade 
If you have trouble accessing your network after chroot, you probably use 
DHCP and can work around this by adding OpenDNS name servers to your /etc/resolv.conf after you use chroot:

nameserver 208.67.222.222
nameserver 208.67.220.220

### Finding your root partition

If you created a custom partition layout during the Ubuntu installation, 
your root partition is probably not /dev/sda1 or /dev/sda1. If you do 
not know which partition corresponds to your root partition you can use 
the following procedure to find your root partition. We assume you have
booted the live cd and are at the terminal.

    If you are not using a software raid setup or have setup your partitions 
using LVM/2 or EVMS your IDE/SATA/SCSI devices should be accessible through 
the files /dev/hd[a-z] and /dev/sd[a-z]. /dev/hda corresponds to the primary 
master device on your IDE bus, while /dev/sda is your first SCSI/SATA device.
If you are using software raid, LVM, LVM2 or EVMS, your devices may be listed in the following directories:

    /dev/evms/dm     if you are using software raid
    /dev/evms/lvm    if you are using LVM
    /dev/evms/lvm2   if you are using LVM2
    /dev/evms        if you are using EVMS

    with their device (software raid) or partition name. You can learn more 
about Linux partitions here: http://tldp.org/HOWTO/Partition

    Now use the fdisk utility to list the partitions on a device. Let's assume 
that you installed Ubuntu to the fist IDE disk. Type the following:

    sudo fdisk -l /dev/sda

This will produce some output like this:

Password:

Disk /dev/sda: 120.0 GB, 120034123776 bytes
16 heads, 63 sectors/track, 232581 cylinders
Units = cylinders of 1008 * 512 = 516096 bytes

   Device Boot      Start         End      Blocks   Id  System
/dev/sda1   *           1       13206     6655792+   7  HPFS/NTFS
/dev/sda2           13207      232581   110565000    5  Extended
/dev/sda5          228706      232484     1904616   82  Linux swap / Solaris
/dev/sda6           13207      228705   108611464+  83  Linux
/dev/sda7          232485      232581       48856+  83  Linux

Partition table entries are not in disk order

That means you have two standard Linux partitions on your disk: /dev/sda6 and /dev/sda7. 
You can now try to mount them and see if your Ubuntu installation is there. 
In this case /dev/sda7 is probably not the root partition, because it is only about 
50MiB in size (see the Blocks column). Therefore we mount /dev/sda6:

sudo mount /dev/sda6 /mnt

Now show the files on the partition:

ls /mnt

If this command shows something like:

bin     dev      home      media     proc      sbin     tmp     var
boot    etc      lib       opt       root      sys      usr

it is a partition holding a Linux distribution. You can check if it really 
is Ubuntu (if you have multiple linux installations on your disk) using the following command:

cat /mnt/etc/lsb-release

That will give you some information about the distribution (if this file does not exist, 
it is probably not Ubuntu). If it is the wrong partition, just unmount it: sudo umount 
/mnt and try another partition on the same disk or choose a different partition on another
disk (using fdisk as before).

### Recover Grub 2

Please see this page: https://wiki.ubuntu.com/Grub2#Recover Grub 2 via LiveCD

### Recover Grub

If you install some other system, or change drives and lose your Grub bootloader. 
For more information please have a look at the Grub page.

    Boot the Ubuntu Live CD.

    Press Ctrl-Alt-F1
    Find the partition where your /boot directory is (normally the root partition) check the previous tip for that.

    sudo mount /dev/sda1 /mnt

    sudo chroot /mnt

    grub

    find /boot/grub/stage1 (will output a partition name like (hd0,3) )

    root (hd0,3)

    setup (hd0)

    quit
    Now restart the system and remove the Live CD 

The GUI Way: Reinstalling Grub

    Boot your computer with the Ubuntu CD
    Go through the installation process until you reach "[!!!] Disk Partition"
    Select Manual Partition
    Mount your appropriate linux partions:
        /
        /boot
        swap
        ... 

    DO NOT FORMAT THEM.
    Finish the manual partition
    Say "Yes" when it asks you to save the changes
    It will give you errors saying that "the system couldn't install ....." after that
    Ignore them, keep select "continue" until you get back to the Ubuntu installation menu
    Jump to "Install Grub ...."
    Once it is finished, just restart your computer 
