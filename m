Return-Path: <anand.build1985@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E8AB6E00C4B; Thu, 31 May 2018 02:03:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, WEIRD_PORT autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.215.52 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (anand.build1985[at]gmail.com)
	*  0.0 WEIRD_PORT URI: Uses non-standard port number for HTTP
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f52.google.com (mail-lf0-f52.google.com
	[209.85.215.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 134BFE00A0C
	for <poky@yoctoproject.org>; Thu, 31 May 2018 02:03:38 -0700 (PDT)
Received: by mail-lf0-f52.google.com with SMTP id t134-v6so8617117lff.6
	for <poky@yoctoproject.org>; Thu, 31 May 2018 02:03:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=IezRIlPFPQOMITYE3+FGvaGagkt2FzlcNPpJDYJPTA4=;
	b=Nt/0fWaZ3eKvHrk+HUChC9n9AVu0vgzzciQdrpI7C8Ae069n15qhIT2aaZxyWaRJMT
	7Xa5gc3+WcuI8JNZUtA3+RWRwiTuGVVn0YILBm8tI36A+EH/MFSqUcMY75IxCWhuMDVY
	fSXwPYq2V0ZgNrvh0BdMlqW+OlrWDYIvDOEeXKgiEBK5eIEVgyt/mz9PeSnRfatEQVa0
	DJPc5rI2tQT+EDkpureBa4G+De2Rg9JR6YikJeYCodTFGdKOQynYEsR3WZ9ecPlIkgeV
	VwZ/y1N4SBEB+wik1YZbNgSyuhMfOqNjWeFqjNsKSRjbGQbq8B21Y1Brtcc0Xg2RsV5g
	OEkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=IezRIlPFPQOMITYE3+FGvaGagkt2FzlcNPpJDYJPTA4=;
	b=CZxkIWIB2RlgT1+losTo+TQN3QojrD9whwPq03zXRIKYtUfqt5I/fiEoqotpskSf21
	TO/Vmh4T0KKsh/JoOGUzwcKjks6X75S6zP/OWtnYDqNt+w/cVD/u0xb7sJQxp+u6QnPa
	XPQ/IiscnTkqJIEwrwKk9pXoo6ydX7YzCaVnQnDRZ5SP7lZ14IhiLQP5Vyuh+zkoD8tD
	APTciP0DfiAMpxqwYZHwW4XJfg7NOJ4lPSD+bjqk9dfHadGDwWJjO+XnD2dePsAgw7MT
	XWmCXA5SUvyBsYqKIEd7FXuZZa0B9NiXcV2x8RErOj/GKAXOeMPBv58GifyJx354031s
	MSsQ==
X-Gm-Message-State: ALKqPwfciKvvCLfOcbCuieq9RBLcOqOPeqo/IKTxNwgsw2hrIxiR7R29
	DMwrUknOmt/4s4JxnptmOgYtban1+hoffXjUHA4rJw==
X-Google-Smtp-Source: ADUXVKI7xqFSBrztrl+sZoYDSULVIoElAHLmUuxkViaonisdo+ZfcPfwupb6ZlagFiS2tyaU1Hh45tYITiMdz7IyNog=
X-Received: by 2002:a19:9a10:: with SMTP id
	c16-v6mr3974667lfe.60.1527757417657; 
	Thu, 31 May 2018 02:03:37 -0700 (PDT)
MIME-Version: 1.0
References: <CA+=TBV4mm5aUmcCbhobgtZt7AN=4oJYe3n-wTC_kL7vmUGLKkQ@mail.gmail.com>
	<D4F5B5CFEF9DBB4A9DDB70CFEF737641029EE5D7@PGSMSX104.gar.corp.intel.com>
	<CA+=TBV5Sx_p_0xa77b5FFb=swc68k49MzOj5ugHEthVNmY=bxA@mail.gmail.com>
	<D4F5B5CFEF9DBB4A9DDB70CFEF737641029EE689@PGSMSX104.gar.corp.intel.com>
In-Reply-To: <D4F5B5CFEF9DBB4A9DDB70CFEF737641029EE689@PGSMSX104.gar.corp.intel.com>
From: Anand Ingale <anand.build1985@gmail.com>
Date: Thu, 31 May 2018 14:33:26 +0530
Message-ID: <CA+=TBV6bQSXr8XcmvgTg5gUTmy8qESwKumNUNpm8cksh4QA8kQ@mail.gmail.com>
To: apoorv.sangal@intel.com, poky@yoctoproject.org
Subject: Re: testimage feature ( automated tests for qemu images ) not working for qemuarm virt machine
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
X-List-Received-Date: Thu, 31 May 2018 09:03:41 -0000
Content-Type: multipart/alternative; boundary="0000000000002eb8a3056d7cbe21"

--0000000000002eb8a3056d7cbe21
Content-Type: text/plain; charset="UTF-8"

AIngale@swpfintbld03:~/Poky-1/poky-virt/build-2$ bitbake core-image-minimal
-c testimage
WARNING: Host distribution "ubuntu-14.04" has not been validated with this
version of the build system; you may possibly experience unexpected
failures. It is recommended that you use a tested distribution.
Loading cache: 100%
|###########################################################################################################|
Time: 0:00:00
Loaded 1280 entries from dependency cache.
NOTE: Resolving any missing task queue dependencies

Build Configuration:
BB_VERSION           = "1.36.0"
BUILD_SYS            = "x86_64-linux"
NATIVELSBSTRING      = "universal-4.8"
TARGET_SYS           = "arm-poky-linux-gnueabi"
MACHINE              = "qemuarm"
DISTRO               = "poky"
DISTRO_VERSION       = "2.4.2"
TUNE_FEATURES        = "arm armv5 thumb dsp"
TARGET_FPU           = "soft"
meta
meta-poky
meta-yocto-bsp       = "rocko:9915e071bcadd7c4d5363a067c529889851d37a5"

Initialising tasks: 100%
|######################################################################################################|
Time: 0:00:03
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
WARNING: core-image-minimal-1.0-r0 do_testimage: Qemu ended unexpectedly,
dump data from host is in /tmp/oe-saved-tests/201805310859_qemu
ERROR: core-image-minimal-1.0-r0 do_testimage: testimage received SIGTERM,
shutting down...
ERROR: core-image-minimal-1.0-r0 do_testimage: core-image-minimal - FAILED
- tests were interrupted during execution
ERROR: core-image-minimal-1.0-r0 do_testimage: Function failed: do_testimage
ERROR: Logfile of failure stored in:
/home/AIngale/Poky-1/poky-virt/build-2/tmp/work/qemuarm-poky-linux-gnueabi/core-image-minimal/1.0-r0/temp/log.do_testimage.45252
Log data follows:
| DEBUG: Executing python function extend_recipe_sysroot
| NOTE: Direct dependencies are
['virtual:native:/home/AIngale/Poky-1/poky-virt/meta/recipes-devtools/createrepo-c/createrepo-c_git.bb:do_populate_sysroot',
'virtual:native:/home/AIngale/Poky-1/poky-virt/meta/recipes-devtools/qemu/qemu_2.10.0.bb:do_populate_sysroot',
'/home/AIngale/Poky-1/poky-virt/meta/recipes-devtools/qemu/qemu-helper-native_1.0.bb:do_populate_sysroot',
'virtual:native:/home/AIngale/Poky-1/poky-virt/meta/recipes-extended/cpio/cpio_2.12.bb:
do_populate_sysroot']
| NOTE: Installed into sysroot: []
| NOTE: Skipping as already exists in sysroot: ['createrepo-c-native',
'qemu-native', 'qemu-helper-native', 'cpio-native', 'quilt-native',
'zlib-native', 'pkgconfig-native', 'alsa-lib-native', 'libtool-native',
'pixman-native', 'automake-native', 'glib-2.0-native', 'libsdl-native',
'dtc-native', 'autoconf-native', 'gnu-config-native',
'texinfo-dummy-native', 'gettext-minimal-native', 'curl-native',
'cmake-native', 'file-native', 'python3-native', 'rpm-native',
'sqlite3-native', 'libxml2-native', 'openssl-native', 'xz-native',
'expat-native', 'libpng-native', 'util-macros-native', 'gettext-native',
'gtk-doc-native', 'libpcre-native', 'libffi-native', 'util-linux-native',
'libxext-native', 'libxrender-native', 'libxrandr-native', 'libx11-native',
'flex-native', 'bison-native', 'm4-native', 'bzip2-native',
'readline-native', 'nss-native', 'elfutils-native', 'popt-native',
'db-native', 'libarchive-native', 'dbus-native', 'makedepend-native',
'cryptodev-linux-native', 'pigz-native', 'ncurses-native', 'lzo-native',
'xextproto-native', 'xproto-native', 'renderproto-native',
'randrproto-native', 'inputproto-native', 'xtrans-native', 'libxcb-native',
'kbproto-native', 'nspr-native', 'e2fsprogs-native',
'libpthread-stubs-native', 'libxdmcp-native', 'xcb-proto-native',
'libxau-native', 'attr-native']
| DEBUG: Python function extend_recipe_sysroot finished
| DEBUG: Executing python function do_testimage
| DEBUG: Not using kvm for runqemu
| DEBUG: Created listening socket for qemu serial console on:
127.0.0.1:33331
| DEBUG: Created listening socket for qemu serial console on:
127.0.0.1:49750
| DEBUG: launchcmd=runqemu snapshot   nographic qemuarm
/home/AIngale/Poky-1/poky-virt/build-2/tmp/deploy/images/qemuarm/core-image-minimal-qemuarm.ext4
tcpserial=49750 bootparams="console=tty1 console=ttyS0,115200n8
printk.time=1" qemuparams="-serial tcp:127.0.0.1:33331 -pidfile
pidfile_45252"
| DEBUG: runqemu started, pid is 45707
| DEBUG: waiting at most 120 seconds for qemu pid
| DEBUG: qemu started in 2.0028998851776123 seconds - qemu procces pid is
47588
| DEBUG: qemu cmdline used:
|
/home/AIngale/Poky-1/poky-virt/build-2/tmp/work/x86_64-linux/qemu-helper-native/1.0-r1/recipe-sysroot-native/usr/bin/qemu-system-arm
-device virtio-net-pci,netdev=net0,mac=52:54:00:12:34:02 -netdev
tap,id=net0,ifname=tap0,script=no,downscript=no -drive
file=/home/AIngale/Poky-1/poky-virt/build-2/tmp/deploy/images/qemuarm/core-image-minimal-qemuarm.ext4,if=virtio,format=raw
-show-cursor -device virtio-rng-pci -nographic -serial tcp:127.0.0.1:33331
-pidfile pidfile_45252 -machine virt -m 256 -serial tcp:127.0.0.1:49750
-snapshot -kernel
/home/AIngale/Poky-1/poky-virt/build-2/tmp/deploy/images/qemuarm/zImage
-append root=/dev/vda rw highres=off  console=ttyS0 mem=256M ip=192.168.7.2:
:192.168.7.1:255.255.255.0 console=ttyAMA0,115200 console=tty console=tty1
console=ttyS0,115200n8 printk.time=1
| DEBUG: Target IP: 192.168.7.2
| DEBUG: Server IP: 192.168.7.1
| DEBUG: Starting logging thread
| DEBUG: Starting thread event loop
| DEBUG: Connection request received
| DEBUG: Setting connection established event
| DEBUG: Output from runqemu:
| runqemu - INFO - Continuing with the following parameters:
|
| runqemu - INFO - Using preconfigured tap device tap0
| runqemu - INFO - If this is not intended, touch
/tmp/qemu-tap-locks/tap0.skip to make runqemu skip tap0.
| runqemu - INFO - Network configuration: 192.168.7.2::192.168.7.1:255
.255.255.0
| runqemu - INFO - Running
/home/AIngale/Poky-1/poky-virt/build-2/tmp/work/x86_64-linux/qemu-helper-native/1.0-r1/recipe-sysroot-native/usr/bin/qemu-system-arm
-device virtio-net-pci,netdev=net0,mac=52:54:00:12:34:02 -netdev
tap,id=net0,ifname=tap0,script=no,downscript=no -drive
file=/home/AIngale/Poky-1/poky-virt/build-2/tmp/deploy/images/qemuarm/core-image-minimal-qemuarm.ext4,if=virtio,format=raw
-show-cursor  -device virtio-rng-pci  -nographic -serial tcp:127.0.0.1:33331
-pidfile pidfile_45252 -machine virt  -m 256 -serial tcp:127.0.0.1:49750
-snapshot -kernel
/home/AIngale/Poky-1/poky-virt/build-2/tmp/deploy/images/qemuarm/zImage
-append 'root=/dev/vda rw highres=off  console=ttyS0 mem=256M
ip=192.168.7.2::192.168.7.1:255.255.255.0 console=ttyAMA0,115200
console=tty console=tty1 console=ttyS0,115200n8 printk.time=1'
|
| QEMU 2.10.0 monitor - type 'help' for more information
| (qemu)
| DEBUG: Waiting at most 1000 seconds for login banner
| DEBUG: Connection from 127.0.0.1:47228
| DEBUG: Target didn't reached login boot in 1000 seconds
| DEBUG: Last 25 lines of text:
| [    0.992021] IP-Config: Complete:
| [    0.992354]      device=eth0, hwaddr=52:54:00:12:34:02,
ipaddr=192.168.7.2, mask=255.255.255.0, gw=192.168.7.1
| [    0.992529]      host=192.168.7.2, domain=, nis-domain=(none)
| [    0.992661]      bootserver=255.255.255.255,
rootserver=255.255.255.255, rootpath=
| [    1.073664] EXT4-fs (vda): recovery complete
| [    1.076213] EXT4-fs (vda): mounted filesystem with ordered data mode.
Opts: (null)
| [    1.078025] VFS: Mounted root (ext4 filesystem) on device 254:0.
| [    1.080978] devtmpfs: mounted
| [    1.154450] Freeing unused kernel memory: 2048K
| [    2.255136] udevd[69]: starting version 3.2.2
| [    2.267361] random: udevd: uninitialized urandom read (16 bytes read)
| [    2.276791] random: udevd: uninitialized urandom read (16 bytes read)
| [    2.280743] random: udevd: uninitialized urandom read (16 bytes read)
| [    2.376356] udevd[70]: starting eudev-3.2.2
| [    8.340642] EXT4-fs (vda): re-mounted. Opts: (null)
| [   10.052558] urandom_read: 1 callbacks suppressed
| [   10.052693] random: dd: uninitialized urandom read (512 bytes read)
| [   12.312545] uart-pl011 9000000.pl011: no DMA platform data
|
|
| Poky (Yocto Project Reference Distro) 2.4.2 qemuarm /dev/ttyAMA0
|
|
|
| qemuarm login:
| DEBUG: Check full boot log:
/home/AIngale/Poky-1/poky-virt/build-2/tmp/work/qemuarm-poky-linux-gnueabi/core-image-minimal/1.0-r0/testimage/qemu_boot_log.20180531084306
| WARNING: Qemu ended unexpectedly, dump data from host is in
/tmp/oe-saved-tests/201805310859_qemu
| DEBUG: Stopping logging thread
| DEBUG: Stop event received
| DEBUG: Tearing down logging thread
| DEBUG: Sending SIGTERM to runqemu
| ERROR: testimage received SIGTERM, shutting down...
| ERROR: core-image-minimal - FAILED - tests were interrupted during
execution
| DEBUG: Python function do_testimage finished
| ERROR: Function failed: do_testimage
ERROR: Task
(/home/AIngale/Poky-1/poky-virt/meta/recipes-core/images/core-image-minimal.bb:do_testimage)
failed with exit code '1'
NOTE: Tasks Summary: Attempted 563 tasks of which 562 didn't need to be
rerun and 1 failed.

Summary: 1 task failed:

/home/AIngale/Poky-1/poky-virt/meta/recipes-core/images/core-image-minimal.bb:
do_testimage
Summary: There were 2 WARNING messages shown.
Summary: There were 3 ERROR messages shown, returning a non-zero exit code.
AIngale@swpfintbld03:~/Poky-1/poky-virt/build-2$


On Thu, May 31, 2018 at 1:58 PM Sangal, Apoorv <apoorv.sangal@intel.com>
wrote:

>
> > -----Original Message-----
> > From: Anand Ingale [mailto:anand.build1985@gmail.com]
> > Sent: Thursday, May 31, 2018 4:22 PM
> > To: Sangal, Apoorv <apoorv.sangal@intel.com>
> > Subject: Re: [poky] testimage feature ( automated tests for qemu images
> ) not
> > working for qemuarm virt machine
> >
> > Please clarify , what i need to check to see TAP device is setup
> correctly or not ,
> > as is mentioned i am able to boot qemuarm image
> >
> > {{{
> > MACHINE: [qemuarm]
> > FSTYPE: [ext4]
> > ROOTFS: [/home/AIngale/Poky-1/poky-virt/build-
> > 2/tmp/deploy/images/qemuarm/core-image-minimal-qemuarm-
> > 20180519172847.rootfs.ext4]
> > CONFFILE: [/home/AIngale/Poky-1/poky-virt/build-
> > 2/tmp/deploy/images/qemuarm/core-image-minimal-qemuarm-
> > 20180519172847.qemuboot.conf]
> >
> > runqemu - INFO - Using preconfigured tap device tap0
> > runqemu - INFO - If this is not intended, touch
> /tmp/qemu-tap-locks/tap0.skip to
> > make runqemu skip tap0.
> > runqemu - INFO - Network configuration:
> > 192.168.7.2::192.168.7.1:255.255.255.0
> > runqemu - INFO - Running /home/AIngale/Poky-1/poky-virt/build-
> > 2/tmp/work/x86_64-linux/qemu-helper-native/1.0-r1/recipe-sysroot-
> > native/usr/bin/qemu-system-arm -device virtio-net-
> > pci,netdev=net0,mac=52:54:00:12:34:02 -netdev
> > tap,id=net0,ifname=tap0,script=no,downscript=no -drive
> > file=/home/AIngale/Poky-1/poky-virt/build-
> > 2/tmp/deploy/images/qemuarm/core-image-minimal-qemuarm-
> > 20180519172847.rootfs.ext4,if=virtio,format=raw -show-cursor  -device
> virtio-
> > rng-pci  -nographic -machine virt  -m 256 -serial mon:stdio -serial null
> -kernel
> > /home/AIngale/Poky-1/poky-virt/build-2/tmp/deploy/images/qemuarm/zImage
> > -append 'root=/dev/vda rw highres=off  console=ttyS0 mem=256M
> > ip=192.168.7.2::192.168.7.1:255.255.255.0 console=ttyAMA0,115200
> > console=tty '
> >
> > ....
> > ...
> > ...
> >
> >
> > [   10.674455] random: dd: uninitialized urandom read (512 bytes read)
> > [   13.339060] uart-pl011 9000000.pl011: no DMA platform data
> >
> > Poky (Yocto Project Reference Distro) 2.4.2 qemuarm /dev/ttyAMA0
> >
> > qemuarm login: root
> > root@qemuarm:~#
> > root@qemuarm:~#
> > root@qemuarm:~#
> >
> > root@qemuarm:~# uname -a
> > Linux qemuarm 4.17.0-rc5-myker #1 SMP Sat May 19 17:25:41 UTC 2018 armv7l
> > GNU/Linux
> > root@qemuarm:~#
> > root@qemuarm:~#
> >
> > }}}
> >
> >
> >
> > Best Regards
> Share complete log of bitbake core-image-minimal -c testimage command.
> -Apoorv
> >
> > On Thu, May 31, 2018 at 1:28 PM Sangal, Apoorv <apoorv.sangal@intel.com
> > <mailto:apoorv.sangal@intel.com> > wrote:
> >
> >
> >
> >       > -----Original Message-----
> >       > From: poky-bounces@yoctoproject.org <mailto:poky-
> > bounces@yoctoproject.org>  [mailto:poky- <mailto:poky->
> >       > bounces@yoctoproject.org <mailto:bounces@yoctoproject.org> ] On
> > Behalf Of Anand Ingale
> >       > Sent: Thursday, May 31, 2018 3:15 PM
> >       > To: poky@yoctoproject.org <mailto:poky@yoctoproject.org>
> >       > Subject: [poky] testimage feature ( automated tests for qemu
> images )
> > not
> >       > working for qemuarm virt machine
> >       >
> >       > Hi All,
> >       >  I have booted qemuarm  image for virt machine ( not for
> versatilepb
> > which is
> >       > available by default in poky) .
> >       >
> >       > in my kernel recipe , source i have taken from below repository
> >       > {{{
> >       >
> >       > SRC_URI =
> > "git://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
> > <http://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git>
> >       > <
> http://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git> "
> >       >
> >       > }}}
> >       >
> >       > i have created a defconfig file using multi_v7_defconfig
> >       >      # cloned
> > git://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
> > <http://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git>
> >       > <
> http://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git>
> >       >      # make multi_v7_defconfig
> >       >      # copied .config generated as defconfig to recipes-kernel
> directory
> >       >
> >       >
> >       >  i have used  core-image-minimal  to build rootfs
> >       >
> >       >  i am able to boot qemu image when i run , # runqemu qemuarm
> > nographic
> >       >  {{{
> >       > Poky (Yocto Project Reference Distro) 2.4.2 qemuarm /dev/ttyAMA0
> >       >
> >       > qemuarm login: root
> >       > root@qemuarm:~#
> >       > root@qemuarm:~# uname -a
> >       > Linux qemuarm 4.17.0-rc5-myker #1 SMP Sat May 19 17:25:41 UTC
> > 2018 armv7l
> >       > GNU/Linux
> >       > root@qemuarm:~#
> >       > }}}
> >       >
> >       > followed this link to run testimage
> >       > https://wiki.yoctoproject.org/wiki/Image_tests
> >       >
> >       >  when i run below commnad , it  fails to run tests
> >       >   # bitbake core-image-minimal -c testimage
> >       > {{{
> >       >  WARNING: Qemu ended unexpectedly, dump data from host is in
> > /tmp/oe-
> >       > saved-tests/201805310707_qemu
> >       > | DEBUG: Stopping logging thread
> >       > | DEBUG: Stop event received
> >       > | DEBUG: Tearing down logging thread
> >       > | DEBUG: Sending SIGTERM to runqemu
> >       > | ERROR: testimage received SIGTERM, shutting down...
> >       > | ERROR: core-image-minimal - FAILED - tests were interrupted
> during
> > execution
> >       > | DEBUG: Python function do_testimage finished
> >       > | ERROR: Function failed: do_testimage
> >       > ERROR: Task (/home/AIngale/Poky-1/poky-virt/meta/recipes-
> >       > core/images/core-image-minimal.bb:do_testimage) failed with exit
> > code '1'
> >       >
> >       > }}}
> >       >
> >       >   do i need enable any kernel config for testimage feature to
> work ??.
> > please
> >       > suggest  what changes i need to do . I have tried this on poky's
> rocko
> > branch .
> >       >
> >       There is no specific kernel configuration needed for testimage
> feature
> > to work.
> >       Please check whether your TAP device is setup correctly for qemu to
> > work.
> >       -Apoorv
> >       > Best Regards
> >       >
> >
> >
>
>

--0000000000002eb8a3056d7cbe21
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>AIngale@swpfintbld03:~/Poky-1/poky-virt/build-2$ bitb=
ake core-image-minimal -c testimage</div><div>WARNING: Host distribution &q=
uot;ubuntu-14.04&quot; has not been validated with this version of the buil=
d system; you may possibly experience unexpected failures. It is recommende=
d that you use a tested distribution.</div><div>Loading cache: 100% |######=
###########################################################################=
##########################| Time: 0:00:00</div><div>Loaded 1280 entries fro=
m dependency cache.</div><div>NOTE: Resolving any missing task queue depend=
encies</div><div><br></div><div>Build Configuration:</div><div>BB_VERSION=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;1.36.0&quot;</div><div>B=
UILD_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;x86_64-linux&qu=
ot;</div><div>NATIVELSBSTRING=C2=A0 =C2=A0 =C2=A0 =3D &quot;universal-4.8&q=
uot;</div><div>TARGET_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot=
;arm-poky-linux-gnueabi&quot;</div><div>MACHINE=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =3D &quot;qemuarm&quot;</div><div>DISTRO=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;poky&quot;</div><div>DIS=
TRO_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;2.4.2&quot;</div><div>TUNE_=
FEATURES=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;arm armv5 thumb dsp&quot;</di=
v><div>TARGET_FPU=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;soft&qu=
ot;</div><div>meta</div><div>meta-poky</div><div>meta-yocto-bsp=C2=A0 =C2=
=A0 =C2=A0 =C2=A0=3D &quot;rocko:9915e071bcadd7c4d5363a067c529889851d37a5&q=
uot;</div><div><br></div><div>Initialising tasks: 100% |###################=
###########################################################################=
########| Time: 0:00:03</div><div>NOTE: Executing SetScene Tasks</div><div>=
NOTE: Executing RunQueue Tasks</div><div>WARNING: core-image-minimal-1.0-r0=
 do_testimage: Qemu ended unexpectedly, dump data from host is in /tmp/oe-s=
aved-tests/201805310859_qemu</div><div>ERROR: core-image-minimal-1.0-r0 do_=
testimage: testimage received SIGTERM, shutting down...</div><div>ERROR: co=
re-image-minimal-1.0-r0 do_testimage: core-image-minimal - FAILED - tests w=
ere interrupted during execution</div><div>ERROR: core-image-minimal-1.0-r0=
 do_testimage: Function failed: do_testimage</div><div>ERROR: Logfile of fa=
ilure stored in: /home/AIngale/Poky-1/poky-virt/build-2/tmp/work/qemuarm-po=
ky-linux-gnueabi/core-image-minimal/1.0-r0/temp/log.do_testimage.45252</div=
><div>Log data follows:</div><div>| DEBUG: Executing python function extend=
_recipe_sysroot</div><div>| NOTE: Direct dependencies are [&#39;virtual:nat=
ive:/home/AIngale/Poky-1/poky-virt/meta/recipes-devtools/createrepo-c/creat=
erepo-c_git.bb:do_populate_sysroot&#39;, &#39;virtual:native:/home/AIngale/=
Poky-1/poky-virt/meta/recipes-devtools/qemu/qemu_2.10.0.bb:do_populate_sysr=
oot&#39;, &#39;/home/AIngale/Poky-1/poky-virt/meta/recipes-devtools/qemu/qe=
mu-helper-native_1.0.bb:do_populate_sysroot&#39;, &#39;virtual:native:/home=
/AIngale/Poky-1/poky-virt/meta/recipes-extended/cpio/cpio_2.12.bb:do_popula=
te_sysroot&#39;]</div><div>| NOTE: Installed into sysroot: []</div><div>| N=
OTE: Skipping as already exists in sysroot: [&#39;createrepo-c-native&#39;,=
 &#39;qemu-native&#39;, &#39;qemu-helper-native&#39;, &#39;cpio-native&#39;=
, &#39;quilt-native&#39;, &#39;zlib-native&#39;, &#39;pkgconfig-native&#39;=
, &#39;alsa-lib-native&#39;, &#39;libtool-native&#39;, &#39;pixman-native&#=
39;, &#39;automake-native&#39;, &#39;glib-2.0-native&#39;, &#39;libsdl-nati=
ve&#39;, &#39;dtc-native&#39;, &#39;autoconf-native&#39;, &#39;gnu-config-n=
ative&#39;, &#39;texinfo-dummy-native&#39;, &#39;gettext-minimal-native&#39=
;, &#39;curl-native&#39;, &#39;cmake-native&#39;, &#39;file-native&#39;, &#=
39;python3-native&#39;, &#39;rpm-native&#39;, &#39;sqlite3-native&#39;, &#3=
9;libxml2-native&#39;, &#39;openssl-native&#39;, &#39;xz-native&#39;, &#39;=
expat-native&#39;, &#39;libpng-native&#39;, &#39;util-macros-native&#39;, &=
#39;gettext-native&#39;, &#39;gtk-doc-native&#39;, &#39;libpcre-native&#39;=
, &#39;libffi-native&#39;, &#39;util-linux-native&#39;, &#39;libxext-native=
&#39;, &#39;libxrender-native&#39;, &#39;libxrandr-native&#39;, &#39;libx11=
-native&#39;, &#39;flex-native&#39;, &#39;bison-native&#39;, &#39;m4-native=
&#39;, &#39;bzip2-native&#39;, &#39;readline-native&#39;, &#39;nss-native&#=
39;, &#39;elfutils-native&#39;, &#39;popt-native&#39;, &#39;db-native&#39;,=
 &#39;libarchive-native&#39;, &#39;dbus-native&#39;, &#39;makedepend-native=
&#39;, &#39;cryptodev-linux-native&#39;, &#39;pigz-native&#39;, &#39;ncurse=
s-native&#39;, &#39;lzo-native&#39;, &#39;xextproto-native&#39;, &#39;xprot=
o-native&#39;, &#39;renderproto-native&#39;, &#39;randrproto-native&#39;, &=
#39;inputproto-native&#39;, &#39;xtrans-native&#39;, &#39;libxcb-native&#39=
;, &#39;kbproto-native&#39;, &#39;nspr-native&#39;, &#39;e2fsprogs-native&#=
39;, &#39;libpthread-stubs-native&#39;, &#39;libxdmcp-native&#39;, &#39;xcb=
-proto-native&#39;, &#39;libxau-native&#39;, &#39;attr-native&#39;]</div><d=
iv>| DEBUG: Python function extend_recipe_sysroot finished</div><div>| DEBU=
G: Executing python function do_testimage</div><div>| DEBUG: Not using kvm =
for runqemu</div><div>| DEBUG: Created listening socket for qemu serial con=
sole on: <a href=3D"http://127.0.0.1:33331">127.0.0.1:33331</a></div><div>|=
 DEBUG: Created listening socket for qemu serial console on: <a href=3D"htt=
p://127.0.0.1:49750">127.0.0.1:49750</a></div><div>| DEBUG: launchcmd=3Drun=
qemu snapshot=C2=A0 =C2=A0nographic qemuarm /home/AIngale/Poky-1/poky-virt/=
build-2/tmp/deploy/images/qemuarm/core-image-minimal-qemuarm.ext4 tcpserial=
=3D49750 bootparams=3D&quot;console=3Dtty1 console=3DttyS0,115200n8 printk.=
time=3D1&quot; qemuparams=3D&quot;-serial tcp:<a href=3D"http://127.0.0.1:3=
3331">127.0.0.1:33331</a> -pidfile pidfile_45252&quot;</div><div>| DEBUG: r=
unqemu started, pid is 45707</div><div>| DEBUG: waiting at most 120 seconds=
 for qemu pid</div><div>| DEBUG: qemu started in 2.0028998851776123 seconds=
 - qemu procces pid is 47588</div><div>| DEBUG: qemu cmdline used:</div><di=
v>| /home/AIngale/Poky-1/poky-virt/build-2/tmp/work/x86_64-linux/qemu-helpe=
r-native/1.0-r1/recipe-sysroot-native/usr/bin/qemu-system-arm -device virti=
o-net-pci,netdev=3Dnet0,mac=3D52:54:00:12:34:02 -netdev tap,id=3Dnet0,ifnam=
e=3Dtap0,script=3Dno,downscript=3Dno -drive file=3D/home/AIngale/Poky-1/pok=
y-virt/build-2/tmp/deploy/images/qemuarm/core-image-minimal-qemuarm.ext4,if=
=3Dvirtio,format=3Draw -show-cursor -device virtio-rng-pci -nographic -seri=
al tcp:<a href=3D"http://127.0.0.1:33331">127.0.0.1:33331</a> -pidfile pidf=
ile_45252 -machine virt -m 256 -serial tcp:<a href=3D"http://127.0.0.1:4975=
0">127.0.0.1:49750</a> -snapshot -kernel /home/AIngale/Poky-1/poky-virt/bui=
ld-2/tmp/deploy/images/qemuarm/zImage -append root=3D/dev/vda rw highres=3D=
off=C2=A0 console=3DttyS0 mem=3D256M ip=3D192.168.7.2::192.168.7.1:255.255.=
255.0 console=3DttyAMA0,115200 console=3Dtty console=3Dtty1 console=3DttyS0=
,115200n8 printk.time=3D1</div><div>| DEBUG: Target IP: 192.168.7.2</div><d=
iv>| DEBUG: Server IP: 192.168.7.1</div><div>| DEBUG: Starting logging thre=
ad</div><div>| DEBUG: Starting thread event loop</div><div>| DEBUG: Connect=
ion request received</div><div>| DEBUG: Setting connection established even=
t</div><div>| DEBUG: Output from runqemu:</div><div>| runqemu - INFO - Cont=
inuing with the following parameters:</div><div>|</div><div>| runqemu - INF=
O - Using preconfigured tap device tap0</div><div>| runqemu - INFO - If thi=
s is not intended, touch /tmp/qemu-tap-locks/tap0.skip to make runqemu skip=
 tap0.</div><div>| runqemu - INFO - Network configuration: 192.168.7.2::192=
.168.7.1:255.255.255.0</div><div>| runqemu - INFO - Running /home/AIngale/P=
oky-1/poky-virt/build-2/tmp/work/x86_64-linux/qemu-helper-native/1.0-r1/rec=
ipe-sysroot-native/usr/bin/qemu-system-arm -device virtio-net-pci,netdev=3D=
net0,mac=3D52:54:00:12:34:02 -netdev tap,id=3Dnet0,ifname=3Dtap0,script=3Dn=
o,downscript=3Dno -drive file=3D/home/AIngale/Poky-1/poky-virt/build-2/tmp/=
deploy/images/qemuarm/core-image-minimal-qemuarm.ext4,if=3Dvirtio,format=3D=
raw -show-cursor=C2=A0 -device virtio-rng-pci=C2=A0 -nographic -serial tcp:=
<a href=3D"http://127.0.0.1:33331">127.0.0.1:33331</a> -pidfile pidfile_452=
52 -machine virt=C2=A0 -m 256 -serial tcp:<a href=3D"http://127.0.0.1:49750=
">127.0.0.1:49750</a> -snapshot -kernel /home/AIngale/Poky-1/poky-virt/buil=
d-2/tmp/deploy/images/qemuarm/zImage -append &#39;root=3D/dev/vda rw highre=
s=3Doff=C2=A0 console=3DttyS0 mem=3D256M ip=3D192.168.7.2::192.168.7.1:255.=
255.255.0 console=3DttyAMA0,115200 console=3Dtty console=3Dtty1 console=3Dt=
tyS0,115200n8 printk.time=3D1&#39;</div><div>|</div><div>| QEMU 2.10.0 moni=
tor - type &#39;help&#39; for more information</div><div>| (qemu)</div><div=
>| DEBUG: Waiting at most 1000 seconds for login banner</div><div>| DEBUG: =
Connection from <a href=3D"http://127.0.0.1:47228">127.0.0.1:47228</a></div=
><div>| DEBUG: Target didn&#39;t reached login boot in 1000 seconds</div><d=
iv>| DEBUG: Last 25 lines of text:</div><div>| [=C2=A0 =C2=A0 0.992021] IP-=
Config: Complete:</div><div>| [=C2=A0 =C2=A0 0.992354]=C2=A0 =C2=A0 =C2=A0 =
device=3Deth0, hwaddr=3D52:54:00:12:34:02, ipaddr=3D192.168.7.2, mask=3D255=
.255.255.0, gw=3D192.168.7.1</div><div>| [=C2=A0 =C2=A0 0.992529]=C2=A0 =C2=
=A0 =C2=A0 host=3D192.168.7.2, domain=3D, nis-domain=3D(none)</div><div>| [=
=C2=A0 =C2=A0 0.992661]=C2=A0 =C2=A0 =C2=A0 bootserver=3D255.255.255.255, r=
ootserver=3D255.255.255.255, rootpath=3D</div><div>| [=C2=A0 =C2=A0 1.07366=
4] EXT4-fs (vda): recovery complete</div><div>| [=C2=A0 =C2=A0 1.076213] EX=
T4-fs (vda): mounted filesystem with ordered data mode. Opts: (null)</div><=
div>| [=C2=A0 =C2=A0 1.078025] VFS: Mounted root (ext4 filesystem) on devic=
e 254:0.</div><div>| [=C2=A0 =C2=A0 1.080978] devtmpfs: mounted</div><div>|=
 [=C2=A0 =C2=A0 1.154450] Freeing unused kernel memory: 2048K</div><div>| [=
=C2=A0 =C2=A0 2.255136] udevd[69]: starting version 3.2.2</div><div>| [=C2=
=A0 =C2=A0 2.267361] random: udevd: uninitialized urandom read (16 bytes re=
ad)</div><div>| [=C2=A0 =C2=A0 2.276791] random: udevd: uninitialized urand=
om read (16 bytes read)</div><div>| [=C2=A0 =C2=A0 2.280743] random: udevd:=
 uninitialized urandom read (16 bytes read)</div><div>| [=C2=A0 =C2=A0 2.37=
6356] udevd[70]: starting eudev-3.2.2</div><div>| [=C2=A0 =C2=A0 8.340642] =
EXT4-fs (vda): re-mounted. Opts: (null)</div><div>| [=C2=A0 =C2=A010.052558=
] urandom_read: 1 callbacks suppressed</div><div>| [=C2=A0 =C2=A010.052693]=
 random: dd: uninitialized urandom read (512 bytes read)</div><div>| [=C2=
=A0 =C2=A012.312545] uart-pl011 9000000.pl011: no DMA platform data</div><d=
iv>|</div><div>|</div><div>| Poky (Yocto Project Reference Distro) 2.4.2 qe=
muarm /dev/ttyAMA0</div><div>|</div><div>|</div><div>|</div><div>| qemuarm =
login:</div><div>| DEBUG: Check full boot log: /home/AIngale/Poky-1/poky-vi=
rt/build-2/tmp/work/qemuarm-poky-linux-gnueabi/core-image-minimal/1.0-r0/te=
stimage/qemu_boot_log.20180531084306</div><div>| WARNING: Qemu ended unexpe=
ctedly, dump data from host is in /tmp/oe-saved-tests/201805310859_qemu</di=
v><div>| DEBUG: Stopping logging thread</div><div>| DEBUG: Stop event recei=
ved</div><div>| DEBUG: Tearing down logging thread</div><div>| DEBUG: Sendi=
ng SIGTERM to runqemu</div><div>| ERROR: testimage received SIGTERM, shutti=
ng down...</div><div>| ERROR: core-image-minimal - FAILED - tests were inte=
rrupted during execution</div><div>| DEBUG: Python function do_testimage fi=
nished</div><div>| ERROR: Function failed: do_testimage</div><div>ERROR: Ta=
sk (/home/AIngale/Poky-1/poky-virt/meta/recipes-core/images/core-image-mini=
mal.bb:do_testimage) failed with exit code &#39;1&#39;</div><div>NOTE: Task=
s Summary: Attempted 563 tasks of which 562 didn&#39;t need to be rerun and=
 1 failed.</div><div><br></div><div>Summary: 1 task failed:</div><div>=C2=
=A0 /home/AIngale/Poky-1/poky-virt/meta/recipes-core/images/core-image-mini=
mal.bb:do_testimage</div><div>Summary: There were 2 WARNING messages shown.=
</div><div>Summary: There were 3 ERROR messages shown, returning a non-zero=
 exit code.</div><div>AIngale@swpfintbld03:~/Poky-1/poky-virt/build-2$</div=
><div><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Th=
u, May 31, 2018 at 1:58 PM Sangal, Apoorv &lt;<a href=3D"mailto:apoorv.sang=
al@intel.com">apoorv.sangal@intel.com</a>&gt; wrote:<br></div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;=
padding-left:1ex"><br>
&gt; -----Original Message-----<br>
&gt; From: Anand Ingale [mailto:<a href=3D"mailto:anand.build1985@gmail.com=
" target=3D"_blank">anand.build1985@gmail.com</a>]<br>
&gt; Sent: Thursday, May 31, 2018 4:22 PM<br>
&gt; To: Sangal, Apoorv &lt;<a href=3D"mailto:apoorv.sangal@intel.com" targ=
et=3D"_blank">apoorv.sangal@intel.com</a>&gt;<br>
&gt; Subject: Re: [poky] testimage feature ( automated tests for qemu image=
s ) not<br>
&gt; working for qemuarm virt machine<br>
&gt; <br>
&gt; Please clarify , what i need to check to see TAP device is setup corre=
ctly or not ,<br>
&gt; as is mentioned i am able to boot qemuarm image<br>
&gt; <br>
&gt; {{{<br>
&gt; MACHINE: [qemuarm]<br>
&gt; FSTYPE: [ext4]<br>
&gt; ROOTFS: [/home/AIngale/Poky-1/poky-virt/build-<br>
&gt; 2/tmp/deploy/images/qemuarm/core-image-minimal-qemuarm-<br>
&gt; 20180519172847.rootfs.ext4]<br>
&gt; CONFFILE: [/home/AIngale/Poky-1/poky-virt/build-<br>
&gt; 2/tmp/deploy/images/qemuarm/core-image-minimal-qemuarm-<br>
&gt; 20180519172847.qemuboot.conf]<br>
&gt; <br>
&gt; runqemu - INFO - Using preconfigured tap device tap0<br>
&gt; runqemu - INFO - If this is not intended, touch /tmp/qemu-tap-locks/ta=
p0.skip to<br>
&gt; make runqemu skip tap0.<br>
&gt; runqemu - INFO - Network configuration:<br>
&gt; <a href=3D"http://192.168.7.2">192.168.7.2</a>::<a href=3D"http://192.=
168.7.1:255" target=3D"_blank">192.168.7.1:255</a>.255.255.0<br>
&gt; runqemu - INFO - Running /home/AIngale/Poky-1/poky-virt/build-<br>
&gt; 2/tmp/work/x86_64-linux/qemu-helper-native/1.0-r1/recipe-sysroot-<br>
&gt; native/usr/bin/qemu-system-arm -device virtio-net-<br>
&gt; pci,netdev=3Dnet0,mac=3D52:54:00:12:34:02 -netdev<br>
&gt; tap,id=3Dnet0,ifname=3Dtap0,script=3Dno,downscript=3Dno -drive<br>
&gt; file=3D/home/AIngale/Poky-1/poky-virt/build-<br>
&gt; 2/tmp/deploy/images/qemuarm/core-image-minimal-qemuarm-<br>
&gt; 20180519172847.rootfs.ext4,if=3Dvirtio,format=3Draw -show-cursor=C2=A0=
 -device virtio-<br>
&gt; rng-pci=C2=A0 -nographic -machine virt=C2=A0 -m 256 -serial mon:stdio =
-serial null -kernel<br>
&gt; /home/AIngale/Poky-1/poky-virt/build-2/tmp/deploy/images/qemuarm/zImag=
e<br>
&gt; -append &#39;root=3D/dev/vda rw highres=3Doff=C2=A0 console=3DttyS0 me=
m=3D256M<br>
&gt; ip=3D<a href=3D"http://192.168.7.2">192.168.7.2</a>::<a href=3D"http:/=
/192.168.7.1" target=3D"_blank">192.168.7.1</a>:255.255.255.0 console=3Dtty=
AMA0,115200<br>
&gt; console=3Dtty &#39;<br>
&gt; <br>
&gt; ....<br>
&gt; ...<br>
&gt; ...<br>
&gt; <br>
&gt; <br>
&gt; [=C2=A0 =C2=A010.674455] random: dd: uninitialized urandom read (512 b=
ytes read)<br>
&gt; [=C2=A0 =C2=A013.339060] uart-pl011 9000000.pl011: no DMA platform dat=
a<br>
&gt; <br>
&gt; Poky (Yocto Project Reference Distro) 2.4.2 qemuarm /dev/ttyAMA0<br>
&gt; <br>
&gt; qemuarm login: root<br>
&gt; root@qemuarm:~#<br>
&gt; root@qemuarm:~#<br>
&gt; root@qemuarm:~#<br>
&gt; <br>
&gt; root@qemuarm:~# uname -a<br>
&gt; Linux qemuarm 4.17.0-rc5-myker #1 SMP Sat May 19 17:25:41 UTC 2018 arm=
v7l<br>
&gt; GNU/Linux<br>
&gt; root@qemuarm:~#<br>
&gt; root@qemuarm:~#<br>
&gt; <br>
&gt; }}}<br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; Best Regards<br>
Share complete log of bitbake core-image-minimal -c testimage command.<br>
-Apoorv<br>
&gt; <br>
&gt; On Thu, May 31, 2018 at 1:28 PM Sangal, Apoorv &lt;<a href=3D"mailto:a=
poorv.sangal@intel.com" target=3D"_blank">apoorv.sangal@intel.com</a><br>
&gt; &lt;mailto:<a href=3D"mailto:apoorv.sangal@intel.com" target=3D"_blank=
">apoorv.sangal@intel.com</a>&gt; &gt; wrote:<br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; -----Original Message-----<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; From: <a href=3D"mailto:poky-bounces@yo=
ctoproject.org" target=3D"_blank">poky-bounces@yoctoproject.org</a> &lt;mai=
lto:<a href=3D"mailto:poky-" target=3D"_blank">poky-</a><br>
&gt; <a href=3D"mailto:bounces@yoctoproject.org" target=3D"_blank">bounces@=
yoctoproject.org</a>&gt;=C2=A0 [mailto:<a href=3D"mailto:poky-" target=3D"_=
blank">poky-</a> &lt;mailto:<a href=3D"mailto:poky-" target=3D"_blank">poky=
-</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; <a href=3D"mailto:bounces@yoctoproject.=
org" target=3D"_blank">bounces@yoctoproject.org</a> &lt;mailto:<a href=3D"m=
ailto:bounces@yoctoproject.org" target=3D"_blank">bounces@yoctoproject.org<=
/a>&gt; ] On<br>
&gt; Behalf Of Anand Ingale<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; Sent: Thursday, May 31, 2018 3:15 PM<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; To: <a href=3D"mailto:poky@yoctoproject=
.org" target=3D"_blank">poky@yoctoproject.org</a> &lt;mailto:<a href=3D"mai=
lto:poky@yoctoproject.org" target=3D"_blank">poky@yoctoproject.org</a>&gt;<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; Subject: [poky] testimage feature ( aut=
omated tests for qemu images )<br>
&gt; not<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; working for qemuarm virt machine<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; Hi All,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 I have booted qemuarm=C2=A0 image=
 for virt machine ( not for=C2=A0 versatilepb<br>
&gt; which is<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; available by default in poky) .<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; in my kernel recipe , source i have tak=
en from below repository<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; {{{<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; SRC_URI =3D<br>
&gt; &quot;git://<a href=3D"http://git.kernel.org/pub/scm/linux/kernel/git/=
torvalds/linux.git" rel=3D"noreferrer" target=3D"_blank">git.kernel.org/pub=
/scm/linux/kernel/git/torvalds/linux.git</a><br>
&gt; &lt;<a href=3D"http://git.kernel.org/pub/scm/linux/kernel/git/torvalds=
/linux.git" rel=3D"noreferrer" target=3D"_blank">http://git.kernel.org/pub/=
scm/linux/kernel/git/torvalds/linux.git</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; &lt;<a href=3D"http://git.kernel.org/pu=
b/scm/linux/kernel/git/torvalds/linux.git" rel=3D"noreferrer" target=3D"_bl=
ank">http://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git</a>&=
gt; &quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; }}}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; i have created a defconfig file using m=
ulti_v7_defconfig<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 # cloned<br>
&gt; git://<a href=3D"http://git.kernel.org/pub/scm/linux/kernel/git/torval=
ds/linux.git" rel=3D"noreferrer" target=3D"_blank">git.kernel.org/pub/scm/l=
inux/kernel/git/torvalds/linux.git</a><br>
&gt; &lt;<a href=3D"http://git.kernel.org/pub/scm/linux/kernel/git/torvalds=
/linux.git" rel=3D"noreferrer" target=3D"_blank">http://git.kernel.org/pub/=
scm/linux/kernel/git/torvalds/linux.git</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; &lt;<a href=3D"http://git.kernel.org/pu=
b/scm/linux/kernel/git/torvalds/linux.git" rel=3D"noreferrer" target=3D"_bl=
ank">http://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git</a>&=
gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 # make multi_v7_def=
config<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0 # copied .config ge=
nerated as defconfig to recipes-kernel directory<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 i have used=C2=A0 core-image-mini=
mal=C2=A0 to build rootfs<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 i am able to boot qemu image when=
 i run , # runqemu qemuarm<br>
&gt; nographic<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 {{{<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; Poky (Yocto Project Reference Distro) 2=
.4.2 qemuarm /dev/ttyAMA0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; qemuarm login: root<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; root@qemuarm:~#<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; root@qemuarm:~# uname -a<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; Linux qemuarm 4.17.0-rc5-myker #1 SMP S=
at May 19 17:25:41 UTC<br>
&gt; 2018 armv7l<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; GNU/Linux<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; root@qemuarm:~#<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; }}}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; followed this link to run testimage<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; <a href=3D"https://wiki.yoctoproject.or=
g/wiki/Image_tests" rel=3D"noreferrer" target=3D"_blank">https://wiki.yocto=
project.org/wiki/Image_tests</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 when i run below commnad , it=C2=
=A0 fails to run tests<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0# bitbake core-image-minima=
l -c testimage<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; {{{<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 WARNING: Qemu ended unexpectedly,=
 dump data from host is in<br>
&gt; /tmp/oe-<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; saved-tests/201805310707_qemu<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; | DEBUG: Stopping logging thread<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; | DEBUG: Stop event received<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; | DEBUG: Tearing down logging thread<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; | DEBUG: Sending SIGTERM to runqemu<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; | ERROR: testimage received SIGTERM, sh=
utting down...<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; | ERROR: core-image-minimal - FAILED - =
tests were interrupted during<br>
&gt; execution<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; | DEBUG: Python function do_testimage f=
inished<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; | ERROR: Function failed: do_testimage<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; ERROR: Task (/home/AIngale/Poky-1/poky-=
virt/meta/recipes-<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; core/images/core-image-minimal.bb:do_te=
stimage) failed with exit<br>
&gt; code &#39;1&#39;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; }}}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0do i need enable any kernel=
 config for testimage feature to work ??.<br>
&gt; please<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; suggest=C2=A0 what changes i need to do=
 . I have tried this on poky&#39;s rocko<br>
&gt; branch .<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0There is no specific kernel configuration ne=
eded for testimage feature<br>
&gt; to work.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0Please check whether your TAP device is setu=
p correctly for qemu to<br>
&gt; work.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0-Apoorv<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; Best Regards<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt; <br>
&gt; <br>
<br>
</blockquote></div>

--0000000000002eb8a3056d7cbe21--
