Return-Path: <sebmennetrier@gmail.com>
Received: from mail-ie0-f175.google.com (mail-ie0-f175.google.com
	[209.85.223.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E7E5FE00764
	for <poky@yoctoproject.org>; Tue, 11 Feb 2014 08:06:23 -0800 (PST)
Received: by mail-ie0-f175.google.com with SMTP id ar20so4623520iec.34
	for <poky@yoctoproject.org>; Tue, 11 Feb 2014 08:06:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date:message-id:subject
	:from:to:cc:content-type;
	bh=oiJcZq/kGsu9yxQyBKspZkw/PWinerGGGbbsGMZPQWY=;
	b=lZO66Jz//SXbGLNEDhbb39aeXAAqtNdVnA1Pcmkevg5BnQysBarb9rxufr/2N8wp0k
	r0mN41hHB197usexHHCDCNm180aFPIalmH5lFnaB2cQDbFTzgZaojazmjqqFBCpCt4WD
	bwlahyoCmuQ7gyjia5yJuknwPY3dMNPplUNbsJWioc+PG8V0NbMU78YnCqquAy6b0+g9
	B8egVPOAV26LRlYb642jWmfKOKDW5UQ7zDKO/bYYVaHRUuxv86YZDIZ/AB7r81DOmLrP
	CJaLpzEjd6omtPpP2Wnw7g9MyPwcADn6rFfWrlnx5ExihogJeF2ybPDfg3eg7hPZnjtF
	7lCg==
MIME-Version: 1.0
X-Received: by 10.42.81.7 with SMTP id x7mr819790ick.84.1392134783032; Tue, 11
	Feb 2014 08:06:23 -0800 (PST)
Sender: sebmennetrier@gmail.com
Received: by 10.43.141.70 with HTTP; Tue, 11 Feb 2014 08:06:22 -0800 (PST)
In-Reply-To: <20140211155848.GC3485@jama>
References: <1392042495-13533-1-git-send-email-s.mennetrier@innotis.org>
	<20140211155848.GC3485@jama>
Date: Tue, 11 Feb 2014 17:06:22 +0100
X-Google-Sender-Auth: 888D01ugS_V2WBvqBaVuJ9shNrM
Message-ID: <CABgO3_PSpdQ-_03sKAiKv=wpJQoRrq6X0CZuEkHvKMFyKyNLSg@mail.gmail.com>
From: Sebastien MENNETRIER <s.mennetrier@innotis.org>
To: Martin Jansa <martin.jansa@gmail.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH][for-dora] Fix issue to build pulseaudio without x11
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
X-List-Received-Date: Tue, 11 Feb 2014 16:06:24 -0000
Content-Type: multipart/alternative; boundary=20cf303347c138e69604f223a31b

--20cf303347c138e69604f223a31b
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

I think that the original commit to cherry-pick is :
e230b4498790a3dfdc36ea5761807459fc96368e


2014-02-11 16:58 GMT+01:00 Martin Jansa <martin.jansa@gmail.com>:

> On Mon, Feb 10, 2014 at 03:28:15PM +0100, S=E9bastien Mennetrier wrote:
> > This modification come from master branche
>
> It should be cherry-pick of original commit (with original author and
> SOB).
>
> But thanks for sending it, I've requested the same change as well.
>
> >
> > If x11 is not enabled, the pulseaudio-module-console-kit
> > couldn't be built.
> >
> > Signed-off-by: S=E9bastien Mennetrier <s.mennetrier@innotis.org>
> > ---
> >  meta/recipes-multimedia/pulseaudio/pulseaudio.inc | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/meta/recipes-multimedia/pulseaudio/pulseaudio.inc
> b/meta/recipes-multimedia/pulseaudio/pulseaudio.inc
> > index b7a6eba..27879ce 100644
> > --- a/meta/recipes-multimedia/pulseaudio/pulseaudio.inc
> > +++ b/meta/recipes-multimedia/pulseaudio/pulseaudio.inc
> > @@ -74,7 +74,7 @@ USERADD_PARAM_pulseaudio-server =3D "--system --home
> /var/run/pulse \
> >  # adding the console-kit module to an image, we also get the necessary
> >  # consolekit package produced.
> >  PACKAGES =3D+ "libpulsecore libpulsecommon libpulse libpulse-simple
> libpulse-mainloop-glib \
> > -             pulseaudio-server pulseaudio-misc
> pulseaudio-module-console-kit"
> > +             pulseaudio-server pulseaudio-misc
> ${@base_contains('PACKAGECONFIG', 'x11', 'pulseaudio-module-console-kit',
> '', d)}"
> >
> >  #upgrade path:
> >  RREPLACES_pulseaudio-server =3D "libpulse-bin libpulse-conf"
> > --
> > 1.8.1.2
> >
> > _______________________________________________
> > poky mailing list
> > poky@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/poky
>
> --
> Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com
>



--=20

Regards,
S=E9bastien

--20cf303347c138e69604f223a31b
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I think that the original commit to cherry-pick is : e230b=
4498790a3dfdc36ea5761807459fc96368e<br></div><div class=3D"gmail_extra"><br=
><br><div class=3D"gmail_quote">2014-02-11 16:58 GMT+01:00 Martin Jansa <sp=
an dir=3D"ltr">&lt;<a href=3D"mailto:martin.jansa@gmail.com" target=3D"_bla=
nk">martin.jansa@gmail.com</a>&gt;</span>:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"">On Mon, Feb 10, 2014 at 03:2=
8:15PM +0100, S=E9bastien Mennetrier wrote:<br>
&gt; This modification come from master branche<br>
<br>
</div>It should be cherry-pick of original commit (with original author and=
<br>
SOB).<br>
<br>
But thanks for sending it, I&#39;ve requested the same change as well.<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
&gt;<br>
&gt; If x11 is not enabled, the pulseaudio-module-console-kit<br>
&gt; couldn&#39;t be built.<br>
&gt;<br>
&gt; Signed-off-by: S=E9bastien Mennetrier &lt;<a href=3D"mailto:s.mennetri=
er@innotis.org">s.mennetrier@innotis.org</a>&gt;<br>
&gt; ---<br>
&gt; =A0meta/recipes-multimedia/pulseaudio/pulseaudio.inc | 2 +-<br>
&gt; =A01 file changed, 1 insertion(+), 1 deletion(-)<br>
&gt;<br>
&gt; diff --git a/meta/recipes-multimedia/pulseaudio/pulseaudio.inc b/meta/=
recipes-multimedia/pulseaudio/pulseaudio.inc<br>
&gt; index b7a6eba..27879ce 100644<br>
&gt; --- a/meta/recipes-multimedia/pulseaudio/pulseaudio.inc<br>
&gt; +++ b/meta/recipes-multimedia/pulseaudio/pulseaudio.inc<br>
&gt; @@ -74,7 +74,7 @@ USERADD_PARAM_pulseaudio-server =3D &quot;--system -=
-home /var/run/pulse \<br>
&gt; =A0# adding the console-kit module to an image, we also get the necess=
ary<br>
&gt; =A0# consolekit package produced.<br>
&gt; =A0PACKAGES =3D+ &quot;libpulsecore libpulsecommon libpulse libpulse-s=
imple libpulse-mainloop-glib \<br>
&gt; - =A0 =A0 =A0 =A0 =A0 =A0 pulseaudio-server pulseaudio-misc pulseaudio=
-module-console-kit&quot;<br>
&gt; + =A0 =A0 =A0 =A0 =A0 =A0 pulseaudio-server pulseaudio-misc ${@base_co=
ntains(&#39;PACKAGECONFIG&#39;, &#39;x11&#39;, &#39;pulseaudio-module-conso=
le-kit&#39;, &#39;&#39;, d)}&quot;<br>
&gt;<br>
&gt; =A0#upgrade path:<br>
&gt; =A0RREPLACES_pulseaudio-server =3D &quot;libpulse-bin libpulse-conf&qu=
ot;<br>
&gt; --<br>
&gt; 1.8.1.2<br>
&gt;<br>
</div></div><div class=3D"HOEnZb"><div class=3D"h5">&gt; __________________=
_____________________________<br>
&gt; poky mailing list<br>
&gt; <a href=3D"mailto:poky@yoctoproject.org">poky@yoctoproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/poky" target=3D"_bl=
ank">https://lists.yoctoproject.org/listinfo/poky</a><br>
<br>
</div></div><span class=3D"HOEnZb"><font color=3D"#888888">--<br>
Martin &#39;JaMa&#39; Jansa =A0 =A0 jabber: <a href=3D"mailto:Martin.Jansa@=
gmail.com">Martin.Jansa@gmail.com</a><br>
</font></span></blockquote></div><br><br clear=3D"all"><br>-- <br><div dir=
=3D"ltr"><div><br>Regards,<br></div>S=E9bastien<br></div>
</div>

--20cf303347c138e69604f223a31b--
