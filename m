Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 58733E00718; Wed,  5 Jul 2017 15:40:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.216.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.176 listed in dnsbl.sorbs.net]
Received: from mail-qt0-f176.google.com (mail-qt0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DE5FAE00349
	for <poky@yoctoproject.org>; Wed,  5 Jul 2017 15:40:16 -0700 (PDT)
Received: by mail-qt0-f176.google.com with SMTP id r30so2536167qtc.0
	for <poky@yoctoproject.org>; Wed, 05 Jul 2017 15:40:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=UAGnVYpjSsRjrFFRA8CjuOzzM1+gZAU76rVR/K6pY3w=;
	b=jlt3+UE40Xbu5ytpAnZgtle4STHlYohwj/z5EJ5J+FKenwpxHFALl9VUobGggaM8oW
	dxuAzayw+ThLI09PeBgQIxD8vx0wPAAjvODis+ZJ2fRoKSeAL1msnWvdRVO6PDrHBhHv
	GhwFBuYvaGROYTcoQXkBT8RL57xlv6Dd89/KNNSa2xDGpIc1fdoy5XjXebw+gVWO4clz
	Q2g3BHdd9ysg/xf5VEW2cziDO6hTfczwBe4FxoqaEU+5CXQCO3VHfM7qz7KaZsi40Mix
	BJD1KK+MzV6bsWjaiSebPDq9urYXfR54jCZERHhOWU8yXgrTPbDMbnUw2JNoAim9A4kd
	Ihpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=UAGnVYpjSsRjrFFRA8CjuOzzM1+gZAU76rVR/K6pY3w=;
	b=RktjLtDlS3GXkFve2WgKEl4caraFlptqVQO1932A4kztJe/ukBesTx0sqLV21yUT3I
	UNE7Zty3DyG75+AQKE8VtYL/6AHh7+EcFt2OV9urhUarir0TL/cYbmS6hhLaJTMpj1bp
	EKp/P6MZkxCcghUaNSR/Jz+VKbihAmXpjloGrmt6RAlOUkMM5GkpUZhaU0zHNb5EbuzK
	4XW6ZLJj/SPEZ4YIogbVgolQgwBe0Buu/14c+VKXS12y6paUjOulObs9wvixhq+vf4pP
	+fx5pXV0sqgeqzykNgVx4TYsuUeV2KtnGfkM/y/qlbkM+DNuLWG+ybGvzuWMYVHCeGrm
	+Ytw==
X-Gm-Message-State: AKS2vOy0ci6OH+QsnKdvHs6mrskAaspRqXHcR275yvqdNQozz7nYO945
	zIssSr9QpIQCvGrLuUORxH4DPSoZ+0bW
X-Received: by 10.237.42.129 with SMTP id t1mr54385085qtd.93.1499294415586;
	Wed, 05 Jul 2017 15:40:15 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.31.118 with HTTP; Wed, 5 Jul 2017 15:39:55 -0700 (PDT)
In-Reply-To: <A8809961EB141E4596386C258A901BD70299E8CD31@SATURN.env.local>
References: <A8809961EB141E4596386C258A901BD70299E8CD31@SATURN.env.local>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 5 Jul 2017 23:39:55 +0100
Message-ID: <CAJTo0LaOadfQdP8H1cin-Hd9BMPW_h0-q=XJz4A=Pwpf5+2Qvw@mail.gmail.com>
To: David Freitag <DFreitag@environics.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH] meta: Add support for GTK+-3.0 static libraries
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
X-List-Received-Date: Wed, 05 Jul 2017 22:40:18 -0000
Content-Type: multipart/alternative; boundary="94eb2c05ac1a0e25a9055399afa0"

--94eb2c05ac1a0e25a9055399afa0
Content-Type: text/plain; charset="UTF-8"

>
> +                 --enable-static \
>

GTK+ for many years has explicitly disabled static libraries, which is why
you need to override that here.  That is my first hint that this may not be
right.

+FILES_${PN}-staticdev = " \
> +                        ${libdir}/*.a \
> +                        ${libdir}/gtk-3.0/${LIBV}/immodules/*.a \
> +                        ${libdir}/gtk-3.0/${LIBV}/printbackends/*.a"
> +
>

So PN-staticdev contains the *static library* forms of the *dynamically
loaded at runtime modules* for input methods and printer backends.  These
will never be used, as GTK+ always loads them at runtime using dlopen.


