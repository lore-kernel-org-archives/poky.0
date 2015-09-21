Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C01B8E00C42; Mon, 21 Sep 2015 03:37:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.49 listed in list.dnswl.org]
Received: from mail-qg0-f49.google.com (mail-qg0-f49.google.com
	[209.85.192.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 94CEDE0073C
	for <poky@yoctoproject.org>; Mon, 21 Sep 2015 03:37:21 -0700 (PDT)
Received: by qgev79 with SMTP id v79so84710591qge.0
	for <poky@yoctoproject.org>; Mon, 21 Sep 2015 03:37:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=qspcJD85Omg1Tm831emOnzFSXYjgkSHrKC6WMvD/zFE=;
	b=CADO9AxX+kBEVulqVHufjDzv0WqY/UuuoTJXoRqFk7+NQzYz5gDjdjz03n9Yykzrpn
	9k3tIMgCucwQkFWGhWnnz8zHupjua9u95YtFb1PQQUmhcSGwURdCHclwv+PYr1+fyrNy
	Ka/jmuhHJkbYZ/saU4jQErVIadCTWAAsF4SyN7ed5OAIORidIv3JSZo9JSwZR9xYhBxy
	qP/4JRR4NcBukrHrBRUXWs1kHykW3SjbbNb6eEXlyuWiZZwNqyiZ2XFvg+FceqAx+pJC
	ssSh1lajIJG7VA5sD1p78SMopS06tFX1DK+53EL/1QOWI/dIwM+LYjZP27RQIROtk/IJ
	2Rug==
X-Gm-Message-State: ALoCoQlQqcWJDHMCI98+Zv8/vBk+Vy0bWJcTpDWyC2+XvjL7Xo8uZXfVb3gwUL1lVGEup6K8lu7d
X-Received: by 10.140.44.11 with SMTP id f11mr6055898qga.80.1442831841406;
	Mon, 21 Sep 2015 03:37:21 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.94.86 with HTTP; Mon, 21 Sep 2015 03:37:02 -0700 (PDT)
In-Reply-To: <ce1b1e6f90c04502bb96418880367f0784e4acd4.1442710213.git.avery.brian@gmail.com>
References: <cover.1442710213.git.avery.brian@gmail.com>
	<ce1b1e6f90c04502bb96418880367f0784e4acd4.1442710213.git.avery.brian@gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 21 Sep 2015 11:37:02 +0100
Message-ID: <CAJTo0LafTwo-xVgEXWokdReEb3es57kf2cda6+dsHS9i43qDiA@mail.gmail.com>
To: brian avery <avery.brian@gmail.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: [PATCH 1/1] meta-selftest: add error recipe and error-image
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
X-List-Received-Date: Mon, 21 Sep 2015 10:37:25 -0000
Content-Type: multipart/alternative; boundary=001a113b41bc60c7eb05203f77d0

--001a113b41bc60c7eb05203f77d0
Content-Type: text/plain; charset=UTF-8

On 20 September 2015 at 01:53, brian avery <avery.brian@gmail.com> wrote:

> +++ b/meta-selftest/recipes-test/error/error.bb
> @@ -0,0 +1,10 @@
> +SUMMARY = "Error Test case that fails on do_compile"
> +DESCRIPTION = "This generates a compile time error to be used to for
> testing. Not currently used by oe-selftest"
> +LICENSE = "MIT"
> +LIC_FILES_CHKSUM =
> "file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
> +
> +INHIBIT_DEFAULT_DEPS = "1"
> +
> +do_compile() {
> +        false;
> +}
>

Would it be sensible to addEXCLUDE_FROM_WORLD to this so it doesn't get
built in world builds if meta-selftest is enabled?

Ross

--001a113b41bc60c7eb05203f77d0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 20 September 2015 at 01:53, brian avery <span dir=3D"ltr">&lt;<a href=3D=
"mailto:avery.brian@gmail.com" target=3D"_blank">avery.brian@gmail.com</a>&=
gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 =
0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":3yt" class=
=3D"a3s" style=3D"overflow:hidden">+++ b/meta-selftest/recipes-test/error/<=
a href=3D"http://error.bb" rel=3D"noreferrer" target=3D"_blank">error.bb</a=
><br>
@@ -0,0 +1,10 @@<br>
+SUMMARY =3D &quot;Error Test case that fails on do_compile&quot;<br>
+DESCRIPTION =3D &quot;This generates a compile time error to be used to fo=
r testing. Not currently used by oe-selftest&quot;<br>
+LICENSE =3D &quot;MIT&quot;<br>
+LIC_FILES_CHKSUM =3D &quot;file://${COREBASE}/meta/COPYING.MIT;md5=3D3da9c=
fbcb788c80a0384361b4de20420&quot;<br>
+<br>
+INHIBIT_DEFAULT_DEPS =3D &quot;1&quot;<br>
+<br>
+do_compile() {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 false;<br>
+}</div></blockquote></div><br>Would it be sensible to addEXCLUDE_FROM_WORL=
D to this so it doesn&#39;t get built in world builds if meta-selftest is e=
nabled?</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra=
">Ross</div></div>

--001a113b41bc60c7eb05203f77d0--
