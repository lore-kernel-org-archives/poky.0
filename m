Return-Path: <anand.build1985@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E8BA1E00C9E; Thu, 31 May 2018 02:42:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, WEIRD_PORT autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (anand.build1985[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.53 listed in list.dnswl.org]
	*  0.0 WEIRD_PORT URI: Uses non-standard port number for HTTP
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f53.google.com (mail-lf0-f53.google.com
	[209.85.215.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 91A00E00CC4
	for <poky@yoctoproject.org>; Thu, 31 May 2018 02:42:16 -0700 (PDT)
Received: by mail-lf0-f53.google.com with SMTP id r2-v6so8768035lff.4
	for <poky@yoctoproject.org>; Thu, 31 May 2018 02:42:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=llrBcHx4CPjoNi+xqg26ofR9zvGRxwirDCi0lk/wEg8=;
	b=mOSNRrnZjXIQ/ivqaTPIdWqIlJ+LExG1o5TjxncnATHfmOQ2B5G9n3ZEvzBXKxxZWX
	jFtjQBx3wDrJH8qA8uo693xAkPcXZoIQHn35KR3ecOhOjVkEzvz9oha9bCSkVAsZPZQG
	xuY5OMKJfEmWDnm5M4IeUAlLly8od4fRwtnzJ5mgMQcpsvXg5EZHW4vpOnzuf0VKLcFR
	/83TZkupBjGd4Fg7o3tOwj7kfwmdMaXfuYR9mWaZ2TcmtVSAuA6wD6hGA0sP169AOloV
	9xZPLyiCLOqjHFC9UtutcK2ck5h66Sd6wy5P7UpPdQyTGn5K87UyfARDLEeGeEwHPFiZ
	igiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=llrBcHx4CPjoNi+xqg26ofR9zvGRxwirDCi0lk/wEg8=;
	b=fSYdT2qImeI+qV4aOeo1fcFIL6GhXvp+KCI4IejNUIhh7D3VhSUZm6glpr6JST0fCb
	Wrw6TcOIN5lln2j9PCZMuxL1S/NIxH2tsokTgfx1/O7jGfSWWWg60vydiwdMQHzgzN2W
	zuMz0u8YM6Y4Alqe8SeimsVAuCaculXTkmkO3YUjNS/XBQVTEbzLgrCFNYD8fJ5gUtWZ
	fRKCUj52eWjyFfZz6X/M7VV2KS/huxX4kUKm9LoiSNuYlS1HJ17DEh8MgcpnffUf8ppi
	NiV/oDvuybgS0jL22ep0uE9Gvu/xGMIdlJOy5WkWPKchLukLp7yA7kWnjffKCteLmD0f
	vGDw==
X-Gm-Message-State: ALKqPwdqO/Ssd7qMGbnD67FA/ARqIvji/+arQbroEZzpsiB470J0GQYF
	o6+gljDjEIUCSXkhWOy1iiBof9BBlnZN32dvXMI=
X-Google-Smtp-Source: ADUXVKK6NoKlRLMo2JrLUbvIrlTGOEcUnaNcqC5JBbneO9CSHQ0+iuFzy7CAPQtuzhMw8WbBhocbkQK24aL3J0eFxC8=
X-Received: by 2002:a2e:18b:: with SMTP id f11-v6mr4676547lji.83.1527759735774;
	Thu, 31 May 2018 02:42:15 -0700 (PDT)
MIME-Version: 1.0
References: <CA+=TBV4mm5aUmcCbhobgtZt7AN=4oJYe3n-wTC_kL7vmUGLKkQ@mail.gmail.com>
	<D4F5B5CFEF9DBB4A9DDB70CFEF737641029EE5D7@PGSMSX104.gar.corp.intel.com>
	<CA+=TBV5Sx_p_0xa77b5FFb=swc68k49MzOj5ugHEthVNmY=bxA@mail.gmail.com>
	<D4F5B5CFEF9DBB4A9DDB70CFEF737641029EE689@PGSMSX104.gar.corp.intel.com>
	<CA+=TBV6bQSXr8XcmvgTg5gUTmy8qESwKumNUNpm8cksh4QA8kQ@mail.gmail.com>
In-Reply-To: <CA+=TBV6bQSXr8XcmvgTg5gUTmy8qESwKumNUNpm8cksh4QA8kQ@mail.gmail.com>
From: Anand Ingale <anand.build1985@gmail.com>
Date: Thu, 31 May 2018 15:12:04 +0530
Message-ID: <CA+=TBV57imMQ+NjwfC6k53Dp3CWYhwAJNyZhZ_gCLFv8F69N_g@mail.gmail.com>
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
X-List-Received-Date: Thu, 31 May 2018 09:42:20 -0000
X-Groupsio-MsgNum: 11273
Content-Type: multipart/mixed; boundary="0000000000005a8696056d7d4859"

--0000000000005a8696056d7d4859
Content-Type: multipart/alternative; boundary="0000000000005a8695056d7d4857"

--0000000000005a8695056d7d4857
Content-Type: text/plain; charset="UTF-8"

Attaching  log.do_testimage

On Thu, May 31, 2018 at 2:33 PM Anand Ingale <anand.build1985@gmail.com>
wrote:

> AIngale@swpfintbld03:~/Poky-1/poky-virt/build-2$ bitbake
> core-image-minimal -c testimage
> WARNING: Host distribution "ubuntu-14.04" has not been validated with this
> version of the build system; you may possibly experience unexpected
> failures. It is recommended that you use a tested distribution.
> Loading cache: 100%
> |###########################################################################################################|
> Time: 0:00:00
> Loaded 1280 entries from dependency cache.
> NOTE: Resolving any missing task queue dependencies
>
> Build Configuration:
> BB_VERSION           = "1.36.0"
> BUILD_SYS            = "x86_64-linux"
> NATIVELSBSTRING      = "universal-4.8"
> TARGET_SYS           = "arm-poky-linux-gnueabi"
> MACHINE              = "qemuarm"
> DISTRO               = "poky"
> DISTRO_VERSION       = "2.4.2"
> TUNE_FEATURES        = "arm armv5 thumb dsp"
> TARGET_FPU           = "soft"
> meta
> meta-poky
> meta-yocto-bsp       = "rocko:9915e071bcadd7c4d5363a067c529889851d37a5"
>
> Initialising tasks: 100%
> |######################################################################################################|
> Time: 0:00:03
> NOTE: Executing SetScene Tasks
> NOTE: Executing RunQueue Tasks
> WARNING: core-image-minimal-1.0-r0 do_testimage: Qemu ended unexpectedly,
> dump data from host is in /tmp/oe-saved-tests/201805310859_qemu
> ERROR: core-image-minimal-1.0-r0 do_testimage: testimage received SIGTERM,
> shutting down...
> ERROR: core-image-minimal-1.0-r0 do_testimage: core-image-minimal - FAILED
> - tests were interrupted during execution
> ERROR: core-image-minimal-1.0-r0 do_testimage: Function failed:
> do_testimage
> ERROR: Logfile of failure stored in:
> /home/AIngale/Poky-1/poky-virt/build-2/tmp/work/qemuarm-poky-linux-gnueabi/core-image-minimal/1.0-r0/temp/log.do_testimage.45252
> Log data follows:
> | DEBUG: Executing python function extend_recipe_sysroot
> | NOTE: Direct dependencies are
> ['virtual:native:/home/AIngale/Poky-1/poky-virt/meta/recipes-devtools/createrepo-c/createrepo-c_git.bb:do_populate_sysroot',
> 'virtual:native:/home/AIngale/Poky-1/poky-virt/meta/recipes-devtools/qemu/qemu_2.10.0.bb:do_populate_sysroot',
> '/home/AIngale/Poky-1/poky-virt/meta/recipes-devtools/qemu/qemu-helper-native_1.0.bb:do_populate_sysroot',
> 'virtual:native:/home/AIngale/Poky-1/poky-virt/meta/recipes-extended/cpio/cpio_2.12.bb:
> do_populate_sysroot']
> | NOTE: Installed into sysroot: []
> | NOTE: Skipping as already exists in sysroot: ['createrepo-c-native',
> 'qemu-native', 'qemu-helper-native', 'cpio-native', 'quilt-native',
> 'zlib-native', 'pkgconfig-native', 'alsa-lib-native', 'libtool-native',
> 'pixman-native', 'automake-native', 'glib-2.0-native', 'libsdl-native',
> 'dtc-native', 'autoconf-native', 'gnu-config-native',
> 'texinfo-dummy-native', 'gettext-minimal-native', 'curl-native',
> 'cmake-native', 'file-native', 'python3-native', 'rpm-native',
> 'sqlite3-native', 'libxml2-native', 'openssl-native', 'xz-native',
> 'expat-native', 'libpng-native', 'util-macros-native', 'gettext-native',
> 'gtk-doc-native', 'libpcre-native', 'libffi-native', 'util-linux-native',
> 'libxext-native', 'libxrender-native', 'libxrandr-native', 'libx11-native',
> 'flex-native', 'bison-native', 'm4-native', 'bzip2-native',
> 'readline-native', 'nss-native', 'elfutils-native', 'popt-native',
> 'db-native', 'libarchive-native', 'dbus-native', 'makedepend-native',
> 'cryptodev-linux-native', 'pigz-native', 'ncurses-native', 'lzo-native',
> 'xextproto-native', 'xproto-native', 'renderproto-native',
> 'randrproto-native', 'inputproto-native', 'xtrans-native', 'libxcb-native',
> 'kbproto-native', 'nspr-native', 'e2fsprogs-native',
> 'libpthread-stubs-native', 'libxdmcp-native', 'xcb-proto-native',
> 'libxau-native', 'attr-native']
> | DEBUG: Python function extend_recipe_sysroot finished
> | DEBUG: Executing python function do_testimage
> | DEBUG: Not using kvm for runqemu
> | DEBUG: Created listening socket for qemu serial console on:
> 127.0.0.1:33331
> | DEBUG: Created listening socket for qemu serial console on:
> 127.0.0.1:49750
> | DEBUG: launchcmd=runqemu snapshot   nographic qemuarm
> /home/AIngale/Poky-1/poky-virt/build-2/tmp/deploy/images/qemuarm/core-image-minimal-qemuarm.ext4
> tcpserial=49750 bootparams="console=tty1 console=ttyS0,115200n8
> printk.time=1" qemuparams="-serial tcp:127.0.0.1:33331 -pidfile
> pidfile_45252"
> | DEBUG: runqemu started, pid is 45707
> | DEBUG: waiting at most 120 seconds for qemu pid
> | DEBUG: qemu started in 2.0028998851776123 seconds - qemu procces pid is
> 47588
> | DEBUG: qemu cmdline used:
> |
> /home/AIngale/Poky-1/poky-virt/build-2/tmp/work/x86_64-linux/qemu-helper-native/1.0-r1/recipe-sysroot-native/usr/bin/qemu-system-arm
> -device virtio-net-pci,netdev=net0,mac=52:54:00:12:34:02 -netdev
> tap,id=net0,ifname=tap0,script=no,downscript=no -drive
> file=/home/AIngale/Poky-1/poky-virt/build-2/tmp/deploy/images/qemuarm/core-image-minimal-qemuarm.ext4,if=virtio,format=raw
> -show-cursor -device virtio-rng-pci -nographic -serial tcp:127.0.0.1:33331
> -pidfile pidfile_45252 -machine virt -m 256 -serial tcp:127.0.0.1:49750
> -snapshot -kernel
> /home/AIngale/Poky-1/poky-virt/build-2/tmp/deploy/images/qemuarm/zImage
> -append root=/dev/vda rw highres=off  console=ttyS0 mem=256M ip=192.168.7.2:
> :192.168.7.1:255.255.255.0 console=ttyAMA0,115200 console=tty
> console=tty1 console=ttyS0,115200n8 printk.time=1
> | DEBUG: Target IP: 192.168.7.2
> | DEBUG: Server IP: 192.168.7.1
> | DEBUG: Starting logging thread
> | DEBUG: Starting thread event loop
> | DEBUG: Connection request received
> | DEBUG: Setting connection established event
> | DEBUG: Output from runqemu:
> | runqemu - INFO - Continuing with the following parameters:
> |
> | runqemu - INFO - Using preconfigured tap device tap0
> | runqemu - INFO - If this is not intended, touch
> /tmp/qemu-tap-locks/tap0.skip to make runqemu skip tap0.
> | runqemu - INFO - Network configuration: 192.168.7.2::192.168.7.1:255
> .255.255.0
> | runqemu - INFO - Running
> /home/AIngale/Poky-1/poky-virt/build-2/tmp/work/x86_64-linux/qemu-helper-native/1.0-r1/recipe-sysroot-native/usr/bin/qemu-system-arm
> -device virtio-net-pci,netdev=net0,mac=52:54:00:12:34:02 -netdev
> tap,id=net0,ifname=tap0,script=no,downscript=no -drive
> file=/home/AIngale/Poky-1/poky-virt/build-2/tmp/deploy/images/qemuarm/core-image-minimal-qemuarm.ext4,if=virtio,format=raw
> -show-cursor  -device virtio-rng-pci  -nographic -serial tcp:
> 127.0.0.1:33331 -pidfile pidfile_45252 -machine virt  -m 256 -serial tcp:
> 127.0.0.1:49750 -snapshot -kernel
> /home/AIngale/Poky-1/poky-virt/build-2/tmp/deploy/images/qemuarm/zImage
> -append 'root=/dev/vda rw highres=off  console=ttyS0 mem=256M
> ip=192.168.7.2::192.168.7.1:255.255.255.0 console=ttyAMA0,115200
> console=tty console=tty1 console=ttyS0,115200n8 printk.time=1'
> |
> | QEMU 2.10.0 monitor - type 'help' for more information
> | (qemu)
> | DEBUG: Waiting at most 1000 seconds for login banner
> | DEBUG: Connection from 127.0.0.1:47228
> | DEBUG: Target didn't reached login boot in 1000 seconds
> | DEBUG: Last 25 lines of text:
> | [    0.992021] IP-Config: Complete:
> | [    0.992354]      device=eth0, hwaddr=52:54:00:12:34:02,
> ipaddr=192.168.7.2, mask=255.255.255.0, gw=192.168.7.1
> | [    0.992529]      host=192.168.7.2, domain=, nis-domain=(none)
> | [    0.992661]      bootserver=255.255.255.255,
> rootserver=255.255.255.255, rootpath=
> | [    1.073664] EXT4-fs (vda): recovery complete
> | [    1.076213] EXT4-fs (vda): mounted filesystem with ordered data mode.
> Opts: (null)
> | [    1.078025] VFS: Mounted root (ext4 filesystem) on device 254:0.
> | [    1.080978] devtmpfs: mounted
> | [    1.154450] Freeing unused kernel memory: 2048K
> | [    2.255136] udevd[69]: starting version 3.2.2
> | [    2.267361] random: udevd: uninitialized urandom read (16 bytes read)
> | [    2.276791] random: udevd: uninitialized urandom read (16 bytes read)
> | [    2.280743] random: udevd: uninitialized urandom read (16 bytes read)
> | [    2.376356] udevd[70]: starting eudev-3.2.2
> | [    8.340642] EXT4-fs (vda): re-mounted. Opts: (null)
> | [   10.052558] urandom_read: 1 callbacks suppressed
> | [   10.052693] random: dd: uninitialized urandom read (512 bytes read)
> | [   12.312545] uart-pl011 9000000.pl011: no DMA platform data
> |
> |
> | Poky (Yocto Project Reference Distro) 2.4.2 qemuarm /dev/ttyAMA0
> |
> |
> |
> | qemuarm login:
> | DEBUG: Check full boot log:
> /home/AIngale/Poky-1/poky-virt/build-2/tmp/work/qemuarm-poky-linux-gnueabi/core-image-minimal/1.0-r0/testimage/qemu_boot_log.20180531084306
> | WARNING: Qemu ended unexpectedly, dump data from host is in
> /tmp/oe-saved-tests/201805310859_qemu
> | DEBUG: Stopping logging thread
> | DEBUG: Stop event received
> | DEBUG: Tearing down logging thread
> | DEBUG: Sending SIGTERM to runqemu
> | ERROR: testimage received SIGTERM, shutting down...
> | ERROR: core-image-minimal - FAILED - tests were interrupted during
> execution
> | DEBUG: Python function do_testimage finished
> | ERROR: Function failed: do_testimage
> ERROR: Task
> (/home/AIngale/Poky-1/poky-virt/meta/recipes-core/images/core-image-minimal.bb:do_testimage)
> failed with exit code '1'
> NOTE: Tasks Summary: Attempted 563 tasks of which 562 didn't need to be
> rerun and 1 failed.
>
> Summary: 1 task failed:
>
> /home/AIngale/Poky-1/poky-virt/meta/recipes-core/images/core-image-minimal.bb:
> do_testimage
> Summary: There were 2 WARNING messages shown.
> Summary: There were 3 ERROR messages shown, returning a non-zero exit code.
> AIngale@swpfintbld03:~/Poky-1/poky-virt/build-2$
>
>
> On Thu, May 31, 2018 at 1:58 PM Sangal, Apoorv <apoorv.sangal@intel.com>
> wrote:
>
>>
>> > -----Original Message-----
>> > From: Anand Ingale [mailto:anand.build1985@gmail.com]
>> > Sent: Thursday, May 31, 2018 4:22 PM
>> > To: Sangal, Apoorv <apoorv.sangal@intel.com>
>> > Subject: Re: [poky] testimage feature ( automated tests for qemu images
>> ) not
>> > working for qemuarm virt machine
>> >
>> > Please clarify , what i need to check to see TAP device is setup
>> correctly or not ,
>> > as is mentioned i am able to boot qemuarm image
>> >
>> > {{{
>> > MACHINE: [qemuarm]
>> > FSTYPE: [ext4]
>> > ROOTFS: [/home/AIngale/Poky-1/poky-virt/build-
>> > 2/tmp/deploy/images/qemuarm/core-image-minimal-qemuarm-
>> > 20180519172847.rootfs.ext4]
>> > CONFFILE: [/home/AIngale/Poky-1/poky-virt/build-
>> > 2/tmp/deploy/images/qemuarm/core-image-minimal-qemuarm-
>> > 20180519172847.qemuboot.conf]
>> >
>> > runqemu - INFO - Using preconfigured tap device tap0
>> > runqemu - INFO - If this is not intended, touch
>> /tmp/qemu-tap-locks/tap0.skip to
>> > make runqemu skip tap0.
>> > runqemu - INFO - Network configuration:
>> > 192.168.7.2::192.168.7.1:255.255.255.0
>> > runqemu - INFO - Running /home/AIngale/Poky-1/poky-virt/build-
>> > 2/tmp/work/x86_64-linux/qemu-helper-native/1.0-r1/recipe-sysroot-
>> > native/usr/bin/qemu-system-arm -device virtio-net-
>> > pci,netdev=net0,mac=52:54:00:12:34:02 -netdev
>> > tap,id=net0,ifname=tap0,script=no,downscript=no -drive
>> > file=/home/AIngale/Poky-1/poky-virt/build-
>> > 2/tmp/deploy/images/qemuarm/core-image-minimal-qemuarm-
>> > 20180519172847.rootfs.ext4,if=virtio,format=raw -show-cursor  -device
>> virtio-
>> > rng-pci  -nographic -machine virt  -m 256 -serial mon:stdio -serial
>> null -kernel
>> > /home/AIngale/Poky-1/poky-virt/build-2/tmp/deploy/images/qemuarm/zImage
>> > -append 'root=/dev/vda rw highres=off  console=ttyS0 mem=256M
>> > ip=192.168.7.2::192.168.7.1:255.255.255.0 console=ttyAMA0,115200
>> > console=tty '
>> >
>> > ....
>> > ...
>> > ...
>> >
>> >
>> > [   10.674455] random: dd: uninitialized urandom read (512 bytes read)
>> > [   13.339060] uart-pl011 9000000.pl011: no DMA platform data
>> >
>> > Poky (Yocto Project Reference Distro) 2.4.2 qemuarm /dev/ttyAMA0
>> >
>> > qemuarm login: root
>> > root@qemuarm:~#
>> > root@qemuarm:~#
>> > root@qemuarm:~#
>> >
>> > root@qemuarm:~# uname -a
>> > Linux qemuarm 4.17.0-rc5-myker #1 SMP Sat May 19 17:25:41 UTC 2018
>> armv7l
>> > GNU/Linux
>> > root@qemuarm:~#
>> > root@qemuarm:~#
>> >
>> > }}}
>> >
>> >
>> >
>> > Best Regards
>> Share complete log of bitbake core-image-minimal -c testimage command.
>> -Apoorv
>> >
>> > On Thu, May 31, 2018 at 1:28 PM Sangal, Apoorv <apoorv.sangal@intel.com
>> > <mailto:apoorv.sangal@intel.com> > wrote:
>> >
>> >
>> >
>> >       > -----Original Message-----
>> >       > From: poky-bounces@yoctoproject.org <mailto:poky-
>> > bounces@yoctoproject.org>  [mailto:poky- <mailto:poky->
>> >       > bounces@yoctoproject.org <mailto:bounces@yoctoproject.org> ] On
>> > Behalf Of Anand Ingale
>> >       > Sent: Thursday, May 31, 2018 3:15 PM
>> >       > To: poky@yoctoproject.org <mailto:poky@yoctoproject.org>
>> >       > Subject: [poky] testimage feature ( automated tests for qemu
>> images )
>> > not
>> >       > working for qemuarm virt machine
>> >       >
>> >       > Hi All,
>> >       >  I have booted qemuarm  image for virt machine ( not for
>> versatilepb
>> > which is
>> >       > available by default in poky) .
>> >       >
>> >       > in my kernel recipe , source i have taken from below repository
>> >       > {{{
>> >       >
>> >       > SRC_URI =
>> > "git://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
>> > <http://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git>
>> >       > <
>> http://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git> "
>> >       >
>> >       > }}}
>> >       >
>> >       > i have created a defconfig file using multi_v7_defconfig
>> >       >      # cloned
>> > git://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
>> > <http://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git>
>> >       > <
>> http://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git>
>> >       >      # make multi_v7_defconfig
>> >       >      # copied .config generated as defconfig to recipes-kernel
>> directory
>> >       >
>> >       >
>> >       >  i have used  core-image-minimal  to build rootfs
>> >       >
>> >       >  i am able to boot qemu image when i run , # runqemu qemuarm
>> > nographic
>> >       >  {{{
>> >       > Poky (Yocto Project Reference Distro) 2.4.2 qemuarm /dev/ttyAMA0
>> >       >
>> >       > qemuarm login: root
>> >       > root@qemuarm:~#
>> >       > root@qemuarm:~# uname -a
>> >       > Linux qemuarm 4.17.0-rc5-myker #1 SMP Sat May 19 17:25:41 UTC
>> > 2018 armv7l
>> >       > GNU/Linux
>> >       > root@qemuarm:~#
>> >       > }}}
>> >       >
>> >       > followed this link to run testimage
>> >       > https://wiki.yoctoproject.org/wiki/Image_tests
>> >       >
>> >       >  when i run below commnad , it  fails to run tests
>> >       >   # bitbake core-image-minimal -c testimage
>> >       > {{{
>> >       >  WARNING: Qemu ended unexpectedly, dump data from host is in
>> > /tmp/oe-
>> >       > saved-tests/201805310707_qemu
>> >       > | DEBUG: Stopping logging thread
>> >       > | DEBUG: Stop event received
>> >       > | DEBUG: Tearing down logging thread
>> >       > | DEBUG: Sending SIGTERM to runqemu
>> >       > | ERROR: testimage received SIGTERM, shutting down...
>> >       > | ERROR: core-image-minimal - FAILED - tests were interrupted
>> during
>> > execution
>> >       > | DEBUG: Python function do_testimage finished
>> >       > | ERROR: Function failed: do_testimage
>> >       > ERROR: Task (/home/AIngale/Poky-1/poky-virt/meta/recipes-
>> >       > core/images/core-image-minimal.bb:do_testimage) failed with
>> exit
>> > code '1'
>> >       >
>> >       > }}}
>> >       >
>> >       >   do i need enable any kernel config for testimage feature to
>> work ??.
>> > please
>> >       > suggest  what changes i need to do . I have tried this on
>> poky's rocko
>> > branch .
>> >       >
>> >       There is no specific kernel configuration needed for testimage
>> feature
>> > to work.
>> >       Please check whether your TAP device is setup correctly for qemu
>> to
>> > work.
>> >       -Apoorv
>> >       > Best Regards
>> >       >
>> >
>> >
>>
>>

--0000000000005a8695056d7d4857
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Attaching=C2=A0 log.do_testimage=C2=A0</div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr">On Thu, May 31, 2018 at 2:33 PM Anand Ing=
ale &lt;<a href=3D"mailto:anand.build1985@gmail.com">anand.build1985@gmail.=
com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"=
><div>AIngale@swpfintbld03:~/Poky-1/poky-virt/build-2$ bitbake core-image-m=
inimal -c testimage</div><div>WARNING: Host distribution &quot;ubuntu-14.04=
&quot; has not been validated with this version of the build system; you ma=
y possibly experience unexpected failures. It is recommended that you use a=
 tested distribution.</div><div>Loading cache: 100% |######################=
###########################################################################=
##########| Time: 0:00:00</div><div>Loaded 1280 entries from dependency cac=
he.</div><div>NOTE: Resolving any missing task queue dependencies</div><div=
><br></div><div>Build Configuration:</div><div>BB_VERSION=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;1.36.0&quot;</div><div>BUILD_SYS=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;x86_64-linux&quot;</div><div>N=
ATIVELSBSTRING=C2=A0 =C2=A0 =C2=A0 =3D &quot;universal-4.8&quot;</div><div>=
TARGET_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;arm-poky-linux=
-gnueabi&quot;</div><div>MACHINE=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =3D &quot;qemuarm&quot;</div><div>DISTRO=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;poky&quot;</div><div>DISTRO_VERSION=C2=
=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;2.4.2&quot;</div><div>TUNE_FEATURES=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =3D &quot;arm armv5 thumb dsp&quot;</div><div>TARGET_=
FPU=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;soft&quot;</div><div>=
meta</div><div>meta-poky</div><div>meta-yocto-bsp=C2=A0 =C2=A0 =C2=A0 =C2=
=A0=3D &quot;rocko:9915e071bcadd7c4d5363a067c529889851d37a5&quot;</div><div=
><br></div><div>Initialising tasks: 100% |#################################=
#####################################################################| Time=
: 0:00:03</div><div>NOTE: Executing SetScene Tasks</div><div>NOTE: Executin=
g RunQueue Tasks</div><div>WARNING: core-image-minimal-1.0-r0 do_testimage:=
 Qemu ended unexpectedly, dump data from host is in /tmp/oe-saved-tests/201=
805310859_qemu</div><div>ERROR: core-image-minimal-1.0-r0 do_testimage: tes=
timage received SIGTERM, shutting down...</div><div>ERROR: core-image-minim=
al-1.0-r0 do_testimage: core-image-minimal - FAILED - tests were interrupte=
d during execution</div><div>ERROR: core-image-minimal-1.0-r0 do_testimage:=
 Function failed: do_testimage</div><div>ERROR: Logfile of failure stored i=
n: /home/AIngale/Poky-1/poky-virt/build-2/tmp/work/qemuarm-poky-linux-gnuea=
bi/core-image-minimal/1.0-r0/temp/log.do_testimage.45252</div><div>Log data=
 follows:</div><div>| DEBUG: Executing python function extend_recipe_sysroo=
t</div><div>| NOTE: Direct dependencies are [&#39;virtual:native:/home/AIng=
ale/Poky-1/poky-virt/meta/recipes-devtools/createrepo-c/createrepo-c_git.bb=
:do_populate_sysroot&#39;, &#39;virtual:native:/home/AIngale/Poky-1/poky-vi=
rt/meta/recipes-devtools/qemu/qemu_2.10.0.bb:do_populate_sysroot&#39;, &#39=
;/home/AIngale/Poky-1/poky-virt/meta/recipes-devtools/qemu/qemu-helper-nati=
ve_1.0.bb:do_populate_sysroot&#39;, &#39;virtual:native:/home/AIngale/Poky-=
1/poky-virt/meta/recipes-extended/cpio/cpio_2.12.bb:do_populate_sysroot&#39=
;]</div><div>| NOTE: Installed into sysroot: []</div><div>| NOTE: Skipping =
as already exists in sysroot: [&#39;createrepo-c-native&#39;, &#39;qemu-nat=
ive&#39;, &#39;qemu-helper-native&#39;, &#39;cpio-native&#39;, &#39;quilt-n=
ative&#39;, &#39;zlib-native&#39;, &#39;pkgconfig-native&#39;, &#39;alsa-li=
b-native&#39;, &#39;libtool-native&#39;, &#39;pixman-native&#39;, &#39;auto=
make-native&#39;, &#39;glib-2.0-native&#39;, &#39;libsdl-native&#39;, &#39;=
dtc-native&#39;, &#39;autoconf-native&#39;, &#39;gnu-config-native&#39;, &#=
39;texinfo-dummy-native&#39;, &#39;gettext-minimal-native&#39;, &#39;curl-n=
ative&#39;, &#39;cmake-native&#39;, &#39;file-native&#39;, &#39;python3-nat=
ive&#39;, &#39;rpm-native&#39;, &#39;sqlite3-native&#39;, &#39;libxml2-nati=
ve&#39;, &#39;openssl-native&#39;, &#39;xz-native&#39;, &#39;expat-native&#=
39;, &#39;libpng-native&#39;, &#39;util-macros-native&#39;, &#39;gettext-na=
tive&#39;, &#39;gtk-doc-native&#39;, &#39;libpcre-native&#39;, &#39;libffi-=
native&#39;, &#39;util-linux-native&#39;, &#39;libxext-native&#39;, &#39;li=
bxrender-native&#39;, &#39;libxrandr-native&#39;, &#39;libx11-native&#39;, =
&#39;flex-native&#39;, &#39;bison-native&#39;, &#39;m4-native&#39;, &#39;bz=
ip2-native&#39;, &#39;readline-native&#39;, &#39;nss-native&#39;, &#39;elfu=
tils-native&#39;, &#39;popt-native&#39;, &#39;db-native&#39;, &#39;libarchi=
ve-native&#39;, &#39;dbus-native&#39;, &#39;makedepend-native&#39;, &#39;cr=
yptodev-linux-native&#39;, &#39;pigz-native&#39;, &#39;ncurses-native&#39;,=
 &#39;lzo-native&#39;, &#39;xextproto-native&#39;, &#39;xproto-native&#39;,=
 &#39;renderproto-native&#39;, &#39;randrproto-native&#39;, &#39;inputproto=
-native&#39;, &#39;xtrans-native&#39;, &#39;libxcb-native&#39;, &#39;kbprot=
o-native&#39;, &#39;nspr-native&#39;, &#39;e2fsprogs-native&#39;, &#39;libp=
thread-stubs-native&#39;, &#39;libxdmcp-native&#39;, &#39;xcb-proto-native&=
#39;, &#39;libxau-native&#39;, &#39;attr-native&#39;]</div><div>| DEBUG: Py=
thon function extend_recipe_sysroot finished</div><div>| DEBUG: Executing p=
ython function do_testimage</div><div>| DEBUG: Not using kvm for runqemu</d=
iv><div>| DEBUG: Created listening socket for qemu serial console on: <a hr=
ef=3D"http://127.0.0.1:33331" target=3D"_blank">127.0.0.1:33331</a></div><d=
iv>| DEBUG: Created listening socket for qemu serial console on: <a href=3D=
"http://127.0.0.1:49750" target=3D"_blank">127.0.0.1:49750</a></div><div>| =
DEBUG: launchcmd=3Drunqemu snapshot=C2=A0 =C2=A0nographic qemuarm /home/AIn=
gale/Poky-1/poky-virt/build-2/tmp/deploy/images/qemuarm/core-image-minimal-=
qemuarm.ext4 tcpserial=3D49750 bootparams=3D&quot;console=3Dtty1 console=3D=
ttyS0,115200n8 printk.time=3D1&quot; qemuparams=3D&quot;-serial tcp:<a href=
=3D"http://127.0.0.1:33331" target=3D"_blank">127.0.0.1:33331</a> -pidfile =
pidfile_45252&quot;</div><div>| DEBUG: runqemu started, pid is 45707</div><=
div>| DEBUG: waiting at most 120 seconds for qemu pid</div><div>| DEBUG: qe=
mu started in 2.0028998851776123 seconds - qemu procces pid is 47588</div><=
div>| DEBUG: qemu cmdline used:</div><div>| /home/AIngale/Poky-1/poky-virt/=
build-2/tmp/work/x86_64-linux/qemu-helper-native/1.0-r1/recipe-sysroot-nati=
ve/usr/bin/qemu-system-arm -device virtio-net-pci,netdev=3Dnet0,mac=3D52:54=
:00:12:34:02 -netdev tap,id=3Dnet0,ifname=3Dtap0,script=3Dno,downscript=3Dn=
o -drive file=3D/home/AIngale/Poky-1/poky-virt/build-2/tmp/deploy/images/qe=
muarm/core-image-minimal-qemuarm.ext4,if=3Dvirtio,format=3Draw -show-cursor=
 -device virtio-rng-pci -nographic -serial tcp:<a href=3D"http://127.0.0.1:=
33331" target=3D"_blank">127.0.0.1:33331</a> -pidfile pidfile_45252 -machin=
e virt -m 256 -serial tcp:<a href=3D"http://127.0.0.1:49750" target=3D"_bla=
nk">127.0.0.1:49750</a> -snapshot -kernel /home/AIngale/Poky-1/poky-virt/bu=
ild-2/tmp/deploy/images/qemuarm/zImage -append root=3D/dev/vda rw highres=
=3Doff=C2=A0 console=3DttyS0 mem=3D256M ip=3D192.168.7.2::192.168.7.1:255.2=
55.255.0 console=3DttyAMA0,115200 console=3Dtty console=3Dtty1 console=3Dtt=
yS0,115200n8 printk.time=3D1</div><div>| DEBUG: Target IP: 192.168.7.2</div=
><div>| DEBUG: Server IP: 192.168.7.1</div><div>| DEBUG: Starting logging t=
hread</div><div>| DEBUG: Starting thread event loop</div><div>| DEBUG: Conn=
ection request received</div><div>| DEBUG: Setting connection established e=
vent</div><div>| DEBUG: Output from runqemu:</div><div>| runqemu - INFO - C=
ontinuing with the following parameters:</div><div>|</div><div>| runqemu - =
INFO - Using preconfigured tap device tap0</div><div>| runqemu - INFO - If =
this is not intended, touch /tmp/qemu-tap-locks/tap0.skip to make runqemu s=
kip tap0.</div><div>| runqemu - INFO - Network configuration: 192.168.7.2::=
192.168.7.1:255.255.255.0</div><div>| runqemu - INFO - Running /home/AIngal=
e/Poky-1/poky-virt/build-2/tmp/work/x86_64-linux/qemu-helper-native/1.0-r1/=
recipe-sysroot-native/usr/bin/qemu-system-arm -device virtio-net-pci,netdev=
=3Dnet0,mac=3D52:54:00:12:34:02 -netdev tap,id=3Dnet0,ifname=3Dtap0,script=
=3Dno,downscript=3Dno -drive file=3D/home/AIngale/Poky-1/poky-virt/build-2/=
tmp/deploy/images/qemuarm/core-image-minimal-qemuarm.ext4,if=3Dvirtio,forma=
t=3Draw -show-cursor=C2=A0 -device virtio-rng-pci=C2=A0 -nographic -serial =
tcp:<a href=3D"http://127.0.0.1:33331" target=3D"_blank">127.0.0.1:33331</a=
> -pidfile pidfile_45252 -machine virt=C2=A0 -m 256 -serial tcp:<a href=3D"=
http://127.0.0.1:49750" target=3D"_blank">127.0.0.1:49750</a> -snapshot -ke=
rnel /home/AIngale/Poky-1/poky-virt/build-2/tmp/deploy/images/qemuarm/zImag=
e -append &#39;root=3D/dev/vda rw highres=3Doff=C2=A0 console=3DttyS0 mem=
=3D256M ip=3D192.168.7.2::192.168.7.1:255.255.255.0 console=3DttyAMA0,11520=
0 console=3Dtty console=3Dtty1 console=3DttyS0,115200n8 printk.time=3D1&#39=
;</div><div>|</div><div>| QEMU 2.10.0 monitor - type &#39;help&#39; for mor=
e information</div><div>| (qemu)</div><div>| DEBUG: Waiting at most 1000 se=
conds for login banner</div><div>| DEBUG: Connection from <a href=3D"http:/=
/127.0.0.1:47228" target=3D"_blank">127.0.0.1:47228</a></div><div>| DEBUG: =
Target didn&#39;t reached login boot in 1000 seconds</div><div>| DEBUG: Las=
t 25 lines of text:</div><div>| [=C2=A0 =C2=A0 0.992021] IP-Config: Complet=
e:</div><div>| [=C2=A0 =C2=A0 0.992354]=C2=A0 =C2=A0 =C2=A0 device=3Deth0, =
hwaddr=3D52:54:00:12:34:02, ipaddr=3D192.168.7.2, mask=3D255.255.255.0, gw=
=3D192.168.7.1</div><div>| [=C2=A0 =C2=A0 0.992529]=C2=A0 =C2=A0 =C2=A0 hos=
t=3D192.168.7.2, domain=3D, nis-domain=3D(none)</div><div>| [=C2=A0 =C2=A0 =
0.992661]=C2=A0 =C2=A0 =C2=A0 bootserver=3D255.255.255.255, rootserver=3D25=
5.255.255.255, rootpath=3D</div><div>| [=C2=A0 =C2=A0 1.073664] EXT4-fs (vd=
a): recovery complete</div><div>| [=C2=A0 =C2=A0 1.076213] EXT4-fs (vda): m=
ounted filesystem with ordered data mode. Opts: (null)</div><div>| [=C2=A0 =
=C2=A0 1.078025] VFS: Mounted root (ext4 filesystem) on device 254:0.</div>=
<div>| [=C2=A0 =C2=A0 1.080978] devtmpfs: mounted</div><div>| [=C2=A0 =C2=
=A0 1.154450] Freeing unused kernel memory: 2048K</div><div>| [=C2=A0 =C2=
=A0 2.255136] udevd[69]: starting version 3.2.2</div><div>| [=C2=A0 =C2=A0 =
2.267361] random: udevd: uninitialized urandom read (16 bytes read)</div><d=
iv>| [=C2=A0 =C2=A0 2.276791] random: udevd: uninitialized urandom read (16=
 bytes read)</div><div>| [=C2=A0 =C2=A0 2.280743] random: udevd: uninitiali=
zed urandom read (16 bytes read)</div><div>| [=C2=A0 =C2=A0 2.376356] udevd=
[70]: starting eudev-3.2.2</div><div>| [=C2=A0 =C2=A0 8.340642] EXT4-fs (vd=
a): re-mounted. Opts: (null)</div><div>| [=C2=A0 =C2=A010.052558] urandom_r=
ead: 1 callbacks suppressed</div><div>| [=C2=A0 =C2=A010.052693] random: dd=
: uninitialized urandom read (512 bytes read)</div><div>| [=C2=A0 =C2=A012.=
312545] uart-pl011 9000000.pl011: no DMA platform data</div><div>|</div><di=
v>|</div><div>| Poky (Yocto Project Reference Distro) 2.4.2 qemuarm /dev/tt=
yAMA0</div><div>|</div><div>|</div><div>|</div><div>| qemuarm login:</div><=
div>| DEBUG: Check full boot log: /home/AIngale/Poky-1/poky-virt/build-2/tm=
p/work/qemuarm-poky-linux-gnueabi/core-image-minimal/1.0-r0/testimage/qemu_=
boot_log.20180531084306</div><div>| WARNING: Qemu ended unexpectedly, dump =
data from host is in /tmp/oe-saved-tests/201805310859_qemu</div><div>| DEBU=
G: Stopping logging thread</div><div>| DEBUG: Stop event received</div><div=
>| DEBUG: Tearing down logging thread</div><div>| DEBUG: Sending SIGTERM to=
 runqemu</div><div>| ERROR: testimage received SIGTERM, shutting down...</d=
iv><div>| ERROR: core-image-minimal - FAILED - tests were interrupted durin=
g execution</div><div>| DEBUG: Python function do_testimage finished</div><=
div>| ERROR: Function failed: do_testimage</div><div>ERROR: Task (/home/AIn=
gale/Poky-1/poky-virt/meta/recipes-core/images/core-image-minimal.bb:do_tes=
timage) failed with exit code &#39;1&#39;</div><div>NOTE: Tasks Summary: At=
tempted 563 tasks of which 562 didn&#39;t need to be rerun and 1 failed.</d=
iv><div><br></div><div>Summary: 1 task failed:</div><div>=C2=A0 /home/AInga=
le/Poky-1/poky-virt/meta/recipes-core/images/core-image-minimal.bb:do_testi=
mage</div><div>Summary: There were 2 WARNING messages shown.</div><div>Summ=
ary: There were 3 ERROR messages shown, returning a non-zero exit code.</di=
v><div>AIngale@swpfintbld03:~/Poky-1/poky-virt/build-2$</div><div><br></div=
></div><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Thu, May 31, 2018=
 at 1:58 PM Sangal, Apoorv &lt;<a href=3D"mailto:apoorv.sangal@intel.com" t=
arget=3D"_blank">apoorv.sangal@intel.com</a>&gt; wrote:<br></div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc sol=
id;padding-left:1ex"><br>
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
&gt; <a href=3D"http://192.168.7.2" target=3D"_blank">192.168.7.2</a>::<a h=
ref=3D"http://192.168.7.1:255" target=3D"_blank">192.168.7.1:255</a>.255.25=
5.0<br>
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
&gt; ip=3D<a href=3D"http://192.168.7.2" target=3D"_blank">192.168.7.2</a>:=
:<a href=3D"http://192.168.7.1" target=3D"_blank">192.168.7.1</a>:255.255.2=
55.0 console=3DttyAMA0,115200<br>
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
</blockquote></div>

--0000000000005a8695056d7d4857--

--0000000000005a8696056d7d4859
Content-Type: application/octet-stream; name="log.do_testimage"
Content-Disposition: attachment; filename="log.do_testimage"
Content-Transfer-Encoding: base64
Content-ID: <f_jhucov050>
X-Attachment-Id: f_jhucov050

REVCVUc6IEV4ZWN1dGluZyBweXRob24gZnVuY3Rpb24gZXh0ZW5kX3JlY2lwZV9zeXNyb290Ck5P
VEU6IERpcmVjdCBkZXBlbmRlbmNpZXMgYXJlIFsndmlydHVhbDpuYXRpdmU6L2hvbWUvQUluZ2Fs
ZS9Qb2t5LTEvcG9reS12aXJ0L21ldGEvcmVjaXBlcy1kZXZ0b29scy9jcmVhdGVyZXBvLWMvY3Jl
YXRlcmVwby1jX2dpdC5iYjpkb19wb3B1bGF0ZV9zeXNyb290JywgJ3ZpcnR1YWw6bmF0aXZlOi9o
b21lL0FJbmdhbGUvUG9reS0xL3Bva3ktdmlydC9tZXRhL3JlY2lwZXMtZGV2dG9vbHMvcWVtdS9x
ZW11XzIuMTAuMC5iYjpkb19wb3B1bGF0ZV9zeXNyb290JywgJy9ob21lL0FJbmdhbGUvUG9reS0x
L3Bva3ktdmlydC9tZXRhL3JlY2lwZXMtZGV2dG9vbHMvcWVtdS9xZW11LWhlbHBlci1uYXRpdmVf
MS4wLmJiOmRvX3BvcHVsYXRlX3N5c3Jvb3QnLCAndmlydHVhbDpuYXRpdmU6L2hvbWUvQUluZ2Fs
ZS9Qb2t5LTEvcG9reS12aXJ0L21ldGEvcmVjaXBlcy1leHRlbmRlZC9jcGlvL2NwaW9fMi4xMi5i
Yjpkb19wb3B1bGF0ZV9zeXNyb290J10KTk9URTogSW5zdGFsbGVkIGludG8gc3lzcm9vdDogW10K
Tk9URTogU2tpcHBpbmcgYXMgYWxyZWFkeSBleGlzdHMgaW4gc3lzcm9vdDogWydjcmVhdGVyZXBv
LWMtbmF0aXZlJywgJ3FlbXUtbmF0aXZlJywgJ3FlbXUtaGVscGVyLW5hdGl2ZScsICdjcGlvLW5h
dGl2ZScsICdxdWlsdC1uYXRpdmUnLCAnemxpYi1uYXRpdmUnLCAncGtnY29uZmlnLW5hdGl2ZScs
ICdhbHNhLWxpYi1uYXRpdmUnLCAnbGlidG9vbC1uYXRpdmUnLCAncGl4bWFuLW5hdGl2ZScsICdh
dXRvbWFrZS1uYXRpdmUnLCAnZ2xpYi0yLjAtbmF0aXZlJywgJ2xpYnNkbC1uYXRpdmUnLCAnZHRj
LW5hdGl2ZScsICdhdXRvY29uZi1uYXRpdmUnLCAnZ251LWNvbmZpZy1uYXRpdmUnLCAndGV4aW5m
by1kdW1teS1uYXRpdmUnLCAnZ2V0dGV4dC1taW5pbWFsLW5hdGl2ZScsICdjdXJsLW5hdGl2ZScs
ICdjbWFrZS1uYXRpdmUnLCAnZmlsZS1uYXRpdmUnLCAncHl0aG9uMy1uYXRpdmUnLCAncnBtLW5h
dGl2ZScsICdzcWxpdGUzLW5hdGl2ZScsICdsaWJ4bWwyLW5hdGl2ZScsICdvcGVuc3NsLW5hdGl2
ZScsICd4ei1uYXRpdmUnLCAnZXhwYXQtbmF0aXZlJywgJ2xpYnBuZy1uYXRpdmUnLCAndXRpbC1t
YWNyb3MtbmF0aXZlJywgJ2dldHRleHQtbmF0aXZlJywgJ2d0ay1kb2MtbmF0aXZlJywgJ2xpYnBj
cmUtbmF0aXZlJywgJ2xpYmZmaS1uYXRpdmUnLCAndXRpbC1saW51eC1uYXRpdmUnLCAnbGlieGV4
dC1uYXRpdmUnLCAnbGlieHJlbmRlci1uYXRpdmUnLCAnbGlieHJhbmRyLW5hdGl2ZScsICdsaWJ4
MTEtbmF0aXZlJywgJ2ZsZXgtbmF0aXZlJywgJ2Jpc29uLW5hdGl2ZScsICdtNC1uYXRpdmUnLCAn
YnppcDItbmF0aXZlJywgJ3JlYWRsaW5lLW5hdGl2ZScsICduc3MtbmF0aXZlJywgJ2VsZnV0aWxz
LW5hdGl2ZScsICdwb3B0LW5hdGl2ZScsICdkYi1uYXRpdmUnLCAnbGliYXJjaGl2ZS1uYXRpdmUn
LCAnZGJ1cy1uYXRpdmUnLCAnbWFrZWRlcGVuZC1uYXRpdmUnLCAnY3J5cHRvZGV2LWxpbnV4LW5h
dGl2ZScsICdwaWd6LW5hdGl2ZScsICduY3Vyc2VzLW5hdGl2ZScsICdsem8tbmF0aXZlJywgJ3hl
eHRwcm90by1uYXRpdmUnLCAneHByb3RvLW5hdGl2ZScsICdyZW5kZXJwcm90by1uYXRpdmUnLCAn
cmFuZHJwcm90by1uYXRpdmUnLCAnaW5wdXRwcm90by1uYXRpdmUnLCAneHRyYW5zLW5hdGl2ZScs
ICdsaWJ4Y2ItbmF0aXZlJywgJ2ticHJvdG8tbmF0aXZlJywgJ25zcHItbmF0aXZlJywgJ2UyZnNw
cm9ncy1uYXRpdmUnLCAnbGlicHRocmVhZC1zdHVicy1uYXRpdmUnLCAnbGlieGRtY3AtbmF0aXZl
JywgJ3hjYi1wcm90by1uYXRpdmUnLCAnbGlieGF1LW5hdGl2ZScsICdhdHRyLW5hdGl2ZSddCkRF
QlVHOiBQeXRob24gZnVuY3Rpb24gZXh0ZW5kX3JlY2lwZV9zeXNyb290IGZpbmlzaGVkCkRFQlVH
OiBFeGVjdXRpbmcgcHl0aG9uIGZ1bmN0aW9uIGRvX3Rlc3RpbWFnZQpERUJVRzogTm90IHVzaW5n
IGt2bSBmb3IgcnVucWVtdQpERUJVRzogQ3JlYXRlZCBsaXN0ZW5pbmcgc29ja2V0IGZvciBxZW11
IHNlcmlhbCBjb25zb2xlIG9uOiAxMjcuMC4wLjE6MzMzMzEKREVCVUc6IENyZWF0ZWQgbGlzdGVu
aW5nIHNvY2tldCBmb3IgcWVtdSBzZXJpYWwgY29uc29sZSBvbjogMTI3LjAuMC4xOjQ5NzUwCkRF
QlVHOiBsYXVuY2hjbWQ9cnVucWVtdSBzbmFwc2hvdCAgIG5vZ3JhcGhpYyBxZW11YXJtIC9ob21l
L0FJbmdhbGUvUG9reS0xL3Bva3ktdmlydC9idWlsZC0yL3RtcC9kZXBsb3kvaW1hZ2VzL3FlbXVh
cm0vY29yZS1pbWFnZS1taW5pbWFsLXFlbXVhcm0uZXh0NCB0Y3BzZXJpYWw9NDk3NTAgYm9vdHBh
cmFtcz0iY29uc29sZT10dHkxIGNvbnNvbGU9dHR5UzAsMTE1MjAwbjggcHJpbnRrLnRpbWU9MSIg
cWVtdXBhcmFtcz0iLXNlcmlhbCB0Y3A6MTI3LjAuMC4xOjMzMzMxIC1waWRmaWxlIHBpZGZpbGVf
NDUyNTIiCkRFQlVHOiBydW5xZW11IHN0YXJ0ZWQsIHBpZCBpcyA0NTcwNwpERUJVRzogd2FpdGlu
ZyBhdCBtb3N0IDEyMCBzZWNvbmRzIGZvciBxZW11IHBpZApERUJVRzogcWVtdSBzdGFydGVkIGlu
IDIuMDAyODk5ODg1MTc3NjEyMyBzZWNvbmRzIC0gcWVtdSBwcm9jY2VzIHBpZCBpcyA0NzU4OApE
RUJVRzogcWVtdSBjbWRsaW5lIHVzZWQ6Ci9ob21lL0FJbmdhbGUvUG9reS0xL3Bva3ktdmlydC9i
dWlsZC0yL3RtcC93b3JrL3g4Nl82NC1saW51eC9xZW11LWhlbHBlci1uYXRpdmUvMS4wLXIxL3Jl
Y2lwZS1zeXNyb290LW5hdGl2ZS91c3IvYmluL3FlbXUtc3lzdGVtLWFybSAtZGV2aWNlIHZpcnRp
by1uZXQtcGNpLG5ldGRldj1uZXQwLG1hYz01Mjo1NDowMDoxMjozNDowMiAtbmV0ZGV2IHRhcCxp
ZD1uZXQwLGlmbmFtZT10YXAwLHNjcmlwdD1ubyxkb3duc2NyaXB0PW5vIC1kcml2ZSBmaWxlPS9o
b21lL0FJbmdhbGUvUG9reS0xL3Bva3ktdmlydC9idWlsZC0yL3RtcC9kZXBsb3kvaW1hZ2VzL3Fl
bXVhcm0vY29yZS1pbWFnZS1taW5pbWFsLXFlbXVhcm0uZXh0NCxpZj12aXJ0aW8sZm9ybWF0PXJh
dyAtc2hvdy1jdXJzb3IgLWRldmljZSB2aXJ0aW8tcm5nLXBjaSAtbm9ncmFwaGljIC1zZXJpYWwg
dGNwOjEyNy4wLjAuMTozMzMzMSAtcGlkZmlsZSBwaWRmaWxlXzQ1MjUyIC1tYWNoaW5lIHZpcnQg
LW0gMjU2IC1zZXJpYWwgdGNwOjEyNy4wLjAuMTo0OTc1MCAtc25hcHNob3QgLWtlcm5lbCAvaG9t
ZS9BSW5nYWxlL1Bva3ktMS9wb2t5LXZpcnQvYnVpbGQtMi90bXAvZGVwbG95L2ltYWdlcy9xZW11
YXJtL3pJbWFnZSAtYXBwZW5kIHJvb3Q9L2Rldi92ZGEgcncgaGlnaHJlcz1vZmYgIGNvbnNvbGU9
dHR5UzAgbWVtPTI1Nk0gaXA9MTkyLjE2OC43LjI6OjE5Mi4xNjguNy4xOjI1NS4yNTUuMjU1LjAg
Y29uc29sZT10dHlBTUEwLDExNTIwMCBjb25zb2xlPXR0eSBjb25zb2xlPXR0eTEgY29uc29sZT10
dHlTMCwxMTUyMDBuOCBwcmludGsudGltZT0xIApERUJVRzogVGFyZ2V0IElQOiAxOTIuMTY4Ljcu
MgpERUJVRzogU2VydmVyIElQOiAxOTIuMTY4LjcuMQpERUJVRzogU3RhcnRpbmcgbG9nZ2luZyB0
aHJlYWQKREVCVUc6IFN0YXJ0aW5nIHRocmVhZCBldmVudCBsb29wCkRFQlVHOiBDb25uZWN0aW9u
IHJlcXVlc3QgcmVjZWl2ZWQKREVCVUc6IFNldHRpbmcgY29ubmVjdGlvbiBlc3RhYmxpc2hlZCBl
dmVudApERUJVRzogT3V0cHV0IGZyb20gcnVucWVtdToKcnVucWVtdSAtIElORk8gLSBDb250aW51
aW5nIHdpdGggdGhlIGZvbGxvd2luZyBwYXJhbWV0ZXJzOgoKcnVucWVtdSAtIElORk8gLSBVc2lu
ZyBwcmVjb25maWd1cmVkIHRhcCBkZXZpY2UgdGFwMApydW5xZW11IC0gSU5GTyAtIElmIHRoaXMg
aXMgbm90IGludGVuZGVkLCB0b3VjaCAvdG1wL3FlbXUtdGFwLWxvY2tzL3RhcDAuc2tpcCB0byBt
YWtlIHJ1bnFlbXUgc2tpcCB0YXAwLgpydW5xZW11IC0gSU5GTyAtIE5ldHdvcmsgY29uZmlndXJh
dGlvbjogMTkyLjE2OC43LjI6OjE5Mi4xNjguNy4xOjI1NS4yNTUuMjU1LjAKcnVucWVtdSAtIElO
Rk8gLSBSdW5uaW5nIC9ob21lL0FJbmdhbGUvUG9reS0xL3Bva3ktdmlydC9idWlsZC0yL3RtcC93
b3JrL3g4Nl82NC1saW51eC9xZW11LWhlbHBlci1uYXRpdmUvMS4wLXIxL3JlY2lwZS1zeXNyb290
LW5hdGl2ZS91c3IvYmluL3FlbXUtc3lzdGVtLWFybSAtZGV2aWNlIHZpcnRpby1uZXQtcGNpLG5l
dGRldj1uZXQwLG1hYz01Mjo1NDowMDoxMjozNDowMiAtbmV0ZGV2IHRhcCxpZD1uZXQwLGlmbmFt
ZT10YXAwLHNjcmlwdD1ubyxkb3duc2NyaXB0PW5vIC1kcml2ZSBmaWxlPS9ob21lL0FJbmdhbGUv
UG9reS0xL3Bva3ktdmlydC9idWlsZC0yL3RtcC9kZXBsb3kvaW1hZ2VzL3FlbXVhcm0vY29yZS1p
bWFnZS1taW5pbWFsLXFlbXVhcm0uZXh0NCxpZj12aXJ0aW8sZm9ybWF0PXJhdyAtc2hvdy1jdXJz
b3IgIC1kZXZpY2UgdmlydGlvLXJuZy1wY2kgIC1ub2dyYXBoaWMgLXNlcmlhbCB0Y3A6MTI3LjAu
MC4xOjMzMzMxIC1waWRmaWxlIHBpZGZpbGVfNDUyNTIgLW1hY2hpbmUgdmlydCAgLW0gMjU2IC1z
ZXJpYWwgdGNwOjEyNy4wLjAuMTo0OTc1MCAtc25hcHNob3QgLWtlcm5lbCAvaG9tZS9BSW5nYWxl
L1Bva3ktMS9wb2t5LXZpcnQvYnVpbGQtMi90bXAvZGVwbG95L2ltYWdlcy9xZW11YXJtL3pJbWFn
ZSAtYXBwZW5kICdyb290PS9kZXYvdmRhIHJ3IGhpZ2hyZXM9b2ZmICBjb25zb2xlPXR0eVMwIG1l
bT0yNTZNIGlwPTE5Mi4xNjguNy4yOjoxOTIuMTY4LjcuMToyNTUuMjU1LjI1NS4wIGNvbnNvbGU9
dHR5QU1BMCwxMTUyMDAgY29uc29sZT10dHkgY29uc29sZT10dHkxIGNvbnNvbGU9dHR5UzAsMTE1
MjAwbjggcHJpbnRrLnRpbWU9MScKClFFTVUgMi4xMC4wIG1vbml0b3IgLSB0eXBlICdoZWxwJyBm
b3IgbW9yZSBpbmZvcm1hdGlvbg0KKHFlbXUpIApERUJVRzogV2FpdGluZyBhdCBtb3N0IDEwMDAg
c2Vjb25kcyBmb3IgbG9naW4gYmFubmVyCkRFQlVHOiBDb25uZWN0aW9uIGZyb20gMTI3LjAuMC4x
OjQ3MjI4CkRFQlVHOiBUYXJnZXQgZGlkbid0IHJlYWNoZWQgbG9naW4gYm9vdCBpbiAxMDAwIHNl
Y29uZHMKREVCVUc6IExhc3QgMjUgbGluZXMgb2YgdGV4dDoKWyAgICAwLjk5MjAyMV0gSVAtQ29u
ZmlnOiBDb21wbGV0ZToKWyAgICAwLjk5MjM1NF0gICAgICBkZXZpY2U9ZXRoMCwgaHdhZGRyPTUy
OjU0OjAwOjEyOjM0OjAyLCBpcGFkZHI9MTkyLjE2OC43LjIsIG1hc2s9MjU1LjI1NS4yNTUuMCwg
Z3c9MTkyLjE2OC43LjEKWyAgICAwLjk5MjUyOV0gICAgICBob3N0PTE5Mi4xNjguNy4yLCBkb21h
aW49LCBuaXMtZG9tYWluPShub25lKQpbICAgIDAuOTkyNjYxXSAgICAgIGJvb3RzZXJ2ZXI9MjU1
LjI1NS4yNTUuMjU1LCByb290c2VydmVyPTI1NS4yNTUuMjU1LjI1NSwgcm9vdHBhdGg9ClsgICAg
MS4wNzM2NjRdIEVYVDQtZnMgKHZkYSk6IHJlY292ZXJ5IGNvbXBsZXRlClsgICAgMS4wNzYyMTNd
IEVYVDQtZnMgKHZkYSk6IG1vdW50ZWQgZmlsZXN5c3RlbSB3aXRoIG9yZGVyZWQgZGF0YSBtb2Rl
LiBPcHRzOiAobnVsbCkKWyAgICAxLjA3ODAyNV0gVkZTOiBNb3VudGVkIHJvb3QgKGV4dDQgZmls
ZXN5c3RlbSkgb24gZGV2aWNlIDI1NDowLgpbICAgIDEuMDgwOTc4XSBkZXZ0bXBmczogbW91bnRl
ZApbICAgIDEuMTU0NDUwXSBGcmVlaW5nIHVudXNlZCBrZXJuZWwgbWVtb3J5OiAyMDQ4SwpbICAg
IDIuMjU1MTM2XSB1ZGV2ZFs2OV06IHN0YXJ0aW5nIHZlcnNpb24gMy4yLjIKWyAgICAyLjI2NzM2
MV0gcmFuZG9tOiB1ZGV2ZDogdW5pbml0aWFsaXplZCB1cmFuZG9tIHJlYWQgKDE2IGJ5dGVzIHJl
YWQpClsgICAgMi4yNzY3OTFdIHJhbmRvbTogdWRldmQ6IHVuaW5pdGlhbGl6ZWQgdXJhbmRvbSBy
ZWFkICgxNiBieXRlcyByZWFkKQpbICAgIDIuMjgwNzQzXSByYW5kb206IHVkZXZkOiB1bmluaXRp
YWxpemVkIHVyYW5kb20gcmVhZCAoMTYgYnl0ZXMgcmVhZCkKWyAgICAyLjM3NjM1Nl0gdWRldmRb
NzBdOiBzdGFydGluZyBldWRldi0zLjIuMgpbICAgIDguMzQwNjQyXSBFWFQ0LWZzICh2ZGEpOiBy
ZS1tb3VudGVkLiBPcHRzOiAobnVsbCkKWyAgIDEwLjA1MjU1OF0gdXJhbmRvbV9yZWFkOiAxIGNh
bGxiYWNrcyBzdXBwcmVzc2VkClsgICAxMC4wNTI2OTNdIHJhbmRvbTogZGQ6IHVuaW5pdGlhbGl6
ZWQgdXJhbmRvbSByZWFkICg1MTIgYnl0ZXMgcmVhZCkKWyAgIDEyLjMxMjU0NV0gdWFydC1wbDAx
MSA5MDAwMDAwLnBsMDExOiBubyBETUEgcGxhdGZvcm0gZGF0YQoKClBva3kgKFlvY3RvIFByb2pl
Y3QgUmVmZXJlbmNlIERpc3RybykgMi40LjIgcWVtdWFybSAvZGV2L3R0eUFNQTAKCgoKcWVtdWFy
bSBsb2dpbjogCkRFQlVHOiBDaGVjayBmdWxsIGJvb3QgbG9nOiAvaG9tZS9BSW5nYWxlL1Bva3kt
MS9wb2t5LXZpcnQvYnVpbGQtMi90bXAvd29yay9xZW11YXJtLXBva3ktbGludXgtZ251ZWFiaS9j
b3JlLWltYWdlLW1pbmltYWwvMS4wLXIwL3Rlc3RpbWFnZS9xZW11X2Jvb3RfbG9nLjIwMTgwNTMx
MDg0MzA2CldBUk5JTkc6IFFlbXUgZW5kZWQgdW5leHBlY3RlZGx5LCBkdW1wIGRhdGEgZnJvbSBo
b3N0IGlzIGluIC90bXAvb2Utc2F2ZWQtdGVzdHMvMjAxODA1MzEwODU5X3FlbXUKREVCVUc6IFN0
b3BwaW5nIGxvZ2dpbmcgdGhyZWFkCkRFQlVHOiBTdG9wIGV2ZW50IHJlY2VpdmVkCkRFQlVHOiBU
ZWFyaW5nIGRvd24gbG9nZ2luZyB0aHJlYWQKREVCVUc6IFNlbmRpbmcgU0lHVEVSTSB0byBydW5x
ZW11CkVSUk9SOiB0ZXN0aW1hZ2UgcmVjZWl2ZWQgU0lHVEVSTSwgc2h1dHRpbmcgZG93bi4uLgpF
UlJPUjogY29yZS1pbWFnZS1taW5pbWFsIC0gRkFJTEVEIC0gdGVzdHMgd2VyZSBpbnRlcnJ1cHRl
ZCBkdXJpbmcgZXhlY3V0aW9uCkRFQlVHOiBQeXRob24gZnVuY3Rpb24gZG9fdGVzdGltYWdlIGZp
bmlzaGVkCkVSUk9SOiBGdW5jdGlvbiBmYWlsZWQ6IGRvX3Rlc3RpbWFnZQo=

--0000000000005a8696056d7d4859--
