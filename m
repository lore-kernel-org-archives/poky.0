Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A3DB4E006AD; Tue,  8 Mar 2016 09:47:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (martin.jansa[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f65.google.com (mail-wm0-f65.google.com [74.125.82.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CFBBBE003DB
	for <poky@yoctoproject.org>; Tue,  8 Mar 2016 09:47:49 -0800 (PST)
Received: by mail-wm0-f65.google.com with SMTP id l68so5510364wml.3
	for <poky@yoctoproject.org>; Tue, 08 Mar 2016 09:47:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:date:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=QNtUQ1S7X5fIzwQxnPcZ9Y+jWpIkcUSbaKBAzT+oyFg=;
	b=c//50NrDN7WIFtJb957rppF1n59rdlK6QbVVbmz69kS+p4IKYjp2sOLTIHghwnyf9T
	baPh/BIdnS+NSVS+5PNB7U0AGTD0TQ3N93RX/ZcAHVl286o4/iAeNZxKJwaHHz6ms+Ov
	BtgUmoT3lBqEGBPFiof+x61QC2ujVLufsj/eesMlxyLtpMz2fuUEu4DpkvNtpGjNxR47
	EMBZox2+lkqz7bI5ZzTeeGezrXBYbK+JRhs1a6TOdN7EDOpAopNPq5uFvA7eZ6ZVENG1
	YYslLcUB9/nQO0xIqIvSD8OMZzAsmTlhKx+Q8n43OtcwUrv5+8d0w7vMDcL9ty/sPjM9
	OzBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:date:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=QNtUQ1S7X5fIzwQxnPcZ9Y+jWpIkcUSbaKBAzT+oyFg=;
	b=htSdxp6SbX3YxOnBdAsv50iQNfwDNM0jINwYP/MHFS59naaTJ07u4KENjd6ukUBw2I
	frAzikh7P0MJDGx4+FUtH+DMSFENE8q9++qhVG87945g3ZK9m+aG75RAEaE4j7KfZojl
	OIYM1Nq27db5ihiI+Mg33f5X/xa/laCcmU7tqNqTG6V5HzYgY71ObkCxtVpxhIBc6UUP
	Os9JDYTUZDBMYP8HeKLeQe80lXmxBMpZt42N25AhFUjo5eOIDuLacciShgXrBAw8SbXT
	aRZNOx/QImTv0Ux0R5mYXHpHVEvBRrCgCDcZP7CkAjzoaCZvKvzLrzMwLcu4h5j/j5FC
	T5jg==
X-Gm-Message-State: AD7BkJJ4ZLtt0zEJEa1Gq0KURZy5hbu1BNmYJ5hWhJPw2xb4LLMFbok1xyVEfWPde50nFA==
X-Received: by 10.194.58.169 with SMTP id s9mr30891659wjq.52.1457459268510;
	Tue, 08 Mar 2016 09:47:48 -0800 (PST)
Received: from localhost (ip-86-49-34-37.net.upcbroadband.cz. [86.49.34.37])
	by smtp.gmail.com with ESMTPSA id
	z127sm19877150wme.5.2016.03.08.09.47.46
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 08 Mar 2016 09:47:47 -0800 (PST)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Tue, 8 Mar 2016 18:50:28 +0100
To: "Zawadzki, Krzysztof (Nokia - PL/Wroclaw)" <krzysztof.zawadzki@nokia.com>
Message-ID: <20160308175027.GD2551@jama>
References: <4655585E9D8F3143B62277AB38CCEC0C2FFEB0AB@DEMUMBX003.nsn-intra.net>
MIME-Version: 1.0
In-Reply-To: <4655585E9D8F3143B62277AB38CCEC0C2FFEB0AB@DEMUMBX003.nsn-intra.net>
User-Agent: Mutt/1.5.24 (2015-08-30)
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
X-List-Received-Date: Tue, 08 Mar 2016 17:47:51 -0000
X-Groupsio-MsgNum: 10341
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="DrWhICOqskFTAXiy"
Content-Disposition: inline

--DrWhICOqskFTAXiy
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

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

--DrWhICOqskFTAXiy
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iEYEARECAAYFAlbfEOMACgkQN1Ujt2V2gBwo9gCgrP621sKBnUZ1b9HnyDsQSZJO
6HUAn1gymqrELBUAymZKceYf7JUUNBAC
=OE/c
-----END PGP SIGNATURE-----

--DrWhICOqskFTAXiy--
