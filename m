Return-Path: <earthlingzephyr@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4A6A4E00D35; Mon, 22 Jul 2019 12:31:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	NUMERIC_HTTP_ADDR, 
	RCVD_IN_DNSWL_NONE,WEIRD_PORT autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (geoffpshannon[at]gmail.com)
	*  1.2 NUMERIC_HTTP_ADDR URI: Uses a numeric IP address in URL
	*  0.0 WEIRD_PORT URI: Uses non-standard port number for HTTP
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.221.41 listed in list.dnswl.org]
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com
	[209.85.221.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E71A1E00B9C
	for <poky@yoctoproject.org>; Mon, 22 Jul 2019 12:31:24 -0700 (PDT)
Received: by mail-wr1-f41.google.com with SMTP id p13so40569720wru.10
	for <poky@yoctoproject.org>; Mon, 22 Jul 2019 12:31:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=d4ody2EbrhSAJAUHSPvFOioOtt/DgxG3GMsF0LbIIDg=;
	b=qEknGDbct9o+xMk+WphSei0TZUAaZiVwHIUx6LYj3CxWFy9wBMKzwF1YOi/hraCD81
	POPdBFLDzVl/UYvF5bx+4/kNzazcJs+O1zZ3wcuK0LjJvbTR26+QvNpswU7lKBa5Op1W
	qXhxFALmZF65bC3n9kP7s878b4BBh9+WjXmejwfxnFIZZSkbl64bs76k6PQUeTPnSlJH
	Gg/eUafpjkmTkV6vVrX9T4wfv+GURmJ7jJyE8O0n9yArMM+IZdQA2wjYHteExojHhoen
	uRbEoLi7kDeljvpMhUFxw2GPgfycnUw5iyRu6WIuyubeBgh+7m22XTPS2OZk7IJelkdB
	pSew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=d4ody2EbrhSAJAUHSPvFOioOtt/DgxG3GMsF0LbIIDg=;
	b=HrIGImY3QZpUeF1miH/Ddqhoh1EP+w/Pxo/8rWEdtQYuF207cJJMNq300AKCzW+tmX
	mMWYE5Tb1fGZ5YBsKKbrfMRisLh16Vc54hMDM6y3n3TAo1pjynhu19j+vqyxo2L9da8h
	Uuz1gU9Zr+gm3GBIgzbEk3BEPvWEy1GoFZ77VQi2ivGHLehu4UjPtztMSI3N3g06U3cr
	NjPHbUYt/oMmYn86bHvUd/or/qn1B4cbk9x3C19TC6i9zxhsjwliA0gKkDTbRK0RlWhn
	nL8BBsb4Bg2grujmhyC8fnz4TvMJJVuSDyw4gkAzhoVI2rnAaPYjLWh+/YjdECxbim/B
	UuKw==
X-Gm-Message-State: APjAAAUG1PYYmyIYSaMlnWJO0Pqd6vbxQXIUoJrMZCkax8B1sP2nungG
	H29gZher6kE5xryvVBfiyWhAoX4NaGmgNGKYwhU=
X-Google-Smtp-Source: APXvYqz+0Jwmq+Q6cSib0Kvk43+lIK9rkDux6FDYkJkMyHCg51KL2ODw/Ac1D4PIXpdBGfPU7yhSpgnAFL0adEM/+Lo=
X-Received: by 2002:adf:9d8b:: with SMTP id p11mr43426750wre.226.1563823883934;
	Mon, 22 Jul 2019 12:31:23 -0700 (PDT)
MIME-Version: 1.0
References: <CA+pAvvwqRjoooro4yqwtr8sm5RxAPf0WXjs9JQUJ8SYm=y-UwQ@mail.gmail.com>
	<CANNYZj92fzLDMw-BrLu3_U_QSOoDiA0xODX6VQXQNVk6B7m4-g@mail.gmail.com>
	<CA+pAvvwWj7QxZXG=NY8u=GqXvTFX+ngKm75AtRC2ho4tf7z95w@mail.gmail.com>
	<CANBSh+PkwETX1UyiV=m-fRnxd76kB0QHeSfejfk6LcSzRx5-6A@mail.gmail.com>
In-Reply-To: <CANBSh+PkwETX1UyiV=m-fRnxd76kB0QHeSfejfk6LcSzRx5-6A@mail.gmail.com>
From: Geoff Shannon <geoffpshannon@gmail.com>
Date: Mon, 22 Jul 2019 12:31:12 -0700
Message-ID: <CA+pAvvzGnTmkunzNrR9e5c0zQ7T6=FTxbNo=L8D=dp-H=13CCw@mail.gmail.com>
To: William Bourque <wbourque@gmail.com>
Cc: poky@yoctoproject.org
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
X-List-Received-Date: Mon, 22 Jul 2019 19:31:26 -0000
Content-Type: multipart/alternative; boundary="00000000000017def0058e4a1fd4"

--00000000000017def0058e4a1fd4
Content-Type: text/plain; charset="UTF-8"

Sounds useful William, thanks for the tip!

On Mon, Jul 22, 2019 at 6:34 AM William Bourque <wbourque@gmail.com> wrote:

> Hi Geoff,
>
> I'm a bit late but I thought I'd share a useful QEMU trick as well.
> If you don't want the qemu helper UI to pop or if you cannot use it
> (if you are integrating into build system as example), you can tell
> QEMU to bind a certain serial port to a TCP port on your host.
> Then, assuming your QEMU image passes "console=ttyS0,115200n8" in its
> kernel boot parameter, you can then login to the system from your host
> using the open TCP port.
>
> The exact commands would look like this:
>
> On the host, open an arbitrary TCP port (here I use netcat, but
> anything would do):
>      nc -l 50299
>
> Then, start QEMU with a "-serial" pointing to the TCP port you opened
> on the host.
> Below is the "minimal" full QEMU command I use in my case, the serial
> binding "-serial tcp:127.0.0.1:50299" at the end:
>     qemu-system-x86_64 -device
> virtio-net-pci,netdev=net0,mac=DE:AD:DE:AE:BE:EF -netdev
> tap,id=net0,ifname=tap0,script=no,downscript=no -drive
> if=none,id=hd,file=qemux86-64/core-image-minimal-qemux86-64.wic,format=raw
> -device virtio-scsi-pci,id=scsi -device scsi-hd,drive=hd -serial
> tcp:127.0.0.1:50299
>
> If everything goes well, your system should now bootup and you would get
> output.
> Then when getty login starts (assuming you use it), you should be able to
> login.
>
> I hope this help!
>
> - William
>
>
> On Sun, Jul 21, 2019 at 5:17 PM Geoff Shannon <geoffpshannon@gmail.com>
> wrote:
> >
> > Interesting! I was unsure about the origin of those lines, and couldn't
> find it after looking through the various books and tutorials I've been
> reading.  So I decided to just follow the yocto project quick build
> instructions, and generate a new build from `source oe-init-build-env`.
> And I found that line is actually very similar to a line from the
> local.conf generated by the build init script.
> > PACKAGECONFIG_append_pn-qemu-system-native = " sdl"
> >
> > I'm really not sure where that edit came from since I believe I made the
> first conf file I sent by stripping out all of the comments from the
> generated local.conf file and then changing a few values.  But I built poky
> using a checkout of tag yocto-2.7.1 and without editing the local.conf
> script and now `runqemu qemux86` is popping up a graphical interface and
> working just fine.
> >
> > So thanks for the pointer Alexander, I'm unstuck now!
> >
> > Geoff
> >
> > Nothing is ever easy.
> >
> >
> > On Sat, Jul 20, 2019 at 12:19 AM Alexander Kanavin <
> alex.kanavin@gmail.com> wrote:
> >>
> >> The line
> >> PACKAGECONFIG_append_pn-qemu-native = " sdl"
> >> looks incorrect. The default local.conf set up for you (when you run
> 'source oe-init-build-env build') should have the correct one. Where did
> that line come from? If it's some manual or guide or wiki, we need to
> update it.
> >>
> >> Qemu doesn't actually hang, it runs fine but without any graphical
> output, because the graphical support is misconfigured (disabled) in your
> case.
> >>
> >> Alex
> >>
> >> On Sat, 20 Jul 2019 at 07:56, Geoff Shannon <geoffpshannon@gmail.com>
> wrote:
> >>>
> >>> Hi all, I'm trying to get started using Poky to build a custom image
> to run on a beaglebone black.  I started off by trying to follow the Yocto
> Project Quickstart and I'm stuck at getting the image to run on QEMU.  I'm
> new to both Yocto Project and using QEMU so I expect I'm doing something
> simple that's wrong but I haven't been able to figure it out.
> >>>
> >>> I cloned the poky git repository, checked out tag yocto-2.7, ran
> `source oe-init-build-env build`, setup my local.conf file with the
> contents in file attached to this message, and then ran `bitbake
> core-image-sato`.
> >>>
> >>> This appeared to complete successfully, so I then proceeded to try and
> test the built image by running `runqemu qemux86`. This spit out this
> output, and then proceeds to hang indefinitely.
> >>>
> >>> ```
> >>> runqemu - INFO - Running MACHINE=qemux86 bitbake -e...
> >>> runqemu - INFO - Continuing with the following parameters:
> >>>
> >>> KERNEL:
> [/home/geoff/prog/yocto/quick-build/poky/build/tmp/deploy/images/qemux86/bzImage--5.0.3+git0+f0b575cda6_3df4aae607-r0-qemux86-20190520070424.bin]
> >>> MACHINE: [qemux86]
> >>> FSTYPE: [ext4]
> >>> ROOTFS:
> [/home/geoff/prog/yocto/quick-build/poky/build/tmp/deploy/images/qemux86/core-image-sato-qemux86-20190520070424.rootfs.ext4]
> >>> CONFFILE:
> [/home/geoff/prog/yocto/quick-build/poky/build/tmp/deploy/images/qemux86/core-image-sato-qemux86-20190520070424.qemuboot.conf]
> >>>
> >>> runqemu - INFO - Setting up tap interface under sudo
> >>> [sudo] password for geoff:
> >>> runqemu - INFO - Network configuration: 192.168.7.2::192.168.7.1:255
> .255.255.0
> >>> runqemu - INFO - Running
> /home/geoff/prog/yocto/quick-build/poky/build/tmp/work/x86_64-linux/qemu-helper-native/1.0-r1/recipe-sysroot-native/usr/bin/qemu-system-i386
> -device virtio-net-pci,netdev=net0,mac=52:54:00:12:34:02 -netdev
> tap,id=net0,ifname=tap0,script=no,downscript=no -drive
> file=/home/geoff/prog/yocto/quick-build/poky/build/tmp/deploy/images/qemux86/core-image-sato-qemux86-20190520070424.rootfs.ext4,if=virtio,format=raw
> -vga vmware -show-cursor -usb -device usb-tablet -object
> rng-random,filename=/dev/urandom,id=rng0 -device virtio-rng-pci,rng=rng0
>  -cpu pentium2 -m 256 -serial mon:vc -serial null -kernel
> /home/geoff/prog/yocto/quick-build/poky/build/tmp/deploy/images/qemux86/bzImage--5.0.3+git0+f0b575cda6_3df4aae607-r0-qemux86-20190520070424.bin
> -append 'root=/dev/vda rw highres=off  mem=256M ip=192.168.7.2::
> 192.168.7.1:255.255.255.0 vga=0 uvesafb.mode_option=640x480-32
> oprofile.timer=1 uvesafb.task_timeout=-1 '
> >>> ```
> >>>
> >>> I was under the impression that this would pop up a window with the
> built image running in QEMU, but nothing happens.
> >>>
> >>> In case it helps, the output of `uname -a` on my machine is:
> >>> Linux pop-os 4.18.0-17-generic #18~18.04.1-Ubuntu SMP Fri Mar 15
> 15:27:12 UTC 2019 x86_64 x86_64 x86_64 GNU/Linux
> >>>
> >>> If anyone has ideas about what is going wrong, further troubleshooting
> suggestions I would very much appreciate it.  If there is a more suitable
> place to ask for this kind of help my apologies and I would appreciate a
> pointer to the correct place to get help.
> >>>
> >>> Thanks,
> >>> Geoff
> >>>
> >>> Nothing is ever easy.
> >>> --
> >>> _______________________________________________
> >>> poky mailing list
> >>> poky@yoctoproject.org
> >>> https://lists.yoctoproject.org/listinfo/poky
> >
> > --
> > _______________________________________________
> > poky mailing list
> > poky@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/poky
>
-- 
Geoff (from mobile) Nothing is ever easy.

--00000000000017def0058e4a1fd4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><div dir=3D"auto">Sounds useful William, thanks for the tip!</div></di=
v><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr"=
>On Mon, Jul 22, 2019 at 6:34 AM William Bourque &lt;<a href=3D"mailto:wbou=
rque@gmail.com">wbourque@gmail.com</a>&gt; wrote:<br></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pad=
ding-left:1ex">Hi Geoff,<br>
<br>
I&#39;m a bit late but I thought I&#39;d share a useful QEMU trick as well.=
<br>
If you don&#39;t want the qemu helper UI to pop or if you cannot use it<br>
(if you are integrating into build system as example), you can tell<br>
QEMU to bind a certain serial port to a TCP port on your host.<br>
Then, assuming your QEMU image passes &quot;console=3DttyS0,115200n8&quot; =
in its<br>
kernel boot parameter, you can then login to the system from your host<br>
using the open TCP port.<br>
<br>
The exact commands would look like this:<br>
<br>
On the host, open an arbitrary TCP port (here I use netcat, but<br>
anything would do):<br>
=C2=A0 =C2=A0 =C2=A0nc -l 50299<br>
<br>
Then, start QEMU with a &quot;-serial&quot; pointing to the TCP port you op=
ened<br>
on the host.<br>
Below is the &quot;minimal&quot; full QEMU command I use in my case, the se=
rial<br>
binding &quot;-serial tcp:<a href=3D"http://127.0.0.1:50299" rel=3D"norefer=
rer" target=3D"_blank">127.0.0.1:50299</a>&quot; at the end:<br>
=C2=A0 =C2=A0 qemu-system-x86_64 -device<br>
virtio-net-pci,netdev=3Dnet0,mac=3DDE:AD:DE:AE:BE:EF -netdev<br>
tap,id=3Dnet0,ifname=3Dtap0,script=3Dno,downscript=3Dno -drive<br>
if=3Dnone,id=3Dhd,file=3Dqemux86-64/core-image-minimal-qemux86-64.wic,forma=
t=3Draw<br>
-device virtio-scsi-pci,id=3Dscsi -device scsi-hd,drive=3Dhd -serial<br>
tcp:<a href=3D"http://127.0.0.1:50299" rel=3D"noreferrer" target=3D"_blank"=
>127.0.0.1:50299</a><br>
<br>
If everything goes well, your system should now bootup and you would get ou=
tput.<br>
Then when getty login starts (assuming you use it), you should be able to l=
ogin.<br>
<br>
I hope this help!<br>
<br>
- William<br>
<br>
<br>
On Sun, Jul 21, 2019 at 5:17 PM Geoff Shannon &lt;<a href=3D"mailto:geoffps=
hannon@gmail.com" target=3D"_blank">geoffpshannon@gmail.com</a>&gt; wrote:<=
br>
&gt;<br>
&gt; Interesting! I was unsure about the origin of those lines, and couldn&=
#39;t find it after looking through the various books and tutorials I&#39;v=
e been reading.=C2=A0 So I decided to just follow the yocto project quick b=
uild instructions, and generate a new build from `source oe-init-build-env`=
.=C2=A0 And I found that line is actually very similar to a line from the l=
ocal.conf generated by the build init script.<br>
&gt; PACKAGECONFIG_append_pn-qemu-system-native =3D &quot; sdl&quot;<br>
&gt;<br>
&gt; I&#39;m really not sure where that edit came from since I believe I ma=
de the first conf file I sent by stripping out all of the comments from the=
 generated local.conf file and then changing a few values.=C2=A0 But I buil=
t poky using a checkout of tag yocto-2.7.1 and without editing the local.co=
nf script and now `runqemu qemux86` is popping up a graphical interface and=
 working just fine.<br>
&gt;<br>
&gt; So thanks for the pointer Alexander, I&#39;m unstuck now!<br>
&gt;<br>
&gt; Geoff<br>
&gt;<br>
&gt; Nothing is ever easy.<br>
&gt;<br>
&gt;<br>
&gt; On Sat, Jul 20, 2019 at 12:19 AM Alexander Kanavin &lt;<a href=3D"mail=
to:alex.kanavin@gmail.com" target=3D"_blank">alex.kanavin@gmail.com</a>&gt;=
 wrote:<br>
&gt;&gt;<br>
&gt;&gt; The line<br>
&gt;&gt; PACKAGECONFIG_append_pn-qemu-native =3D &quot; sdl&quot;<br>
&gt;&gt; looks incorrect. The default local.conf set up for you (when you r=
un &#39;source oe-init-build-env build&#39;) should have the correct one. W=
here did that line come from? If it&#39;s some manual or guide or wiki, we =
need to update it.<br>
&gt;&gt;<br>
&gt;&gt; Qemu doesn&#39;t actually hang, it runs fine but without any graph=
ical output, because the graphical support is misconfigured (disabled) in y=
our case.<br>
&gt;&gt;<br>
&gt;&gt; Alex<br>
&gt;&gt;<br>
&gt;&gt; On Sat, 20 Jul 2019 at 07:56, Geoff Shannon &lt;<a href=3D"mailto:=
geoffpshannon@gmail.com" target=3D"_blank">geoffpshannon@gmail.com</a>&gt; =
wrote:<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Hi all, I&#39;m trying to get started using Poky to build a cu=
stom image to run on a beaglebone black.=C2=A0 I started off by trying to f=
ollow the Yocto Project Quickstart and I&#39;m stuck at getting the image t=
o run on QEMU.=C2=A0 I&#39;m new to both Yocto Project and using QEMU so I =
expect I&#39;m doing something simple that&#39;s wrong but I haven&#39;t be=
en able to figure it out.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; I cloned the poky git repository, checked out tag yocto-2.7, r=
an `source oe-init-build-env build`, setup my local.conf file with the cont=
ents in file attached to this message, and then ran `bitbake core-image-sat=
o`.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; This appeared to complete successfully, so I then proceeded to=
 try and test the built image by running `runqemu qemux86`. This spit out t=
his output, and then proceeds to hang indefinitely.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; ```<br>
&gt;&gt;&gt; runqemu - INFO - Running MACHINE=3Dqemux86 bitbake -e...<br>
&gt;&gt;&gt; runqemu - INFO - Continuing with the following parameters:<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; KERNEL: [/home/geoff/prog/yocto/quick-build/poky/build/tmp/dep=
loy/images/qemux86/bzImage--5.0.3+git0+f0b575cda6_3df4aae607-r0-qemux86-201=
90520070424.bin]<br>
&gt;&gt;&gt; MACHINE: [qemux86]<br>
&gt;&gt;&gt; FSTYPE: [ext4]<br>
&gt;&gt;&gt; ROOTFS: [/home/geoff/prog/yocto/quick-build/poky/build/tmp/dep=
loy/images/qemux86/core-image-sato-qemux86-20190520070424.rootfs.ext4]<br>
&gt;&gt;&gt; CONFFILE: [/home/geoff/prog/yocto/quick-build/poky/build/tmp/d=
eploy/images/qemux86/core-image-sato-qemux86-20190520070424.qemuboot.conf]<=
br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; runqemu - INFO - Setting up tap interface under sudo<br>
&gt;&gt;&gt; [sudo] password for geoff:<br>
&gt;&gt;&gt; runqemu - INFO - Network configuration: <a href=3D"http://192.=
168.7.2">192.168.7.2</a>::<a href=3D"http://192.168.7.1:255" target=3D"_bla=
nk">192.168.7.1:255</a>.255.255.0<br>
&gt;&gt;&gt; runqemu - INFO - Running /home/geoff/prog/yocto/quick-build/po=
ky/build/tmp/work/x86_64-linux/qemu-helper-native/1.0-r1/recipe-sysroot-nat=
ive/usr/bin/qemu-system-i386 -device virtio-net-pci,netdev=3Dnet0,mac=3D52:=
54:00:12:34:02 -netdev tap,id=3Dnet0,ifname=3Dtap0,script=3Dno,downscript=
=3Dno -drive file=3D/home/geoff/prog/yocto/quick-build/poky/build/tmp/deplo=
y/images/qemux86/core-image-sato-qemux86-20190520070424.rootfs.ext4,if=3Dvi=
rtio,format=3Draw -vga vmware -show-cursor -usb -device usb-tablet -object =
rng-random,filename=3D/dev/urandom,id=3Drng0 -device virtio-rng-pci,rng=3Dr=
ng0=C2=A0 =C2=A0-cpu pentium2 -m 256 -serial mon:vc -serial null -kernel /h=
ome/geoff/prog/yocto/quick-build/poky/build/tmp/deploy/images/qemux86/bzIma=
ge--5.0.3+git0+f0b575cda6_3df4aae607-r0-qemux86-20190520070424.bin -append =
&#39;root=3D/dev/vda rw highres=3Doff=C2=A0 mem=3D256M ip=3D<a href=3D"http=
://192.168.7.2">192.168.7.2</a>::<a href=3D"http://192.168.7.1" target=3D"_=
blank">192.168.7.1</a>:255.255.255.0 vga=3D0 uvesafb.mode_option=3D640x480-=
32 oprofile.timer=3D1 uvesafb.task_timeout=3D-1 &#39;<br>
&gt;&gt;&gt; ```<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; I was under the impression that this would pop up a window wit=
h the built image running in QEMU, but nothing happens.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; In case it helps, the output of `uname -a` on my machine is:<b=
r>
&gt;&gt;&gt; Linux pop-os 4.18.0-17-generic #18~18.04.1-Ubuntu SMP Fri Mar =
15 15:27:12 UTC 2019 x86_64 x86_64 x86_64 GNU/Linux<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; If anyone has ideas about what is going wrong, further trouble=
shooting suggestions I would very much appreciate it.=C2=A0 If there is a m=
ore suitable place to ask for this kind of help my apologies and I would ap=
preciate a pointer to the correct place to get help.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Thanks,<br>
&gt;&gt;&gt; Geoff<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Nothing is ever easy.<br>
&gt;&gt;&gt; --<br>
&gt;&gt;&gt; _______________________________________________<br>
&gt;&gt;&gt; poky mailing list<br>
&gt;&gt;&gt; <a href=3D"mailto:poky@yoctoproject.org" target=3D"_blank">pok=
y@yoctoproject.org</a><br>
&gt;&gt;&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/poky" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/p=
oky</a><br>
&gt;<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; poky mailing list<br>
&gt; <a href=3D"mailto:poky@yoctoproject.org" target=3D"_blank">poky@yoctop=
roject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/poky" rel=3D"norefe=
rrer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/poky</a><br=
>
</blockquote></div></div>-- <br><div dir=3D"ltr" class=3D"gmail_signature" =
data-smartmail=3D"gmail_signature">Geoff (from mobile)

Nothing is ever easy.</div>

--00000000000017def0058e4a1fd4--
