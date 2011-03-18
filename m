Return-Path: <cahoshing@gmail.com>
Received: from mail-gw0-f48.google.com (mail-gw0-f48.google.com [74.125.83.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 32E9D4C805A8
	for <poky@yoctoproject.org>; Fri, 18 Mar 2011 04:52:12 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by gwj22 with SMTP id 22so1951770gwj.35
	for <poky@yoctoproject.org>; Fri, 18 Mar 2011 02:52:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:date:message-id:subject:from:to
	:content-type; bh=nCMkBuiP+GWzVkeNhTuNj6e/lfNnyKpwVZCO7gr82B4=;
	b=nKbpeH8sDs11wV/osTVLE42LcLTZUwIev9Vy1S7/1hE8UbTrMk+393RXtgTdASdSg2
	LHaOaqs0IhlWWfTtpN1RxT3UTQQO0ilNU5iEbyimj/0s8lHdy+6fVufvL6Eu1Vb6m3yt
	ScXBlkZ/QhnNsOO5JfNLJzgtorAGxs0WrQf+A=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	b=nPGXycIlXjkOoUfYVy6XJJ9Dx1aQOhZIaLXVeGF1dtiLbo54BRszgZobNyZjPzy/k0
	Yv4jHdi32QTQcUF73KzFfICelgG2v1UjWkOdXux++mY1mL6rR/+bY+R6hvFSpJOHBXsV
	0XhbxOPkhIhY1RwbLsM5wRyC6lSkEECuJWX/w=
MIME-Version: 1.0
Received: by 10.147.30.23 with SMTP id h23mr917773yaj.23.1300441931546; Fri,
	18 Mar 2011 02:52:11 -0700 (PDT)
Received: by 10.147.83.16 with HTTP; Fri, 18 Mar 2011 02:52:11 -0700 (PDT)
Date: Fri, 18 Mar 2011 15:22:11 +0530
Message-ID: <AANLkTi=OwKosG74DEQzrT_QBQ16Mc0FWB88xa95YoLnm@mail.gmail.com>
From: chinmaya hoshing <cahoshing@gmail.com>
To: poky@yoctoproject.org
Subject: Missing libssl.so and libXext.co file while pulling xserver-xf86-dri-lite into poky
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 18 Mar 2011 09:52:12 -0000
Content-Type: multipart/alternative; boundary=000e0cd39dde618117049ebebb90

--000e0cd39dde618117049ebebb90
Content-Type: text/plain; charset=ISO-8859-1

Hi,

this is how openssl and  libxext are included in RDEPENDS in
xserver-xf86-dri-lite.bb file  something as below

------>>
require xserver-xf86-common.inc

PROTO_DEPS = "randrproto renderproto fixesproto damageproto xextproto xproto
xf86dgaproto xf86miscproto xf86rushproto xf86vidmodeproto xf86bigfontproto
compositeproto recordproto resourceproto videoproto scrnsaverproto evieext
trapproto xineramaproto fontsproto kbproto inputproto bigreqsproto
xcmiscproto glproto"

LIB_DEPS = "pixman virtual/libgl libxfont xtrans libxau libxext libxdmcp
libdrm libxkbfile libpciaccess openssl"

DEPENDS = "${PROTO_DEPS} ${LIB_DEPS}"

*RDEPENDS_${PN} += "xserver-xf86-config libxext openssl"*

I want to compile these libraries openssl and libxext at run time(RDEPENDS)
 but after building poky and getting the rootfs image the libssl.so and
libxext.so file are missing in usr/lib

can i get to know it why???


With Regards
Chinmaya

--000e0cd39dde618117049ebebb90
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>this is how openssl and =A0libxext =
are included in RDEPENDS in <a href=3D"http://xserver-xf86-dri-lite.bb">xse=
rver-xf86-dri-lite.bb</a> file =A0something as below</div><div><br><div>---=
---&gt;&gt;</div>
<div>require xserver-xf86-common.inc</div><div><div><br></div><div>PROTO_DE=
PS =3D &quot;randrproto renderproto fixesproto damageproto xextproto xproto=
 xf86dgaproto xf86miscproto xf86rushproto xf86vidmodeproto xf86bigfontproto=
 compositeproto recordproto resourceproto videoproto scrnsaverproto evieext=
 trapproto xineramaproto fontsproto kbproto inputproto bigreqsproto xcmiscp=
roto glproto&quot;</div>
<div><br></div><div>LIB_DEPS =3D &quot;pixman virtual/libgl libxfont xtrans=
 libxau libxext libxdmcp libdrm libxkbfile libpciaccess openssl&quot;</div>=
<div><br></div><div>DEPENDS =3D &quot;${PROTO_DEPS} ${LIB_DEPS}&quot;</div>
<div><br></div><div><b>RDEPENDS_${PN} +=3D &quot;xserver-xf86-config libxex=
t openssl&quot;</b></div></div><div><br></div><div>I want to compile these =
libraries openssl and libxext at run time(RDEPENDS) =A0but after building p=
oky and getting the rootfs image the libssl.so and libxext.so file are miss=
ing in usr/lib</div>
<div><br></div><div>can i get to know it why???</div><div><br></div></div><=
div><br></div><div>With Regards</div><div>Chinmaya</div></div>

--000e0cd39dde618117049ebebb90--
