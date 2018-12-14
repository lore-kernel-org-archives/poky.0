Return-Path: <matti.kaasinen@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 788A8E00CF1; Thu, 13 Dec 2018 23:39:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (matti.kaasinen[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.50 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com
	[209.85.208.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 076E1E00C4E
	for <poky@yoctoproject.org>; Thu, 13 Dec 2018 23:39:25 -0800 (PST)
Received: by mail-ed1-f50.google.com with SMTP id z28so4149181edi.8
	for <poky@yoctoproject.org>; Thu, 13 Dec 2018 23:39:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=BwuoDl0L6GF1t0MjlC1bYlilPvpTz8AzmohAd7EUYCs=;
	b=kAYNefEYalm9X2hFPyZHi0AA0lijMDN+OCKzkkRQq4vrcCmulSjRgotAryjXKIDhZn
	kAGvOMevLtGk9RlxEO0/rAEnRC1LuP7ksM8/v1WkCbSKFbmUPoicOiHoXnbZ6Lz8uDpo
	yDqesphKcYh8LL/pD1zWWEWErRKUwKIz74LMRdRfEkSQ+nafRe0/gyqhLoUDHl9mqVSn
	rN+Q1ZVbuuGNF9Rc800Fw543lnuGcUkottAmM/ZcmiUvxZYxfWGlOq1rw77SXjI9LbMr
	bMRYqJ+QCoxIAkN0xtOC5RMwKoeiyNkCWq/ewCo8c5IR+90Sv2vw1dYMSeZ0JHx2iGtM
	o9pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=BwuoDl0L6GF1t0MjlC1bYlilPvpTz8AzmohAd7EUYCs=;
	b=IPwjXFt0xQtQxeI8Z6J76LET7GzdTrZIXoXIOatw9wktQSoTXwN89xZDF1R8RGoYdQ
	lFP0ODGOcoBmDM5x84zNR9lGAEOnOGOb8kJ8HisxVlXto7dNA/sKbbXa+lYwifknKtb/
	WjgBY4kC0HM7EJP45LuljBX8eCH5GUcIf9m9L8FNqYRgqV7HuJ2Fz5TmTSnvGuI2ycUK
	ojaQJNJT8bcfbnckhCMHfu9aS1C7wJV5bsRlMLdBH3OB9KbQVM9kTSv55CLctH8Rgyw/
	Xe3UV6Ir9PMsZEbUbSwicuX/dYeK3t18grSBJPDdgBfpHX9dfvzUndmyELLw7mwummXQ
	SO9Q==
X-Gm-Message-State: AA+aEWbt/0TU62B5KpkfMFlyQsfUG//dv7DkbObP1mWz8gayYuA2gRLa
	hURDDK1st5ImTX2fnvVQmlE/U4lvVfIUqzcgIJY=
X-Google-Smtp-Source: AFSGD/WaOsN4lJUgIHLFJy2EsUtKmcjIYmWmhZD5C0EXEMvn72I2k5lucSoEBq0XKeWcjnjtd+KUgTD7jWCJF4pgT0E=
X-Received: by 2002:a17:906:3ed4:: with SMTP id
	d20-v6mr1653414ejj.151.1544773165087; 
	Thu, 13 Dec 2018 23:39:25 -0800 (PST)
MIME-Version: 1.0
References: <CADnUhn2TRDD8623A6SwPGP7RP4sc7uhSxNbTz6S0NDDqJwJtiw@mail.gmail.com>
	<CAJTo0Laz6GYO0xzkKbnp=zBh7aKi+eRdu4Os0kEyYBBhSTDH7A@mail.gmail.com>
	<CADnUhn2siMqwsf1GfMdOEEK9vpjmXX-uxWSHtr36xf9Vjy8vgg@mail.gmail.com>
	<CADnUhn3_MjwJvcEDT8ikfGZ2eBhnBKOOzXsJ+D4ncntWT18vUQ@mail.gmail.com>
	<CADnUhn1SDTZPr4_StAqUBUehF206S-OA+ZHmyBbM_UAWKWp3fA@mail.gmail.com>
	<CADnUhn3Er1dR8rr4bDDHniRmFYnCr9h+33a64Hn8C+xLhmApWQ@mail.gmail.com>
	<CADnUhn0-GgH9=4ow4SV25b7etaKP19Eb3jH6HxL2-xm80yrkbw@mail.gmail.com>
	<CAJTo0Lb8R6vuVuJSMys2SaJG6G2nn7x-QqexT47KWHLofoKKQA@mail.gmail.com>
	<14b88b6a1c4bdf3f004028e13917a4db57c02633.camel@linuxfoundation.org>
In-Reply-To: <14b88b6a1c4bdf3f004028e13917a4db57c02633.camel@linuxfoundation.org>
From: matti kaasinen <matti.kaasinen@gmail.com>
Date: Fri, 14 Dec 2018 09:39:12 +0200
Message-ID: <CADnUhn04VDO9N3=ryUz0koe55HyO9X1FDt-V-V2KQ1KpNFcyzA@mail.gmail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: nspr-4.16-r0 do_package: Function failed: split_and_strip_files
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
X-List-Received-Date: Fri, 14 Dec 2018 07:39:27 -0000
Content-Type: multipart/alternative; boundary="000000000000c38253057cf687ab"

--000000000000c38253057cf687ab
Content-Type: text/plain; charset="UTF-8"

It had nothing to do with FILES statements. In fact that pam-oath was not
swallowed. Instead, it was not produced produced because one DEPENDS
statement was missing so that this recipe did not get some system headers.
Configure went through (with errors reporting these missing header files),
but one package was not produced.

This is clear,
Thanks,
Matti

to 13. jouluk. 2018 klo 17.15 Richard Purdie (
richard.purdie@linuxfoundation.org) kirjoitti:

> On Thu, 2018-12-13 at 14:23 +0000, Burton, Ross wrote:
> > On Thu, 13 Dec 2018 at 14:14, matti kaasinen <
> > matti.kaasinen@gmail.com> wrote:
> > > This cleared out. However, I faced with a new problems that seems
> > > also hitting to same bbclass. It seems that convention has changed
> > > since Yocto/krogoth (now Rocko) how autotools handles .debug
> > > directory. Then I just had statements:
> > > FILES_pam-oath-dbg = "${libdir}/security/.debug"
> > > FILES_pam-oath = "${libdir}/security"
> > > Then I got both pam-oath and pam-oath-dbg. However, now I cant find
> > > a way either to get QA error about .debug directory (without pam-
> > > oath-dbg line) or not getting pam-oath (with pam-oath-dbg line).
> > > Is there any reference handling this issue? I did not find any. Or
> > > should I write a new question with proper title?
> >
> > The best practise is to ship only one -dbg package per recipe
> > (${PN}-dbg is in the default PACKAGES), and you don't nee to list any
> > FILES for it because it will automatically sweep up all the .debug/
> > directories.
>
> Incidentally, this happened in the 2.1 (krogoth) release:
>
>
> https://www.yoctoproject.org/docs/2.6/mega-manual/mega-manual.html#migration-2.1-miscellaneous-changes
>
> Cheers,
>
> Richard
>
>
>
>

--000000000000c38253057cf687ab
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>It had nothing to do with FILES statements. In fact t=
hat pam-oath was not swallowed. Instead, it was not produced produced becau=
se one DEPENDS statement was missing so that this recipe did not get some s=
ystem headers. Configure went through (with errors reporting these missing =
header files), but one package was not produced.</div><div><br></div><div>T=
his is clear,</div><div>Thanks,</div><div>Matti<br></div></div><br><div cla=
ss=3D"gmail_quote"><div dir=3D"ltr">to 13. jouluk. 2018 klo 17.15 Richard P=
urdie (<a href=3D"mailto:richard.purdie@linuxfoundation.org">richard.purdie=
@linuxfoundation.org</a>) kirjoitti:<br></div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,20=
4);padding-left:1ex">On Thu, 2018-12-13 at 14:23 +0000, Burton, Ross wrote:=
<br>
&gt; On Thu, 13 Dec 2018 at 14:14, matti kaasinen &lt;<br>
&gt; <a href=3D"mailto:matti.kaasinen@gmail.com" target=3D"_blank">matti.ka=
asinen@gmail.com</a>&gt; wrote:<br>
&gt; &gt; This cleared out. However, I faced with a new problems that seems=
<br>
&gt; &gt; also hitting to same bbclass. It seems that convention has change=
d<br>
&gt; &gt; since Yocto/krogoth (now Rocko) how autotools handles .debug<br>
&gt; &gt; directory. Then I just had statements:<br>
&gt; &gt; FILES_pam-oath-dbg =3D &quot;${libdir}/security/.debug&quot;<br>
&gt; &gt; FILES_pam-oath =3D &quot;${libdir}/security&quot;<br>
&gt; &gt; Then I got both pam-oath and pam-oath-dbg. However, now I cant fi=
nd<br>
&gt; &gt; a way either to get QA error about .debug directory (without pam-=
<br>
&gt; &gt; oath-dbg line) or not getting pam-oath (with pam-oath-dbg line).<=
br>
&gt; &gt; Is there any reference handling this issue? I did not find any. O=
r<br>
&gt; &gt; should I write a new question with proper title?<br>
&gt; <br>
&gt; The best practise is to ship only one -dbg package per recipe<br>
&gt; (${PN}-dbg is in the default PACKAGES), and you don&#39;t nee to list =
any<br>
&gt; FILES for it because it will automatically sweep up all the .debug/<br=
>
&gt; directories.<br>
<br>
Incidentally, this happened in the 2.1 (krogoth) release:<br>
<br>
<a href=3D"https://www.yoctoproject.org/docs/2.6/mega-manual/mega-manual.ht=
ml#migration-2.1-miscellaneous-changes" rel=3D"noreferrer" target=3D"_blank=
">https://www.yoctoproject.org/docs/2.6/mega-manual/mega-manual.html#migrat=
ion-2.1-miscellaneous-changes</a><br>
<br>
Cheers,<br>
<br>
Richard<br>
<br>
<br>
<br>
</blockquote></div>

--000000000000c38253057cf687ab--
