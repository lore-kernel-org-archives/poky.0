Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EF880E00D31; Sat, 20 Jul 2019 00:19:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (alex.kanavin[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.222.46 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ua1-f46.google.com (mail-ua1-f46.google.com
	[209.85.222.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A70D9E00C09
	for <poky@yoctoproject.org>; Sat, 20 Jul 2019 00:19:50 -0700 (PDT)
Received: by mail-ua1-f46.google.com with SMTP id j8so13411162uan.6
	for <poky@yoctoproject.org>; Sat, 20 Jul 2019 00:19:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=DM7hfPvGgAGYvmGIYDY6fj1KaRqWSyk2EK4PArNJ4lQ=;
	b=gLEr6NNFkFDVTk4tRc5GkujMsRY/Sh80npR/RtcvB87l7qJkStZlZej6IB74xM/9ed
	3CTaXisM148cIHwNxeMkgJmBAl12glmbJsLyhSRcS4HetQsOeg/FCnw+MWrA33lx/iiS
	gEUYTkVzl3CRMproGX3cSfTwF+pup8AJz1v6u7xLyYZYSdK3lwQXK2xsn4zUHenpXQFl
	xvSOvksi9io05DG301ZL1NUiQDyk8J/VfnWC1js5u+sK9CKU/uH2ZRUuBMMmqfVsLiZg
	hvJKpueqAWCBj4/OSuY30hS0NaLbA2GIm3Qwj2EZYDpUp1WWGwb/jgltCDXRz55yAWim
	8o5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=DM7hfPvGgAGYvmGIYDY6fj1KaRqWSyk2EK4PArNJ4lQ=;
	b=DOjvVlxSjR1cd1Ul7nC8ltdu+x45S8kaPEZPg4CmKyHOv+qjvL/WJDYwCS/9evnMMX
	mEzkOeBYFTMs6uWENIljan2DrydcKj52gOQJVw+F2axAN69rr3CU+qP6ej5jyDOx19HC
	xv2QH8MKZ0CvmeTPS+11Bdthntaxlc057ZS+tszQ8L4VNM+/gUirVPGQiRU/4yzlaHtj
	zi0ni57krelc61vXHI1w05CHOKAUqhVfziWQ1Ar2kIDH9udngMQPTmRXnWj/ifD2edx2
	5Ex5sEnH8Jyjf51mjF0m4YxC7+o6I9oz2a6ReuDOXFaN4zXqIVnSXVc97Cuqhx8H0Q2w
	Eyrw==
X-Gm-Message-State: APjAAAWoFdXPuY3ds/cXWVQsVbt3TO9nRfE6wirmYb675zPFufYzaD0v
	Jd6YxgNiaqKWUWgglCHvEeDVX9qTGlwnwWV5m7o=
X-Google-Smtp-Source: APXvYqx9gT1GyB+9yNdWrwlvjt0P6y7y2ZSUmh4CfaEICe/JpVYtmeZHZSRaknyka9RiHHVg2OgZVKTwulNWbJqqBPI=
X-Received: by 2002:ab0:2756:: with SMTP id c22mr13870763uap.22.1563607190013; 
	Sat, 20 Jul 2019 00:19:50 -0700 (PDT)
MIME-Version: 1.0
References: <CA+pAvvwqRjoooro4yqwtr8sm5RxAPf0WXjs9JQUJ8SYm=y-UwQ@mail.gmail.com>
In-Reply-To: <CA+pAvvwqRjoooro4yqwtr8sm5RxAPf0WXjs9JQUJ8SYm=y-UwQ@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Sat, 20 Jul 2019 10:19:39 +0300
Message-ID: <CANNYZj92fzLDMw-BrLu3_U_QSOoDiA0xODX6VQXQNVk6B7m4-g@mail.gmail.com>
To: Geoff Shannon <geoffpshannon@gmail.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: Trouble running Poky 2.7 qemu-x86 build
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
X-List-Received-Date: Sat, 20 Jul 2019 07:19:52 -0000
Content-Type: multipart/alternative; boundary="0000000000002109f6058e17ab6f"

--0000000000002109f6058e17ab6f
Content-Type: text/plain; charset="UTF-8"

The line
PACKAGECONFIG_append_pn-qemu-native = " sdl"
looks incorrect. The default local.conf set up for you (when you run
'source oe-init-build-env build') should have the correct one. Where did
that line come from? If it's some manual or guide or wiki, we need to
update it.

Qemu doesn't actually hang, it runs fine but without any graphical output,
because the graphical support is misconfigured (disabled) in your case.

Alex

On Sat, 20 Jul 2019 at 07:56, Geoff Shannon <geoffpshannon@gmail.com> wrote:

> Hi all, I'm trying to get started using Poky to build a custom image to
> run on a beaglebone black.  I started off by trying to follow the Yocto
> Project Quickstart and I'm stuck at getting the image to run on QEMU.  I'm
> new to both Yocto Project and using QEMU so I expect I'm doing something
> simple that's wrong but I haven't been able to figure it out.
>
> I cloned the poky git repository, checked out tag yocto-2.7, ran `source
> oe-init-build-env build`, setup my local.conf file with the contents in
> file attached to this message, and then ran `bitbake core-image-sato`.
>
> This appeared to complete successfully, so I then proceeded to try and
> test the built image by running `runqemu qemux86`. This spit out this
> output, and then proceeds to hang indefinitely.
>
> ```
> runqemu - INFO - Running MACHINE=qemux86 bitbake -e...
> runqemu - INFO - Continuing with the following parameters:
>
> KERNEL:
> [/home/geoff/prog/yocto/quick-build/poky/build/tmp/deploy/images/qemux86/bzImage--5.0.3+git0+f0b575cda6_3df4aae607-r0-qemux86-20190520070424.bin]
> MACHINE: [qemux86]
> FSTYPE: [ext4]
> ROOTFS:
> [/home/geoff/prog/yocto/quick-build/poky/build/tmp/deploy/images/qemux86/core-image-sato-qemux86-20190520070424.rootfs.ext4]
> CONFFILE:
> [/home/geoff/prog/yocto/quick-build/poky/build/tmp/deploy/images/qemux86/core-image-sato-qemux86-20190520070424.qemuboot.conf]
>
> runqemu - INFO - Setting up tap interface under sudo
> [sudo] password for geoff:
> runqemu - INFO - Network configuration: 192.168.7.2::192.168.7.1:255
> .255.255.0
> runqemu - INFO - Running
> /home/geoff/prog/yocto/quick-build/poky/build/tmp/work/x86_64-linux/qemu-helper-native/1.0-r1/recipe-sysroot-native/usr/bin/qemu-system-i386
> -device virtio-net-pci,netdev=net0,mac=52:54:00:12:34:02 -netdev
> tap,id=net0,ifname=tap0,script=no,downscript=no -drive
> file=/home/geoff/prog/yocto/quick-build/poky/build/tmp/deploy/images/qemux86/core-image-sato-qemux86-20190520070424.rootfs.ext4,if=virtio,format=raw
> -vga vmware -show-cursor -usb -device usb-tablet -object
> rng-random,filename=/dev/urandom,id=rng0 -device virtio-rng-pci,rng=rng0
> -cpu pentium2 -m 256 -serial mon:vc -serial null -kernel
> /home/geoff/prog/yocto/quick-build/poky/build/tmp/deploy/images/qemux86/bzImage--5.0.3+git0+f0b575cda6_3df4aae607-r0-qemux86-20190520070424.bin
> -append 'root=/dev/vda rw highres=off  mem=256M ip=192.168.7.2:
> :192.168.7.1:255.255.255.0 vga=0 uvesafb.mode_option=640x480-32
> oprofile.timer=1 uvesafb.task_timeout=-1 '
> ```
>
> I was under the impression that this would pop up a window with the built
> image running in QEMU, but nothing happens.
>
> In case it helps, the output of `uname -a` on my machine is:
> Linux pop-os 4.18.0-17-generic #18~18.04.1-Ubuntu SMP Fri Mar 15 15:27:12
> UTC 2019 x86_64 x86_64 x86_64 GNU/Linux
>
> If anyone has ideas about what is going wrong, further troubleshooting
> suggestions I would very much appreciate it.  If there is a more suitable
> place to ask for this kind of help my apologies and I would appreciate a
> pointer to the correct place to get help.
>
> Thanks,
> Geoff
>
> Nothing is ever easy.
> --
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>

--0000000000002109f6058e17ab6f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div>Th=
e line=C2=A0<br></div><div><div>PACKAGECONFIG_append_pn-qemu-native =3D &qu=
ot; sdl&quot;</div></div><div>looks incorrect. The default local.conf set u=
p for you (when you run &#39;source oe-init-build-env build&#39;) should ha=
ve the correct one. Where did that line come from? If it&#39;s some manual =
or guide or wiki, we need to update it.</div><div><br></div><div>Qemu doesn=
&#39;t actually hang, it runs fine but without any graphical output, becaus=
e the graphical support is misconfigured (disabled) in your case.=C2=A0</di=
v><div><br></div><div>Alex</div></div></div></div></div><br><div class=3D"g=
mail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sat, 20 Jul 2019 at 07=
:56, Geoff Shannon &lt;<a href=3D"mailto:geoffpshannon@gmail.com" target=3D=
"_blank">geoffpshannon@gmail.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;bo=
rder-left-style:solid;border-left-color:rgb(204,204,204);padding-left:1ex">=
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
><div><div><div><div dir=3D"ltr" class=3D"gmail-m_79027827389219281gmail-m_=
7602666985671225241m_390013602926005963gmail_signature"><div dir=3D"ltr"><d=
iv>Geoff</div><div><br></div>Nothing is ever easy.</div></div></div></div><=
/div></div>
-- <br>
_______________________________________________<br>
poky mailing list<br>
<a href=3D"mailto:poky@yoctoproject.org" target=3D"_blank">poky@yoctoprojec=
t.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/poky" rel=3D"noreferrer"=
 target=3D"_blank">https://lists.yoctoproject.org/listinfo/poky</a><br>
</blockquote></div>

--0000000000002109f6058e17ab6f--
