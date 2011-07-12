Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 03A914C800A3
	for <poky@yoctoproject.org>; Tue, 12 Jul 2011 07:48:31 -0500 (CDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 84A731660398; Tue, 12 Jul 2011 06:48:31 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.2
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 7F5F61660395;
	Tue, 12 Jul 2011 06:48:30 -0600 (MDT)
Message-ID: <4E1C429E.7010506@mlbassoc.com>
Date: Tue, 12 Jul 2011 06:48:30 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.17) Gecko/20110428 Fedora/3.1.10-1.fc15 Thunderbird/3.1.10
MIME-Version: 1.0
To: Poky Project <poky@yoctoproject.org>
References: <4E1C32B3.8090708@mlbassoc.com>
In-Reply-To: <4E1C32B3.8090708@mlbassoc.com>
Subject: Re: BusyBox features not working
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
X-List-Received-Date: Tue, 12 Jul 2011 12:48:32 -0000
X-Groupsio-MsgNum: 6723
Content-Type: multipart/mixed; boundary="------------080808020800000902080500"

--------------080808020800000902080500
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 07/12/2011 05:40 AM, Gary Thomas wrote:
> Using the latest master, building for qemuarm with the default local.conf, I find that
> the various configurations set by DISTRO_FEATURES are not being propagated into the build
> of busybox. In particular, there is no networking support :-(
>
> $ grep IPV tmp/work/armv5te-poky-linux-gnueabi/busybox-1.18.4-r5/busybox-1.18.4/.config
> # CONFIG_FEATURE_IPV6 is not set
> # CONFIG_FEATURE_PREFER_IPV4_ADDRESS is not set
> # CONFIG_FEATURE_IFUPDOWN_IPV4 is not set
> # CONFIG_FEATURE_IFUPDOWN_IPV6 is not set
>
> This is supposed to work because "ipv6" and "ipv4" are now in ${DISTRO_FEATURES_LIBC},
> but that doesn't seem to be reflected by the build.
>
> If I set this explicitly in my local.conf, e.g.
> DISTRO_FEATURES = "alsa ipv4 ${DISTRO_FEATURES_LIBC}"
> I then get the correct options built.
>
> I know that ${DISTRO_FEATURES_LIBC} is set (at least the default) as without it,
> my builds break horribly.
>
> Any ideas what's going on here?
>

Weird.  I just ran through this, first with the default value for DISTRO_FEATURES,
then with the same value but 'ipv4' placed at the front of that list.  If 'ipv4'
is somewhere in the middle, busybox is not configured correctly.  If it's at the
front, it works properly.

A full log of these steps is attached.

What could possibly cause this behaviour?

Note: I printed the value of DISTRO_FEATURES by modifying base.bbclass.  Is there
an easier way to see the value of such variables being used by the recipes?  I gave
the bitbake manual a look, but didn't find any hints...

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

--------------080808020800000902080500
Content-Type: text/plain;
 name="bb.log"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="bb.log"

[gthomas@titan qemu_latest]$ bitbake busybox -c configure
Loading cache: 100% |###################################################################################| ETA:  00:00:00
Loaded 1039 entries from dependency cache.

OE Build Configuration:
BB_VERSION        = "1.13.2"
TARGET_ARCH       = "arm"
TARGET_OS         = "linux-gnueabi"
MACHINE           = "qemuarm"
DISTRO            = "poky"
DISTRO_VERSION    = "1.0+snapshot-20110712"
TARGET_FPU        = "soft"
DISTRO_FEATURES   = "alsa bluetooth ext2 irda pcmcia usbgadget usbhost wifi nfs zeroconf pci 3g ipv4 ipv6 libc-backtrace libc-big-macros libc-bsd libc-cxx-tests libc-catgets libc-charsets libc-crypt                                  libc-crypt-ufc libc-db-aliases libc-envz libc-fcvt libc-fmtmsg libc-fstab libc-ftraverse                                       libc-getlogin libc-idn libc-inet libc-inet-anl libc-libm libc-libm-big libc-locales libc-locale-code                    libc-memusage libc-nis libc-nsswitch libc-rcmd libc-rtld-debug libc-spawn libc-streams libc-sunrpc                      libc-utmp libc-utmpx libc-wordexp libc-posix-clang-wchar libc-posix-regexp libc-posix-regexp-glibc                      libc-posix-wchar-io largefile"
meta              
meta-yocto        = "local_master:f974868cadf74d0cf8380b2c6a4152d2fa4590b5"

NOTE: Resolving any missing task queue dependencies
NOTE: preferred version 2.21 of binutils-cross not available (for item virtual/arm-poky-linux-gnueabi-binutils)
NOTE: Preparing runqueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
NOTE: Running task 226 of 244 (ID: 2, /home/local/poky-amltd/meta/recipes-core/busybox/busybox_1.18.4.bb, do_fetch)
NOTE: package busybox-1.18.4-r5: task do_fetch: Started
NOTE: package busybox-1.18.4-r5: task do_fetch: Succeeded
NOTE: Running task 242 of 244 (ID: 0, /home/local/poky-amltd/meta/recipes-core/busybox/busybox_1.18.4.bb, do_unpack)
NOTE: package busybox-1.18.4-r5: task do_unpack: Started
NOTE: package busybox-1.18.4-r5: task do_unpack: Succeeded
NOTE: Running task 243 of 244 (ID: 1, /home/local/poky-amltd/meta/recipes-core/busybox/busybox_1.18.4.bb, do_patch)
NOTE: package busybox-1.18.4-r5: task do_patch: Started
NOTE: package busybox-1.18.4-r5: task do_patch: Succeeded
NOTE: Running task 244 of 244 (ID: 3, /home/local/poky-amltd/meta/recipes-core/busybox/busybox_1.18.4.bb, do_configure)
NOTE: package busybox-1.18.4-r5: task do_configure: Started
NOTE: package busybox-1.18.4-r5: task do_configure: Succeeded
NOTE: Tasks Summary: Attempted 244 tasks of which 240 didn't need to be rerun and 0 failed.

[gthomas@titan qemu_latest]$ grep IPV tmp/work/armv5te-poky-linux-gnueabi/busybox-1.18.4-r5/busybox-1.18.4/.config
# CONFIG_FEATURE_IPV6 is not set
# CONFIG_FEATURE_PREFER_IPV4_ADDRESS is not set
# CONFIG_FEATURE_IFUPDOWN_IPV4 is not set
# CONFIG_FEATURE_IFUPDOWN_IPV6 is not set

[gthomas@titan qemu_latest]$ emacs conf/local.conf

[gthomas@titan qemu_latest]$ bitbake busybox -c cleansstate
NOTE: Out of date cache found, rebuilding...
Parsing recipes: 100% |#################################################################################| Time: 00:01:30
Parsing of 805 .bb files complete (0 cached, 805 parsed). 1038 targets, 34 skipped, 0 masked, 0 errors.

OE Build Configuration:
BB_VERSION        = "1.13.2"
TARGET_ARCH       = "arm"
TARGET_OS         = "linux-gnueabi"
MACHINE           = "qemuarm"
DISTRO            = "poky"
DISTRO_VERSION    = "1.0+snapshot-20110712"
TARGET_FPU        = "soft"
DISTRO_FEATURES   = "ipv4 alsa bluetooth ext2 irda pcmcia usbgadget usbhost wifi nfs zeroconf pci 3g ipv4 ipv6 libc-backtrace libc-big-macros libc-bsd libc-cxx-tests libc-catgets libc-charsets libc-crypt                                    libc-crypt-ufc libc-db-aliases libc-envz libc-fcvt libc-fmtmsg libc-fstab libc-ftraverse                                libc-getlogin libc-idn libc-inet libc-inet-anl libc-libm libc-libm-big libc-locales libc-locale-code                    libc-memusage libc-nis libc-nsswitch libc-rcmd libc-rtld-debug libc-spawn libc-streams libc-sunrpc                      libc-utmp libc-utmpx libc-wordexp libc-posix-clang-wchar libc-posix-regexp libc-posix-regexp-glibc                      libc-posix-wchar-io largefile"
meta              
meta-yocto        = "local_master:f974868cadf74d0cf8380b2c6a4152d2fa4590b5"

NOTE: Resolving any missing task queue dependencies
NOTE: preferred version 2.21 of binutils-cross not available (for item virtual/arm-poky-linux-gnueabi-binutils)
NOTE: Preparing runqueue
NOTE: Executing RunQueue Tasks
NOTE: Running task 1 of 2 (ID: 0, /home/local/poky-amltd/meta/recipes-core/busybox/busybox_1.18.4.bb, do_clean)
NOTE: package busybox-1.18.4-r5: task do_clean: Started
NOTE: package busybox-1.18.4-r5: task do_clean: Succeeded
NOTE: Running task 2 of 2 (ID: 1, /home/local/poky-amltd/meta/recipes-core/busybox/busybox_1.18.4.bb, do_cleansstate)
NOTE: package busybox-1.18.4-r5: task do_cleansstate: Started
NOTE: package busybox-1.18.4-r5: task do_cleansstate: Succeeded
NOTE: Tasks Summary: Attempted 2 tasks of which 0 didn't need to be rerun and 0 failed.

[gthomas@titan qemu_latest]$ bitbake busybox -c configure
Loading cache: 100% |###################################################################################| ETA:  00:00:00
Loaded 1039 entries from dependency cache.

OE Build Configuration:
BB_VERSION        = "1.13.2"
TARGET_ARCH       = "arm"
TARGET_OS         = "linux-gnueabi"
MACHINE           = "qemuarm"
DISTRO            = "poky"
DISTRO_VERSION    = "1.0+snapshot-20110712"
TARGET_FPU        = "soft"
DISTRO_FEATURES   = "ipv4 alsa bluetooth ext2 irda pcmcia usbgadget usbhost wifi nfs zeroconf pci 3g ipv4 ipv6 libc-backtrace libc-big-macros libc-bsd libc-cxx-tests libc-catgets libc-charsets libc-crypt                                    libc-crypt-ufc libc-db-aliases libc-envz libc-fcvt libc-fmtmsg libc-fstab libc-ftraverse                                libc-getlogin libc-idn libc-inet libc-inet-anl libc-libm libc-libm-big libc-locales libc-locale-code                    libc-memusage libc-nis libc-nsswitch libc-rcmd libc-rtld-debug libc-spawn libc-streams libc-sunrpc                      libc-utmp libc-utmpx libc-wordexp libc-posix-clang-wchar libc-posix-regexp libc-posix-regexp-glibc                      libc-posix-wchar-io largefile"
meta              
meta-yocto        = "local_master:f974868cadf74d0cf8380b2c6a4152d2fa4590b5"

NOTE: Resolving any missing task queue dependencies
NOTE: preferred version 2.21 of binutils-cross not available (for item virtual/arm-poky-linux-gnueabi-binutils)
NOTE: Preparing runqueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
NOTE: Running task 226 of 244 (ID: 2, /home/local/poky-amltd/meta/recipes-core/busybox/busybox_1.18.4.bb, do_fetch)
NOTE: package busybox-1.18.4-r5: task do_fetch: Started
NOTE: package busybox-1.18.4-r5: task do_fetch: Succeeded
NOTE: Running task 242 of 244 (ID: 0, /home/local/poky-amltd/meta/recipes-core/busybox/busybox_1.18.4.bb, do_unpack)
NOTE: package busybox-1.18.4-r5: task do_unpack: Started
NOTE: package busybox-1.18.4-r5: task do_unpack: Succeeded
NOTE: Running task 243 of 244 (ID: 1, /home/local/poky-amltd/meta/recipes-core/busybox/busybox_1.18.4.bb, do_patch)
NOTE: package busybox-1.18.4-r5: task do_patch: Started
NOTE: package busybox-1.18.4-r5: task do_patch: Succeeded
NOTE: Running task 244 of 244 (ID: 3, /home/local/poky-amltd/meta/recipes-core/busybox/busybox_1.18.4.bb, do_configure)
NOTE: package busybox-1.18.4-r5: task do_configure: Started
NOTE: package busybox-1.18.4-r5: task do_configure: Succeeded
NOTE: Tasks Summary: Attempted 244 tasks of which 240 didn't need to be rerun and 0 failed.

[gthomas@titan qemu_latest]$ grep IPV tmp/work/armv5te-poky-linux-gnueabi/busybox-1.18.4-r5/busybox-1.18.4/.config
# CONFIG_FEATURE_IPV6 is not set
# CONFIG_FEATURE_PREFER_IPV4_ADDRESS is not set
CONFIG_FEATURE_IFUPDOWN_IPV4=y
# CONFIG_FEATURE_IFUPDOWN_IPV6 is not set

--------------080808020800000902080500--
