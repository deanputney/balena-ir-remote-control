# Balena IR Remote Control
Control IR devices using a [Balena](https://www.balena.io/) deployed Raspberry Pi and [LIRC](https://lirc.org/)

Using some very simple sensors and LEDs, you can create an automated remote control using a Raspberry Pi. 
This repository aims to make this starter electronics project a stable deployment via Balena's Docker-focused structure.

## Why use this repository?

* I used [Digikey's instructions](https://www.digikey.com/en/maker/blogs/2021/how-to-send-and-receive-ir-signals-with-a-raspberry-pi) 
to set up the basis of the electronics, and mostly to walk through the set up of LIRC. These are easy to follow or lightly modify for your use case.
* Balena manages the provisioning, deployment, and access to the Raspberry Pi. This is the primary advantage of using this project versus rolling your own.
* New remote control configurations can be established via `irrecord` on the deployed device.
* Triggering IR codes or macros is written in Python. This should be easy for you to update for your use case. **TODO**
* Balena can expose a public URL for your device. This allows you to easily connect it to a voice assistant like Google Home. **TODO**
