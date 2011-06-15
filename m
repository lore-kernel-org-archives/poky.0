Return-Path: <jkridner@beagleboard.org>
Received: from mail-bw0-f43.google.com (mail-bw0-f43.google.com
	[209.85.214.43])
	by mx1.pokylinux.org (Postfix) with ESMTP id D53574C800B3
	for <poky@pokylinux.org>; Wed, 15 Jun 2011 15:43:31 -0500 (CDT)
Received: by bwz14 with SMTP id 14so1077627bwz.2
	for <poky@pokylinux.org>; Wed, 15 Jun 2011 13:43:30 -0700 (PDT)
Received: by 10.204.75.22 with SMTP id w22mr62508bkj.65.1308170610332;
	Wed, 15 Jun 2011 13:43:30 -0700 (PDT)
Received: from mail-bw0-f43.google.com (mail-bw0-f43.google.com
	[209.85.214.43])
	by mx.google.com with ESMTPS id ag6sm732676bkc.6.2011.06.15.13.43.26
	(version=SSLv3 cipher=OTHER); Wed, 15 Jun 2011 13:43:27 -0700 (PDT)
Received: by bwz14 with SMTP id 14so1077548bwz.2
	for <poky@pokylinux.org>; Wed, 15 Jun 2011 13:43:25 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.204.40.199 with SMTP id l7mr52408bke.103.1308170605881; Wed,
	15 Jun 2011 13:43:25 -0700 (PDT)
Received: by 10.204.69.20 with HTTP; Wed, 15 Jun 2011 13:43:25 -0700 (PDT)
In-Reply-To: <itavps$v4d$1@dough.gmane.org>
References: <it8ite$i96$1@dough.gmane.org> <4DF80B84.9000304@linux.intel.com>
	<4DF890F0.1020307@reliableembeddedsystems.com>
	<4DF8E01F.8040209@linux.intel.com>
	<BANLkTimToxC7cYLTb_tUoGA_O36yKEkWyA@mail.gmail.com>
	<itavps$v4d$1@dough.gmane.org>
Date: Wed, 15 Jun 2011 16:43:25 -0400
Message-ID: <BANLkTi=t3Hg9v5eN_Cez1aECTK10eEjVAg@mail.gmail.com>
From: Jason Kridner <jkridner@beagleboard.org>
To: gmane@reliableembeddedsystems.com
Cc: poky@pokylinux.org
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
X-List-Received-Date: Wed, 15 Jun 2011 20:43:32 -0000
Content-Type: multipart/alternative; boundary=bcaec55551a244e84404a5c63407

--bcaec55551a244e84404a5c63407
Content-Type: text/plain; charset=ISO-8859-1

On Wed, Jun 15, 2011 at 3:05 PM, Robert Berger <
gmane@reliableembeddedsystems.com> wrote:

> Jason,
>
> On 06/15/2011 09:26 PM, Jason Kridner wrote:
> >
> > This thread has been moving faster than me. :)
> >
> > You can use mainline u-boot.  There are some minor missing features, but
> > I did do some playing with mainline u-boot and xM rev C about a month
> > ago and it was good.  The version might not be reported properly, but
> > the default was updated to be if it was an unknown xM revision, it would
> > default to the latest.  Old u-boot versions had a bug where they would
> > revert to a really old version.  If the default was the latest, there
> > would have been no breakage as no u-boot dependencies changed between xM
> > rev A/B and xM rev C.
> >
>
> mainline u-boot sounds good.
>
> What kernel did you use for your tests?
>

Angstrom linux-omap-psp_2.6.32 and linux-omap_2.6.39.  At the time, the
linux-omap_2.6.39 was a bit flaky, but I think most issues have been cleared
up now.


>
> Regards,
>
> Robert
> ..."Q:  What is IBM's definition of a man year? A:  720 programmers
> trying to finish the job before lunch."
>
> My public pgp key is available at:
> http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1
>
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>

--bcaec55551a244e84404a5c63407
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 15, 2011 at 3:05 PM, Robert Berger <span dir=3D"ltr">&lt;<a hre=
f=3D"mailto:gmane@reliableembeddedsystems.com">gmane@reliableembeddedsystem=
s.com</a>&gt;</span> wrote:<br><div class=3D"gmail_quote"><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex;">
Jason,<br>
<div class=3D"im"><br>
On 06/15/2011 09:26 PM, Jason Kridner wrote:<br>
&gt;<br>
&gt; This thread has been moving faster than me. :)<br>
&gt;<br>
&gt; You can use mainline u-boot. =A0There are some minor missing features,=
 but<br>
&gt; I did do some playing with mainline u-boot and xM rev C about a month<=
br>
&gt; ago and it was good. =A0The version might not be reported properly, bu=
t<br>
&gt; the default was updated to be if it was an unknown xM revision, it wou=
ld<br>
</div>&gt; default to the latest. =A0Old u-boot versions had a bug where th=
ey would<br>
<div class=3D"im">&gt; revert to a really old version. =A0If the default wa=
s the latest, there<br>
&gt; would have been no breakage as no u-boot dependencies changed between =
xM<br>
&gt; rev A/B and xM rev C.<br>
&gt;<br>
<br>
</div>mainline u-boot sounds good.<br>
<br>
What kernel did you use for your tests?<br></blockquote><div><br>Angstrom l=
inux-omap-psp_2.6.32 and linux-omap_2.6.39.=A0 At the time, the linux-omap_=
2.6.39 was a bit flaky, but I think most issues have been cleared up now.<b=
r>
=A0</div><blockquote class=3D"gmail_quote" style=3D"margin: 0pt 0pt 0pt 0.8=
ex; border-left: 1px solid rgb(204, 204, 204); padding-left: 1ex;">
<br>
Regards,<br>
<br>
Robert<br>
...&quot;Q: =A0What is IBM&#39;s definition of a man year? A: =A0720 progra=
mmers<br>
trying to finish the job before lunch.&quot;<br>
<div class=3D"im"><br>
My public pgp key is available at:<br>
<a href=3D"http://pgp.mit.edu:11371/pks/lookup?op=3Dget&amp;search=3D0x9032=
0BF1" target=3D"_blank">http://pgp.mit.edu:11371/pks/lookup?op=3Dget&amp;se=
arch=3D0x90320BF1</a><br>
<br>
<br>
_______________________________________________<br>
</div><div><div></div><div class=3D"h5">poky mailing list<br>
<a href=3D"mailto:poky@yoctoproject.org">poky@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/poky" target=3D"_blank">=
https://lists.yoctoproject.org/listinfo/poky</a><br>
</div></div></blockquote></div><br>

--bcaec55551a244e84404a5c63407--
