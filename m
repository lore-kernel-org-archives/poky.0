Return-Path: <Teemu.Keskinarkaus@Maximatecc.com>
Received: from mail1.bemta8.messagelabs.com (mail1.bemta8.messagelabs.com
	[216.82.243.207])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BD2C5E006D3
	for <poky@yoctoproject.org>; Mon, 18 Nov 2013 02:39:18 -0800 (PST)
Received: from [216.82.241.196:6873] by server-15.bemta-8.messagelabs.com id
	5E/58-29288-35EE9825; Mon, 18 Nov 2013 10:39:15 +0000
X-Env-Sender: Teemu.Keskinarkaus@Maximatecc.com
X-Msg-Ref: server-8.tower-46.messagelabs.com!1384771117!23118115!3
X-Originating-IP: [207.250.73.121]
X-StarScan-Received: 
X-StarScan-Version: 6.9.13; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 15134 invoked from network); 18 Nov 2013 10:39:14 -0000
Received: from unknown (HELO ammail.actuant.com) (207.250.73.121)
	by server-8.tower-46.messagelabs.com with AES128-SHA encrypted SMTP;
	18 Nov 2013 10:39:14 -0000
Received: from AMDTCEX12.actuant.pri ([fe80::1ff:ff4d:9ac5:22e8]) by
	AMDTCEX10.actuant.pri ([fe80::40f6:8682:1d1f:3805%17]) with mapi id
	14.02.0342.003; Mon, 18 Nov 2013 04:39:20 -0600
From: "Keskinarkaus, Teemu" <Teemu.Keskinarkaus@Maximatecc.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Thread-Topic: [poky] RT-patch for Yocto-kernel
Thread-Index: Ac7ZJ+9ZI9obZ9SHTMOKYyEEofiHyQAantoAABVMTNAAHjlRAAAjQXygAC9OLYACJ+Cr0A==
Date: Mon, 18 Nov 2013 10:39:19 +0000
Message-ID: <83DB4EC8FADD45428E3CC4E3664761FD09C52D92@AMDTCEX12.actuant.pri>
References: <83DB4EC8FADD45428E3CC4E3664761FD09C38EAD@AMDTCEX12.actuant.pri>
	<CADkTA4P48xR1T82tnePHH4dQ9ZK-=XFpwkY=gvpMRdU-ozwb+A@mail.gmail.com>
	<83DB4EC8FADD45428E3CC4E3664761FD09C398E3@AMDTCEX12.actuant.pri>
	<5278F806.6020501@windriver.com>
	<83DB4EC8FADD45428E3CC4E3664761FD09C49AF6@AMDTCEX12.actuant.pri>
	<527B2215.6040001@windriver.com>
In-Reply-To: <527B2215.6040001@windriver.com>
Accept-Language: fi-FI, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.0.10.100]
x-ems-proccessed: 52bwn4SPvyFdxH+yW9O0UA==
x-ems-stamp: nJRuooKk3ahmi6k8Pkd4Jg==
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
X-List-Received-Date: Mon, 18 Nov 2013 10:39:22 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

The SRCREV was the problem. It's interesting that I am able to pull non-rt =
version from rt-repository.  Oh well, good to know what the problem was. Th=
anks!

Teemu Keskinarkaus

-----Original Message-----
From: Bruce Ashfield [mailto:bruce.ashfield@windriver.com]
Sent: 7. marraskuuta 2013 7:16
To: Keskinarkaus, Teemu; Bruce Ashfield
Cc: poky@yoctoproject.org
Subject: Re: [poky] RT-patch for Yocto-kernel

On 11/6/2013, 11:47 PM, Keskinarkaus, Teemu wrote:
> Okay, this gets interesting. Here is what I get:
>
> $ git branch | grep \*
> * standard/preempt-rt/base
> $ grep PREEMPT_RT_FULL kernel/Kconfig.preempt $
>
> And confirmed that also with menuconfig and the last two rt-options were =
missing from Preemption Model - selection.
>
> We are using emenlow KMACHINE if that has anything to do with it. Is it p=
ossible to use standard/preempt-rt/base and still not get those rt-patches =
for some reason? Sounds stupid, but something is keeping them from getting =
to the kernel.
>

Nope. These patches are not applied at build time, they are integrated and =
applied to the tree at all times. Checking out the branch gets you the chan=
ges. BUT, if you've set the SRCREV in your recipe to a value that is before=
 the patches are applied, then of course, the build system will reset the t=
