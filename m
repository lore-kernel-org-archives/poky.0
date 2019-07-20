Return-Path: <earthlingzephyr@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BA619E00DE0; Fri, 19 Jul 2019 21:55:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (geoffpshannon[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.128.44 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com
	[209.85.128.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CE5AEE00CDF
	for <poky@yoctoproject.org>; Fri, 19 Jul 2019 21:55:38 -0700 (PDT)
Received: by mail-wm1-f44.google.com with SMTP id v15so30476717wml.0
	for <poky@yoctoproject.org>; Fri, 19 Jul 2019 21:55:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=e/5wpF4+IQNpEZL2fOcuzkWRn8SfgtIpJzSkd4Vi5Rk=;
	b=ZlBuCP8oq6B4YNx30ucpncS6/CpqSXC7Buhic5c95ET25x2jTXRgdb79KtasP0RZQT
	9XnO5NDfqgtfe0Mj2Xf+xilR6uNARdkPve3dXau2L6sqoF14/iss3pgqsY7GQ6MH9+AK
	mt2x18c7ELQCYA1E2qfv2Es6N+wTWwQN/Gga1qguux7EXwbZVhWGHy5hnhoXxcP4HFB1
	ngjzBCEIYWJtGBglDiBJe0iGvAMtitbBz4cZV92lIqQ3rtVT/py4j9OOEcoA1PPdl80L
	y2sMbdz8LIaK7e60GwanlasQqDNPWD1DnOkI4WSY7tDC7RSwhjqAVXpOEw8On9QvcFVB
	bQLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=e/5wpF4+IQNpEZL2fOcuzkWRn8SfgtIpJzSkd4Vi5Rk=;
	b=dafzWAVmKWhv9KoMQQ6rfuN3GWQRarbfQVFGSkUDLiesNbpYoxrAYUH9pU1TxnyfGH
	pDt5jWAm195h8YVSHKs5KP33/qWEqfT0YcZ88illjpgohceUoEi2DXv2NvfZ9zY06F/a
	yn97PRjZqM9Rd/UZephKS8M9IBAZFYAjCyv4yWYcysAHksMsJ0dJSmf46xl4kAohTrpR
	e+16v7ypQZbAjOns/wxJgjS+moA2ytzHXC4mTYELYQWXmNMaO2mWmsDm6+eoplaHd9UD
	mIjZKlbZebFYaBC+4mssFWJruYyoxYo/8ZGDbBYcLYwr2BfsFzzp/lzWT6foEfJZTQVf
	WWmw==
X-Gm-Message-State: APjAAAUJNp1DweBNc7OcGQJ/qTzgDJ7+PVSb1MPxAT1YQMqSD0gexrVn
	TkxmHSM+1pkQk7bzodipHUcg515oJPZFcRXkXRzOw55mHQE=
X-Google-Smtp-Source: APXvYqwGDHg/J9bp//2+N9hGD1vodBoUS2cm7zM9lNbwVNHEq5pEKQK7diZbQtlW/7a0VQt924cEUprZtH57abVk8tM=
X-Received: by 2002:a7b:c106:: with SMTP id w6mr53988251wmi.80.1563598537349; 
	Fri, 19 Jul 2019 21:55:37 -0700 (PDT)
MIME-Version: 1.0
From: Geoff Shannon <geoffpshannon@gmail.com>
Date: Fri, 19 Jul 2019 21:55:10 -0700
Message-ID: <CA+pAvvwqRjoooro4yqwtr8sm5RxAPf0WXjs9JQUJ8SYm=y-UwQ@mail.gmail.com>
To: poky@yoctoproject.org
Subject: Trouble running Poky 2.7 qemu-x86 build
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
X-List-Received-Date: Sat, 20 Jul 2019 04:55:39 -0000
X-Groupsio-MsgNum: 11710
Content-Type: multipart/mixed; boundary="000000000000640be4058e15a77b"

--000000000000640be4058e15a77b
Content-Type: multipart/alternative; boundary="000000000000640be0058e15a779"

--000000000000640be0058e15a779
Content-Type: text/plain; charset="UTF-8"

Hi all, I'm trying to get started using Poky to build a custom image to run
on a beaglebone black.  I started off by trying to follow the Yocto Project
Quickstart and I'm stuck at getting the image to run on QEMU.  I'm new to
both Yocto Project and using QEMU so I expect I'm doing something simple
that's wrong but I haven't been able to figure it out.

I cloned the poky git repository, checked out tag yocto-2.7, ran `source
oe-init-build-env build`, setup my local.conf file with the contents in
file attached to this message, and then ran `bitbake core-image-sato`.

This appeared to complete successfully, so I then proceeded to try and test
the built image by running `runqemu qemux86`. This spit out this output,
and then proceeds to hang indefinitely.

```
runqemu - INFO - Running MACHINE=qemux86 bitbake -e...
runqemu - INFO - Continuing with the following parameters:

KERNEL:
[/home/geoff/prog/yocto/quick-build/poky/build/tmp/deploy/images/qemux86/bzImage--5.0.3+git0+f0b575cda6_3df4aae607-r0-qemux86-20190520070424.bin]
MACHINE: [qemux86]
FSTYPE: [ext4]
ROOTFS:
[/home/geoff/prog/yocto/quick-build/poky/build/tmp/deploy/images/qemux86/core-image-sato-qemux86-20190520070424.rootfs.ext4]
CONFFILE:
[/home/geoff/prog/yocto/quick-build/poky/build/tmp/deploy/images/qemux86/core-image-sato-qemux86-20190520070424.qemuboot.conf]

runqemu - INFO - Setting up tap interface under sudo
[sudo] password for geoff:
runqemu - INFO - Network configuration: 192.168.7.2::192.168.7.1:255
.255.255.0
runqemu - INFO - Running
/home/geoff/prog/yocto/quick-build/poky/build/tmp/work/x86_64-linux/qemu-helper-native/1.0-r1/recipe-sysroot-native/usr/bin/qemu-system-i386
-device virtio-net-pci,netdev=net0,mac=52:54:00:12:34:02 -netdev
tap,id=net0,ifname=tap0,script=no,downscript=no -drive
file=/home/geoff/prog/yocto/quick-build/poky/build/tmp/deploy/images/qemux86/core-image-sato-qemux86-20190520070424.rootfs.ext4,if=virtio,format=raw
-vga vmware -show-cursor -usb -device usb-tablet -object
rng-random,filename=/dev/urandom,id=rng0 -device virtio-rng-pci,rng=rng0
-cpu pentium2 -m 256 -serial mon:vc -serial null -kernel
/home/geoff/prog/yocto/quick-build/poky/build/tmp/deploy/images/qemux86/bzImage--5.0.3+git0+f0b575cda6_3df4aae607-r0-qemux86-20190520070424.bin
-append 'root=/dev/vda rw highres=off  mem=256M ip=192.168.7.2:
:192.168.7.1:255.255.255.0 vga=0 uvesafb.mode_option=640x480-32
oprofile.timer=1 uvesafb.task_timeout=-1 '
```

I was under the impression that this would pop up a window with the built
image running in QEMU, but nothing happens.

In case it helps, the output of `uname -a` on my machine is:
Linux pop-os 4.18.0-17-generic #18~18.04.1-Ubuntu SMP Fri Mar 15 15:27:12
UTC 2019 x86_64 x86_64 x86_64 GNU/Linux

If anyone has ideas about what is going wrong, further troubleshooting
suggestions I would very much appreciate it.  If there is a more suitable
place to ask for this kind of help my apologies and I would appreciate a
pointer to the correct place to get help.

Thanks,
Geoff

Nothing is ever easy.

--000000000000640be0058e15a779
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi all, I&#39;m trying to get started using Poky to b=
uild a custom image to run on a beaglebone black.=C2=A0 I started off by tr=
ying to follow the Yocto Project Quickstart and I&#39;m stuck at getting th=
e image to run on QEMU.=C2=A0 I&#39;m new to both Yocto Project and using Q=
EMU so I expect I&#39;m doing something simple that&#39;s wrong but I haven=
&#39;t been able to figure it out.</div><div><br></div><div>I cloned the po=
ky git repository, checked out tag yocto-2.7, ran `source oe-init-build-env=
 build`, setup my local.conf file with the contents in file attached to thi=
s message, and then ran `bitbake core-image-sato`.=C2=A0 <br></div><div><br=
></div><div>This appeared to complete successfully, so I then proceeded to =
try and test the built image by running `runqemu qemux86`. This spit out th=
is output, and then proceeds to hang indefinitely.</div><div><br></div><div=
>```</div><div>runqemu - INFO - Running MACHINE=3Dqemux86 bitbake -e...<br>=
runqemu - INFO - Continuing with the following parameters:<br><br>KERNEL: [=
/home/geoff/prog/yocto/quick-build/poky/build/tmp/deploy/images/qemux86/bzI=
mage--5.0.3+git0+f0b575cda6_3df4aae607-r0-qemux86-20190520070424.bin]<br>MA=
CHINE: [qemux86]<br>FSTYPE: [ext4]<br>ROOTFS: [/home/geoff/prog/yocto/quick=
-build/poky/build/tmp/deploy/images/qemux86/core-image-sato-qemux86-2019052=
0070424.rootfs.ext4]<br>CONFFILE: [/home/geoff/prog/yocto/quick-build/poky/=
build/tmp/deploy/images/qemux86/core-image-sato-qemux86-20190520070424.qemu=
boot.conf]<br><br>runqemu - INFO - Setting up tap interface under sudo<br>[=
sudo] password for geoff: <br>runqemu - INFO - Network configuration: 192.1=
68.7.2::192.168.7.1:255.255.255.0<br>runqemu - INFO - Running /home/geoff/p=
rog/yocto/quick-build/poky/build/tmp/work/x86_64-linux/qemu-helper-native/1=
.0-r1/recipe-sysroot-native/usr/bin/qemu-system-i386 -device virtio-net-pci=
,netdev=3Dnet0,mac=3D52:54:00:12:34:02 -netdev tap,id=3Dnet0,ifname=3Dtap0,=
script=3Dno,downscript=3Dno -drive file=3D/home/geoff/prog/yocto/quick-buil=
d/poky/build/tmp/deploy/images/qemux86/core-image-sato-qemux86-201905200704=
24.rootfs.ext4,if=3Dvirtio,format=3Draw -vga vmware -show-cursor -usb -devi=
ce usb-tablet -object rng-random,filename=3D/dev/urandom,id=3Drng0 -device =
virtio-rng-pci,rng=3Drng0 =C2=A0 -cpu pentium2 -m 256 -serial mon:vc -seria=
l null -kernel /home/geoff/prog/yocto/quick-build/poky/build/tmp/deploy/ima=
ges/qemux86/bzImage--5.0.3+git0+f0b575cda6_3df4aae607-r0-qemux86-2019052007=
0424.bin -append &#39;root=3D/dev/vda rw highres=3Doff =C2=A0mem=3D256M ip=
=3D192.168.7.2::192.168.7.1:255.255.255.0 vga=3D0 uvesafb.mode_option=3D640=
x480-32 oprofile.timer=3D1 uvesafb.task_timeout=3D-1 &#39;<br>```</div><div=
><br></div><div>I was under the impression that this would pop up a window =
with the built image running in QEMU, but nothing happens.</div><div><br></=
div><div>In case it helps, the output of `uname -a` on my machine is:</div>=
<div>Linux pop-os 4.18.0-17-generic #18~18.04.1-Ubuntu SMP Fri Mar 15 15:27=
:12 UTC 2019 x86_64 x86_64 x86_64 GNU/Linux</div><div><br></div><div>If any=
one has ideas about what is going wrong, further troubleshooting suggestion=
s I would very much appreciate it.=C2=A0 If there is a more suitable place =
to ask for this kind of help my apologies and I would appreciate a pointer =
to the correct place to get help.</div><div><br></div><div>Thanks,<br></div=
><div><div><div><div dir=3D"ltr" class=3D"m_390013602926005963gmail_signatu=
re" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div>Geoff</div><di=
v><br></div>Nothing is ever easy.</div></div></div></div></div></div>

--000000000000640be0058e15a779--

--000000000000640be4058e15a77b
Content-Type: application/octet-stream; name="local.conf"
Content-Disposition: attachment; filename="local.conf"
Content-Transfer-Encoding: base64
Content-ID: <f_jyb1bfd80>
X-Attachment-Id: f_jyb1bfd80

QkJfTlVNQkVSX1RIUkVBRFMgPz0gIiR7QGJiLnV0aWxzLmNwdV9jb3VudCgpfSIKUEFSQUxMRUxf
TUFLRSA/PSAiLWogJHtAYmIudXRpbHMuY3B1X2NvdW50KCl9IgoKTUFDSElORSA/PSAicWVtdXg4
Ni02NCIKCkRMX0RJUiA/PSAiJHtUT1BESVJ9L2Rvd25sb2FkcyIKClNTVEFURV9ESVIgPz0gIiR7
VE9QRElSfS9zc3RhdGUtY2FjaGUiCgpUTVBESVIgPSAiJHtUT1BESVJ9L3RtcCIKCkRJU1RSTyA/
PSAicG9reSIKClBBQ0tBR0VfQ0xBU1NFUyA/PSAicGFja2FnZV9kZWIiCgoKRVhUUkFfSU1BR0Vf
RkVBVFVSRVMgPz0gImRlYnVnLXR3ZWFrcyIKClVTRVJfQ0xBU1NFUyA/PSAiYnVpbGRzdGF0cyBp
bWFnZS1ta2xpYnMgaW1hZ2UtcHJlbGluayIKClBBVENIUkVTT0xWRSA9ICJub29wIgoKQkJfRElT
S01PTl9ESVJTID8/PSAiXAogICAgU1RPUFRBU0tTLCR7VE1QRElSfSwxRywxMDBLIFwKICAgIFNU
T1BUQVNLUywke0RMX0RJUn0sMUcsMTAwSyBcCiAgICBTVE9QVEFTS1MsJHtTU1RBVEVfRElSfSwx
RywxMDBLIFwKICAgIFNUT1BUQVNLUywvdG1wLDEwME0sMTAwSyBcCiAgICBBQk9SVCwke1RNUERJ
Un0sMTAwTSwxSyBcCiAgICBBQk9SVCwke0RMX0RJUn0sMTAwTSwxSyBcCiAgICBBQk9SVCwke1NT
VEFURV9ESVJ9LDEwME0sMUsgXAogICAgQUJPUlQsL3RtcCwxME0sMUsiCgpQQUNLQUdFQ09ORklH
X2FwcGVuZF9wbi1xZW11LW5hdGl2ZSA9ICIgc2RsIgpQQUNLQUdFQ09ORklHX2FwcGVuZF9wbi1u
YXRpdmVzZGstcWVtdSA9ICIgc2RsIgoKQ09ORl9WRVJTSU9OID0gIjEiCg==

--000000000000640be4058e15a77b--
