Return-Path: <matti.kaasinen@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 891C2E00CFD; Mon, 31 Aug 2015 23:40:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (matti.kaasinen[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.48 listed in list.dnswl.org]
Received: from mail-qg0-f48.google.com (mail-qg0-f48.google.com
	[209.85.192.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 11806E007C9
	for <poky@yoctoproject.org>; Mon, 31 Aug 2015 23:40:55 -0700 (PDT)
Received: by qgz60 with SMTP id 60so25298085qgz.2
	for <poky@yoctoproject.org>; Mon, 31 Aug 2015 23:40:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=fX5rilKb3wD/4778H+70KDsU0wHqLfvhmpAHbJxcvOs=;
	b=t/6KRxtM0uJmWODtR97YzKqnX+iR7dIPEpmDtPdx9d/MY8MVDhv/Lf0K23B7kVU90G
	5L6NmJ0USfyBKIls2HMqMQR2cEbCZ5N/Xa7T//EAlN0yW5Z34NfCGFCR+Od2Cg1+kSMu
	IdvqchQjp0iM6spTfBq3Lzv3fJ0/wUl/Pde/o4Xd4dd2kMX3rJ5SXkrUNoCl09tb51mf
	SQWAXhqbZW9Pyl1Ri0XA+KV7uD/KpAXV95xOHXhlSoLjOC+Be347ElHfmLAU54YrQ7W6
	sqOcKErCSR4pxYlfLANk8ZkXo/V7GhH6HxdbPr1M4sDMG8Q/igr562H1k5mAgTmEn29V
	6x0w==
MIME-Version: 1.0
X-Received: by 10.140.148.136 with SMTP id 130mr46316025qhu.82.1441089655197; 
	Mon, 31 Aug 2015 23:40:55 -0700 (PDT)
Received: by 10.55.149.133 with HTTP; Mon, 31 Aug 2015 23:40:55 -0700 (PDT)
In-Reply-To: <CADnUhn2yeyhj=-tQY89yFwAsCq6ARO0qshOjqV3X=NT8rrs0=w@mail.gmail.com>
References: <CADnUhn2yeyhj=-tQY89yFwAsCq6ARO0qshOjqV3X=NT8rrs0=w@mail.gmail.com>
Date: Tue, 1 Sep 2015 09:40:55 +0300
Message-ID: <CADnUhn0wkWC07QsR6D7T=maQLJWkXOyGVf=YWhGjaQ7oy=qvOA@mail.gmail.com>
From: matti kaasinen <matti.kaasinen@gmail.com>
To: Poky Project <poky@yoctoproject.org>
Subject: Re: Postinstall script problem
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
X-List-Received-Date: Tue, 01 Sep 2015 06:40:58 -0000
Content-Type: multipart/alternative; boundary=001a11354f8afcd75c051ea9d489

--001a11354f8afcd75c051ea9d489
Content-Type: text/plain; charset=UTF-8

I'm using Poky fido branch.
Thanks,
Matti

2015-08-31 16:31 GMT+03:00 matti kaasinen <matti.kaasinen@gmail.com>:

> Hi!
>
> How is pkg_postinstall_${PN} supposed to work, when package is coming from
> imgage? My experience is that it is not executed at all.
>
> In classical openembedded it was run for the first time when image
> started. Is this changed in Poky/yocto based operation?
>
> However, if I install same package using opkg, everything works fine. What
> I try to do is appending a line to /etc/inittab. I also tried to do it
> during image creation (to ${STAGING_DIR_HOST}${sysconfdir}/inittab), but
> results are the same - only the file created by systemv-inittab gets
> created with nothing extra.
>
> I guess this is a pretty common problem, so that there could be some neat
> solution for this. Is anyone familiar with this issue?
>
> My postinst script is as follows (really working with opkg)
> pkg_postinst_${PN} () {
> #!/bin/sh -e
>
> if [ "x$D" = "x" ]; then
>     # run this on the target
>     echo '########################################'
>     echo '## Installing starter for daemontools ##'
>     echo '########################################'
>
>     if [ -z "$(grep -e svscanboot ${sysconfdir}/inittab)" ] ; then
>         echo "SV:12345:respawn:${bindir}/svscanboot" >>
> ${sysconfdir}/inittab
>     fi
> fi
> }
>
> Thanks,
> Matti
>

--001a11354f8afcd75c051ea9d489
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>I&#39;m using Poky fido branch.<br></div>Thanks,=
<br></div>Matti<br></div><div class=3D"gmail_extra"><br><div class=3D"gmail=
_quote">2015-08-31 16:31 GMT+03:00 matti kaasinen <span dir=3D"ltr">&lt;<a =
href=3D"mailto:matti.kaasinen@gmail.com" target=3D"_blank">matti.kaasinen@g=
mail.com</a>&gt;</span>:<br><blockquote class=3D"gmail_quote" style=3D"marg=
in:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"=
><div><div><div><div><div><div><div>Hi!<br><br></div>How is pkg_postinstall=
_${PN} supposed to work, when package is coming from imgage? My experience =
is that it is not executed at all.<br><br></div>In classical openembedded i=
t was run for the first time when image started. Is this changed in Poky/yo=
cto based operation?<br><br></div>However, if I install same package using =
opkg, everything works fine. What I try to do is appending a line to /etc/i=
nittab. I also tried to do it during image creation (to ${STAGING_DIR_HOST}=
${sysconfdir}/inittab), but results are the same - only the file created by=
 systemv-inittab gets created with nothing extra.<br><br></div>I guess this=
 is a pretty common problem, so that there could be some neat solution for =
this. Is anyone familiar with this issue?<br><br></div>My postinst script i=
s as follows (really working with opkg)<br>pkg_postinst_${PN} () {<br>#!/bi=
n/sh -e<br><br>if [ &quot;x$D&quot; =3D &quot;x&quot; ]; then<br>=C2=A0=C2=
=A0=C2=A0 # run this on the target<br>=C2=A0=C2=A0=C2=A0 echo &#39;########=
################################&#39;<br>=C2=A0=C2=A0=C2=A0 echo &#39;## In=
stalling starter for daemontools ##&#39;<br>=C2=A0=C2=A0=C2=A0 echo &#39;##=
######################################&#39;<br><br>=C2=A0=C2=A0=C2=A0 if [ =
-z &quot;$(grep -e svscanboot ${sysconfdir}/inittab)&quot; ] ; then<br>=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 echo &quot;SV:12345:respawn:${bindi=
r}/svscanboot&quot; &gt;&gt; ${sysconfdir}/inittab<br>=C2=A0=C2=A0=C2=A0 fi=
<br>fi<br>}<br><br></div>Thanks,<br></div>Matti<br></div>
</blockquote></div><br></div>

--001a11354f8afcd75c051ea9d489--
