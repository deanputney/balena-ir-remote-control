https://www.digikey.com/en/maker/blogs/2021/how-to-send-and-receive-ir-signals-with-a-raspberry-pi

## Switch to irrecord mode

1. Edit /etc/lirc/lirc_options.conf with vim
2. Set `device = /dev/lirc0` to `/dev/lirc1`

```
/etc/init.d/lircd stop
mode2 -d /dev/lirc0 # Not sure if this actually does anything
irrecord
```
