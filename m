Return-Path: <eric@eukrea.com>
Received: from smtp3-g21.free.fr (smtp3-g21.free.fr [212.27.42.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6D95EE0148D;
	Wed,  6 Mar 2013 13:48:19 -0800 (PST)
Received: from e6520eb (tal33-3-82-233-81-124.fbx.proxad.net [82.233.81.124])
	(Authenticated sender: eukrea)
	by smtp3-g21.free.fr (Postfix) with ESMTPSA id AB255A623A;
	Wed,  6 Mar 2013 22:48:10 +0100 (CET)
Date: Wed, 6 Mar 2013 22:48:08 +0100
From: Eric =?UTF-8?B?QsOpbmFyZA==?= <eric@eukrea.com>
To: John Weber <rjohnweber@gmail.com>
Message-ID: <20130306224808.6efe1351@e6520eb>
In-Reply-To: <51375B7C.9010106@gmail.com>
References: <51375B7C.9010106@gmail.com>
Organization: =?UTF-8?B?RXVrcsOpYQ==?= Electromatique
X-Mailer: Claws Mail 3.9.0 (GTK+ 2.24.13; x86_64-redhat-linux-gnu)
Mime-Version: 1.0
Cc: "meta-freescale@yoctoproject.org" <meta-freescale@yoctoproject.org>,
	poky@yoctoproject.org
Subject: Re: [meta-freescale] Firmware loading
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 06 Mar 2013 21:48:22 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi John,

Le Wed, 06 Mar 2013 09:06:36 -0600,
John Weber <rjohnweber@gmail.com> a =C3=A9crit :

> I'm attempting to configure Linux to load firmware for a Broadcom SDIO Wi=
fi chip=20
> (BCM4329) onto an i.MX6-based board.
>=20
> Here is my main question - How is firmware supposed to be loaded within t=
he=20
> paradigm of a Yocto/Poky-built system?  Any insight and guidance is appre=
ciated.
>=20
> What I've done so far, and what I've discovered:
>=20
> I've incorporated the driver into the kernel (backported from an upstream=
 kernel=20
> rev), and removed the staging drivers present in 3.0.35.  It is built-in =
at the=20
> moment (not a module) and this is the error that I'm getting when it time=
s-out=20
> loading firmware:
>=20
> brcmfmac: brcmf_sdbrcm_download_code_file: Fail to request firmware -2
> brcmfmac: _brcmf_sdbrcm_download_firmware: dongle image file download fai=
led
> brcmfmac: brcmf_bus_start: brcmf_sdbrcm_bus_init failed -1
>=20
> The error code indicates that it cannot load firmware because it can't fi=
nd the=20
> firmware file.
>=20
> I've taken care to put the firmware in /lib/firmware/brcm (2 files).  The=
 driver=20
> hardcodes a relative path filename to the firmware files and I've made su=
re that=20
> they are the same.
>=20
> I've researched the firmware request process for the kernel.  My understa=
nding=20
> is that the process looks like this:
> 1) driver requests firmware file
> 2) kernel opens up a special set of files in sysfs (/sys/class/firmware/x=
xx=20
> where xxx is the device name)
> 3) kernel signals udev to load firmware, giving it the filename and the d=
evice name
> 4) udev, through its rules, locates the firmware file for the device and =
writes=20
> it to the special file in sysfs
>=20
if the driver is in the kernel it may not have the ability to require
the firmware from the file system as the file system may not yet be
mounted which can explain why you get the timeout.
You can check if you are in that case if you get the timeout log
before getting the log saying the filesystem is mounted.

To workaround that, you can integrate the firmware in the kernel image
by setting CONFIG_EXTRA_FIRMWARE=3D"path/to/your/firmware" in the kernel
config, so that your driver can get its firmware (or you can compile
your driver as a module and load it after the file system is mounted).

Eric

