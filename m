Return-Path: <Teemu.Keskinarkaus@Maximatecc.com>
Received: from mail1.bemta7.messagelabs.com (mail1.bemta7.messagelabs.com
	[216.82.254.107])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 159F1E0176E
	for <poky@yoctoproject.org>; Mon,  4 Nov 2013 23:36:45 -0800 (PST)
Received: from [216.82.254.211:18105] by server-11.bemta-7.messagelabs.com id
	CC/04-26956-B00A8725; Tue, 05 Nov 2013 07:36:43 +0000
X-Env-Sender: Teemu.Keskinarkaus@Maximatecc.com
X-Msg-Ref: server-5.tower-201.messagelabs.com!1383637002!7011996!1
X-Originating-IP: [207.250.73.121]
X-StarScan-Received: 
X-StarScan-Version: 6.9.12; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 24718 invoked from network); 5 Nov 2013 07:36:42 -0000
Received: from unknown (HELO ammail.actuant.com) (207.250.73.121)
	by server-5.tower-201.messagelabs.com with AES128-SHA encrypted SMTP;
	5 Nov 2013 07:36:42 -0000
Received: from AMDTCEX12.actuant.pri ([fe80::1ff:ff4d:9ac5:22e8]) by
	AMDTCEX10.actuant.pri ([fe80::40f6:8682:1d1f:3805%17]) with mapi id
	14.02.0342.003; Tue, 5 Nov 2013 01:36:38 -0600
From: "Keskinarkaus, Teemu" <Teemu.Keskinarkaus@Maximatecc.com>
To: Bruce Ashfield <bruce.ashfield@gmail.com>
Thread-Topic: [poky] RT-patch for Yocto-kernel
Thread-Index: Ac7ZJ+9ZI9obZ9SHTMOKYyEEofiHyQAantoAABVMTNA=
Date: Tue, 5 Nov 2013 07:36:36 +0000
Message-ID: <83DB4EC8FADD45428E3CC4E3664761FD09C398E3@AMDTCEX12.actuant.pri>
References: <83DB4EC8FADD45428E3CC4E3664761FD09C38EAD@AMDTCEX12.actuant.pri>
	<CADkTA4P48xR1T82tnePHH4dQ9ZK-=XFpwkY=gvpMRdU-ozwb+A@mail.gmail.com>
In-Reply-To: <CADkTA4P48xR1T82tnePHH4dQ9ZK-=XFpwkY=gvpMRdU-ozwb+A@mail.gmail.com>
Accept-Language: fi-FI, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.0.10.100]
x-ems-proccessed: 52bwn4SPvyFdxH+yW9O0UA==
x-ems-stamp: Q2mh4GrU3tdXRwEMk6ZP5A==
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: RT-patch for Yocto-kernel
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
X-List-Received-Date: Tue, 05 Nov 2013 07:36:46 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Sorry for top post.

I did some test. I compiled our project with linux-yocto-rt and linux-yocto=
 - kernels.  Then checked from menuconfig that both of those kernels same o=
ptions in:
Processor type and features ->  Preemption Model.
-> No Forced Preemption
-> Voluntary Kernel Preemption
-> Preemptible kernel

When added rt-patch from: https://www.kernel.org/pub/linux/kernel/projects/=
rt/3.8/ I got two more options:

-> Preemtible Kernel (Basic RT)
-> Fully Preememptible Kernel (RT)

The fact that the rt-patch applied just fine to linux-yocto-rt - kernel sou=
rces got me thinking that the linux-yocto-rt does NOT contain the kernel.or=
g rt-patch I mentioned earlier.  If that's the case then what's the point o=
n whole rt-kernel branch? Or how do I get the rt-patched version of the ker=
nel? When I compile the kernel I see that it uses linux-yocto-rt-3.8.13+git=
AUTOINC+2a6d36e75c_47aed0c17c-r4.1 so it's not using the normal version of =
the kernel.

Teemu Keskinarkaus

