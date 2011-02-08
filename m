Return-Path: <embedded.yogesh@gmail.com>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 57B934C80A7C
	for <poky@yoctoproject.org>; Tue,  8 Feb 2011 06:21:16 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pzk28 with SMTP id 28so1297709pzk.35
	for <poky@yoctoproject.org>; Tue, 08 Feb 2011 04:21:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:message-id:date:from:user-agent:mime-version:to
	:subject:content-type;
	bh=PyopIgz8xYBD0c8fQho7be/iEbM9QIphwxygeVVpYO0=;
	b=fX1EOKBx88XQBMhkyGCmUMi3tk9Ssn33aQV3gHpQWw5EyXsly0Zy26m7C8ZGhRt3Oz
	5Fxvs70zO+0wHpwSes9ha7C7eG+/m4W4yqSrFbXJ24uCDHEsJi/sMNmzoguOgQWr/nwP
	TXWnnZwqJ4Qi0+52tS+kqu9EJ3srdGCzSCqzc=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type;
	b=hCvr/FY4QC+k/tULW3/c8NX5z1I+hpd4qXCA/emHy2DALIeHADBWfh/+L0VmwQUO/C
	6LmslNqj2+5xU0Uj2xRNuKxe0zXjZ6R+QuG4gTG6XvpT2rVKG98wR/oLw8Twb65v9Y7n
	eeGxW/B24OrRBnhN1lFdJhchg79Q8YmiCAVfw=
Received: by 10.142.188.10 with SMTP id l10mr532635wff.194.1297167675931;
	Tue, 08 Feb 2011 04:21:15 -0800 (PST)
Received: from [192.168.11.118] ([115.111.25.162])
	by mx.google.com with ESMTPS id b11sm7499215wff.9.2011.02.08.04.21.13
	(version=SSLv3 cipher=RC4-MD5); Tue, 08 Feb 2011 04:21:15 -0800 (PST)
Message-ID: <4D513536.8050909@gmail.com>
Date: Tue, 08 Feb 2011 17:51:10 +0530
From: "embedded.yogesh" <embedded.yogesh@gmail.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.15pre) Gecko/20110202 Shredder/3.1.9pre
MIME-Version: 1.0
To: poky@yoctoproject.org
Subject: Need help in Xserver
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 08 Feb 2011 12:21:16 -0000
X-Groupsio-MsgNum: 3447
Content-Type: multipart/mixed; boundary="------------090408020706040608050809"

--------------090408020706040608050809
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi

I want to build a minimum build for Xserver, I am using 
poky-image-minimal and adding "x11-common task-poky-x11-netbook gtk+ 
libxscrnsaver libx11 xserver-xf86-lite xf86-video-intel xf86-input-evdev 
xserver-xf86-config"  packages.
But while starting Xserver I got error in Xorg, I am attaching the log file.

Thanks

--------------090408020706040608050809
Content-Type: text/x-log;
 name="Xorg.0.log"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="Xorg.0.log"

(WW) Failed to open protocol names file /usr/lib/xorg/protocol.txt
This is a pre-release version of the X server from The X.Org Foundation.
It is not supported in any way.
Bugs may be filed in the bugzilla at http://bugs.freedesktop.org/.
Select the "xorg" product for bugs you find in this release.
Before reporting bugs in pre-release versions please check the
latest version in the X.Org Foundation git repository.
See http://wiki.x.org/wiki/GitPage for git access instructions.

X.Org X Server 1.7.99.2
Release Date: 2009-12-18
X Protocol Version 11, Revision 0
Build Operating System: Linux 2.6.32-28-generic-pae i686 
Current Operating System: Linux netbook 2.6.33.2 #1 SMP PREEMPT Mon Feb 7 17:48:36 IST 2011 i686
Kernel command line: root=/dev/sda2 rw video=intelfb:mode=800x600,accel=0,hwcursor=0 vga=788 quiet
Build Date: 08 February 2011  03:04:05PM
 
Current version of pixman: 0.17.4
	Before reporting problems, check http://wiki.x.org
	to make sure that you have the latest version.
Markers: (--) probed, (**) from config file, (==) default setting,
	(++) from command line, (!!) notice, (II) informational,
	(WW) warning, (EE) error, (NI) not implemented, (??) unknown.
