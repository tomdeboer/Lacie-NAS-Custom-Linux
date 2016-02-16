# Lacie NAS Custom Linux

<img src="http://cdn.toptenreviews.com/rev/scrn/large/50537-lacie-d2-network-21.jpg" alt="Lacie D2 Network V2" style="max-width: 30%;" align="right"/>

> Small warning: work on this repos has just started and it is far from finished. Still a lot of manual work is needed to complete the setup. Just though I'd say that beforehand.

This is a highly experimental repository for creating a custom buildroot environment on a Lacie D2 Network V2, a quite capable NAS system with a 1.2Ghz ARM Core.

Specs are the following:

- Marvell Kirkwood 88F6281: Feroceon 88FR131 rev 1 (v5l) @ 1.2 GHz
- 256 MB RAM
- 2x SATA (one internal, one external eSATA)
- One USB 2.0 port
- 512 kByte serial (U-Boot)

My goal is to give it some of it's original functionality back since the original disk stopped working and recovery using Lacie's recovery utitlity was no longer possible. Basicaly make it a drop-in replacement for any  D2 Network V2 with a broken disk. Though it won't be Lacie compatiable after that.

In addition, I'm going to use it for some home projects and automation, modding it here and there along the way.

At this point the repos is quite empty and most kernel settings are set to their defaults. A lot of manual work is also needed to setup buildroot. This will soon change as I add little scripts to automate most tasks. A lot like [Orange Tux did in his repo](https://hub.docker.com/r/orangetux/buildroot/).

<img src="http://scriptkiller.de/pics/lacie_d2_network_2/small/top_with_disk.jpg" alt="Lacie D2 Network V2 Board" style="max-width: 100%;"/>

It's quite clean and it's built out of aluminium. The blue light has an extra red LED next to it and it works a button attached to one of the GPIO. This is what the Lacie looks like on the inside. 
