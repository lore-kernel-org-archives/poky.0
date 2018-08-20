Return-Path: <trini@konsulko.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C76DBE00874; Mon, 20 Aug 2018 05:05:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.216.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f195.google.com (mail-qt0-f195.google.com
	[209.85.216.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5845EE007C9
	for <poky@yoctoproject.org>; Mon, 20 Aug 2018 05:05:12 -0700 (PDT)
Received: by mail-qt0-f195.google.com with SMTP id t5-v6so15829679qtn.3
	for <poky@yoctoproject.org>; Mon, 20 Aug 2018 05:05:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=konsulko.com; s=google;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=XLH5G0U/2RxyaE3wi4m7c2zGJwjF5r2jO4I/6BhwBaE=;
	b=KSJs/qfEWZy6Ddr0Wn5vCWbsAjfP7gZEh2JJwuoIJp87CNLhguk6jaUFbDgkYGaVi1
	MPZumF8t6U5YVswjsWreqGHEjtyamOGtBkvPRgYZQQnA+1eXIaI9bNi/Drh5pKAuCINZ
	OuG7pSCwA7xY07AhjixBCyKb23wjAA7fxkQO4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=XLH5G0U/2RxyaE3wi4m7c2zGJwjF5r2jO4I/6BhwBaE=;
	b=OCVeqmwMaI0R0Gmw/UVd8885XarF11p9v6LwwlAAS5VsajL/IAwdNYUjkqSCo8C6Na
	sID6qoFWSjbwEqVQP7XwydZW1hpFN7jdSz4KP/rP2INzDZzF+U14ufcKO3Vv1dtscNUA
	kErXg3D6S7XScnHVcj369pXQ+BBv1Mp3ngc8brJmtpndv/fvdKCnTjpCqXYxDqbhs4qL
	zf7qJQZ8DiyXTHNW3Anpjf89FukyAzfIYPmWK04Sjm1Tg4AVT+ql+3w3a4rpMVvpM+rn
	s5qTENLZ6a4jUZcj7pJKhAmqSjEW0GJto9IVx26QnKkSrICNSX/8nE6h42/zyfQVjQ2t
	LMWg==
X-Gm-Message-State: APzg51CKrgJvosuRU56UezsdL80mYvOWZd40ScicPDGEfA9SWg3vzq0r
	m8U6gxOlscoV81l1rKT45SLjf6nIYC4=
X-Google-Smtp-Source: ANB0VdbwkXfyIouISfUFhPqrJhXu3DNBWnvY8tv7wTjI7iiiXV9WB2K66XVrq71LSlYn5uctytIgNA==
X-Received: by 2002:a0c:d171:: with SMTP id
	c46-v6mr5453553qvh.142.1534766711670; 
	Mon, 20 Aug 2018 05:05:11 -0700 (PDT)
Received: from bill-the-cat (cpe-65-184-142-68.ec.res.rr.com. [65.184.142.68])
	by smtp.gmail.com with ESMTPSA id
	49-v6sm6259606qtu.0.2018.08.20.05.05.10
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 20 Aug 2018 05:05:10 -0700 (PDT)
Date: Mon, 20 Aug 2018 08:05:08 -0400
From: Tom Rini <trini@konsulko.com>
To: Kevin Hao <kexin.hao@windriver.com>
Message-ID: <20180820120508.GO11769@bill-the-cat>
References: <20180820103831.90832-1-kexin.hao@windriver.com>
MIME-Version: 1.0
In-Reply-To: <20180820103831.90832-1-kexin.hao@windriver.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: poky@yoctoproject.org
Subject: Re: [PATCH] meta-yocto-bsp: beaglebone: Remove the useless parameter in wks file
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
X-List-Received-Date: Mon, 20 Aug 2018 12:05:12 -0000
X-Groupsio-MsgNum: 11372
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="R+Rs1qz93vBJxC1z"
Content-Disposition: inline

--R+Rs1qz93vBJxC1z
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Aug 20, 2018 at 06:38:31PM +0800, Kevin Hao wrote:

> With the commit b713626dda68 ("meta-yocto-bsp: beaglebone: Use the uuid
> for the block device naming in wic image"), the '--ondisk' parameter
> in beaglebone-yocto.wks becomes useless and may cause confusion.
> So drop it.
>=20
> Signed-off-by: Kevin Hao <kexin.hao@windriver.com>

Reviewed-by: Tom Rini <trini@konsulko.com>

--=20
Tom

--R+Rs1qz93vBJxC1z
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBAgAGBQJbeq50AAoJEIf59jXTHXZSLmYP/jEeS1lAKyyn9YGItVpaCGJD
WRvtCs2RHMnISl9E8YineY9yoiNR1vi1kRm97ailq4DJXhP5VuS9HpimFDhuiCbr
vo42aBSZYAGkYlSQXQpDSVkBSNTOXEMVVTD3U3M2GVgMyHIMyBM7QUneHUiDqn7z
gK5q+3/cph3yW1X5FRe9gEQdLBesQAAIXb4n96Iwgbz42n0l97kmgrIGNVFo0VwR
ldb13kyADX6cTMmv9JgLawQB7bOSBOX1eLKA6kWHRHp+KXzg6aplCypL0WzARvMs
h5f6agOKW06zexdfZv6Ec8A91ndDf+zoJ/ox5hf2tvDOBOxQ/skANUDElZnwfXth
yFJtQTyYcTtji94Ad+ttacrshTc3VF/l2nUIONYh+a6t+Nqw0XqgjpXZkBeZitLh
oViim92hugjZEIGsHWOgEkl5UZvJcxHAB/dOU1kXbAXEEwpIMJ7PsbYvdzM2SPLW
0QGCjU9GbMWdx4hGy0DZxntlEpt9rLi3jtdUyRVR/ds52w31BdFkE92zDBJTFkkp
AxeF3DTXd8YgflwsE/p/XbH4vmiDQoIqQWxCAJEMgyWgorQEWWOCL7KjH/JxoxZA
wYqmiPnXPctU6Y6BmWLPLImNk3bk712K20wZt57hkFS38nZYfVfpe5YkFJTxkjfp
JzJsm/Ds7ltGFDScQ0H+
=TOY8
-----END PGP SIGNATURE-----

--R+Rs1qz93vBJxC1z--
