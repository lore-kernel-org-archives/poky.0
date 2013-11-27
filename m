Return-Path: <peter.kjellerstedt@axis.com>
Received: from ra.se.axis.com (ra.se.axis.com [195.60.68.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D492EE00787
	for <poky@yoctoproject.org>; Wed, 27 Nov 2013 04:33:06 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by ra.se.axis.com (Postfix) with ESMTP id C4B113C26FE;
	Wed, 27 Nov 2013 13:33:02 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at ra.se.axis.com
Received: from ra.se.axis.com ([127.0.0.1])
	by localhost (ra.se.axis.com [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id Jp4-eEGCRNA1; Wed, 27 Nov 2013 13:33:02 +0100 (CET)
Received: from boulder.se.axis.com (boulder.se.axis.com [10.0.2.104])
	by ra.se.axis.com (Postfix) with ESMTP id E6B033C277C;
	Wed, 27 Nov 2013 13:33:00 +0100 (CET)
Received: from boulder.se.axis.com (localhost [127.0.0.1])
	by postfix.imss71 (Postfix) with ESMTP id 91A0395F;
	Wed, 27 Nov 2013 13:33:00 +0100 (CET)
Received: from thoth.se.axis.com (thoth.se.axis.com [10.0.2.173])
	by boulder.se.axis.com (Postfix) with ESMTP id 83FBE95E;
	Wed, 27 Nov 2013 13:33:00 +0100 (CET)
Received: from xmail3.se.axis.com (xmail3.se.axis.com [10.0.5.75])
	by thoth.se.axis.com (Postfix) with ESMTP id 82BE53404E;
	Wed, 27 Nov 2013 13:33:00 +0100 (CET)
Received: from xmail3.se.axis.com ([10.0.5.75]) by xmail3.se.axis.com
	([10.0.5.75]) with mapi; Wed, 27 Nov 2013 13:33:00 +0100
From: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
To: Yi Zhao <yi.zhao@windriver.com>, "poky@yoctoproject.org"
	<poky@yoctoproject.org>
Date: Wed, 27 Nov 2013 13:32:59 +0100
Thread-Topic: [poky] [PATCH] local.conf.sample: Fix typo
Thread-Index: Ac7rOQsoaxru1snjSm29W7hz6rYQLAAM6DfQ
Message-ID: <A612847CFE53224C91B23E3A5B48BAC7A4A6238B2D@xmail3.se.axis.com>
References: <1385533303-2125-1-git-send-email-yi.zhao@windriver.com>
In-Reply-To: <1385533303-2125-1-git-send-email-yi.zhao@windriver.com>
Accept-Language: en-US, sv-SE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US, sv-SE
MIME-Version: 1.0
Subject: Re: [PATCH] local.conf.sample: Fix typo
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
X-List-Received-Date: Wed, 27 Nov 2013 12:33:15 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> -----Original Message-----
> From: poky-bounces@yoctoproject.org [mailto:poky-
> bounces@yoctoproject.org] On Behalf Of Yi Zhao
> Sent: den 27 november 2013 07:22
> To: poky@yoctoproject.org
> Subject: [poky] [PATCH] local.conf.sample: Fix typo
>=20
> Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
> ---
>  meta-yocto/conf/local.conf.sample |    2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/meta-yocto/conf/local.conf.sample b/meta-
> yocto/conf/local.conf.sample
> index 31e7605..49e64fb 100644
> --- a/meta-yocto/conf/local.conf.sample
> +++ b/meta-yocto/conf/local.conf.sample
> @@ -126,7 +126,7 @@ PACKAGE_CLASSES ?=3D "package_rpm"
>  #
>  # This variable specified the architecture to build SDK/ADT items for an=
d means
                   ^^^^^^^^^
While at it, shouldn't that be "specifies"?

>  # you can build the SDK packages for architectures other than the machin=
e you are
> -# running the build on (i.e. building i686 packages on an x86_64 host._
> +# running the build on (i.e. building i686 packages on an x86_64 host.)
>  # Supported values are i686 and x86_64
>  #SDKMACHINE ?=3D "i686"
>=20
> --
> 1.7.9.5
>=20
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

//Peter


