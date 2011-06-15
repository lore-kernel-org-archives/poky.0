Return-Path: <jkridner@beagleboard.org>
Received: from mail-bw0-f43.google.com (mail-bw0-f43.google.com
	[209.85.214.43])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9A8BC4C800B3
	for <poky@pokylinux.org>; Wed, 15 Jun 2011 13:26:36 -0500 (CDT)
Received: by bwz14 with SMTP id 14so944366bwz.2
	for <poky@pokylinux.org>; Wed, 15 Jun 2011 11:26:35 -0700 (PDT)
Received: by 10.204.42.69 with SMTP id r5mr40024bke.52.1308162395027;
	Wed, 15 Jun 2011 11:26:35 -0700 (PDT)
Received: from mail-bw0-f43.google.com (mail-bw0-f43.google.com
	[209.85.214.43])
	by mx.google.com with ESMTPS id j7sm641289bka.20.2011.06.15.11.26.33
	(version=SSLv3 cipher=OTHER); Wed, 15 Jun 2011 11:26:33 -0700 (PDT)
Received: by bwz14 with SMTP id 14so944323bwz.2
	for <poky@pokylinux.org>; Wed, 15 Jun 2011 11:26:32 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.204.39.65 with SMTP id f1mr20993bke.157.1308162392392; Wed, 15
	Jun 2011 11:26:32 -0700 (PDT)
Received: by 10.204.69.20 with HTTP; Wed, 15 Jun 2011 11:26:32 -0700 (PDT)
In-Reply-To: <4DF8E01F.8040209@linux.intel.com>
References: <it8ite$i96$1@dough.gmane.org> <4DF80B84.9000304@linux.intel.com>
	<4DF890F0.1020307@reliableembeddedsystems.com>
	<4DF8E01F.8040209@linux.intel.com>
Date: Wed, 15 Jun 2011 14:26:32 -0400
Message-ID: <BANLkTimToxC7cYLTb_tUoGA_O36yKEkWyA@mail.gmail.com>
From: Jason Kridner <jkridner@beagleboard.org>
To: Darren Hart <dvhart@linux.intel.com>
Cc: gmane@reliableembeddedsystems.com, poky@pokylinux.org
Subject: Re: bernard 5.0.1 and beagle-xm rev c
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
X-List-Received-Date: Wed, 15 Jun 2011 18:26:37 -0000
Content-Type: multipart/alternative; boundary=bcaec5540bd6b5054504a5c44a06

--bcaec5540bd6b5054504a5c44a06
Content-Type: text/plain; charset=ISO-8859-1

On Wed, Jun 15, 2011 at 12:38 PM, Darren Hart <dvhart@linux.intel.com>wrote:

>
>
> On 06/15/2011 04:01 AM, Robert Berger wrote:
> > Hi,
> >
> > On 06/15/2011 04:31 AM, Darren Hart wrote:
> >>
> >> Does USB work in general on Rev C?
> >>
> >> --
> >> Darren
> >>
> >
> > I built a minimal-image + usbutils
> >
> > REV A3 with poky:
> >
> > root@beagleboard:~# lsusb
> > Bus 001 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
> > Bus 001 Device 002: ID 0424:9514 Standard Microsystems Corp.
> > Bus 001 Device 003: ID 0424:ec00 Standard Microsystems Corp.
> >
> > REV C with Angstrom:
> >
> > root@beagleboard:~# lsusb
> > Bus 001 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
> > Bus 002 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
> > Bus 002 Device 002: ID 0424:9514 Standard Microsystems Corp.
> > Bus 002 Device 003: ID 0424:ec00 Standard Microsystems Corp.
> >
> > REV C with poky:
> >
> > root@beagleboard:~# lsusb
> > Bus 001 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
> >
> > This looks like the USB hub on Bus 002 is not found and hence there is
> > also no Ethernet, which fits somehow into what I've found on
> > http://beagleboard.org/support/faq
> >
> > # What do I need to do to get my software running on a BeagleBoard-xM rev
> C?
>
> At the Bernard release I don't believe we had support for the xM rev C
> (it supported at least up to xM rev A). I am currently working on a
> refresh of the Beagleboard BSP in meta-yocto which does support rev C.
> For details on that effort and it's status, please see:
>
> https://lists.yoctoproject.org/pipermail/yocto/2011-June/001599.html
>
>
> > Judging from the u-boot output I think it needs to be patched:
> > Beagle unknown 0x02
>
> Indeed.
>
> >
> > u-boot which comes with Angstrom:
> > Beagle xM Rev C
> >
> > I'm sure Koen can tell us more about this and also what patches should
> > be applied where;)
>
> Both Koen and Jason K. have been helping to get the right bits merged
> for the kernel. I had hoped to use mainline u-boot, but it appears we
> may need at least a set of patches in support of Rev C.
>

This thread has been moving faster than me. :)

You can use mainline u-boot.  There are some minor missing features, but I
did do some playing with mainline u-boot and xM rev C about a month ago and
it was good.  The version might not be reported properly, but the default
was updated to be if it was an unknown xM revision, it would default to the
latest.  Old u-boot versions had a but where they would revert to a really
old version.  If the default was the latest, there would have been no
breakage as no u-boot dependencies changed between xM rev A/B and xM rev C.


