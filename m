Return-Path: <martin.jansa@gmail.com>
Received: from mail-wg0-f49.google.com (mail-wg0-f49.google.com [74.125.82.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DA9E3E014BF
	for <poky@yoctoproject.org>; Sat, 29 Jun 2013 05:05:56 -0700 (PDT)
Received: by mail-wg0-f49.google.com with SMTP id a12so2359485wgh.4
	for <poky@yoctoproject.org>; Sat, 29 Jun 2013 05:05:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=YQIH66jPos9q+z7Dj9XKn9VrYO170AecBoUtEc0yvko=;
	b=Qw24KB6dHQU+ZWBPRC0edVFYa7hGMpBa2YGs+rz9nb41/++dq77pFIeD4Sk9gC02eI
	z4RfHgGbVerRdCP79947tohj6Eb9pyyrKHqePwmf/dfZ63oge/pwrsDAQSPBvUTjaw4G
	sEwa9V8fEgT5pgQFd+1JV4afgsy/K7DL75eeuSA2X4nESNTtuBRisKmxseTaqEANQEXX
	4tE5gma/reAS4FQ3ejzXhGVO7F3cAekxn0xsQuFOOWACvUpmpd2nwRQmiTZbvzQ/izXn
	xsPud+WMfkmYYFZfF0IWx/t/4l/tqyTIPBv9wUNJ6qEB7O0uMb94bIyLxVql5qg7cxRb
	46qA==
MIME-Version: 1.0
X-Received: by 10.180.19.200 with SMTP id h8mr6129658wie.17.1372507555103;
	Sat, 29 Jun 2013 05:05:55 -0700 (PDT)
Received: by 10.194.16.136 with HTTP; Sat, 29 Jun 2013 05:05:55 -0700 (PDT)
In-Reply-To: <CAC6FaqyMxgZP4ODaZiACA8qPBCNRZUAg=UV_WufTqe1hZkdUdw@mail.gmail.com>
References: <CAC6FaqyMxgZP4ODaZiACA8qPBCNRZUAg=UV_WufTqe1hZkdUdw@mail.gmail.com>
Date: Sat, 29 Jun 2013 14:05:55 +0200
Message-ID: <CA+chaQdAttJ3PzZLagu_K1TZW16pWu9kaBPR4DQ-tdSVrY1JtQ@mail.gmail.com>
From: Martin Jansa <martin.jansa@gmail.com>
To: Wills Wang <wills.wang.open@gmail.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH] qt4e: override variables OE_QMAKE_QT_CONFIG
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
X-List-Received-Date: Sat, 29 Jun 2013 12:06:00 -0000
Content-Type: multipart/alternative; boundary=bcaec53d5eb7460db704e049d128

--bcaec53d5eb7460db704e049d128
Content-Type: text/plain; charset=UTF-8

This belongs to oe-core ML, please resend.


On Sat, Jun 29, 2013 at 1:50 PM, Wills Wang <wills.wang.open@gmail.com>wrote:

> override variables OE_QMAKE_QT_CONFIG to compile Qt/Embedded apps
>
> diff --git a/meta/classes/qt4e.bbclass b/meta/classes/qt4e.bbclass
> index de2a68d..13b1050 100755
> --- a/meta/classes/qt4e.bbclass
> +++ b/meta/classes/qt4e.bbclass
> @@ -9,6 +9,7 @@ QT_LIBINFIX = "E"
>  # override variables set by qmake-base to compile Qt/Embedded apps
>  #
>  export QMAKESPEC =
> "${STAGING_DATADIR}/${QT_DIR_NAME}/mkspecs/${TARGET_OS}-oe-g++"
> +export OE_QMAKE_QT_CONFIG =
> "${STAGING_DATADIR}/${QT_DIR_NAME}/mkspecs/qconfig.pri"
>  export OE_QMAKE_INCDIR_QT = "${STAGING_INCDIR}/${QT_DIR_NAME}"
>  export OE_QMAKE_LIBDIR_QT = "${STAGING_LIBDIR}"
>  export OE_QMAKE_LIBS_QT = "qt"
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>

--bcaec53d5eb7460db704e049d128
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">This belongs to oe-core ML, please resend.</div><div class=
=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Sat, Jun 29, 2013 at=
 1:50 PM, Wills Wang <span dir=3D"ltr">&lt;<a href=3D"mailto:wills.wang.ope=
n@gmail.com" target=3D"_blank">wills.wang.open@gmail.com</a>&gt;</span> wro=
te:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">override variables OE_QMAKE_QT_CONFIG to com=
pile Qt/Embedded apps<br>
<br>
diff --git a/meta/classes/qt4e.bbclass b/meta/classes/qt4e.bbclass<br>
index de2a68d..13b1050 100755<br>
--- a/meta/classes/qt4e.bbclass<br>
+++ b/meta/classes/qt4e.bbclass<br>
@@ -9,6 +9,7 @@ QT_LIBINFIX =3D &quot;E&quot;<br>
=C2=A0# override variables set by qmake-base to compile Qt/Embedded apps<br=
>
=C2=A0#<br>
=C2=A0export QMAKESPEC =3D<br>
&quot;${STAGING_DATADIR}/${QT_DIR_NAME}/mkspecs/${TARGET_OS}-oe-g++&quot;<b=
r>
+export OE_QMAKE_QT_CONFIG =3D<br>
&quot;${STAGING_DATADIR}/${QT_DIR_NAME}/mkspecs/qconfig.pri&quot;<br>
=C2=A0export OE_QMAKE_INCDIR_QT =3D &quot;${STAGING_INCDIR}/${QT_DIR_NAME}&=
quot;<br>
=C2=A0export OE_QMAKE_LIBDIR_QT =3D &quot;${STAGING_LIBDIR}&quot;<br>
=C2=A0export OE_QMAKE_LIBS_QT =3D &quot;qt&quot;<br>
_______________________________________________<br>
poky mailing list<br>
<a href=3D"mailto:poky@yoctoproject.org">poky@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/poky" target=3D"_blank">=
https://lists.yoctoproject.org/listinfo/poky</a><br>
</blockquote></div><br></div>

--bcaec53d5eb7460db704e049d128--
