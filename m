Return-Path: <akshat.saha@spectracoretech.com>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id D38A64C80AC1
	for <poky@yoctoproject.org>; Wed, 20 Apr 2011 23:19:33 -0500 (CDT)
Received: by iym1 with SMTP id 1so1805734iym.35
	for <poky@yoctoproject.org>; Wed, 20 Apr 2011 21:19:33 -0700 (PDT)
Received: by 10.42.133.72 with SMTP id g8mr3848868ict.80.1303359573073; Wed,
	20 Apr 2011 21:19:33 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.42.224.68 with HTTP; Wed, 20 Apr 2011 21:19:03 -0700 (PDT)
X-Originating-IP: [115.111.25.162]
In-Reply-To: <1303311625.23006.4.camel@doubt>
References: <BANLkTimC2=uXFQiy8bt8UU2Q4OzwcMGFTg@mail.gmail.com>
	<1303110125.5518.59.camel@rex> <1303311625.23006.4.camel@doubt>
From: Akshat Saha <akshat.saha@spectracoretech.com>
Date: Thu, 21 Apr 2011 09:49:03 +0530
Message-ID: <BANLkTikWQBTL-HamzCwbAOAX9=zWoT13Eg@mail.gmail.com>
To: Darren Hart <dvhart@linux.intel.com>
Cc: poky@yoctoproject.org
Subject: Re: Unable to get kernel modules
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
X-List-Received-Date: Thu, 21 Apr 2011 04:19:34 -0000
Content-Type: multipart/alternative; boundary=90e6ba3fcc3f5e1e6a04a1660c31

--90e6ba3fcc3f5e1e6a04a1660c31
Content-Type: text/plain; charset=ISO-8859-1

Hi,

Thanks Richard, Darren, that worked. :)

On Wed, Apr 20, 2011 at 8:30 PM, Darren Hart <dvhart@linux.intel.com> wrote:

> On Mon, 2011-04-18 at 08:02 +0100, Richard Purdie wrote:
> > On Mon, 2011-04-18 at 11:50 +0530, Akshat Saha wrote:
> > > Hi,
> > >
> > >
> > > I am building my image with : bitbake poky-image-minimal-live
> > > But after booting/installing this image, lsmod, does not show any
> > > modules loaded into the kernel. Also, the
> > > folder /lib/modules/2.6.34.7-wr-standard in the rfs does not contains
> > > the following files/folders:
> > >       * modules.builtin
> > >       * modules.order
> > >       * kernel
> > > Though they are present in
> > > the tmp/sysroots/core2-poky-linux/lib/modules/2.6.34.7-wr-standard.
> > >
> > >
> > > Also, while building, modules-2.6.34.7-wr-standard-r12-atom-pc.tgz is
> > > formed in tmp/deploy/images, which consists of the above mentioned
> > > files/folders, but does not seem to be integrated into the image.
> > >
> > >
> > > Can anyone please suggest/guide me how to integrate loadable modules
> > > into the image.
> >
> > By default the minimal image doesn't include all the kernel modules. You
> > can add them to the minimal image by adding "kernel-modules" to
> > IMAGE_INSTALL in meta/recipes-core/images/poky-image-minimal.bb
>
> You can also add them individually if you don't need them all. Every
> module is built as a separate package to make this easy. If you have a
> machine for which certain modules are required for normal functionality,
> you can add them to:
>
> MACHINE_ESSENTIAL_EXTRA_RDEPENDS
>
> in your machine config.
>
> >
> > Cheers,
> >
> > Richard
> >
> > _______________________________________________
> > poky mailing list
> > poky@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/poky
>
> --
> Darren Hart
> Yocto Linux Kernel
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>



-- 
Thanks and Regards,

Akshat Saha

--90e6ba3fcc3f5e1e6a04a1660c31
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi,<div><br></div><div>Thanks Richard, Darren, that worked. :)</div><div><b=
r><div class=3D"gmail_quote">On Wed, Apr 20, 2011 at 8:30 PM, Darren Hart <=
span dir=3D"ltr">&lt;<a href=3D"mailto:dvhart@linux.intel.com">dvhart@linux=
.intel.com</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex;"><div class=3D"im">On Mon, 2011-04-18 at 08:=
02 +0100, Richard Purdie wrote:<br>
&gt; On Mon, 2011-04-18 at 11:50 +0530, Akshat Saha wrote:<br>
&gt; &gt; Hi,<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; I am building my image with : bitbake poky-image-minimal-live<br>
&gt; &gt; But after booting/installing this image, lsmod, does not show any=
<br>
&gt; &gt; modules loaded into the kernel. Also, the<br>
&gt; &gt; folder /lib/modules/2.6.34.7-wr-standard in the rfs does not cont=
ains<br>
&gt; &gt; the following files/folders:<br>
&gt; &gt; =A0 =A0 =A0 * modules.builtin<br>
&gt; &gt; =A0 =A0 =A0 * modules.order<br>
&gt; &gt; =A0 =A0 =A0 * kernel<br>
&gt; &gt; Though they are present in<br>
&gt; &gt; the tmp/sysroots/core2-poky-linux/lib/modules/2.6.34.7-wr-standar=
d.<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; Also, while building, modules-2.6.34.7-wr-standard-r12-atom-pc.tg=
z is<br>
&gt; &gt; formed in tmp/deploy/images, which consists of the above mentione=
d<br>
&gt; &gt; files/folders, but does not seem to be integrated into the image.=
<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; Can anyone please suggest/guide me how to integrate loadable modu=
les<br>
&gt; &gt; into the image.<br>
&gt;<br>
&gt; By default the minimal image doesn&#39;t include all the kernel module=
s. You<br>
&gt; can add them to the minimal image by adding &quot;kernel-modules&quot;=
 to<br>
&gt; IMAGE_INSTALL in meta/recipes-core/images/<a href=3D"http://poky-image=
-minimal.bb" target=3D"_blank">poky-image-minimal.bb</a><br>
<br>
</div>You can also add them individually if you don&#39;t need them all. Ev=
ery<br>
module is built as a separate package to make this easy. If you have a<br>
machine for which certain modules are required for normal functionality,<br=
>
you can add them to:<br>
<br>
MACHINE_ESSENTIAL_EXTRA_RDEPENDS<br>
<br>
in your machine config.<br>
<div class=3D"im"><br>
&gt;<br>
&gt; Cheers,<br>
&gt;<br>
&gt; Richard<br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; poky mailing list<br>
&gt; <a href=3D"mailto:poky@yoctoproject.org">poky@yoctoproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/poky" target=3D"_bl=
ank">https://lists.yoctoproject.org/listinfo/poky</a><br>
<br>
</div><font color=3D"#888888">--<br>
Darren Hart<br>
Yocto Linux Kernel<br>
</font><div><div></div><div class=3D"h5"><br>
_______________________________________________<br>
poky mailing list<br>
<a href=3D"mailto:poky@yoctoproject.org">poky@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/poky" target=3D"_blank">=
https://lists.yoctoproject.org/listinfo/poky</a><br>
</div></div></blockquote></div><br><br clear=3D"all"><br>-- <br><font color=
=3D"#333333">Thanks and Regards,=A0</font><div><font color=3D"#333333"><br>=
</font></div><div><font color=3D"#333333">Akshat Saha</font></div><br>
</div>

--90e6ba3fcc3f5e1e6a04a1660c31--