-----Original Message-----
From: Bruce Ashfield [mailto:bruce.ashfield@gmail.com]
Sent: 4. marraskuuta 2013 15:17
To: Keskinarkaus, Teemu
Cc: poky@yoctoproject.org
Subject: Re: [poky] RT-patch for Yocto-kernel

On Mon, Nov 4, 2013 at 2:31 AM, Keskinarkaus, Teemu <Teemu.Keskinarkaus@max=
imatecc.com> wrote:
> Hi,
>
>
>
> In our system we want to use Full RT - kernel configuration. I learned
> that Yocto/Poky Preempt - rt is actually just low latency
> configuration and not the real Full RT as the name falsely suggests.
> Anyway, that's not the problem after I found it.
>

Hmm. No. The standard/preempt-rt/* branches in the Yocto kernel are the ful=
l -rt patch.

>
>
> There is a patch in the kernel.org that adds the Full RT support for
> the kernel. Unfortunately it doesn't work right away in Yocto kernel.
> We use emenlow variant of the kernel.
>
>
>
> So I compiled the system and then fixed the patch by applying it to
> kernel sources in build-directory. Then added the  patch to kernel
> .bbappend file so that it would be applied during compilation time.  Or s=
o I thought.
>
>
>
> Now when I try to compile the system do_patch - state for
> linux-yocto-rt - fails.
>
>
>
> Log data follows:
>
> | DEBUG: Executing shell function do_patch
>
> | Deleted branch meta-temp (was 37fdb0c).
>
> | [INFO] validating against known patches  (emenlow-preempt-rt-meta)
>
> Context reduced to (2/2) to apply fragment at 385    ] (\)(88 %))
>
> error: patch failed: drivers/net/ethernet/ti/cpsw.c:374(/)(92 %)%)
>
> | error: drivers/net/ethernet/ti/cpsw.c: patch does not apply
>
> | Context reduced to (1/1) to apply fragment at 1050
>
> | error: patch failed: include/linux/preempt.h:107
>
> | error: include/linux/preempt.h: patch does not apply
>
> | error: patch failed: kernel/sched/core.c:1477
>
> | error: kernel/sched/core.c: patch does not apply
>
> | ERROR. could not update git tree
>
> | ERROR. Could not apply patches for emenlow.
>
> |        Patch failures can be resolved in the devshell (bitbake -c
> | devshell
> linux-yocto-rt)
>
>
>
> If I'm understanding that right it actually applied my patch before
> the emenlow-patch and that's why it fails.
>
>
>
> What's the proper way to make kernel patch that big or is there
> already Full RT - patch for emenlow kernel for yocto? We have smaller
> patches that don't collide with emmenlow patches and they work just fine.

You simply need to make the emenlow BSP compatible with linux-yocto-rt and =
use KBRANCH=3D"standard/preempt-rt/base"

And you have the full -rt patch available.

Cheers,

Bruce

>
>
>
> Teemu Keskinarkaus
>
>
>
>
> ________________________________
>
> Actuant Corporation Email Notice
>
> This message is intended only for the use of the Addressee and may
> contain information that is PRIVILEGED and/or CONFIDENTIAL.
> This email is intended only for the personal and confidential use of
> the
> recipient(s) named above. If the reader of this email is not an
> intended recipient, you have received this email in error and any
> review, dissemination, distribution or copying is strictly prohibited.
> If you have received this email in error, please notify the sender
> immediately by return mail and permanently delete the copy you received.
>
> Thank you.
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>



--
"Thou shalt not follow the NULL pointer, for chaos and madness await thee a=
t its end"

________________________________

Actuant Corporation Email Notice

This message is intended only for the use of the Addressee and may contain =
information that is PRIVILEGED and/or CONFIDENTIAL.
This email is intended only for the personal and confidential use of the re=
cipient(s) named above. If the reader of this email is not an intended reci=
pient, you have received this email in error and any review, dissemination,=
 distribution or copying is strictly prohibited.
If you have received this email in error, please notify the sender immediat=
ely by return mail and permanently delete the copy you received.

Thank you.

