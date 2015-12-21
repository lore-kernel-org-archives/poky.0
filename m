Return-Path: <pj0585@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 85F0EE00BF7; Mon, 21 Dec 2015 02:23:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (pj0585[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f54.google.com (mail-wm0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D9DA3E0083E
	for <poky@yoctoproject.org>; Mon, 21 Dec 2015 02:23:40 -0800 (PST)
Received: by mail-wm0-f54.google.com with SMTP id l126so62152505wml.1
	for <poky@yoctoproject.org>; Mon, 21 Dec 2015 02:23:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=znym8dlY/byVlOCwO43VGXyEHPkEhYhDjdst63tyQAA=;
	b=iobBzbh3f7dG32JX5yLQBEnq+70hZgEBSfM7PmIP33dPI8DVNVF0GuBuBZpzKZpKvU
	wwgxV4aVh0SC9VxXJdUL3Q+kHa73iLQfLD7upUXE0qyMInANoWu2h8Ass6DBVebAuuOi
	FvLn1GfMRb1DMPMq98aNtVvw4j+wOUPo5CxSqRiuOedsZU0J8iSzEQSMnPkvJAHqzvPq
	OHDaDk/SU6EdpJwDTq/o52hVOLh6/i5+lkvkCdi7IonrtbQuE22ohJ0RP4H45O1ZHME2
	9EMwu9P6GNlDw+LzdR5Jyah/eLoyqugkMM8qdkhtZimSzqk0WMCDTvjpzcIWaVtJ3egv
	ly6A==
MIME-Version: 1.0
X-Received: by 10.28.136.149 with SMTP id k143mr18854652wmd.57.1450693419629; 
	Mon, 21 Dec 2015 02:23:39 -0800 (PST)
Received: by 10.28.215.132 with HTTP; Mon, 21 Dec 2015 02:23:39 -0800 (PST)
In-Reply-To: <CAMKF1srTgyObrUFSdjg-PDNxz2pj8RV6zZXf39VvNbB2hvuwZg@mail.gmail.com>
References: <CAA2DH4sBZQmca7x4rD8gWnqpuX8toj5iec5XADNUWP=wamvh1A@mail.gmail.com>
	<CAMKF1srTgyObrUFSdjg-PDNxz2pj8RV6zZXf39VvNbB2hvuwZg@mail.gmail.com>
Date: Mon, 21 Dec 2015 15:53:39 +0530
Message-ID: <CAA2DH4s6V7BoXii7_wX0zmeTcHxrUWSJx4HiPNhK6qMtn2xPZA@mail.gmail.com>
From: Prasant J <pj0585@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: SRC_URI: password protected ftp access
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
X-List-Received-Date: Mon, 21 Dec 2015 10:23:43 -0000
Content-Type: multipart/alternative; boundary=001a11443ed8f484ae052765e125

--001a11443ed8f484ae052765e125
Content-Type: text/plain; charset=UTF-8

On Mon, Dec 21, 2015 at 3:18 AM, Khem Raj <raj.khem@gmail.com> wrote:

> On Sun, Dec 20, 2015 at 7:57 AM, Prasant J <pj0585@gmail.com> wrote:
> > Hi,
> >
> >
> > I'm writing a bitbake recipe that will download the source tarball from a
> > ftp/http server that is password protected. How can I avoid putting the
> > username & password in the bitbake file? (the recipe will be version
> > controlled and the username & password will not be secure anymore)
> >
> >
> > Is there a way to put the username & password in the
> build/conf/local.conf??
> > or any other alternatives?
>
> You can use ~/.netrc do man netrc for how to configure it.
>
>
>

That helped! Thanks a lot Khem.


I added the following line to .netrc:
machine <server addr> login <username> password <pwd>


Regards, PJ

--001a11443ed8f484ae052765e125
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Mon, Dec 21, 2015 at 3:18 AM, Khem Raj <span dir=3D"ltr">&lt;<a href=
=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt;=
</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .=
8ex;border-left:1px #ccc solid;padding-left:1ex"><span class=3D"">On Sun, D=
ec 20, 2015 at 7:57 AM, Prasant J &lt;<a href=3D"mailto:pj0585@gmail.com">p=
j0585@gmail.com</a>&gt; wrote:<br>
&gt; Hi,<br>
&gt;<br>
&gt;<br>
&gt; I&#39;m writing a bitbake recipe that will download the source tarball=
 from a<br>
&gt; ftp/http server that is password protected. How can I avoid putting th=
e<br>
&gt; username &amp; password in the bitbake file? (the recipe will be versi=
on<br>
&gt; controlled and the username &amp; password will not be secure anymore)=
<br>
&gt;<br>
&gt;<br>
&gt; Is there a way to put the username &amp; password in the build/conf/lo=
cal.conf??<br>
&gt; or any other alternatives?<br>
<br>
</span>You can use ~/.netrc do man netrc for how to configure it.<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
<br></div></div></blockquote><div><br><br></div><div>That helped! Thanks a =
lot Khem.<br><br><br></div><div>I added the following line to .netrc:<br></=
div><div>machine &lt;server addr&gt; login &lt;username&gt; password &lt;pw=
d&gt;<br><br><br></div><div>Regards, PJ<br></div><div>=C2=A0<br></div></div=
></div></div>

--001a11443ed8f484ae052765e125--
