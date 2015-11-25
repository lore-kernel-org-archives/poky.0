Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C9457E00B5C; Wed, 25 Nov 2015 14:59:49 -0800 (PST)
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
	*      [74.125.82.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f47.google.com (mail-wm0-f47.google.com [74.125.82.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AA051E0088C
	for <poky@yoctoproject.org>; Wed, 25 Nov 2015 14:59:24 -0800 (PST)
Received: by wmec201 with SMTP id c201so7256810wme.0
	for <poky@yoctoproject.org>; Wed, 25 Nov 2015 14:59:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:date:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=wMUWeJ5OqGXasLWIXidjPR7duGKXb3eZW8NdCO2CvKY=;
	b=NtwXMzh+Cq1G88vJkJiv0DljSO8yaNyNHJYnjCuPUZBhso2UGDmc9pyN/pkw9qaZ2K
	eBgWZuoaJNcOaSJk63LdnhyhUKBJ3bC+aCb5CSQ0F7Mn2uYUGdECyhgOj49SCTcJBjBR
	83cjTMV+DntCEHvdwj+7KigenLoD9BNoEgVP/wP0qMYgO/UlYsN4+3PwBewKg0Qzvxvb
	GcXvpfQ00ivJgwxh4EIRADmje+YDnYCalF791T/ugGiLKEQTenxfKcm1G5Rt74LdJQrk
	aUNsDvaKcwIlcUMmshq+K7A3u2cF03apzDGEzofI53E7aN5HFyEEYfs7VGe1SjbvnZ41
	xDgQ==
X-Received: by 10.28.183.215 with SMTP id h206mr179479wmf.0.1448492363424;
	Wed, 25 Nov 2015 14:59:23 -0800 (PST)
Received: from localhost (ip-86-49-34-37.net.upcbroadband.cz. [86.49.34.37])
	by smtp.gmail.com with ESMTPSA id
	wh10sm25138625wjb.45.2015.11.25.14.59.22
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 25 Nov 2015 14:59:22 -0800 (PST)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Wed, 25 Nov 2015 23:59:57 +0100
To: Tom Hochstein <tom.hochstein@freescale.com>
Message-ID: <20151125225957.GU17303@jama>
References: <1448486636-31751-1-git-send-email-tom.hochstein@freescale.com>
MIME-Version: 1.0
In-Reply-To: <1448486636-31751-1-git-send-email-tom.hochstein@freescale.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: Prabhu Sundararaj <prabhu.sundararaj@freescale.com>, poky@yoctoproject.org
Subject: Re: [PATCH] weston-init: Use weston-launch for XWayland
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
X-List-Received-Date: Wed, 25 Nov 2015 22:59:49 -0000
X-Groupsio-MsgNum: 10173
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="VIFPKPeEU/ajvd6j"
Content-Disposition: inline

--VIFPKPeEU/ajvd6j
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 25, 2015 at 03:23:56PM -0600, Tom Hochstein wrote:
> From: Prabhu Sundararaj <prabhu.sundararaj@freescale.com>
>=20
> When XWayland is configured, Weston must be started using the
> weston-launch utility.

Wrong ML, this belongs to oe-core ML

>=20
> Signed-off-by: Tom Hochstein <tom.hochstein@freescale.com>
> ---
>  meta/recipes-graphics/wayland/weston-init/init | 11 ++++++++++-
>  1 file changed, 10 insertions(+), 1 deletion(-)
>=20
> diff --git a/meta/recipes-graphics/wayland/weston-init/init b/meta/recipe=
s-graphics/wayland/weston-init/init
> index 2e938f4..1d4e577 100644
> --- a/meta/recipes-graphics/wayland/weston-init/init
> +++ b/meta/recipes-graphics/wayland/weston-init/init
> @@ -38,7 +38,16 @@ case "$1" in
>                  chmod 0700 $XDG_RUNTIME_DIR
>          fi
> =20
> -        openvt -s weston -- $OPTARGS
> +        # If weston-launch exists, we're configured for XWayland.
> +        if [ -f /usr/bin/weston-launch ]; then
> +            echo "Starting Weston in XWayland"
> +            export XDG_CONFIG_HOME=3D/etc
> +            openvt -v -- weston-launch -- --log=3D/var/log/weston.log $O=
PTARGS
> +        else
> +            echo "Starting Weston"
> +            openvt -s weston -- --log=3D/var/log/weston.log $OPTARGS
> +            #grep console to look for gal2d-renderer.so. if no failed
> +        fi
>    ;;
> =20
>    stop)
> --=20
> 2.1.4
>=20
> --=20
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--VIFPKPeEU/ajvd6j
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iEYEARECAAYFAlZWPWwACgkQN1Ujt2V2gBxFQwCgrb6rmbQsjKJ9o6pp79i8Md10
42UAmQE55oQ3kRUuhrAdghDsCK5Z+wtH
=vgvH
-----END PGP SIGNATURE-----

--VIFPKPeEU/ajvd6j--
