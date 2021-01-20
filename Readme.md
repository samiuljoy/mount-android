### Mount android on your Linux system with jmtpfs.

The script android-mount-unmount.sh mounts the android phone in /home/$USER/phone. Make sure to create a directory named phone under /home/$USER/.

Copy this script to /usr/local/bin or any executable directory under $PATH. Then plug in your android device and run `android-unmount-mount.sh` and it will mount the android in your /home/$USER/phone directory.  And to unmount just run `android-unmount-mount.sh` again. Simple as that.

### Prerequisites/Dependencies

* jmtpfs
* libc6
* libfuse2
* libgcc1
* libmagic1
* libmtp9
* libstdc++6
* fuse

Note: If you're on debian, you can install jmtpfs with;
```sh
apt install jmtpfs
```
which should pull all the required dependencies for the script to work properly.

**Feel free to open issues**
