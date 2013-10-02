Return-Path: <peter.kjellerstedt@axis.com>
Received: from anubis.se.axis.com (anubis.se.axis.com [195.60.68.12])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2A304E0164B
	for <poky@yoctoproject.org>; Wed,  2 Oct 2013 00:30:59 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by anubis.se.axis.com (Postfix) with ESMTP id 2324819D04;
	Wed,  2 Oct 2013 09:30:54 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at anubis.se.axis.com
Received: from anubis.se.axis.com ([127.0.0.1])
	by localhost (anubis.se.axis.com [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id MoeCl9mSb2Dc; Wed,  2 Oct 2013 09:30:52 +0200 (CEST)
Received: from boulder.se.axis.com (boulder.se.axis.com [10.0.2.104])
	by anubis.se.axis.com (Postfix) with ESMTP id CFE4419F0F;
	Wed,  2 Oct 2013 09:30:45 +0200 (CEST)
Received: from boulder.se.axis.com (localhost [127.0.0.1])
	by postfix.imss71 (Postfix) with ESMTP id 8237A781;
	Wed,  2 Oct 2013 09:30:45 +0200 (CEST)
Received: from seth.se.axis.com (seth.se.axis.com [10.0.2.172])
	by boulder.se.axis.com (Postfix) with ESMTP id 770F154E;
	Wed,  2 Oct 2013 09:30:45 +0200 (CEST)
Received: from xmail3.se.axis.com (xmail3.se.axis.com [10.0.5.75])
	by seth.se.axis.com (Postfix) with ESMTP id 750E53E06F;
	Wed,  2 Oct 2013 09:30:45 +0200 (CEST)
Received: from xmail3.se.axis.com ([10.0.5.75]) by xmail3.se.axis.com
	([10.0.5.75]) with mapi; Wed, 2 Oct 2013 09:30:45 +0200
From: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
To: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
Date: Wed, 2 Oct 2013 09:30:44 +0200
Thread-Topic: [poky] [PATCH 1/2] distro_alias.inc: Sort entries
Thread-Index: Ac6+3Myktc1mcfqiRnOKcYFy9kj/rAAY449Q
Message-ID: <A612847CFE53224C91B23E3A5B48BAC798CE595509@xmail3.se.axis.com>
References: <cover.1380655684.git.elizabeth.flanagan@intel.com>
	<6ec510fbc3fd23ab9f117a2e44d112f130eb7dfc.1380655684.git.elizabeth.flanagan@intel.com>
In-Reply-To: <6ec510fbc3fd23ab9f117a2e44d112f130eb7dfc.1380655684.git.elizabeth.flanagan@intel.com>
Accept-Language: en-US, sv-SE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US, sv-SE
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 1/2] distro_alias.inc: Sort entries
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
X-List-Received-Date: Wed, 02 Oct 2013 07:31:02 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> -----Original Message-----
> From: poky-bounces@yoctoproject.org [mailto:poky-
> bounces@yoctoproject.org] On Behalf Of Elizabeth Flanagan
> Sent: den 1 oktober 2013 21:31
> To: poky@yoctoproject.org
> Subject: [poky] [PATCH 1/2] distro_alias.inc: Sort entries
>=20
> Entry order is inconsistent. sort -d on entries.
>=20
> Signed-off-by: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
> ---
>  meta-yocto/conf/distro/include/distro_alias.inc |   28 +++++++++++----
> --------
>  1 file changed, 14 insertions(+), 14 deletions(-)
>=20
> diff --git a/meta-yocto/conf/distro/include/distro_alias.inc b/meta-yocto=
/conf/distro/include/distro_alias.inc
> index bd3362a..fd1e47d 100644
> --- a/meta-yocto/conf/distro/include/distro_alias.inc
> +++ b/meta-yocto/conf/distro/include/distro_alias.inc

[cut]

> @@ -75,8 +75,8 @@ DISTRO_PN_ALIAS_pn-damageproto =3D "Meego=3Dxorg-x11-pr=
oto-damageproto"
>  DISTRO_PN_ALIAS_pn-db =3D "Debian=3Ddb5.1 Ubuntu=3Ddb5.1"
>  DISTRO_PN_ALIAS_pn-dbus-wait =3D "OpenedHand"
>  DISTRO_PN_ALIAS_pn-directfb-examples =3D "Debian=3Ddirectfb Fedora=3Ddir=
ectfb"
> -DISTRO_PN_ALIAS_pn-distcc =3D "Debian=3Ddistcc Fedora=3Ddistcc"
>  DISTRO_PN_ALIAS_pn-distcc-config =3D "OpenedHand"
> +DISTRO_PN_ALIAS_pn-distcc =3D "Debian=3Ddistcc Fedora=3Ddistcc"
>  DISTRO_PN_ALIAS_pn-dmxproto =3D "Meego=3Dxorg-x11-proto-dmxproto Ubuntu=
=3Dx11proto-dmx Debian=3Dx11proto-dmx"
>  DISTRO_PN_ALIAS_pn-docbook-dsssl-stylesheets =3D "Fedora=3Ddocbook-style=
-dsssl Ubuntu=3Ddocbook-dsssl"
>  DISTRO_PN_ALIAS_pn-docbook-sgml-dtd-3.1 =3D "Fedora=3Ddocbook-dtds Mandr=
iva=3Ddocbook-dtd31-sgml"

Using sort -d on the data as it is results in somewhat weird=20
results since it is not just sorted on the variable name, but=20
also on the space following it. May I suggest using something=20
like the following instead to do the sorting:

sed -re 's/^([^[:space:]]+)[[:space:]]*=3D[[:space:]]*"/\1 =3D "/g' -e 's/[=
[:space:]]=3D/1111=3D/g' distro_alias.inc | sort -d | sed -e 's/1111=3D/ =
=3D/g' > distro_alias.inc.new

In addition to sorting shorter variables before longer it will=20
also correct inconsistencies in spacing around the equal sign.

//Peter


