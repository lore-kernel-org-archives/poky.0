Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 843DCE0098A; Sat, 28 Apr 2018 13:01:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f66.google.com (mail-pg0-f66.google.com [74.125.83.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A6D60E00595
	for <poky@yoctoproject.org>; Sat, 28 Apr 2018 13:01:20 -0700 (PDT)
Received: by mail-pg0-f66.google.com with SMTP id l2-v6so3809607pgc.7
	for <poky@yoctoproject.org>; Sat, 28 Apr 2018 13:01:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=5AnAPI/E6iRvBVleww9lbtK3CjbaqXWWOofah81Z414=;
	b=CrdOFPKQF7RxtWzRWaJW4BUjwBupw4zQjYQZd+qjfI1FwrCfBFc4uBw0dM0gr0GNTi
	AUgiF3trt/UCv4Udhg7cGHIYBPzhiRCG2wcMdnl8a7H10w8yb3E9AtaG/JBxCbCMruLO
	W3qx6SYOQ69vnC7t4d7j2bMZE7IekviExusFN44fvPx3QqPIR/6FoTqpRP6RWGYWWArC
	/9s5fFtxFTm+/3HI/qYzoTnyYxO2F9z3CPQoMukpceplmlRAdYi372aKMzeySdrqU2fz
	8ZieqzgMlQioOym1URJIwIC22K8vyM1yb/PQemEjI0pMxaxqFvv6viklaptdqNs5qCR9
	lemw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=5AnAPI/E6iRvBVleww9lbtK3CjbaqXWWOofah81Z414=;
	b=nf816ogp5lq5kzMloXOjsAnCB2AvdNgm3hCr1aWNcePcl+2FFbtzwfafajTG8Sy+Ny
	Rh9jsANJ8vyXd9abk4ClNgySRGRq3/6lmXjgh7Rze9qo4lmXyFyTtAHlWGvyXVjAKSRr
	Pi53eiRSlP/0BuOhq/SGwmQOX6A0UTH/FcknMFJ3YZ1tHky1osXcOFgy9PfHLJ+bUNJI
	ECL9aBAfQOyYxblOZ97B6z6iDZNpmf4yqpYK7qJJf4FgY4sNcTFHBVcllNIYcEznlJbt
	4/AEWiw5pxsiiYRPmG9fnAEvNms5yeZLbe+M92E76e6RbUdwKV67mnqmrjj4/u4b4kQ8
	vqWg==
X-Gm-Message-State: ALQs6tBRi2qL4BX7CI/4NLhyTmxfD9H+4ROC9Lsrx6kdFbeG1smDxd1o
	KfgU/Y20sVs0aXCBg/6Nfp4SJgy7M/DZq4UBmlk=
X-Google-Smtp-Source: AB8JxZq9l8DSESaUhCGfzhyTXUgYrQIt4xmLBUHI1Fd7xiyJmJ2wEIwWpWYjbOO2k5QzI4fwwpce9K0MDNtHKu7saNA=
X-Received: by 10.98.127.145 with SMTP id a139mr6762789pfd.25.1524945678331;
	Sat, 28 Apr 2018 13:01:18 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1524580981.git.malu@gomspace.com>
	<10c4d92ee24403e6b13b6ff651cf74a1ff4ec1be.1524580981.git.malu@gomspace.com>
In-Reply-To: <10c4d92ee24403e6b13b6ff651cf74a1ff4ec1be.1524580981.git.malu@gomspace.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sat, 28 Apr 2018 20:01:07 +0000
Message-ID: <CAMKF1srdhfFn0rqC7W8gC00DcBjGdhW_hKBuqgJTUkHFc-dfjg@mail.gmail.com>
To: Martin Lund <malu@gomspace.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/1] mtd-utils: Add mtd-utils-tests package
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
X-List-Received-Date: Sat, 28 Apr 2018 20:01:22 -0000
Content-Type: multipart/alternative; boundary="94eb2c1269887574a4056aee15a8"

--94eb2c1269887574a4056aee15a8
Content-Type: text/plain; charset="UTF-8"

On Thu, Apr 26, 2018 at 2:49 AM Martin Lund <malu@gomspace.com> wrote:

> Add mtd-utils-tests package which includes the test suites mtd-tests,
> ubi-tests, fs-tests, etc.
>
> These test suites are useful for verifying flash features or stress
> testing.


I wonder if this should be enabled when ptest is in distro features

>
>
> Signed-off-by: Martin Lund <malu@gomspace.com>
> ---
>  meta/recipes-devtools/mtd/mtd-utils_git.bb | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
>
> diff --git a/meta/recipes-devtools/mtd/mtd-utils_git.bb
> b/meta/recipes-devtools/mtd/mtd-utils_git.bb
> index d09d6330228..b8f2dd15c19 100644
> --- a/meta/recipes-devtools/mtd/mtd-utils_git.bb
> +++ b/meta/recipes-devtools/mtd/mtd-utils_git.bb
> @@ -8,6 +8,7 @@ LIC_FILES_CHKSUM =
> "file://COPYING;md5=0636e73ff0215e8d672dc4c32c317bb3 \
>  inherit autotools pkgconfig update-alternatives
>
>  DEPENDS = "zlib lzo e2fsprogs util-linux"
> +RDEPENDS_mtd-utils-tests += "bash"
>
>  PV = "2.0.1+${SRCPV}"
>
> @@ -18,6 +19,8 @@ SRC_URI = "git://git.infradead.org/mtd-utils.git \
>
>  S = "${WORKDIR}/git/"
>
> +EXTRA_OECONF += "--enable-install-tests"
> +
>  # xattr support creates an additional compile-time dependency on acl
> because
>  # the sys/acl.h header is needed. libacl is not needed and thus enabling
> xattr
>  # regardless whether acl is enabled or disabled in the distro should be
> okay.
> @@ -37,11 +40,12 @@ do_install () {
>         oe_runmake install DESTDIR=${D} SBINDIR=${sbindir}
> MANDIR=${mandir} INCLUDEDIR=${includedir}
>  }
>
> -PACKAGES =+ "mtd-utils-jffs2 mtd-utils-ubifs mtd-utils-misc"
> +PACKAGES =+ "mtd-utils-jffs2 mtd-utils-ubifs mtd-utils-misc
> mtd-utils-tests"
>
>  FILES_mtd-utils-jffs2 = "${sbindir}/mkfs.jffs2 ${sbindir}/jffs2dump
> ${sbindir}/jffs2reader ${sbindir}/sumtool"
>  FILES_mtd-utils-ubifs = "${sbindir}/mkfs.ubifs ${sbindir}/ubi*"
>  FILES_mtd-utils-misc = "${sbindir}/nftl* ${sbindir}/ftl* ${sbindir}/rfd*
> ${sbindir}/doc* ${sbindir}/serve_image ${sbindir}/recv_image"
> +FILES_mtd-utils-tests = "${libexecdir}/mtd-utils/*"
>
>  BBCLASSEXTEND = "native nativesdk"
>
> --
> 2.14.1
>
> --
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>

--94eb2c1269887574a4056aee15a8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br><div class=3D"gmail_quote"><div dir=3D"auto">On Thu, Apr 26, 2018 =
at 2:49 AM Martin Lund &lt;<a href=3D"mailto:malu@gomspace.com">malu@gomspa=
ce.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Add mtd-utils=
-tests package which includes the test suites mtd-tests,<br>
ubi-tests, fs-tests, etc.<br>
<br>
These test suites are useful for verifying flash features or stress<br>
testing.</blockquote><div dir=3D"auto"><br></div><div dir=3D"auto">I wonder=
 if this should be enabled when ptest is in distro features</div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc sol=
id;padding-left:1ex"><br>
<br>
Signed-off-by: Martin Lund &lt;<a href=3D"mailto:malu@gomspace.com" target=
=3D"_blank">malu@gomspace.com</a>&gt;<br>
---<br>
=C2=A0meta/recipes-devtools/mtd/<a href=3D"http://mtd-utils_git.bb" rel=3D"=
noreferrer" target=3D"_blank">mtd-utils_git.bb</a> | 6 +++++-<br>
=C2=A01 file changed, 5 insertions(+), 1 deletion(-)<br>
<br>
diff --git a/meta/recipes-devtools/mtd/<a href=3D"http://mtd-utils_git.bb" =
rel=3D"noreferrer" target=3D"_blank">mtd-utils_git.bb</a> b/meta/recipes-de=
vtools/mtd/<a href=3D"http://mtd-utils_git.bb" rel=3D"noreferrer" target=3D=
"_blank">mtd-utils_git.bb</a><br>
index d09d6330228..b8f2dd15c19 100644<br>
--- a/meta/recipes-devtools/mtd/<a href=3D"http://mtd-utils_git.bb" rel=3D"=
noreferrer" target=3D"_blank">mtd-utils_git.bb</a><br>
+++ b/meta/recipes-devtools/mtd/<a href=3D"http://mtd-utils_git.bb" rel=3D"=
noreferrer" target=3D"_blank">mtd-utils_git.bb</a><br>
@@ -8,6 +8,7 @@ LIC_FILES_CHKSUM =3D &quot;file://COPYING;md5=3D0636e73ff02=
15e8d672dc4c32c317bb3 \<br>
=C2=A0inherit autotools pkgconfig update-alternatives<br>
<br>
=C2=A0DEPENDS =3D &quot;zlib lzo e2fsprogs util-linux&quot;<br>
+RDEPENDS_mtd-utils-tests +=3D &quot;bash&quot;<br>
<br>
=C2=A0PV =3D &quot;2.0.1+${SRCPV}&quot;<br>
<br>
@@ -18,6 +19,8 @@ SRC_URI =3D &quot;git://<a href=3D"http://git.infradead.o=
rg/mtd-utils.git" rel=3D"noreferrer" target=3D"_blank">git.infradead.org/mt=
d-utils.git</a> \<br>
<br>
=C2=A0S =3D &quot;${WORKDIR}/git/&quot;<br>
<br>
+EXTRA_OECONF +=3D &quot;--enable-install-tests&quot;<br>
+<br>
=C2=A0# xattr support creates an additional compile-time dependency on acl =
because<br>
=C2=A0# the sys/acl.h header is needed. libacl is not needed and thus enabl=
ing xattr<br>
=C2=A0# regardless whether acl is enabled or disabled in the distro should =
be okay.<br>
@@ -37,11 +40,12 @@ do_install () {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 oe_runmake install DESTDIR=3D${D} SBINDIR=3D${s=
bindir} MANDIR=3D${mandir} INCLUDEDIR=3D${includedir}<br>
=C2=A0}<br>
<br>
-PACKAGES =3D+ &quot;mtd-utils-jffs2 mtd-utils-ubifs mtd-utils-misc&quot;<b=
r>
+PACKAGES =3D+ &quot;mtd-utils-jffs2 mtd-utils-ubifs mtd-utils-misc mtd-uti=
ls-tests&quot;<br>
<br>
=C2=A0FILES_mtd-utils-jffs2 =3D &quot;${sbindir}/mkfs.jffs2 ${sbindir}/jffs=
2dump ${sbindir}/jffs2reader ${sbindir}/sumtool&quot;<br>
=C2=A0FILES_mtd-utils-ubifs =3D &quot;${sbindir}/mkfs.ubifs ${sbindir}/ubi*=
&quot;<br>
=C2=A0FILES_mtd-utils-misc =3D &quot;${sbindir}/nftl* ${sbindir}/ftl* ${sbi=
ndir}/rfd* ${sbindir}/doc* ${sbindir}/serve_image ${sbindir}/recv_image&quo=
t;<br>
+FILES_mtd-utils-tests =3D &quot;${libexecdir}/mtd-utils/*&quot;<br>
<br>
=C2=A0BBCLASSEXTEND =3D &quot;native nativesdk&quot;<br>
<br>
-- <br>
2.14.1<br>
<br>
-- <br>
_______________________________________________<br>
poky mailing list<br>
<a href=3D"mailto:poky@yoctoproject.org" target=3D"_blank">poky@yoctoprojec=
t.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/poky" rel=3D"noreferrer"=
 target=3D"_blank">https://lists.yoctoproject.org/listinfo/poky</a><br>
</blockquote></div></div>

--94eb2c1269887574a4056aee15a8--
