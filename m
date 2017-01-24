Return-Path: <trini@konsulko.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 50279E00823; Tue, 24 Jan 2017 07:04:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.161.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.161.173 listed in dnsbl.sorbs.net]
Received: from mail-yw0-f173.google.com (mail-yw0-f173.google.com
	[209.85.161.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A2223E007CE
	for <poky@yoctoproject.org>; Tue, 24 Jan 2017 07:04:01 -0800 (PST)
Received: by mail-yw0-f173.google.com with SMTP id l19so162885110ywc.2
	for <poky@yoctoproject.org>; Tue, 24 Jan 2017 07:04:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=konsulko.com; s=google;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=d6DTP/e2wEr+AU8ZXBSpmzAqFM/nvL15WPYy237/2Jg=;
	b=K2ZP0pvomwm99KNXWXfbasIUghJ6iF9hLu06fIs2a73JQEVltzwlGoors/5yfb1XZC
	9YDYtiDTkALNRA4GCjMK7UaRoVDp1SIJcEhA4tjZvFRCNdWsJD1nvdRurw96ca5T3tEg
	uhGJsUt4/IuZAy/fNoVeuGVU5LZKbXsH08CII=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=d6DTP/e2wEr+AU8ZXBSpmzAqFM/nvL15WPYy237/2Jg=;
	b=sqjmkCbt+34Dv7q2ASYkAtSqzhmuEFOCxVCGM7azkYNcmLGl366ImBDDjkj2UY0nBv
	+5gSh6+4/kXIQjIT3mMw+shf633xdyf4xFYDnSospCs+Ff/jzAOO448n7Zri57b0sjur
	ujqeFMYslv09Y2VB7sLsJxIzLyvMYh8YMpcq68voSZ6oxB/nVpKN7JmfxE3p6xbwJgWq
	8eSKHgyQTxsKvKQGLFvUcBVgTkHY+7JBTkuwjLiurij4Oro4VNBQD1+OaIy+K3b0ji4c
	x01MHYGNW693cZ8U1yY/Rnm+88HtySYxCiM845/CI0ISUKmuMMMY+i8IkZxgp7U5UvwR
	boLA==
X-Gm-Message-State: AIkVDXLiLEgYnCI4vWTFvCEVkVf+w3zsJY/HqPTx0aO8NIINBb7RTHbipJgovirctoSj9g==
X-Received: by 10.129.55.136 with SMTP id e130mr26732860ywa.344.1485270241125; 
	Tue, 24 Jan 2017 07:04:01 -0800 (PST)
Received: from bill-the-cat (cpe-75-180-228-133.ec.res.rr.com.
	[75.180.228.133])
	by smtp.gmail.com with ESMTPSA id a3sm9968230ywe.55.2017.01.24.07.04.00
	(version=TLS1_2 cipher=AES128-SHA bits=128/128);
	Tue, 24 Jan 2017 07:04:00 -0800 (PST)
Date: Tue, 24 Jan 2017 10:04:00 -0500
From: Tom Rini <trini@konsulko.com>
To: Joshua Lock <joshua.g.lock@intel.com>
Message-ID: <20170124150400.GG22316@bill-the-cat>
References: <20170124130413.24928-1-joshua.g.lock@intel.com>
MIME-Version: 1.0
In-Reply-To: <20170124130413.24928-1-joshua.g.lock@intel.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: poky@yoctoproject.org
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
X-List-Received-Date: Tue, 24 Jan 2017 15:04:04 -0000
X-Groupsio-MsgNum: 10774
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="5Mfx4RzfBqgnTE/w"
Content-Disposition: inline

--5Mfx4RzfBqgnTE/w
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jan 24, 2017 at 01:04:13PM +0000, Joshua Lock wrote:
> Remove several old/untested distros from the list:
> * poky-1.8 and poky-2.0 are no longer supported releases
> * ubuntu-14.04 is an LTS but we plan to remove it from the
>   project's autobuilder cluster as the kernel is old and
>   it doesn't use systemd -- therefore this will no longer
>   be tested.

Can you elaborate a bit more on the pain involved with supporting Ubuntu
14.04?  Or, do you expect to drop Ubuntu 16.04 in favour of 18.04 at
around this point in 2019 and continue only supporting the latest LTS
for Ubuntu?  I ask because supported hosts are an important part of
companies being able to plan their use and upgrade strategies.  Thanks!

--=20
Tom

--5Mfx4RzfBqgnTE/w
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBAgAGBQJYh2zgAAoJEIf59jXTHXZS2M4P+QEBzCaZZ7MEErjdz3Y4+/LP
i7Wpq7vw0f0KyqSpc1AOln3yeG7Lrh6euOTdKfkfXxSr6WHeMUzvae9cGc0noQMS
OOhK+W/zsLIgLhQbpFu/+a2jdt+9XnxY4SiFwVSeHhpHUIwiv+Qx1Val9TfATx6u
PcF3WOUgHOkFfStVQYLPXK73JwKP2jzAcmzex3goO5T2W3PizDWXeKbyOMEQEuXW
p1PG27LCUfoZd8nOfJfVglMthieg8byk9E+qPVuLDdNBgXjXEYmmt88sTvgz/Y+n
VdANZc+5JVIIw1/vQvgczROkbbpqkkwBxAJoCdyKt5TkhoDDQoTboOTlb2s89G0J
GNuqXstFYUdRTHLCwKv3TKchORlnOAmCVnbu3czFnpB2ps9Zs8gTZyLrGTB5Jtmi
J47Ufnn56acnWH4ISneh1NoCI99rY49kF9qI9ZOcJBDtPm+dOshtNLyxAgC7LuR+
KOVveM0SN3xcm/XUGkeWXFTXzNxHvfq0FiGe+wTML8qPUIa2bdsi6B9dNZCvV/JW
VUry5iG5Ww7z+hEIFWuSdXPlMUysaIhipEz2Q/hs2NxoKjNlosGD+JggSgcqB9Xl
4Ntmx6afdYZxcy2NcI+4L4TKXBwwgrpxjlj0YiOypPG5fGzUj5tKgRp02lolyM5E
v77M/hBVGycl8Sh/OMP1
=hyN4
-----END PGP SIGNATURE-----

--5Mfx4RzfBqgnTE/w--
