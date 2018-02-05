Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BD621E00E6A; Mon,  5 Feb 2018 06:25:02 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f43.google.com (mail-it0-f43.google.com
	[209.85.214.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EA2C9E00E51
	for <poky@yoctoproject.org>; Mon,  5 Feb 2018 06:25:01 -0800 (PST)
Received: by mail-it0-f43.google.com with SMTP id 196so16027434iti.5
	for <poky@yoctoproject.org>; Mon, 05 Feb 2018 06:25:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=CxUBagufYUL8hqfcIR5fZJ4BfMapdxMA2+wwvGpP6tc=;
	b=j+Rkm0r8ubqPFh1/Jx8zGkK9zy423u/PheK58awIexuF4cuflz7YccnPnmwIbtKTjZ
	NqVwiAClA+agQKUPYwPcFRgQ4/BwPSzp44CjRR2Gt7E7AOx2uLlzCv7W4YFZCaaKMk8/
	OtHTFccObrlZGRTyP3BaVvhAM9EzQYPXHprV/0qXzGQZYaN/C6SPQwui5J2wxCPVmLw8
	mefiGY6relaaBmMkFOaWA6tP9Hh5uvbZcBE8WSgpLHpLxXDYkxk5NIoCpmSmI20rztxR
	eJM9BNE/n8TgEcWaU7+Rk0jEAUssN85ghwBa4aRf1BO9glGP1oPe7ToIVuPB/1zkspYX
	xSOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=CxUBagufYUL8hqfcIR5fZJ4BfMapdxMA2+wwvGpP6tc=;
	b=sBcY1+BlQ04yOX3NKWjJ0Z95kIj5pMiS/Pz9wO7jCQW99KCX/SjUsq8jDR1BWCwMci
	iP2dtYU0cTQVisU9x1MXlOIlAo9PrVjPhranyrGqEgbxH0CGl2MAvO0RFq6y26UFg/PY
	OtBQTA9mtfNT4DrRViTQSsNWH4oXgP7MRoS+7UK7dyjbjl9SkcBQ3GwGKZOb7kqNnl9P
	LOGrrVBn6t2BKZl2fc5jggkTVXSRpo9bUjGvl9TajKBPShEOwtLUlUjCClI8yjNZpMPF
	GSrRbC11chVul3rmoxjbGxKbHw98ObUgASiNKaPiaMWXHIhNkSD/VGBHwOqgOIIJLsox
	U61A==
X-Gm-Message-State: AKwxytcWOkZ5h692YfLvtMLrewPMBP9lHyPzUEsN6+ZHlfP4hIeUXDQv
	ZWMGLaSqT12WqnLSUnGXo4DYOCiG8jTqfAcQfUFxSg==
X-Google-Smtp-Source: AH8x224Y6/l9ZCe4LWKv3x8xCGlR/k429TCIKAlCKNlPrGQvaY2qQXrek02ePbBSV/sGn2yJzh12a96QoiNgNhF/RXU=
X-Received: by 10.36.0.23 with SMTP id 23mr23852048ita.53.1517840701147; Mon,
	05 Feb 2018 06:25:01 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.17.206 with HTTP; Mon, 5 Feb 2018 06:24:40 -0800 (PST)
In-Reply-To: <98fa3583-b321-2cc6-b95c-d193beb78d15@intel.com>
References: <trinity-20f872c2-19c2-4de6-b977-5b88adae1eb3-1517824511514@3c-app-gmx-bs39>
	<84f1733e-a5cd-b9d6-c75d-cdb8faf38815@intel.com>
	<trinity-92e2db9a-aa15-48ad-b7d5-80b10abb70b2-1517835902286@3c-app-gmx-bs39>
	<98fa3583-b321-2cc6-b95c-d193beb78d15@intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 5 Feb 2018 14:24:40 +0000
Message-ID: <CAJTo0LYxD-x=MHXx9S=iKoEFzp=Wa5HN8CHK+iDq6q6hO30Kog@mail.gmail.com>
To: Anuj Mittal <anuj.mittal@intel.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: libs / so without a link to xxx.so.1
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
X-List-Received-Date: Mon, 05 Feb 2018 14:25:02 -0000
Content-Type: multipart/alternative; boundary="001a11c0122ed1608c056477d3ac"

--001a11c0122ed1608c056477d3ac
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On 5 February 2018 at 14:20, Anuj Mittal <anuj.mittal@intel.com> wrote:

> In general, in addition to looking at the recipe, you can check
> packages-split in recipe $WORKDIR to see what's where. In this case, the
> package you're probably looking for is "curlpp-dev" not libcurlpp-dev:
>
> $ tree packages-split/curlpp-dev/
> packages-split/curlpp-dev/
> =E2=94=94=E2=94=80=E2=94=80 usr
>     =E2=94=94=E2=94=80=E2=94=80 lib
>         =E2=94=94=E2=94=80=E2=94=80 libcurlpp.so -> libcurlpp.so.1
>
> 2 directories, 1 file


Tip of the week which I should check is documented is oe-pkgdata-util:

$ oe-pkgdata-util list-pkg-files -p zlib

$ oe-pkgdata-util list-pkg-files -p zlib
zlib:
/lib/libz.so.1
/lib/libz.so.1.2.11
zlib-dbg:
/lib/.debug/libz.so.1.2.11
        [ truncated ]
zlib-dev:
/usr/include/zconf.h
/usr/include/zlib.h
/usr/lib/libz.so
/usr/lib/pkgconfig/zlib.pc
zlib-doc:
/usr/share/man/man3/zlib.3
zlib-ptest:
/usr/lib/zlib/ptest/Makefile
/usr/lib/zlib/ptest/example
/usr/lib/zlib/ptest/examplesh
/usr/lib/zlib/ptest/minigzip
/usr/lib/zlib/ptest/minigzipsh
/usr/lib/zlib/ptest/run-ptest
zlib-staticdev:
/usr/lib/libz.a

Works any time after the package has been built by reading the pkgdata
database instead of digging around the work tree.

Ross

--001a11c0122ed1608c056477d3ac
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 5 February 2018 at 14:20, Anuj Mittal <span dir=3D"ltr"=
>&lt;<a href=3D"mailto:anuj.mittal@intel.com" target=3D"_blank">anuj.mittal=
@intel.com</a>&gt;</span> wrote:<br><div class=3D"gmail_extra"><div class=
=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left-width:1px;border-left-style:solid;border-left-color:r=
gb(204,204,204);padding-left:1ex">In general, in addition to looking at the=
 recipe, you can check<br>
packages-split in recipe $WORKDIR to see what&#39;s where. In this case, th=
e<br>
package you&#39;re probably looking for is &quot;curlpp-dev&quot; not libcu=
rlpp-dev:<br>
<br>
$ tree packages-split/curlpp-dev/<br>
packages-split/curlpp-dev/<br>
=E2=94=94=E2=94=80=E2=94=80 usr<br>
=C2=A0 =C2=A0 =E2=94=94=E2=94=80=E2=94=80 lib<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =E2=94=94=E2=94=80=E2=94=80 libcurlpp.so -&gt; =
libcurlpp.so.1<br>
<br>
2 directories, 1 file</blockquote><div><br></div><div>Tip of the week which=
 I should check is documented is oe-pkgdata-util:</div><div><br></div><div>=
$ oe-pkgdata-util list-pkg-files -p zlib</div><div><br></div><div><div>$ oe=
-pkgdata-util list-pkg-files -p zlib</div><div>zlib:</div><div><span class=
=3D"gmail-Apple-tab-span" style=3D"white-space:pre">	</span>/lib/libz.so.1<=
/div><div><span class=3D"gmail-Apple-tab-span" style=3D"white-space:pre">	<=
/span>/lib/libz.so.1.2.11</div><div>zlib-dbg:</div><div><span class=3D"gmai=
l-Apple-tab-span" style=3D"white-space:pre">	</span>/lib/.debug/libz.so.1.2=
.11</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 [ truncated ]</div><div>zlib-dev:=
</div><div><span class=3D"gmail-Apple-tab-span" style=3D"white-space:pre">	=
</span>/usr/include/zconf.h</div><div><span class=3D"gmail-Apple-tab-span" =
style=3D"white-space:pre">	</span>/usr/include/zlib.h</div><div><span class=
=3D"gmail-Apple-tab-span" style=3D"white-space:pre">	</span>/usr/lib/libz.s=
o</div><div><span class=3D"gmail-Apple-tab-span" style=3D"white-space:pre">=
	</span>/usr/lib/pkgconfig/zlib.pc</div><div>zlib-doc:</div><div><span clas=
s=3D"gmail-Apple-tab-span" style=3D"white-space:pre">	</span>/usr/share/man=
/man3/zlib.3</div><div>zlib-ptest:</div><div><span class=3D"gmail-Apple-tab=
-span" style=3D"white-space:pre">	</span>/usr/lib/zlib/ptest/Makefile</div>=
<div><span class=3D"gmail-Apple-tab-span" style=3D"white-space:pre">	</span=
>/usr/lib/zlib/ptest/example</div><div><span class=3D"gmail-Apple-tab-span"=
 style=3D"white-space:pre">	</span>/usr/lib/zlib/ptest/examplesh</div><div>=
<span class=3D"gmail-Apple-tab-span" style=3D"white-space:pre">	</span>/usr=
/lib/zlib/ptest/minigzip</div><div><span class=3D"gmail-Apple-tab-span" sty=
le=3D"white-space:pre">	</span>/usr/lib/zlib/ptest/minigzipsh</div><div><sp=
an class=3D"gmail-Apple-tab-span" style=3D"white-space:pre">	</span>/usr/li=
b/zlib/ptest/run-ptest</div><div>zlib-staticdev:</div><div><span class=3D"g=
mail-Apple-tab-span" style=3D"white-space:pre">	</span>/usr/lib/libz.a</div=
></div><div><br></div><div>Works any time after the package has been built =
by reading the pkgdata database instead of digging around the work tree.</d=
iv><div><br></div><div>Ross</div></div></div></div>

--001a11c0122ed1608c056477d3ac--
