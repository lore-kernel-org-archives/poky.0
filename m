Return-Path: <trini@konsulko.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ECEDAE007D1; Thu, 16 Aug 2018 07:09:06 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 64C91E006B4
	for <poky@yoctoproject.org>; Thu, 16 Aug 2018 07:09:06 -0700 (PDT)
Received: by mail-qt0-f195.google.com with SMTP id n6-v6so4779229qtl.4
	for <poky@yoctoproject.org>; Thu, 16 Aug 2018 07:09:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=konsulko.com; s=google;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=qXwFPip91k+EB98KB6YOCXShcP+y9citrSGgslRW5Ho=;
	b=dFLgTZtSo5UzVEPEvCliBK2iM5e0lXXerQzZjuLIZcbtVtsazxMr1Rhm5+C+0OQTkM
	dQb9EBV/FdlQjb4Da/zuHmFpO2ET7R1uHgUBsA6XllYvYHJegaeshxhy+rJ1e6Mc5ThA
	cb5+MXQOlELZyA3325AUkucvFUbRU9ORjQT44=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=qXwFPip91k+EB98KB6YOCXShcP+y9citrSGgslRW5Ho=;
	b=AtgEcO6RSHmKjbj/GFK8WaH/IPg3d+RGLM4d4cvMr6I14YMpYNdm7p+qx6uPK9zgqF
	mBGfoUKJFX6bqtUErM84CI06Zq1kt6mNlkEYamPo3j8UzPQTHhu08VwfqAU53cMLDqgp
	+osxDFduJoeH+SupqviY19w15PjjSTLHAHleW+9c1P/fxpBUAxNW3KGelBGQMvvrbLtL
	ywIgjAeJM4EzxiD6J4YNN9ulk+rYeQ0PflAEjvx79z7ZWLJ3KNICqgpAUBYHqAB4ziFK
	fo60jGc42N1XFjbgbCNIcBYr3ypjaUtgeq3TzJ0YplRcoXS8bRfTg+rzJq+rfBj1cXWZ
	9i7w==
X-Gm-Message-State: AOUpUlHwm2DEf9ngB3S2BYyfnDM5KLswA4LJrw10EKUm9jKVCBedn1Ni
	NptUKrEnEVos+6v9YWtGu1aqgZ6iABc=
X-Google-Smtp-Source: AA+uWPyxdi+pkM1t+D+cvAmEvbACiBWTTpCn3JcPSaeU1JcZblY4lXF3txLkACpp+TNjEXhW7rYcjg==
X-Received: by 2002:a0c:9cca:: with SMTP id
	j10-v6mr27119287qvf.241.1534428545652; 
	Thu, 16 Aug 2018 07:09:05 -0700 (PDT)
Received: from bill-the-cat (cpe-65-184-142-68.ec.res.rr.com. [65.184.142.68])
	by smtp.gmail.com with ESMTPSA id
	p13-v6sm16469938qki.12.2018.08.16.07.09.04
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 16 Aug 2018 07:09:04 -0700 (PDT)
Date: Thu, 16 Aug 2018 10:09:02 -0400
From: Tom Rini <trini@konsulko.com>
To: Kevin Hao <kexin.hao@windriver.com>
Message-ID: <20180816140902.GT30947@bill-the-cat>
References: <20180814013126.191534-1-kexin.hao@windriver.com>
	<20180814013126.191534-5-kexin.hao@windriver.com>
MIME-Version: 1.0
In-Reply-To: <20180814013126.191534-5-kexin.hao@windriver.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 4/6] wic: bootimg-partition: Add support to create the u-boot boot config file
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
X-List-Received-Date: Thu, 16 Aug 2018 14:09:07 -0000
X-Groupsio-MsgNum: 11367
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="DITGHUV3p5DjDsXt"
Content-Disposition: inline

--DITGHUV3p5DjDsXt
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Aug 14, 2018 at 09:31:24AM +0800, Kevin Hao wrote:

> By leveraging the distro boot command feature in the u-boot, we can
> compose the corresponding extlinux.conf when creating the wic image,
> and let u-boot boot the kernel automatically. For more detail about
> the u-boot distro boot command feature, please see doc/README.distro
> in u-boot source files.
>=20
> Signed-off-by: Kevin Hao <kexin.hao@windriver.com>

It doesn't look like this has the ability to provide an external
extlinux.conf file like is done for other loaders, but should.

[snip]
> +        # The kernel types supported by the sysboot of u-boot
> +        kernel_types =3D ["uImage", "zImage", "Image", "vmlinux", "fitIm=
age"]

This order isn't the best order.  We should look for zImage (stock arm32
image), Image (stock arm64 image), fitImage (preferred container in
U-Boot) then uImage (legacy container in U-Boot).  While I'm sure just
vmlinux can work in some cases, I don't think it's appropriate here.

--=20
Tom

--DITGHUV3p5DjDsXt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBAgAGBQJbdYV+AAoJEIf59jXTHXZSW9EP/1HwnteH3Jm/KLD4pVYhPjgs
LgQFvsb4iDbq+9ig+m52St0lJLx6HiyVGsLszC7EF3efEem4TitxMR1eRJBR3/0l
9A1g2bh5Ige8FmBglLHwUxx650YqjILOmBHc+SYQFWjUIAC9xFOYyp6KrLD89kuv
uWsGqig9Lc2DqXKy9C8yOXKtMMvCbDXMbcgyFcl4XCBwJTHcKF+ZTP14SvMID7Yz
MFznKqHyey5Cy5YfNmOMU6vzb50qZNFVUmFFoHxesKS70UMNScuFxkbq30yjHHtJ
kR1TCI0ulItN426jJckrdPbsyxMauxthIvloPC92OApfToDe8ETfqY+vLOaEFEeU
WWOeKKdy2Jz1bk6Z5qL+4rginv5FHPrVQ9H1mq4Ja1J5KsVH1Kt63fmBNXDPrr8d
P3QtQhFW+JvH0BF8aZ9ZYLlN2fXGnzwtKJrT/Lcae/VolrIVPsjKrTbyJPVdvPwU
16/kgBhoz4qC6SNPj4EMGV50Io/XxTQimLbH3hw9KbWyp0t3Y5D570D9gGZgbY9M
VcsjIJz2hGHClOBVxC3dzE3Z4RVX3WfRwKxthiQvV1VZufntahkDvtvB2iHebpmu
v6klPcDuxqlRpiu+HMvqP3Ny6W3uhdMoFPikiDpro4GCPxHZCpVlspFVL0NN5hV6
GNUKPmjhyeFzDkNq/WCe
=dQ4w
-----END PGP SIGNATURE-----

--DITGHUV3p5DjDsXt--
