Return-Path: <rstreif@linuxfoundation.org>
Received: from mail-ee0-f51.google.com (mail-ee0-f51.google.com [74.125.83.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 23BB2E016A7
	for <poky@yoctoproject.org>; Tue,  8 Oct 2013 18:59:36 -0700 (PDT)
Received: by mail-ee0-f51.google.com with SMTP id c1so52839eek.38
	for <poky@yoctoproject.org>; Tue, 08 Oct 2013 18:59:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=r03NvT4Vas+rhPz5jOQSxdKaGjuaNEGqhXaEWGIyq0Y=;
	b=BCg1BHDqyysQkUwQvEXTNOi3BkPvMJTz8pQ30M3Yv3VPE+cZjAI+3QvLjkHQcPFTNF
	mVY7ZXFFzUHfLRU9wQUlYvpyFid3M9Nke79XFoc8pdBNbjVvd1Ms2qb8lTnzD02Mxksd
	AQc3u4b+aWndLsdLwRS/SNCq/Tf8h06BcJL6U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=r03NvT4Vas+rhPz5jOQSxdKaGjuaNEGqhXaEWGIyq0Y=;
	b=jRDRbdCzcxGHFRnp0SLgT8nHo0Wf+DwYxoxRhmjKCgi/r7WnoFKFwLB6hXrqJHmkJ5
	ALXJ8zLCPkmGJOWHWcDDX1zNydHdJhhTwG2jyrf4iH7Y8qULXLfKgJ7kNGSa2+YRqhuk
	CgXMGmPeBCSA6srtjgrsKT/UwxoO4G67rEXcs2B5b2af3ar5UJXsJQbUIdJNT5zyE7yG
	byMqunmNRu4jeuZ7DpLq/ox2Rz5hnzAALu0g9FvPiIayE7y27YtJyZU0iVvgZSw9m8uh
	rBcmdiF8MTUMQOojR+qASZteuHm0ZNLlYOTlC5TcuewiKEf96aWWhzlLWN2Qoa8E0kAx
	nVdw==
X-Gm-Message-State: ALoCoQms24Z4MAIvf7IbGQ/Bls7jFr0ipxgL15gkSVtKu/Src2tb12jgBcWLpLM1lEjJ+WPxcfLH
MIME-Version: 1.0
X-Received: by 10.14.8.72 with SMTP id 48mr7205225eeq.25.1381283974999; Tue,
	08 Oct 2013 18:59:34 -0700 (PDT)
Received: by 10.223.131.3 with HTTP; Tue, 8 Oct 2013 18:59:34 -0700 (PDT)
In-Reply-To: <7BDD69127112414F90CF3FED4711BF150D15A47BC5@IAD2MBX05.mex02.mlsrvr.com>
References: <7BDD69127112414F90CF3FED4711BF150D15A47B39@IAD2MBX05.mex02.mlsrvr.com>
	<CA+gsK-qiBVcDiin3q0fSbGJRYScr4XRnv4BX7X9Nc2JyhuAN9A@mail.gmail.com>
	<7BDD69127112414F90CF3FED4711BF150D15A47BC5@IAD2MBX05.mex02.mlsrvr.com>
Date: Tue, 8 Oct 2013 18:59:34 -0700
Message-ID: <CA+gsK-qX_ByA++AGSZ2kS7+HbT0TS1HpqSn=jN+wh_SamzYg9A@mail.gmail.com>
From: Rudolf Streif <rstreif@linuxfoundation.org>
To: Michael Davis <mdavis@planetaryresources.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: Best supported package manager?
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
X-List-Received-Date: Wed, 09 Oct 2013 01:59:37 -0000
Content-Type: multipart/alternative; boundary=001a11c1b974a9ff1604e8453cd2

--001a11c1b974a9ff1604e8453cd2
Content-Type: text/plain; charset=ISO-8859-1

If you set

PACKAGE_CLASSES ?= "package_rpm"

that means that it will build RPM packages and will use them to build the
root file system.

If you set something like

PACKAGE_CLASSES ?= "package_rpm package_ipk"

it will build RPM and IPK packages and it will use RPM packages to build
the root file system. The first item listed in PACKAGE_CLASSES will be used
to build the root file system. If you want IPK to be used instead to build
your root file system:

PACKAGE_CLASSES ?= "package_ipk package_rpm"

Just setting PACKAGE_CLASSES does not include the package management system
into your root file system. You will have to add it via the
package-management feature:

EXTRA_IMAGE_FEATURES += "package-management"

:rjs

--001a11c1b974a9ff1604e8453cd2
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">If you set=A0<div><br></div><div><div>PACKAGE_CLASSES ?=3D=
 &quot;package_rpm&quot;</div></div><div><br></div><div>that means that it =
will build RPM packages and will use them to build the root file system.</d=
iv>
<div><br></div><div>If you set something like=A0</div><div><br></div><div><=
div>PACKAGE_CLASSES ?=3D &quot;package_rpm package_ipk&quot;</div></div><di=
v><br></div><div>it will build RPM and IPK packages and it will use RPM pac=
kages to build the root file system. The first item listed in PACKAGE_CLASS=
ES will be used to build the root file system. If you want IPK to be used i=
nstead to build your root file system:</div>
<div><br></div><div>PACKAGE_CLASSES ?=3D &quot;package_ipk package_rpm&quot=
;<br></div><div><br></div><div>Just setting PACKAGE_CLASSES does not includ=
e the package management system into your root file system. You will have t=
o add it via the package-management feature:</div>
<div><br></div><div>EXTRA_IMAGE_FEATURES +=3D &quot;package-management&quot=
;</div><div><br></div><div>:rjs</div><div><br></div><div class=3D"gmail_ext=
ra"><br>
</div></div>

--001a11c1b974a9ff1604e8453cd2--
