Return-Path: <peter.kjellerstedt@axis.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 481FFE00A0C; Tue, 26 Feb 2019 06:57:16 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [195.60.68.11 listed in list.dnswl.org]
Received: from bastet.se.axis.com (bastet.se.axis.com [195.60.68.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D6B98E00546
	for <poky@yoctoproject.org>; Tue, 26 Feb 2019 06:57:13 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by bastet.se.axis.com (Postfix) with ESMTP id C838C184D0
	for <poky@yoctoproject.org>; Tue, 26 Feb 2019 15:57:12 +0100 (CET)
X-Axis-User: NO
X-Axis-NonUser: YES
X-Virus-Scanned: Debian amavisd-new at bastet.se.axis.com
Received: from bastet.se.axis.com ([IPv6:::ffff:127.0.0.1])
	by localhost (bastet.se.axis.com [::ffff:127.0.0.1]) (amavisd-new,
	port 10024) with LMTP id vXGmafBP-JR4 for <poky@yoctoproject.org>;
	Tue, 26 Feb 2019 15:57:11 +0100 (CET)
Received: from boulder02.se.axis.com (boulder02.se.axis.com [10.0.8.16])
	by bastet.se.axis.com (Postfix) with ESMTPS id C73011810B
	for <poky@yoctoproject.org>; Tue, 26 Feb 2019 15:57:11 +0100 (CET)
Received: from boulder02.se.axis.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id A84411A07B
	for <poky@yoctoproject.org>; Tue, 26 Feb 2019 15:57:11 +0100 (CET)
Received: from boulder02.se.axis.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 9D21E1A067
	for <poky@yoctoproject.org>; Tue, 26 Feb 2019 15:57:11 +0100 (CET)
Received: from seth.se.axis.com (unknown [10.0.2.172])
	by boulder02.se.axis.com (Postfix) with ESMTP
	for <poky@yoctoproject.org>; Tue, 26 Feb 2019 15:57:11 +0100 (CET)
Received: from XBOX03.axis.com (xbox03.axis.com [10.0.5.17])
	by seth.se.axis.com (Postfix) with ESMTP id 90F8E2109
	for <poky@yoctoproject.org>; Tue, 26 Feb 2019 15:57:11 +0100 (CET)
Received: from XBOX04.axis.com (10.0.5.18) by XBOX03.axis.com (10.0.5.17) with
	Microsoft SMTP Server (TLS) id 15.0.1365.1;
	Tue, 26 Feb 2019 15:57:11 +0100
Received: from XBOX04.axis.com ([fe80::210a:724b:68cb:a917]) by
	XBOX04.axis.com ([fe80::210a:724b:68cb:a917%22]) with mapi id
	15.00.1365.000; Tue, 26 Feb 2019 15:57:11 +0100
From: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Thread-Topic: [poky] [PATCH] local.conf.sample.extended: Use IMAGE_CLASSES to
	inherit extrausers
Thread-Index: AQHUrhFmvIYeNQ2RpES8uAR93ciB3aXyaWBg
Date: Tue, 26 Feb 2019 14:57:11 +0000
Message-ID: <fba406cf22174925bfa81903b3f54cf2@XBOX04.axis.com>
References: <20190117025500.10922-1-pkj@axis.com>
In-Reply-To: <20190117025500.10922-1-pkj@axis.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.0.5.60]
MIME-Version: 1.0
X-TM-AS-GCONF: 00
Subject: Re: [PATCH] local.conf.sample.extended: Use IMAGE_CLASSES to	inherit extrausers
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
X-List-Received-Date: Tue, 26 Feb 2019 14:57:16 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

*ping*

I was going to include a link to patchwork for this patch, but I=20
cannot find it. Actually, I cannot find where meta-poky and patches=20
sent to this mailing list are tracked at all...

//Peter

> -----Original Message-----
> From: poky-bounces@yoctoproject.org <poky-bounces@yoctoproject.org> On Be=
half Of Peter Kjellerstedt
> Sent: den 17 januari 2019 03:55
> To: poky@yoctoproject.org
> Subject: [poky] [PATCH] local.conf.sample.extended: Use IMAGE_CLASSES to =
inherit extrausers
>=20
> Since the extrausers class is only useful for image recipes, it is
> better to suggest adding it via IMAGE_CLASSES instead of INHERIT in the
> example.
>=20
> Also make the example a bit more readable by indenting the variable
> values.
>=20
> Signed-off-by: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
> ---
>  meta-poky/conf/local.conf.sample.extended | 16 ++++++++--------
>  1 file changed, 8 insertions(+), 8 deletions(-)
>=20
> diff --git a/meta-poky/conf/local.conf.sample.extended b/meta-poky/conf/l=
ocal.conf.sample.extended
> index 3ba99f4896..696275b4af 100644
> --- a/meta-poky/conf/local.conf.sample.extended
> +++ b/meta-poky/conf/local.conf.sample.extended
> @@ -290,18 +290,18 @@
>=20
>  # Image level user/group configuration.
>  # Inherit extrausers to make the setting of EXTRA_USERS_PARAMS effective=
.
> -#INHERIT +=3D "extrausers"
> +#IMAGE_CLASSES +=3D "extrausers"
>  # User / group settings
> -# The settings are sperated by the ; character.
> +# The settings are separated by the ; character.
>  # Each setting is actually a command. The supported commands are useradd=
,
>  # groupadd, userdel, groupdel, usermod and groupmod.
>  #EXTRA_USERS_PARAMS =3D "\
> -#useradd -p '' tester; \
> -#groupadd developers; \
> -#userdel nobody; \
> -#groupdel video; \
> -#groupmod -g 1020 developers; \
> -#usermod -s /bin/sh tester; \
> +#    useradd -p '' tester; \
> +#    groupadd developers; \
> +#    userdel nobody; \
> +#    groupdel video; \
> +#    groupmod -g 1020 developers; \
> +#    usermod -s /bin/sh tester; \
>  #"
>=20
>  # Various packages dynamically add users and groups to the system at pac=
kage
> --
> 2.12.0


