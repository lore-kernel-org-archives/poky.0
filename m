Return-Path: <peter.kjellerstedt@axis.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5514EE00CD7; Fri,  4 Mar 2016 09:19:36 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [195.60.68.10 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 394 seconds by postgrey-1.32 at yocto-www;
	Fri, 04 Mar 2016 09:19:34 PST
Received: from bes.se.axis.com (bes.se.axis.com [195.60.68.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B1430E00B70
	for <poky@yoctoproject.org>; Fri,  4 Mar 2016 09:19:34 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by bes.se.axis.com (Postfix) with ESMTP id B48442E256;
	Fri,  4 Mar 2016 18:12:57 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at bes.se.axis.com
Received: from bes.se.axis.com ([IPv6:::ffff:127.0.0.1])
	by localhost (bes.se.axis.com [::ffff:127.0.0.1]) (amavisd-new,
	port 10024)
	with LMTP id hO1Gf8O-i47h; Fri,  4 Mar 2016 18:12:56 +0100 (CET)
Received: from boulder.se.axis.com (boulder.se.axis.com [10.0.2.104])
	by bes.se.axis.com (Postfix) with ESMTP id B97542E1E9;
	Fri,  4 Mar 2016 18:12:56 +0100 (CET)
Received: from boulder.se.axis.com (localhost [127.0.0.1])
	by postfix.imss71 (Postfix) with ESMTP id 756AC1541;
	Fri,  4 Mar 2016 18:12:56 +0100 (CET)
Received: from thoth.se.axis.com (thoth.se.axis.com [10.0.2.173])
	by boulder.se.axis.com (Postfix) with ESMTP id 67A4C153E;
	Fri,  4 Mar 2016 18:12:56 +0100 (CET)
Received: from XBOX03.axis.com (xbox03.axis.com [10.0.5.17])
	by thoth.se.axis.com (Postfix) with ESMTP id 64300FB5;
	Fri,  4 Mar 2016 18:12:56 +0100 (CET)
Received: from XBOX02.axis.com (10.0.5.16) by XBOX03.axis.com (10.0.5.17) with
	Microsoft SMTP Server (TLS) id 15.0.1156.6;
	Fri, 4 Mar 2016 18:12:56 +0100
Received: from XBOX02.axis.com ([fe80::50c3:4d2f:4507:7776]) by
	XBOX02.axis.com ([fe80::50c3:4d2f:4507:7776%22]) with mapi id
	15.00.1156.000; Fri, 4 Mar 2016 18:12:56 +0100
From: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Thread-Topic: [poky] [PATCH 1/2] bblayers.conf.sample: remove
	BBLAYERS_NON_REMOVABLE
Thread-Index: AdF2OM565GFGJyKMSS6Nd+hIxcFPlA==
Date: Fri, 4 Mar 2016 17:12:56 +0000
Message-ID: <89742a7bb9484573a083036535818460@XBOX02.axis.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.0.5.55]
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 1/2] bblayers.conf.sample: remove BBLAYERS_NON_REMOVABLE
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
X-List-Received-Date: Fri, 04 Mar 2016 17:19:36 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> -----Original Message-----
> From: poky-bounces@yoctoproject.org [mailto:poky-
> bounces@yoctoproject.org] On Behalf Of Paul Eggleton
> Sent: den 4 mars 2016 04:09
> To: poky@yoctoproject.org
> Subject: [poky] [PATCH 1/2] bblayers.conf.sample: remove
> BBLAYERS_NON_REMOVABLE
>=20
> Hob was the only thing paying attention to this, and now Hob itself has
> been removed we can remove this as well.
>=20
> Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
> ---
>  meta-poky/conf/bblayers.conf.sample | 4 ----
>  1 file changed, 4 deletions(-)
>=20
> diff --git a/meta-poky/conf/bblayers.conf.sample b/meta-
> poky/conf/bblayers.conf.sample
> index b948df2..a371994 100644
> --- a/meta-poky/conf/bblayers.conf.sample
> +++ b/meta-poky/conf/bblayers.conf.sample
> @@ -10,7 +10,3 @@ BBLAYERS ?=3D " \
>    ##OEROOT##/meta-poky \
>    ##OEROOT##/meta-yocto-bsp \
>    "
> -BBLAYERS_NON_REMOVABLE ?=3D " \
> -  ##OEROOT##/meta \
> -  ##OEROOT##/meta-poky \
> -  "
> --
> 2.5.0

You probably want to remove the references to BBLAYERS_NON_REMOVABLE=20
in meta/conf/documentation.conf, documentation/ and=20
meta-poky/conf/bblayers.conf.sample as well...

//Peter


