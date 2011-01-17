Return-Path: <koen@dominion.thruhere.net>
Received: from mail-wy0-f176.google.com (mail-wy0-f176.google.com
	[74.125.82.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id DFD234C80FA4
	for <poky@yoctoproject.org>; Mon, 17 Jan 2011 10:52:23 -0600 (CST)
Received: by wye20 with SMTP id 20so5468408wye.35
	for <poky@yoctoproject.org>; Mon, 17 Jan 2011 08:52:17 -0800 (PST)
Received: by 10.227.177.10 with SMTP id bg10mr3984833wbb.148.1295283087846;
	Mon, 17 Jan 2011 08:51:27 -0800 (PST)
Received: from [172.20.1.5] (ip545070eb.adsl-surfen.hetnet.nl [84.80.112.235])
	by mx.google.com with ESMTPS id
	q18sm3474148wbe.11.2011.01.17.08.51.27
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Mon, 17 Jan 2011 08:51:27 -0800 (PST)
Mime-Version: 1.0 (Apple Message framework v1082)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <1295279606-19767-4-git-send-email-koen@dominion.thruhere.net>
Date: Mon, 17 Jan 2011 17:51:25 +0100
Message-Id: <D08BBBDB-D305-4A2D-B8FF-8561C8376A69@dominion.thruhere.net>
References: <1295279606-19767-1-git-send-email-koen@dominion.thruhere.net>
	<1295279606-19767-2-git-send-email-koen@dominion.thruhere.net>
	<1295279606-19767-3-git-send-email-koen@dominion.thruhere.net>
	<1295279606-19767-4-git-send-email-koen@dominion.thruhere.net>
To: poky@yoctoproject.org
X-Mailer: Apple Mail (2.1082)
Subject: Re: [PATCH 4/5] setuptools bbclass: import from OE
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
X-List-Received-Date: Mon, 17 Jan 2011 16:52:24 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

After talking to Richard I've squashed this into patch #2

Op 17 jan 2011, om 16:53 heeft Koen Kooi het volgende geschreven:

> Signed-off-by: Koen Kooi <koen@dominion.thruhere.net>
> ---
> meta/classes/setuptools.bbclass |    8 ++++++++
> 1 files changed, 8 insertions(+), 0 deletions(-)
> create mode 100644 meta/classes/setuptools.bbclass
>=20
> diff --git a/meta/classes/setuptools.bbclass =
b/meta/classes/setuptools.bbclass
> new file mode 100644
> index 0000000..ced9509
> --- /dev/null
> +++ b/meta/classes/setuptools.bbclass
> @@ -0,0 +1,8 @@
> +inherit distutils
> +
> +DEPENDS +=3D "python-setuptools-native"
> +
> +DISTUTILS_INSTALL_ARGS =3D "--root=3D${D} \
> +    --single-version-externally-managed \
> +    --prefix=3D${prefix} \
> +    --install-data=3D${datadir}"
> --=20
> 1.6.6.1
>=20


