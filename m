Return-Path: <zz245@cornell.edu>
Received: from mail-yx0-f176.google.com (mail-yx0-f176.google.com
	[209.85.213.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7CC26E01206
	for <poky@yoctoproject.org>; Fri, 30 Mar 2012 08:17:33 -0700 (PDT)
Received: by yenq4 with SMTP id q4so468335yen.35
	for <poky@yoctoproject.org>; Fri, 30 Mar 2012 08:17:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:x-gm-message-state:content-type;
	bh=/4ut76E0IdzqI6dThGrG+t5k0RZJB7OhenvF2SaV5nc=;
	b=ABEVob6P/yODWTMCWBGaDW0Iu2bq4PpfwHq7KPg7i2loXYNWDdUYJjhNFPCDiJG9vB
	ZQCm8t+ny0C5OCOMYgNoJH3kPpvFuZNBbyWe0YcxaQNLem/YnAOLdITVk+aUyuLwIHE5
	uWGlEWLDmlCXshgAOsvbnb6Oc8lhoDKLu2hXctPHiEogq2YrhpQjzQnTi6D8LwyScpGj
	yWIHEKYa9pRp0XXsqqfLk43LVqSIhNGMOE89ks23c5jjarRdRyshj7kyGh7eyWKiddp4
	9LQFhdbUDRCF0Qz8cxXgTV81k7MUd/RcPiYWzm+LD8/K44fiMo++MSb1AZE80AH7Ua7y
	j5+g==
Received: by 10.60.14.4 with SMTP id l4mr3412926oec.39.1333120652634; Fri, 30
	Mar 2012 08:17:32 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.182.12.162 with HTTP; Fri, 30 Mar 2012 08:17:12 -0700 (PDT)
In-Reply-To: <CAMKF1sp9_JeZxVay3UATzNBKe8_QDrfcSgH-EcV1abNxEp2xGA@mail.gmail.com>
References: <CAJKYVfs6tUMF5=PdzbBTb5=ifbsWXBQLGJOgFM7f-2MGAQYZag@mail.gmail.com>
	<CAMKF1sp9_JeZxVay3UATzNBKe8_QDrfcSgH-EcV1abNxEp2xGA@mail.gmail.com>
From: Zhouheng Zhuang <zz245@cornell.edu>
Date: Fri, 30 Mar 2012 11:17:12 -0400
Message-ID: <CAJKYVfv_mQstkE4OPUzpDkGKihJ=j-Fu5QmdgYO2-F7q73JPyA@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
X-Gm-Message-State: ALoCoQnsEUuMVJJMtlJd3kD9pfYs9tmvyCWfYqWTL6NBmZvqU8EanKinqjLl7MMr9LBIvcaz1HAw
Cc: poky@yoctoproject.org
Subject: Re: Problem building MIPS image (core-image-minimal)
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
X-List-Received-Date: Fri, 30 Mar 2012 15:17:33 -0000
Content-Type: multipart/alternative; boundary=e89a8fb1f546f16bda04bc775686

--e89a8fb1f546f16bda04bc775686
Content-Type: text/plain; charset=ISO-8859-1

I used package_rpm instead and it worked. Thanks.
I am wondering why package_rpm works, but package_deb doesn't. Can you
explain what happens here? Thanks.

Zhouheng Philip Zhuang

On Fri, Mar 30, 2012 at 2:22 AM, Khem Raj <raj.khem@gmail.com> wrote:

> On Thu, Mar 29, 2012 at 1:51 PM, Zhouheng Zhuang <zz245@cornell.edu>
> wrote:
> > Hi all,
> > I am a student, and I just started using Yocto Project, and tried to
> build a
> > MIPS image (core-image-minimal) myself, but failed. Can anyone help me on
> > this issue?
> >
> > I downloaded Yocto 1.1. After
> > % source oe-init-build-env
> > I set configurations in ./build/conf/local.conf with (the file is
> attached)
> > ------
> > BB_NUMBER_THREADS = "4"
> > PARALLEL_MAKE = "-j 3"
> > MACHINE ??= "qemumips"
> > DISTRO ?= "poky"
> > PACKAGE_CLASSES = "package_deb"
>
> what happens when you use package_ipk or package_rpm and rebuild?
> just want to make sure if its related to package backend
>
> > EXTRA_IMAGE_FEATURES = "debug-tweaks"
> > USER_CLASSES ?= "image-mklibs image-prelink"
> > PATCHRESOLVE = "noop"
> > CONF_VERSION = "1"
> > INHERIT += rm_work
> > ------
> >
> > Then, I ran
> > % bitbake -k core-image-minimal
> > and got errors:
> > ------
> > Errors were encountered while processing:
> >
>  /home/zhouheng/poky/build/tmp/deploy/deb/mips/./base-passwd_3.5.22-r9_mips.deb
> > W: Ignoring Provides line with DepCompareOp for package rtld
> > W: You may want to run apt-get update to correct these problems
> > E: Sub-process dpkg returned an error code (1)
> > ERROR: Function 'do_rootfs' failed (see
> >
> /home/zhouheng/poky/build/tmp/work/qemumips-poky-linux/core-image-minimal-1.0-r0/temp/log.do_rootfs.2097
> > for further information)
> > -------
> > I have attached the errorlog with the email, too.
> > I have tried searching the error, but I haven't figured out why it
> happens.
> > Can anyone answer my questions?
> > I would appreciate it very much if anyone can share their configuration
> to
> > successfully build the image.
> > Thank you very much!
> >
> > Zhouheng (Philip) Zhuang
> >
> >
> >
> >
> > _______________________________________________
> > poky mailing list
> > poky@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/poky
> >
>

--e89a8fb1f546f16bda04bc775686
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div>I used=A0package_rpm instead and it worked. Thanks.</div><div>I am won=
dering why package_rpm works, but package_deb doesn&#39;t. Can you explain =
what happens here? Thanks.</div><br clear=3D"all"><font color=3D"#666666">Z=
houheng Philip Zhuang<br>

</font><br><div class=3D"gmail_quote">On Fri, Mar 30, 2012 at 2:22 AM, Khem=
 Raj <span dir=3D"ltr">&lt;<a href=3D"mailto:raj.khem@gmail.com">raj.khem@g=
mail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">

<div class=3D"im">On Thu, Mar 29, 2012 at 1:51 PM, Zhouheng Zhuang &lt;<a h=
ref=3D"mailto:zz245@cornell.edu">zz245@cornell.edu</a>&gt; wrote:<br>
&gt; Hi all,<br>
&gt; I am a student, and I just started using Yocto Project, and tried to b=
uild a<br>
&gt; MIPS image (core-image-minimal) myself, but failed. Can anyone help me=
 on<br>
&gt; this issue?<br>
&gt;<br>
&gt; I downloaded Yocto 1.1. After<br>
&gt; % source oe-init-build-env<br>
&gt; I set configurations in ./build/conf/local.conf with (the file is atta=
ched)<br>
&gt; ------<br>
&gt; BB_NUMBER_THREADS =3D &quot;4&quot;<br>
&gt; PARALLEL_MAKE =3D &quot;-j 3&quot;<br>
&gt; MACHINE ??=3D &quot;qemumips&quot;<br>
&gt; DISTRO ?=3D &quot;poky&quot;<br>
&gt; PACKAGE_CLASSES =3D &quot;package_deb&quot;<br>
<br>
</div>what happens when you use package_ipk or package_rpm and rebuild?<br>
just want to make sure if its related to package backend<br>
<div><div class=3D"h5"><br>
&gt; EXTRA_IMAGE_FEATURES =3D &quot;debug-tweaks&quot;<br>
&gt; USER_CLASSES ?=3D &quot;image-mklibs image-prelink&quot;<br>
&gt; PATCHRESOLVE =3D &quot;noop&quot;<br>
&gt; CONF_VERSION =3D &quot;1&quot;<br>
&gt; INHERIT +=3D rm_work<br>
&gt; ------<br>
&gt;<br>
&gt; Then, I ran<br>
&gt; % bitbake -k core-image-minimal<br>
&gt; and got errors:<br>
&gt; ------<br>
&gt; Errors were encountered while processing:<br>
&gt; =A0/home/zhouheng/poky/build/tmp/deploy/deb/mips/./base-passwd_3.5.22-=
r9_mips.deb<br>
&gt; W: Ignoring Provides line with DepCompareOp for package rtld<br>
&gt; W: You may want to run apt-get update to correct these problems<br>
&gt; E: Sub-process dpkg returned an error code (1)<br>
&gt; ERROR: Function &#39;do_rootfs&#39; failed (see<br>
&gt; /home/zhouheng/poky/build/tmp/work/qemumips-poky-linux/core-image-mini=
mal-1.0-r0/temp/log.do_rootfs.2097<br>
&gt; for further information)<br>
&gt; -------<br>
&gt; I have attached the errorlog with the email, too.<br>
&gt; I have tried searching the error, but I haven&#39;t figured out why it=
 happens.<br>
&gt; Can anyone answer my questions?<br>
&gt; I would appreciate it very much if anyone can share their configuratio=
n to<br>
&gt; successfully build the image.<br>
&gt; Thank you very much!<br>
&gt;<br>
&gt; Zhouheng (Philip) Zhuang<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
</div></div>&gt; _______________________________________________<br>
&gt; poky mailing list<br>
&gt; <a href=3D"mailto:poky@yoctoproject.org">poky@yoctoproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/poky" target=3D"_bl=
ank">https://lists.yoctoproject.org/listinfo/poky</a><br>
&gt;<br>
</blockquote></div><br>

--e89a8fb1f546f16bda04bc775686--
