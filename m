Return-Path: <srinivasan.rns@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3032DE00CFB; Mon, 14 Jan 2019 21:17:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (srinivasan.rns[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.167.181 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-oi1-f181.google.com (mail-oi1-f181.google.com
	[209.85.167.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8BEE7E00CE0;
	Mon, 14 Jan 2019 21:17:52 -0800 (PST)
Received: by mail-oi1-f181.google.com with SMTP id i6so1193404oia.6;
	Mon, 14 Jan 2019 21:17:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=chh7b9m/rWkttC0Atw8eLNgdiJV3X11MyTjhmV0/kRc=;
	b=HS1wAaC+PI9IkNNEleWJKYVCWkZbQT71XcZWkmdkeR4HhUHmGsmJyRnCbV3ibuaygn
	hmUIR4aHA9904nvvDfASa7sbuAIGCxxqdglNisTxnuB1LuQcfVVRSO0nS2t04lNlBkPl
	43KY77s+AZj2Pj5tRZrt8G64bK6jD/p6P4pR8RKdMOB5yaWzVsnCXhLrUVhTGPZjbxse
	s2GI+Ocl/615jyMpeXte3tO5Vw42ntqIBvAr+AZ8IR8Bl4BfMUwpWCZrAWGuszRzLVxT
	/53y5+wRUO1U0+VfTsFEZrJujnprEF8u58Ng++orI2DpzqBYC7WrMuOPElmvDYAQGkiO
	yktw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=chh7b9m/rWkttC0Atw8eLNgdiJV3X11MyTjhmV0/kRc=;
	b=qhjNqiVPbTQfBPSVQ40t0hAwKgAL97GofHEPuUneQHb+JSjKidolzm2gFylYLKgJvy
	07RD6Od4m9sopRxJX+9X4feTp3qAaRt6+pM62qMFLFPqZkhhbNLGyHd69gJe4xDfgp3o
	JPQ41GjTMqsVL+U59xLm7ScD6mjzKLRfHDI96uThBvW01AKTAezDM4QPVQiFXzMV+DiH
	MXmtstFCqMYBcLxzRluWVzWZdVK1fCOEFTr3c7blqJeiU29ZxffYJT/cCWv4NbOLIuPs
	TJjCkKIBg1dFsrdHOOOAqjwOG0B3TxwtQjt3Z1ICvgEI0TTp/KpfzL91E46WekUk0lmk
	WIQw==
X-Gm-Message-State: AJcUukc3fPB9i5gRYoosUvzO8mubn1q5x7AwAKmJ8bWmOU7toDXJuMoN
	BVuTMOA4Iq3+ZPMucrJEPq6o8kdfWAawVqc9cep+a4t1vwQ=
X-Google-Smtp-Source: ALg8bN4Hmpf2wxcPHf5P1OWgfhrXsfyKv535a6t9HX8Nclyho4Em+lzEl9RwSK0C2F8wH6GW7TvQtlvbCmWR5+g3ePs=
X-Received: by 2002:a54:4393:: with SMTP id u19mr995269oiv.99.1547529471411;
	Mon, 14 Jan 2019 21:17:51 -0800 (PST)
MIME-Version: 1.0
From: srinivasan <srinivasan.rns@gmail.com>
Date: Tue, 15 Jan 2019 06:17:39 +0100
Message-ID: <CAFsTbWeONMCr4grfkWvG5A2EqP11ZMOwvnwOTmWF-fXCsc4r4w@mail.gmail.com>
To: yocto@yoctoproject.org, poky@yoctoproject.org, 
	yocto-infrastructure@yoctoproject.org, yocto-bsp@yoctoproject.org, 
	yocto-builds@yoctoproject.org, 
	"Development list for the linux-yocto*.git Linux kernel repositories"
	<linux-yocto@yoctoproject.org>, meta-freescale@yoctoproject.org,
	meta-freescale-request@yoctoproject.org, meta-intel@yoctoproject.org
Subject: ERROR: - package networkmanager-1.10.6-r0.aarch64 conflicts with connman provided by connman-1.35-r0.aarch64
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
X-List-Received-Date: Tue, 15 Jan 2019 05:17:53 -0000
X-Groupsio-MsgNum: 11520
Content-Type: multipart/mixed; boundary="0000000000006c9964057f784814"

--0000000000006c9964057f784814
Content-Type: text/plain; charset="UTF-8"

Dear Yocto experts,

I am seeing the below error when I am trying to integrate the
"fsl-image-validation-imx.bb" into my custom yocto build and trigger
the build using "bitbake custom-image-debug-imx8.bb", I somewhat feel
networkmanager is conflicting with conman, could you please let me
know how this issue can be resolved?

I have attached the recipe files for your information

Error:

ERROR: custom-image-debug-imx8-1.0-r0 do_rootfs: Could not invoke dnf.
Command '/home/user/test/os/build_fsl-image-validation-imx/tmp/work/imx8mmevk-poky-linux/custom-image-debug-imx8/1.0-r0/recipe-sysroot-native/usr/bin/dnf
-y -c /home/user/test/os/build_fsl-image-validation-imx/tmp/work/imx8mmevk-poky-linux/custom-image-debug-imx8/1.0-r0/rootfs/etc/dnf/dnf.conf
--setopt=reposdir=/home/user/test/os/build_fsl-image-validation-imx/tmp/work/imx8mmevk-poky-linux/custom-image-debug-imx8/1.0-r0/rootfs/etc/yum.repos.d
--repofrompath=oe-repo,/home/user/test/os/build_fsl-image-validation-imx/tmp/work/imx8mmevk-poky-linux/custom-image-debug-imx8/1.0-r0/oe-rootfs-repo
--installroot=/home/user/test/os/build_fsl-image-validation-imx/tmp/work/imx8mmevk-poky-linux/custom-image-debug-imx8/1.0-r0/rootfs
--setopt=logdir=/home/user/test/os/build_fsl-image-validation-imx/tmp/work/imx8mmevk-poky-linux/custom-image-debug-imx8/1.0-r0/temp
--nogpgcheck install alsa-server alsa-tools alsa-utils apt apt-repo
bash basicquick bc binutils binutils-symlinks bmap-tools-git
build-config bzip2 cmake coreutils crashme crda dfu-util diffutils dnf
dnsmasq ethtool file libfreetype6 gdb gdbserver gettext git
glibc-gconv-utf-32 gnupg libharfbuzz0 hidapi hostapd htop iperf3 iw
kernel-dev kernel-devsrc kernel-modules ldd libasound liberation-fonts
libfftw libfftwf libjack libjpeg62 libpng16-16 libtool libxerces-c
libsensors4 lmsensors-sensors lsof lttng-modules make memtester
merge-files nano networkmanager ni-isolcpus ninja openssl
packagegroup-base-extended packagegroup-core-boot
packagegroup-core-full-cmdline packagegroup-core-sdk
packagegroup-core-ssh-dropbear packagegroup-core-standalone-sdk-target
packagegroup-core-tools-debug packagegroup-core-tools-profile
packagegroup-core-tools-testapps packagegroup-fsl-optee-imx
packagegroup-fsl-tools-audio packagegroup-fsl-tools-gpu-external
packagegroup-tools-bluetooth pbzip2 pciutils perf pkgconfig procps
psplash python python-dbus python-modules python-pandas python-pip
python3 python3-dbus python3-misc python3-modules python3-pip
python3-psutil python3-robotframework python3-six qt3d qt3d-dev
qt3d-mkspecs qtbase qtbase-dev qtbase-mkspecs qtbase-plugins
qtbase-tools libqt5charts5 libqt5charts-dev libqt5charts-mkspecs
qtconnectivity-dev qtconnectivity-mkspecs qtdeclarative
qtdeclarative-dev qtdeclarative-mkspecs qtgraphicaleffects
qtgraphicaleffects-dev qtquickcontrols qtquickcontrols-dev
qtquickcontrols-qmlplugins qtquickcontrols2 qtquickcontrols2-dev
qtquickcontrols2-mkspecs libqt5svg5 libqt5svg-dev libqt5svg-mkspecs
rpm rt-tests rtirq run-postinsts screen ssh-keys-server strace stress
sysstat tar tmux trace-cmd ttf-bitstream-vera udev udev-automount
unzip usbreset usbutils util-linux valgrind wget wireless-tools
wpa-supplicant zip libz1 locale-base-en-us' returned 1:
Added oe-repo repo from
/home/user/test/os/build_fsl-image-validation-imx/tmp/work/imx8mmevk-poky-linux/custom-image-debug-imx8/1.0-r0/oe-rootfs-repo
Last metadata expiration check: 0:00:00 ago on Mon 14 Jan 2019 04:06:18 PM UTC.
Error:
 Problem: package connman-tools-1.35-r0.aarch64 requires connman, but
none of the providers can be installed
  - package packagegroup-core-tools-testapps-1.0-r2.imx8mmevk requires
connman-tools, but none of the providers can be installed
  - package networkmanager-1.10.6-r0.aarch64 conflicts with connman
provided by connman-1.35-r0.aarch64
  - conflicting requests
(try to add '--allowerasing' to command line to replace conflicting
packages or '--skip-broken' to skip uninstallable packages)

ERROR: custom-image-debug-imx8-1.0-r0 do_rootfs: Function failed: do_rootfs
ERROR: Logfile of failure stored in:
/home/user/test/os/build_fsl-image-validation-imx/tmp/work/imx8mmevk-poky-linux/custom-image-debug-imx8/1.0-r0/temp/log.do_rootfs.56617
ERROR: Task (/home/user/test/os/sources/meta-custom-imx8/recipes-core/images/custom-image-debug-imx8.bb:do_rootfs)
failed with exit code '1'
NOTE: Tasks Summary: Attempted 8016 tasks of which 7974 didn't need to
be rerun and 1 failed.

Many Thanks in advance,

--0000000000006c9964057f784814
Content-Type: application/octet-stream; name="fsl-image-validation-imx.bb"
Content-Disposition: attachment; filename="fsl-image-validation-imx.bb"
Content-Transfer-Encoding: base64
Content-ID: <f_jqxas9q32>
X-Attachment-Id: f_jqxas9q32

IyBDb3B5cmlnaHQgKEMpIDIwMTUgRnJlZXNjYWxlIFNlbWljb25kdWN0b3IKIyBDb3B5cmlnaHQg
MjAxNy0yMDE4IE5YUAojIFJlbGVhc2VkIHVuZGVyIHRoZSBNSVQgbGljZW5zZSAoc2VlIENPUFlJ
TkcuTUlUIGZvciB0aGUgdGVybXMpCgpERVNDUklQVElPTiA9ICJGcmVlc2NhbGUgSW1hZ2UgdG8g
dmFsaWRhdGUgaS5NWCBtYWNoaW5lcy4gXApUaGlzIGltYWdlIGNvbnRhaW5zIGV2ZXJ5dGhpbmcg
dXNlZCB0byB0ZXN0IGkuTVggbWFjaGluZXMgaW5jbHVkaW5nIEdVSSwgXApkZW1vcyBhbmQgbG90
cyBvZiBhcHBsaWNhdGlvbnMuIFRoaXMgY3JlYXRlcyBhIHZlcnkgbGFyZ2UgaW1hZ2UsIG5vdCBc
CnN1aXRhYmxlIGZvciBwcm9kdWN0aW9uLiIKTElDRU5TRSA9ICJNSVQiCgppbmhlcml0IGNvcmUt
aW1hZ2UKCiMjIyBXQVJOSU5HOiBUaGlzIGltYWdlIGlzIE5PVCBzdWl0YWJsZSBmb3IgcHJvZHVj
dGlvbiB1c2UgYW5kIGlzIGludGVuZGVkCiMjIyAgICAgICAgICB0byBwcm92aWRlIGEgd2F5IGZv
ciB1c2VycyB0byByZXByb2R1Y2UgdGhlIGltYWdlIHVzZWQgZHVyaW5nCiMjIyAgICAgICAgICB0
aGUgdmFsaWRhdGlvbiBwcm9jZXNzIG9mIGkuTVggQlNQIHJlbGVhc2VzLgoKIyMgU2VsZWN0IElt
YWdlIEZlYXR1cmVzCklNQUdFX0ZFQVRVUkVTICs9ICIgXAogICAgZGVidWctdHdlYWtzIFwKICAg
IHRvb2xzLXByb2ZpbGUgXAogICAgc3BsYXNoIFwKICAgIHRvb2xzLWRlYnVnIFwKICAgIHNzaC1z
ZXJ2ZXItZHJvcGJlYXIgXAogICAgdG9vbHMtdGVzdGFwcHMgXAogICAgaHdjb2RlY3MgXAoiCgpD
T1JFX0lNQUdFX0VYVFJBX0lOU1RBTEwgKz0gIiBcCiAgICBwYWNrYWdlZ3JvdXAtY29yZS1mdWxs
LWNtZGxpbmUgXAogICAgcGFja2FnZWdyb3VwLXRvb2xzLWJsdWV0b290aCBcCiAgICBwYWNrYWdl
Z3JvdXAtZnNsLXRvb2xzLWF1ZGlvIFwKICAgIHBhY2thZ2Vncm91cC1mc2wtdG9vbHMtZ3B1LWV4
dGVybmFsIFwKIgo=

--0000000000006c9964057f784814
Content-Type: application/octet-stream; name="custom-image-debug-imx8.bb"
Content-Disposition: attachment; filename="custom-image-debug-imx8.bb"
Content-Transfer-Encoding: base64
Content-ID: <f_jqxas9pe1>
X-Attachment-Id: f_jqxas9pe1

REVTQ1JJUFRJT04gPSAiQnVpbGRzIHRoZSBkZWJ1ZyBpbWFnZSAoYXBwZW5kcyB0aGUgbWV0YS1j
dXN0b20gZGVidWcgaW1hZ2UpLiIKCgpyZXF1aXJlIHJlY2lwZXMtZnNsL2ltYWdlcy9mc2wtaW1h
Z2UtdmFsaWRhdGlvbi1pbXguYmIKCmluaGVyaXQgY3VzdG9tLWltYWdlLWRlYnVnCgo=

--0000000000006c9964057f784814
Content-Type: application/octet-stream; name="custom-image-debug.bbclass"
Content-Disposition: attachment; filename="custom-image-debug.bbclass"
Content-Transfer-Encoding: base64
Content-ID: <f_jqxas9oo0>
X-Attachment-Id: f_jqxas9oo0

U1VNTUFSWSA9ICJDb2duYXRlYyBkZWJ1ZyBjb25zb2xlIGltYWdlIGNsYXNzIgoKREVTQ1JJUFRJ
T04gPSAiVGhpcyBpcyBqdXN0IGFuIGltYWdlIGNsYXNzLiBZb3UgbmVlZCB0byBpbmhlcml0IHRo
aXMgY2xhc3MgXAogICAgICAgICAgICAgICAgdG8gYW5vdGhlciAuYmIgaW1hZ2UuIgoKaW5oZXJp
dCBjb3JlLWltYWdlIGV4dHJhdXNlcnMgcG9wdWxhdGVfc2RrX3F0NQoKcmVxdWlyZSBpbWFnZXMv
dHJha3Rvci1pbWFnZS1wYWNrYWdlcy5pbmMKCklNQUdFX0ZFQVRVUkVTICs9ICJwYWNrYWdlLW1h
bmFnZW1lbnQiCklNQUdFX0xJTkdVQVMgPSAiZW4tdXMiClBBQ0tBR0VfQ0xBU1NFUyArPSAiIHBh
Y2thZ2VfZGViIgoKQ09SRV9JTUFHRV9FWFRSQV9JTlNUQUxMX2FwcGVuZCA9ICIgXAogICAgICAg
IHBhY2thZ2Vncm91cC1jb3JlLXNzaC1kcm9wYmVhciBcCiAgICAgICAgcGFja2FnZWdyb3VwLWNv
cmUtc2RrIFwKICAgICAgICBwYWNrYWdlZ3JvdXAtY29yZS10b29scy1kZWJ1ZyBcCiAgICAgICAg
IgoKVE9PTENIQUlOX0hPU1RfVEFTS19hcHBlbmQgPSAiIG5hdGl2ZXNkay1jbWFrZS1kZXYgbmF0
aXZlc2RrLXF0YmFzZS1kZXYiClRPT0xDSEFJTl9UQVJHRVRfVEFTS19hcHBlbmQgPSAiIGtlcm5l
bC1kZXZzcmMiCgpFWFRSQV9JTUFHRV9GRUFUVVJFU19hcHBlbmQgPSAiIGRlYnVnLXR3ZWFrcyBk
ZXYtcGtncyB0b29scy1zZGsgdG9vbHMtcHJvZmlsZSBkYmctcGtncyIKUEFDS0FHRV9ERUJVR19T
UExJVF9TVFlMRSA9ICdkZWJ1Zy1maWxlLWRpcmVjdG9yeScKCklOSElCSVRfUEFDS0FHRV9TVFJJ
UCA9ICIxIgoKIyBOb3RlOgojIFRoaXMgaXMgYSBwbGFjZSBob2xkZXIgdG8gYWRkIHRlbXBvcmFy
eSBwYWNrYWdlcwojIGZvciB0ZXN0aW5nIHB1cnBvc2VzLiBJZiB0aG9zZSBwYWNrYWdlcyBnb2lu
ZyB0bwojIGJlIHBlcm1hbmVudCwgdGhlbiBtb3ZlIHRoZW0gdG8gdGhlIHRyYWt0b3ItCiMgaW1h
Z2UtcGFja2FnZXMuaW5jIGZpbGUKIwpUTVBfREVCVUdfUEtHUyA9ICIgXAoiCgojIFBhY2thZ2Vz
IGluY2x1ZGVkIGluIHRoZSBkZWJ1ZyBpbWFnZS4KIyBLZWVwIHRoaXMgY2xlYW4hCiMKSU1BR0Vf
SU5TVEFMTF9hcHBlbmQgPSAiIFwKICAgICR7TUlOSU1VTV9QS0dTfSAgXAogICAgJHtCTUFQVE9P
TH0gXAogICAgXAogICAgJHtTRU5TT1JTX1BLR1N9IFwKICAgICR7VFJBS1RPUl9MSUJTfSBcCiAg
ICAke0FQVF9QS0dTfSBcCiAgICAke0FMU0FfUEtHU30gXAogICAgJHtXSUZJX1NVUFBPUlR9IFwK
ICAgICR7U1RBTkRBUkRfUEtHU30gXAogICAgJHtQWVRIT04yX1BLR1N9IFwKICAgICR7UFlUSE9O
M19QS0dTfSBcCiAgICBcCiAgICAke0VYVFJBX0RFQlVHX1BLR1N9IFwKICAgICR7REVWX1NES19J
TlNUQUxMfSBcCiAgICAke1RFU1RfVE9PTFN9IFwKICAgICR7S0VSTkVMX0VYVFJBX0lOU1RBTEx9
IFwKICAgIFwKICAgICR7UVRfUEtHU30gXAogICAgXAogICAgJHtOSV9BUFBMSUNBVElPTlN9IFwK
ICAgICR7TklfQVBQTElDQVRJT05TX0VYVFJBfSBcCiAgICAke05JX0RFVl9UT09MU30gXAogICAg
JHtOSV9UT09MU30gXAogICAgXAogICAgJHtUTVBfREVCVUdfUEtHU30gXAoiCg==

--0000000000006c9964057f784814--