ree and you won't see the changes.

If you can post all your recipes and layers, it would be easier to spot wha=
t is wrong.

Bruce



> Teemu Keskinarkaus
>
> -----Original Message-----
> From: Bruce Ashfield [mailto:bruce.ashfield@windriver.com]
> Sent: 5. marraskuuta 2013 15:52
> To: Keskinarkaus, Teemu; Bruce Ashfield
> Cc: poky@yoctoproject.org
> Subject: Re: [poky] RT-patch for Yocto-kernel
>
> On 13-11-05 02:36 AM, Keskinarkaus, Teemu wrote:
>> Sorry for top post.
>>
>> I did some test. I compiled our project with linux-yocto-rt and linux-yo=
cto - kernels.  Then checked from menuconfig that both of those kernels sam=
e options in:
>> Processor type and features ->  Preemption Model.
>> -> No Forced Preemption
>> -> Voluntary Kernel Preemption
>> -> Preemptible kernel
>>
>> When added rt-patch from: https://www.kernel.org/pub/linux/kernel/projec=
ts/rt/3.8/ I got two more options:
>>
>> -> Preemtible Kernel (Basic RT)
>> -> Fully Preememptible Kernel (RT)
>>
>> The fact that the rt-patch applied just fine to linux-yocto-rt - kernel =
sources got me thinking that the linux-yocto-rt does NOT contain the kernel=
.org rt-patch I mentioned earlier.  If that's the case then what's the poin=
t on whole rt-kernel branch? Or how do I get the rt-patched version of the =
kernel? When I compile the kernel I see that it uses linux-yocto-rt-3.8.13+=
gitAUTOINC+2a6d36e75c_47aed0c17c-r4.1 so it's not using the normal version =
of the kernel.
>
> I assure you .. it is applied. We've been applying and testing with the p=
atch since Yocto 0.9, and longer pre-yocto.
>
> You aren't looking at the the right branches:
>
>   > git branch | grep \*
> * standard/preempt-rt/base
>
>   > grep PREEMPT_RT_FULL kernel/Kconfig.preempt
>           def_bool y if HAVE_PREEMPT_LAZY && PREEMPT_RT_FULL config
> PREEMPT_RT_FULL
>
>   > git whatchanged kernel/Kconfig.preempt
>
> commit abd0728b164f651292374e96251ee197b50e3c02
> Author: Bruce Ashfield <bruce.ashfield@windriver.com>
> Date:   Sun Mar 31 18:21:42 2013 -0700
>
>       preempt-rt: integrate patch-3.8.4-rt2
>
>       Merging patch-3.8.4-rt2 from:
> https://www.kernel.org/pub/linux/kernel/projects/rt/3.8/
>
>       From the release Notes:
>
>       changes since v3.8.4-rt1:
>          - build fix for i915 (reported by "Luis Claudio R. Goncalves")
>          - build fix for fscache (reported by tglx)
>          - build fix for !RT (kernel/softirq.c did not compile)
>          - per-cpu rwsem fixed for RT (required only by uprobes so far)
>          - slub: delay the execution of the ->ctor() hook for newly creat=
ed
>            objects. This lowers the worst case latencies.
>
>       Known issues:
>
>             - SLxB is broken on PowerPC.
>
>       Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
>
> :100644 100644 3f9c974... 38cecfe... M  kernel/Kconfig.preempt
>
> Cheers,
>
> Bruce
>
>>
>> Teemu Keskinarkaus
>>
>> -----Original Message-----
>> From: Bruce Ashfield [mailto:bruce.ashfield@gmail.com]
>> Sent: 4. marraskuuta 2013 15:17
>> To: Keskinarkaus, Teemu
>> Cc: poky@yoctoproject.org
>> Subject: Re: [poky] RT-patch for Yocto-kernel
>>
>> On Mon, Nov 4, 2013 at 2:31 AM, Keskinarkaus, Teemu <Teemu.Keskinarkaus@=
maximatecc.com> wrote:
>>> Hi,
>>>
>>>
>>>
>>> In our system we want to use Full RT - kernel configuration. I
>>> learned that Yocto/Poky Preempt - rt is actually just low latency
>>> configuration and not the real Full RT as the name falsely suggests.
>>> Anyway, that's not the problem after I found it.
>>>
>>
>> Hmm. No. The standard/preempt-rt/* branches in the Yocto kernel are the =
full -rt patch.
>>
>>>
>>>
>>> There is a patch in the kernel.org that adds the Full RT support for
>>> the kernel. Unfortunately it doesn't work right away in Yocto kernel.
>>> We use emenlow variant of the kernel.
>>>
>>>
>>>
>>> So I compiled the system and then fixed the patch by applying it to
>>> kernel sources in build-directory. Then added the  patch to kernel
>>> .bbappend file so that it would be applied during compilation time.  Or=
 so I thought.
>>>
>>>
>>>
>>> Now when I try to compile the system do_patch - state for
>>> linux-yocto-rt - fails.
>>>
>>>
>>>
>>> Log data follows:
>>>
>>> | DEBUG: Executing shell function do_patch
>>>
>>> | Deleted branch meta-temp (was 37fdb0c).
>>>
>>> | [INFO] validating against known patches  (emenlow-preempt-rt-meta)
>>>
>>> Context reduced to (2/2) to apply fragment at 385    ] (\)(88 %))
>>>
>>> error: patch failed: drivers/net/ethernet/ti/cpsw.c:374(/)(92 %)%)
>>>
>>> | error: drivers/net/ethernet/ti/cpsw.c: patch does not apply
>>>
>>> | Context reduced to (1/1) to apply fragment at 1050
>>>
>>> | error: patch failed: include/linux/preempt.h:107
>>>
>>> | error: include/linux/preempt.h: patch does not apply
>>>
>>> | error: patch failed: kernel/sched/core.c:1477
>>>
>>> | error: kernel/sched/core.c: patch does not apply
>>>
>>> | ERROR. could not update git tree
>>>
>>> | ERROR. Could not apply patches for emenlow.
>>>
>>> |        Patch failures can be resolved in the devshell (bitbake -c
>>> | devshell
>>> linux-yocto-rt)
>>>
>>>
>>>
>>> If I'm understanding that right it actually applied my patch before
>>> the emenlow-patch and that's why it fails.
>>>
>>>
>>>
>>> What's the proper way to make kernel patch that big or is there
>>> already Full RT - patch for emenlow kernel for yocto? We have
>>> smaller patches that don't collide with emmenlow patches and they work =
just fine.
>>
>> You simply need to make the emenlow BSP compatible with linux-yocto-rt a=
nd use KBRANCH=3D"standard/preempt-rt/base"
>>
>> And you have the full -rt patch available.
>>
>> Cheers,
>>
>> Bruce
>>
>>>
>>>
>>>
>>> Teemu Keskinarkaus
>>>
>>>
>>>
>>>
>>> ________________________________
>>>
>>> Actuant Corporation Email Notice
>>>
>>> This message is intended only for the use of the Addressee and may
>>> contain information that is PRIVILEGED and/or CONFIDENTIAL.
>>> This email is intended only for the personal and confidential use of
>>> the
>>> recipient(s) named above. If the reader of this email is not an
>>> intended recipient, you have received this email in error and any
>>> review, dissemination, distribution or copying is strictly prohibited.
>>> If you have received this email in error, please notify the sender
>>> immediately by return mail and permanently delete the copy you received=
.
>>>
>>> Thank you.
>>>
>>> _______________________________________________
>>> poky mailing list
>>> poky@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/poky
>>>
>>
>>
>>
>> --
>> "Thou shalt not follow the NULL pointer, for chaos and madness await the=
e at its end"
>>
>> ________________________________
>>
>> Actuant Corporation Email Notice
>>
>> This message is intended only for the use of the Addressee and may conta=
in information that is PRIVILEGED and/or CONFIDENTIAL.
>> This email is intended only for the personal and confidential use of the=
 recipient(s) named above. If the reader of this email is not an intended r=
ecipient, you have received this email in error and any review, disseminati=
on, distribution or copying is strictly prohibited.
>> If you have received this email in error, please notify the sender immed=
iately by return mail and permanently delete the copy you received.
>>
>> Thank you.
>> _______________________________________________
>> poky mailing list
>> poky@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/poky
>>
>
>
> ________________________________
>
> Actuant Corporation Email Notice
>
> This message is intended only for the use of the Addressee and may contai=
n information that is PRIVILEGED and/or CONFIDENTIAL.
> This email is intended only for the personal and confidential use of the =
recipient(s) named above. If the reader of this email is not an intended re=
cipient, you have received this email in error and any review, disseminatio=
n, distribution or copying is strictly prohibited.
> If you have received this email in error, please notify the sender immedi=
ately by return mail and permanently delete the copy you received.
>
> Thank you.
>


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