> -    immodules = do_split_packages(d, immodules_root, '^im-(.*)\.so$',
> 'gtk3-immodule-%s', 'GTK input module for %s')
> +    immodules = do_split_packages(d, immodules_root,
> '^im-(.*)\.(?:so|a)$', 'gtk3-immodule-%s', 'GTK input module for %s')
>

But here you're putting the static library forms of the input methods
modules into gtk3-immodule-*.  Whatever one they actually end up in depends
on the order of PACKAGES.


> -    do_split_packages(d, printmodules_root, '^libprintbackend-(.*)\.so$',
> 'gtk3-printbackend-%s', 'GTK printbackend module for %s')
> +    do_split_packages(d, printmodules_root, '^libprintbackend-(.*)\.(?:so|a)$',
> 'gtk3-printbackend-%s', 'GTK printbackend module for %s')
>

Ditto.  What package did you want to put the files in?

Anyway, debating the location of the static libraries is meaningless as
they'll never be used, as they're runtime loadable modules.  In an ideal
world libtool wouldn't make static libraries for modules but it does.

*If* you want to support a static build of GTK+ then there are ways you can
make it sort of work, but this is not it.  Look up
--with-included-immodules, --disable-modules, etc in the GTK+
documentation, and pass those.  You should end up with a static gtk+ which
contains all the input method modules builtin, but as far as I know
printing will still be broken.

Ross

--94eb2c05ac1a0e25a9055399afa0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote"><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #c=
cc solid;padding-left:1ex">+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0--enable-static \<br></blockquote><div><br></div><div>GTK+=
 for many years has explicitly disabled static libraries, which is why you =
need to override that here.=C2=A0 That is my first hint that this may not b=
e right.</div><div><br></div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">+FILES_${PN}-st=
aticdev =3D &quot; \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 ${libdir}/*.a \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 ${libdir}/gtk-3.0/${LIBV}/<wbr>immodules/*.a \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 ${libdir}/gtk-3.0/${LIBV}/<wbr>printbackends/*.a&quot;<br>
+<br></blockquote><div><br></div><div>So PN-staticdev contains the *static =
library* forms of the *dynamically loaded at runtime modules* for input met=
hods and printer backends.=C2=A0 These will never be used, as GTK+ always l=
oads them at runtime using dlopen.</div><div>=C2=A0</div><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex">-=C2=A0 =C2=A0 immodules =3D do_split_packages(d, immodules_r=
oot, &#39;^im-(.*)\.so$&#39;, &#39;gtk3-immodule-%s&#39;, &#39;GTK input mo=
dule for %s&#39;)<br>
+=C2=A0 =C2=A0 immodules =3D do_split_packages(d, immodules_root, &#39;^im-=
(.*)\.(?:so|a)$&#39;, &#39;gtk3-immodule-%s&#39;, &#39;GTK input module for=
 %s&#39;)<br></blockquote><div><br></div><div>But here you&#39;re putting t=
he static library forms of the input methods modules into gtk3-immodule-*.=
=C2=A0 Whatever one they actually end up in depends on the order of PACKAGE=
S.</div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:=
0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">-=C2=A0 =C2=A0 do_s=
plit_packages(d, printmodules_root, &#39;^libprintbackend-(.*)\.so$&#39;, &=
#39;gtk3-printbackend-%s&#39;, &#39;GTK printbackend module for %s&#39;)<br=
>
+=C2=A0 =C2=A0 do_split_packages(d, printmodules_root, &#39;^libprintbacken=
d-(.*)\.(?:so|<wbr>a)$&#39;, &#39;gtk3-printbackend-%s&#39;, &#39;GTK print=
backend module for %s&#39;)<br></blockquote><div><br></div><div>Ditto.=C2=
=A0 What package did you want to put the files in?</div><div><br></div><div=
>Anyway, debating the location of the static libraries is meaningless as th=
ey&#39;ll never be used, as they&#39;re runtime loadable modules.=C2=A0 In =
an ideal world libtool wouldn&#39;t make static libraries for modules but i=
t does.</div><div><br></div><div>*If* you want to support a static build of=
 GTK+ then there are ways you can make it sort of work, but this is not it.=
=C2=A0 Look up --with-included-immodules, --disable-modules, etc in the GTK=
+ documentation, and pass those.=C2=A0 You should end up with a static gtk+=
 which contains all the input method modules builtin, but as far as I know =
printing will still be broken.</div><div><br></div><div>Ross</div></div></d=
iv></div>

--94eb2c05ac1a0e25a9055399afa0--