>
> The updated BSP will be released with 1.1. My patches and commits will
> of course hit the list before then and you can build from master once
> they arrive there. Within a week I suspect.
>
> --
> Darren Hart
> Intel Open Source Technology Center
> Yocto Project - Linux Kernel
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>

--bcaec5540bd6b5054504a5c44a06
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 15, 2011 at 12:38 PM, Darren Hart <span dir=3D"ltr">&lt;<a href=
=3D"mailto:dvhart@linux.intel.com">dvhart@linux.intel.com</a>&gt;</span> wr=
ote:<br><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex;">
<div class=3D"im"><br>
<br>
On 06/15/2011 04:01 AM, Robert Berger wrote:<br>
&gt; Hi,<br>
&gt;<br>
&gt; On 06/15/2011 04:31 AM, Darren Hart wrote:<br>
&gt;&gt;<br>
&gt;&gt; Does USB work in general on Rev C?<br>
&gt;&gt;<br>
&gt;&gt; --<br>
&gt;&gt; Darren<br>
&gt;&gt;<br>
&gt;<br>
&gt; I built a minimal-image + usbutils<br>
&gt;<br>
&gt; REV A3 with poky:<br>
&gt;<br>
&gt; root@beagleboard:~# lsusb<br>
&gt; Bus 001 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub<br>
&gt; Bus 001 Device 002: ID 0424:9514 Standard Microsystems Corp.<br>
&gt; Bus 001 Device 003: ID 0424:ec00 Standard Microsystems Corp.<br>
&gt;<br>
&gt; REV C with Angstrom:<br>
&gt;<br>
&gt; root@beagleboard:~# lsusb<br>
&gt; Bus 001 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub<br>
&gt; Bus 002 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub<br>
&gt; Bus 002 Device 002: ID 0424:9514 Standard Microsystems Corp.<br>
&gt; Bus 002 Device 003: ID 0424:ec00 Standard Microsystems Corp.<br>
&gt;<br>
&gt; REV C with poky:<br>
&gt;<br>
&gt; root@beagleboard:~# lsusb<br>
&gt; Bus 001 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub<br>
&gt;<br>
&gt; This looks like the USB hub on Bus 002 is not found and hence there is=
<br>
&gt; also no Ethernet, which fits somehow into what I&#39;ve found on<br>
&gt; <a href=3D"http://beagleboard.org/support/faq" target=3D"_blank">http:=
//beagleboard.org/support/faq</a><br>
&gt;<br>
&gt; # What do I need to do to get my software running on a BeagleBoard-xM =
rev C?<br>
<br>
</div>At the Bernard release I don&#39;t believe we had support for the xM =
rev C<br>
(it supported at least up to xM rev A). I am currently working on a<br>
refresh of the Beagleboard BSP in meta-yocto which does support rev C.<br>
For details on that effort and it&#39;s status, please see:<br>
<br>
<a href=3D"https://lists.yoctoproject.org/pipermail/yocto/2011-June/001599.=
html" target=3D"_blank">https://lists.yoctoproject.org/pipermail/yocto/2011=
-June/001599.html</a><br>
<div class=3D"im"><br>
<br>
&gt; Judging from the u-boot output I think it needs to be patched:<br>
&gt; Beagle unknown 0x02<br>
<br>
</div>Indeed.<br>
<div class=3D"im"><br>
&gt;<br>
&gt; u-boot which comes with Angstrom:<br>
&gt; Beagle xM Rev C<br>
&gt;<br>
&gt; I&#39;m sure Koen can tell us more about this and also what patches sh=
ould<br>
&gt; be applied where;)<br>
<br>
</div>Both Koen and Jason K. have been helping to get the right bits merged=
<br>
for the kernel. I had hoped to use mainline u-boot, but it appears we<br>
may need at least a set of patches in support of Rev C.<br></blockquote><di=
v><br>This thread has been moving faster than me. :)<br><br>You can use mai=
nline u-boot.=A0 There are some minor missing features, but I did do some p=
laying with mainline u-boot and xM rev C about a month ago and it was good.=
=A0 The version might not be reported properly, but the default was updated=
 to be if it was an unknown xM revision, it would default to the latest.=A0=
 Old u-boot versions had a but where they would revert to a really old vers=
ion.=A0 If the default was the latest, there would have been no breakage as=
 no u-boot dependencies changed between xM rev A/B and xM rev C.<br>
=A0</div><blockquote class=3D"gmail_quote" style=3D"margin: 0pt 0pt 0pt 0.8=
ex; border-left: 1px solid rgb(204, 204, 204); padding-left: 1ex;">
<br>
The updated BSP will be released with 1.1. My patches and commits will<br>
of course hit the list before then and you can build from master once<br>
they arrive there. Within a week I suspect.<br>
<font color=3D"#888888"><br>
--<br>
</font><div class=3D"im">Darren Hart<br>
Intel Open Source Technology Center<br>
Yocto Project - Linux Kernel<br>
_______________________________________________<br>
</div><div><div></div><div class=3D"h5">poky mailing list<br>
<a href=3D"mailto:poky@yoctoproject.org">poky@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/poky" target=3D"_blank">=
https://lists.yoctoproject.org/listinfo/poky</a><br>
</div></div></blockquote></div><br>

--bcaec5540bd6b5054504a5c44a06--
