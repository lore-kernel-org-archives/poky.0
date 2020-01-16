Received: from mailout4.zoneedit.com (mailout4.zoneedit.com [64.68.198.64])
 by mx.groups.io with SMTP id smtpd.web12.37.1579218187713300428
 for <poky@lists.yoctoproject.org>;
 Thu, 16 Jan 2020 15:43:08 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: denix.org, ip: 64.68.198.64, mailfrom: denis@denix.org)
Received: from localhost (localhost [127.0.0.1])
	by mailout4.zoneedit.com (Postfix) with ESMTP id 0732A40C0A;
	Thu, 16 Jan 2020 23:43:07 +0000 (UTC)
Received: from mailout4.zoneedit.com ([127.0.0.1])
	by localhost (zmo14-pco.easydns.vpn [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id H2cLjtSfZ2OW; Thu, 16 Jan 2020 23:43:06 +0000 (UTC)
Received: from mail.denix.org (pool-100-15-86-127.washdc.fios.verizon.net [100.15.86.127])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mailout4.zoneedit.com (Postfix) with ESMTPSA id DFC6740C01;
	Thu, 16 Jan 2020 23:43:05 +0000 (UTC)
Received: by mail.denix.org (Postfix, from userid 1000)
	id 3635A1743A2; Thu, 16 Jan 2020 18:43:05 -0500 (EST)
Date: Thu, 16 Jan 2020 18:43:05 -0500
From: "Denys Dmytriyenko" <denis@denix.org>
To: Ashish <ashish.emailaddress@gmail.com>
Cc: poky@lists.yoctoproject.org
Subject: Re: [poky] How to handle RDEPENDS for " libgcc_s.so.1, but no providers "
Message-ID: <20200116234305.GV4735@denix.org>
References: <cg2X.1579167426560504666.LrCu@lists.yoctoproject.org>
MIME-Version: 1.0
In-Reply-To: <cg2X.1579167426560504666.LrCu@lists.yoctoproject.org>
User-Agent: Mutt/1.5.20 (2009-06-14)
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 16, 2020 at 01:37:06AM -0800, Ashish wrote:
> Hi All ,
>=20
> 1) I am trying to compile an application " https://github.com/tom-2015/r=
pi-AR1100" ( https://github.com/tom-2015/rpi-AR1100 )
> But i get error like mentioned below for few library.so :
> *ERROR: AR1100-1.0-r0 do_package_qa: QA Issue: /usr/bin/<OUR-CUSTOM-BINA=
RY>=A0 contained in package AR1100 requires libgcc_s.so.1,*

Is this /usr/bin/<OUR-CUSTOM-BINARY> a prebuilt binary, not compiled by OE=
/Yocto?
If so, you are better off inhibiting the "file-rdeps" QA check with INSANE=
_SKIP...


> *but no providers found in RDEPENDS_AR1100? [file-rdeps]*
>=20
> 2) I checked the library and seems to be present in the ROOTFS at /lib/l=
ibgcc_s.so.1.
>=20
> 3) I tried , passing location of lib folder to recipe via CFLAGS_prepend=
 =3D "=3DI ${includedir}/lib" .
> But still the error is observed.
>=20
> 4) I even tried=A0 adding " libgcc " to RDEPENDS=A0 , but the error is s=
till there .
>=20
> Can any please provide an pointer or let me know if i am missing any par=
t here .
>=20
> Thanks
> Ashish

>=20