(==) Log file: "/var/log/Xorg.0.log", Time: Sat Jan 29 05:40:30 2011
(==) Using config file: "/etc/X11/xorg.conf"
(==) ServerLayout "Default Layout"
(**) |-->Screen "Default Screen" (0)
(**) |   |-->Monitor "Generic Monitor"
(**) |   |-->Device "Intel Graphics Driver"
(**) Option "DontZap" "0"
(==) Automatically adding devices
(==) Automatically enabling devices
(WW) The directory "/usr/share/fonts/X11/TTF/" does not exist.
	Entry deleted from font path.
(WW) The directory "/usr/share/fonts/X11/OTF/" does not exist.
	Entry deleted from font path.
(WW) The directory "/usr/share/fonts/X11/Type1/" does not exist.
	Entry deleted from font path.
(WW) The directory "/usr/share/fonts/X11/100dpi/" does not exist.
	Entry deleted from font path.
(WW) The directory "/usr/share/fonts/X11/75dpi/" does not exist.
	Entry deleted from font path.
(==) FontPath set to:
	/usr/share/fonts/X11/misc/
(==) ModulePath set to "/usr/lib/xorg/modules"
(II) Cannot locate a core pointer device.
(II) Cannot locate a core keyboard device.
(II) The server relies on HAL to provide the list of input devices.
	If no devices become available, reconfigure HAL or disable AutoAddDevices.
(II) Loader magic: 0x81dc460
(II) Module ABI versions:
	X.Org ANSI C Emulation: 0.4
	X.Org Video Driver: 7.0
	X.Org XInput driver : 8.0
	X.Org Server Extension : 3.0
(--) PCI:*(0:0:2:0) 8086:2e22:1028:0285 rev 3, Mem @ 0xfe400000/4194304, 0xd0000000/268435456, I/O @ 0x0000dc00/8
(--) PCI: (0:0:2:1) 8086:2e23:1028:0285 rev 3, Mem @ 0xfe900000/1048576
(WW) Open ACPI failed (/var/run/acpid.socket) (No such file or directory)
(II) LoadModule: "extmod"
(II) Loading /usr/lib/xorg/modules/extensions/libextmod.so
(II) Module extmod: vendor="X.Org Foundation"
	compiled for 1.7.99.2, module version = 1.0.0
	Module class: X.Org Server Extension
	ABI class: X.Org Server Extension, version 3.0
(II) Loading extension MIT-SCREEN-SAVER
(II) Loading extension DPMS
(II) Loading extension XVideo
(II) Loading extension XVideo-MotionCompensation
(II) Loading extension X-Resource
(II) LoadModule: "dbe"
(II) Loading /usr/lib/xorg/modules/extensions/libdbe.so
(II) Module dbe: vendor="X.Org Foundation"
	compiled for 1.7.99.2, module version = 1.0.0
	Module class: X.Org Server Extension
	ABI class: X.Org Server Extension, version 3.0
(II) Loading extension DOUBLE-BUFFER
(II) LoadModule: "dri2"
(II) Loading /usr/lib/xorg/modules/extensions/libdri2.so
(II) Module dri2: vendor="X.Org Foundation"
	compiled for 1.7.99.2, module version = 1.1.0
	ABI class: X.Org Server Extension, version 3.0
(II) Loading extension DRI2
(II) LoadModule: "intel"
(II) Loading /usr/lib/xorg/modules/drivers/intel_drv.so
(II) Module intel: vendor="X.Org Foundation"
	compiled for 1.7.99.2, module version = 2.10.0
	Module class: X.Org Video Driver
	ABI class: X.Org Video Driver, version 7.0
(II) intel: Driver for Intel Integrated Graphics Chipsets: i810,
	i810-dc100, i810e, i815, i830M, 845G, 852GM/855GM, 865G, 915G,
	E7221 (i915), 915GM, 945G, 945GM, 945GME, Pineview GM, Pineview G,
	965G, G35, 965Q, 946GZ, 965GM, 965GME/GLE, G33, Q35, Q33, GM45,
	4 Series, G45/G43, Q45/Q43, G41, B43, Clarkdale, Arrandale
(--) using VT number 2

(II) Primary Device is: PCI 00@00:02:0
(EE) intel(0): No kernel modesetting driver detected.
(II) UnloadModule: "intel"
(EE) Screen(s) found, but none have a usable configuration.

Fatal server error:
no screens found

Please consult the The X.Org Foundation support 
	 at http://wiki.x.org
 for help. 
Please also check the log file at "/var/log/Xorg.0.log" for additional information.


--------------090408020706040608050809--
