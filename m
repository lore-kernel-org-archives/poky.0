Return-Path: <koen@dominion.thruhere.net>
Received: from mail-wy0-f176.google.com (mail-wy0-f176.google.com
	[74.125.82.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2EAF64C80039
	for <poky@yoctoproject.org>; Fri, 14 Jan 2011 15:00:27 -0600 (CST)
Received: by wye20 with SMTP id 20so3310216wye.35
	for <poky@yoctoproject.org>; Fri, 14 Jan 2011 13:00:16 -0800 (PST)
Received: by 10.227.141.130 with SMTP id m2mr1197668wbu.54.1295038440660;
	Fri, 14 Jan 2011 12:54:00 -0800 (PST)
Received: from [172.20.1.5] (ip545070eb.adsl-surfen.hetnet.nl [84.80.112.235])
	by mx.google.com with ESMTPS id
	q18sm1212232wbe.11.2011.01.14.12.53.57
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Fri, 14 Jan 2011 12:53:57 -0800 (PST)
Mime-Version: 1.0 (Apple Message framework v1082)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <1294949441-22468-1-git-send-email-koen@dominion.thruhere.net>
Date: Fri, 14 Jan 2011 21:53:56 +0100
Message-Id: <1D19F98C-135A-48F4-B0A0-02CB49EC1B89@dominion.thruhere.net>
References: <1294949441-22468-1-git-send-email-koen@dominion.thruhere.net>
To: poky@yoctoproject.org
X-Mailer: Apple Mail (2.1082)
Subject: Re: [PATCH] distutils-base bbclass: fix RDEPENDS assignment to only apply to target ${PN}
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
X-List-Received-Date: Fri, 14 Jan 2011 21:00:28 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

disregard this one, I'll send a better one over the weekend

Op 13 jan 2011, om 21:10 heeft Koen Kooi het volgende geschreven:

> When using BBCLASSEXTEND =3D "native" the recipe gets a spurious =
dependency on python-core-native, which doesn't exist
>=20
> Signed-off-by: Koen Kooi <koen@dominion.thruhere.net>
> ---
> meta/classes/distutils-base.bbclass |    2 +-
> 1 files changed, 1 insertions(+), 1 deletions(-)
>=20
> diff --git a/meta/classes/distutils-base.bbclass =
b/meta/classes/distutils-base.bbclass
> index 2e151de..04c117b 100644
> --- a/meta/classes/distutils-base.bbclass
> +++ b/meta/classes/distutils-base.bbclass
> @@ -1,5 +1,5 @@
> DEPENDS  +=3D "${@["python-native python", =
""][(bb.data.getVar('PACKAGES', d, 1) =3D=3D '')]}"
> -RDEPENDS +=3D "python-core"
> +RDEPENDS_${PN} +=3D "${@["python-core", =
""][(bb.data.getVar('PACKAGES', d, 1) =3D=3D '')]}"
>=20
> inherit distutils-common-base
>=20
> --=20
> 1.6.6.1
>=20


