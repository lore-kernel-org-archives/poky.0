Return-Path: <peter.kjellerstedt@axis.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 20DF5E00BE0; Wed, 25 Jan 2017 00:44:03 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [195.60.68.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 519 seconds by postgrey-1.32 at yocto-www;
	Wed, 25 Jan 2017 00:44:01 PST
Received: from bastet.se.axis.com (bastet.se.axis.com [195.60.68.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7C029E0093F
	for <poky@yoctoproject.org>; Wed, 25 Jan 2017 00:44:01 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by bastet.se.axis.com (Postfix) with ESMTP id 62DEA1830E;
	Wed, 25 Jan 2017 09:35:20 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at bastet.se.axis.com
Received: from bastet.se.axis.com ([IPv6:::ffff:127.0.0.1])
	by localhost (bastet.se.axis.com [::ffff:127.0.0.1]) (amavisd-new,
	port 10024)
	with LMTP id PmDttk8dIm8V; Wed, 25 Jan 2017 09:35:19 +0100 (CET)
Received: from boulder03.se.axis.com (boulder03.se.axis.com [10.0.8.17])
	by bastet.se.axis.com (Postfix) with ESMTPS id 498C21827C;
	Wed, 25 Jan 2017 09:35:19 +0100 (CET)
Received: from boulder03.se.axis.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id E2A161E07D;
	Wed, 25 Jan 2017 09:35:18 +0100 (CET)
Received: from boulder03.se.axis.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id D6C3C1E07B;
	Wed, 25 Jan 2017 09:35:18 +0100 (CET)
Received: from thoth.se.axis.com (unknown [10.0.2.173])
	by boulder03.se.axis.com (Postfix) with ESMTP;
	Wed, 25 Jan 2017 09:35:18 +0100 (CET)
Received: from XBOX04.axis.com (xbox04.axis.com [10.0.5.18])
	by thoth.se.axis.com (Postfix) with ESMTP id CAE138A5;
	Wed, 25 Jan 2017 09:35:18 +0100 (CET)
Received: from xbox11.axis.com (10.0.5.25) by XBOX04.axis.com (10.0.5.18) with
	Microsoft SMTP Server (TLS) id 15.0.1210.3;
	Wed, 25 Jan 2017 09:35:18 +0100
Received: from XBOX02.axis.com (10.0.5.16) by xbox11.axis.com (10.0.5.25) with
	Microsoft SMTP Server (TLS) id 15.0.1210.3;
	Wed, 25 Jan 2017 09:35:18 +0100
Received: from XBOX02.axis.com ([fe80::50c3:4d2f:4507:7776]) by
	XBOX02.axis.com ([fe80::50c3:4d2f:4507:7776%21]) with mapi id
	15.00.1210.000; Wed, 25 Jan 2017 09:35:18 +0100
From: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
To: Joshua Lock <joshua.g.lock@intel.com>, "poky@yoctoproject.org"
	<poky@yoctoproject.org>
Thread-Topic: [poky] [PATCH] poky.conf: prune SANITY_TESTED_DISTROS
Thread-Index: AQHSdkVtNq8NPVUi70+Zp87Py8WojqFI3thQ
Date: Wed, 25 Jan 2017 08:35:18 +0000
Message-ID: <85821eaf2005468ea3bedb6931cd4e2d@XBOX02.axis.com>
References: <20170124130413.24928-1-joshua.g.lock@intel.com>
In-Reply-To: <20170124130413.24928-1-joshua.g.lock@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.0.5.60]
MIME-Version: 1.0
X-TM-AS-GCONF: 00
Subject: Re: [PATCH] poky.conf: prune SANITY_TESTED_DISTROS
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
X-List-Received-Date: Wed, 25 Jan 2017 08:44:03 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> -----Original Message-----
> From: poky-bounces@yoctoproject.org [mailto:poky-
> bounces@yoctoproject.org] On Behalf Of Joshua Lock
> Sent: den 24 januari 2017 14:04
> To: poky@yoctoproject.org
> Subject: [poky] [PATCH] poky.conf: prune SANITY_TESTED_DISTROS
>=20
> Remove several old/untested distros from the list:
> * poky-1.8 and poky-2.0 are no longer supported releases
> * ubuntu-14.04 is an LTS but we plan to remove it from the
>   project's autobuilder cluster as the kernel is old and
>   it doesn't use systemd -- therefore this will no longer
>   be tested.
> * ubuntu-14.10 and ubuntu-15.10 are no longer supported
> * fedora-23 and fedora-24 are EOL

That should be:

* fedora-22 and fedora-23 are EOL

> * opensuse-13.2 is discontinued
>=20
> Add opensuse-42.2, it's the openSUSE version we run on the Yocto
> Project autobuilder cluster.
>=20
> Signed-off-by: Joshua Lock <joshua.g.lock@intel.com>
> ---
>  meta-poky/conf/distro/poky.conf | 9 +--------
>  1 file changed, 1 insertion(+), 8 deletions(-)
>=20
> diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky=
.conf
> index 8fa3914..94f2577 100644
> --- a/meta-poky/conf/distro/poky.conf
> +++ b/meta-poky/conf/distro/poky.conf
> @@ -70,24 +70,17 @@ https://.*/.*    http://downloads.yoctoproject.org/mi=
rror/sources/ \n"
>  CONNECTIVITY_CHECK_URIS ?=3D "https://www.example.com/"
>=20
>  SANITY_TESTED_DISTROS ?=3D " \
> -            poky-1.8 \n \
> -            poky-2.0 \n \
>              poky-2.1 \n \
>              poky-2.2 \n \
> -            ubuntu-14.04 \n \
> -            ubuntu-14.10 \n \
>              ubuntu-15.04 \n \
> -            ubuntu-15.10 \n \
>              ubuntu-16.04 \n \
>              ubuntu-16.10 \n \
> -            fedora-22 \n \
> -            fedora-23 \n \
>              fedora-24 \n \
>              fedora-25 \n \
>              centos-7 \n \
>              debian-8 \n \
> -            opensuse-13.2 \n \
>              opensuse-42.1 \n \
> +            opensuse-42.2 \n \
>              "
>  #
>  # OELAYOUT_ABI allows us to notify users when the format of TMPDIR chang=
es in
> --
> 2.9.3

//Peter


