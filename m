Return-Path: <krzysztof.zawadzki@nokia.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9F74BE00833; Tue,  8 Mar 2016 11:56:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [93.183.12.31 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from demumfd002.nsn-inter.net (demumfd002.nsn-inter.net
	[93.183.12.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4F352E00720
	for <poky@yoctoproject.org>; Tue,  8 Mar 2016 11:56:16 -0800 (PST)
Received: from muimrel002.emea.nsn-intra.net ([10.159.32.133])
	by demumfd002.nsn-inter.net (8.15.2/8.15.2) with ESMTPS id
	u28JuE54019875
	(version=TLSv1 cipher=DHE-RSA-AES256-SHA bits=256 verify=OK);
	Tue, 8 Mar 2016 19:56:14 GMT
Received: from DEMUHTC002.nsn-intra.net ([10.159.42.33])
	by muimrel002.emea.nsn-intra.net (8.14.3/8.14.3) with ESMTP id
	u28JuEQb020584
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=FAIL);
	Tue, 8 Mar 2016 19:56:14 GMT
Received: from DEMUHTC006.nsn-intra.net (10.159.42.37) by
	DEMUHTC002.nsn-intra.net (10.159.42.33) with Microsoft SMTP Server
	(TLS) id 14.3.279.2; Tue, 8 Mar 2016 20:56:13 +0100
Received: from DEMUMBX003.nsn-intra.net ([169.254.2.99]) by
	DEMUHTC006.nsn-intra.net ([10.159.42.37]) with mapi id 14.03.0279.002;
	Tue, 8 Mar 2016 20:56:13 +0100
From: "Zawadzki, Krzysztof (Nokia - PL/Wroclaw)" <krzysztof.zawadzki@nokia.com>
To: EXT Martin Jansa <martin.jansa@gmail.com>
Thread-Topic: [poky] [PATCH V2] meta: toolchain-shar-relocate.sh: Fix for
	extracting SDK in
Thread-Index: AdF5VhV3hdXaBDaQSJaZRrJA0rjGEQABIjQAAAZsudA=
Date: Tue, 8 Mar 2016 19:56:12 +0000
Message-ID: <4655585E9D8F3143B62277AB38CCEC0C2FFEB16D@DEMUMBX003.nsn-intra.net>
References: <4655585E9D8F3143B62277AB38CCEC0C2FFEB0AB@DEMUMBX003.nsn-intra.net>
	<20160308175027.GD2551@jama>
In-Reply-To: <20160308175027.GD2551@jama>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.159.42.107]
MIME-Version: 1.0
X-purgate-type: clean
X-purgate-Ad: Categorized by eleven eXpurgate (R) http://www.eleven.de
X-purgate: clean
X-purgate: This mail is considered clean (visit http://www.eleven.de for
	further information)
X-purgate-size: 2032
X-purgate-ID: 151667::1457466974-000079EB-9E939651/0/0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH V2] meta: toolchain-shar-relocate.sh: Fix for extracting SDK in
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
X-List-Received-Date: Tue, 08 Mar 2016 19:56:21 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Yes :/ my bad. Such simple correction, 3 attempts

Best regards,
Krzysztof Zawadzki


-----Original Message-----
From: EXT Martin Jansa [mailto:martin.jansa@gmail.com]=20
Sent: Tuesday, March 08, 2016 6:50 PM
To: Zawadzki, Krzysztof (Nokia - PL/Wroclaw) <krzysztof.zawadzki@nokia.com>
Cc: poky@yoctoproject.org
Subject: Re: [poky] [PATCH V2] meta: toolchain-shar-relocate.sh: Fix for ex=
tracting SDK in

On Tue, Mar 08, 2016 at 04:23:23PM +0000, Zawadzki, Krzysztof (Nokia - PL/W=
roclaw) wrote:
> If SDK will be extracted in the same folder as sdk shar script.
>  The shar_relocate will substitute SDK.sh script SDKPATH  with extract de=
stination path.
>  After that operation no one will be able use this sdk script as paths in=
 it will be different.
>  To fix this we need to filter out sdk script and relocate_sdk scripts fr=
om  SDKPATH substitution

The subject line seems to be missing something.

> Signed-off-by: Krzysztof Zawadzki <krzysztof.zawadzki@nokia.com>
>=20
>=20
> diff --git a/meta/files/toolchain-shar-relocate.sh b/meta/files/toolchain=
-shar-relocate.sh
> index 4f34fb4..d4bcf0e 100644
> --- a/meta/files/toolchain-shar-relocate.sh
> +++ b/meta/files/toolchain-shar-relocate.sh
> @@ -47,7 +47,7 @@ for replace in "$target_sdk_dir -maxdepth 1" "$native_s=
ysroot"; do
>  	$SUDO_EXEC find $replace -type f
>  done | xargs -n100 file | grep ":.*\(ASCII\|script\|source\).*text" | \
>      awk -F':' '{printf "\"%s\"\n", $1}' | \
> -    grep -v "$target_sdk_dir/environment-setup-*" | \
> +    grep -Ev "$target_sdk_dir/(environment-setup-*|relocate_sdk*|${0##*/=
})" | \
>      xargs -n100 $SUDO_EXEC sed -i \
>          -e "s:$DEFAULT_INSTALL_DIR:$target_sdk_dir:g" \
>          -e "s:^#! */usr/bin/perl.*:#! /usr/bin/env perl:g" \
>=20
>=20
> --=20
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

