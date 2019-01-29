Return-Path: <trini@konsulko.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A0035E00D08; Tue, 29 Jan 2019 10:20:40 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.222.195 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f195.google.com (mail-qk1-f195.google.com
	[209.85.222.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1ABDBE00CE5
	for <poky@yoctoproject.org>; Tue, 29 Jan 2019 10:20:35 -0800 (PST)
Received: by mail-qk1-f195.google.com with SMTP id o8so12073817qkk.11
	for <poky@yoctoproject.org>; Tue, 29 Jan 2019 10:20:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=konsulko.com; s=google;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=NLzcamxBccgEqDU4Bi4jdf2k5zUiBIhhi/NgtKXL9m8=;
	b=G+tkfhTy0nBd4H52dSGvktEPMQYyNSfLHMT9O8hLJ9iAE4UG8iLBd/U6+fkk0fZEHR
	uSMCpfhqxM7PvRKbf8DRa/IvrP36qHni0eJz+6N4wMKEf5Rfpp5/Btp5SiA04Ve1syEQ
	YvBBokR77EE0bZtxrbtmsBqWX616gZuOvwHy0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=NLzcamxBccgEqDU4Bi4jdf2k5zUiBIhhi/NgtKXL9m8=;
	b=UkCgeXVvl0WpPaEPf9lZOnwV9x5LasiBvT8aCY+KDBuAIhKLoa8uMOtELgBfar2xKn
	4MF9tjDFviR88p+zVFWeRaoLpuGJ6DhyIB7eReQgEB/4INA0jG4mFXNepF2kfvjqeyhH
	86apOHJfwh3NdTiOveDQPk8NmC8OmgsJ4UPdbpfgfoE9YzXoyI53a7b4HPb77yx3vKag
	PI0zbFd1/ayOTmaUpkFWqmfkkeAMAcLY3sASpWgrytLDJk8DXZXAnB0t2384Uvci1jZ6
	NOBsVi2P1xtDl6XnN3CMH81wBToqIN2LwkdEgir1QsYDE5wk3mnkNx1G4dWQDc+vbbyb
	qC5Q==
X-Gm-Message-State: AJcUukc9XklxP5vNO+DQtHZFKQTJlK07OE5kGW4nh3hUyZsWSSj+pH8D
	2+tL3RUoIUKc+YPwOxm8b3CrFg==
X-Google-Smtp-Source: ALg8bN4OItetil5cdp+sZqdZLSHhQ22MZms0Xt7rp3/8t0OQeV62evlDZ0kbUMuq2ZZxMXAY+2bRJw==
X-Received: by 2002:a37:bb82:: with SMTP id
	l124mr23911280qkf.188.1548786035248; 
	Tue, 29 Jan 2019 10:20:35 -0800 (PST)
Received: from bill-the-cat
	(cpe-2606-A000-1401-82A1-65F7-71A-2422-73B.dyn6.twc.com.
	[2606:a000:1401:82a1:65f7:71a:2422:73b])
	by smtp.gmail.com with ESMTPSA id
	o129sm70554392qke.5.2019.01.29.10.20.33
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 29 Jan 2019 10:20:33 -0800 (PST)
Date: Tue, 29 Jan 2019 13:20:31 -0500
From: Tom Rini <trini@konsulko.com>
To: Meng.Li@windriver.com
Message-ID: <20190129182031.GN30838@bill-the-cat>
References: <1548670803-27762-1-git-send-email-Meng.Li@windriver.com>
MIME-Version: 1.0
In-Reply-To: <1548670803-27762-1-git-send-email-Meng.Li@windriver.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: yocto@yoctoproject.org, poky@yoctoproject.org
Subject: Re: [yocto] : [meta]: [recipes-bsp]: u-boot: update commit id to the latest one of u-boot upstream
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
X-List-Received-Date: Tue, 29 Jan 2019 18:20:40 -0000
X-Groupsio-MsgNum: 11563
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="s8J8qjRpxLkp1Gun"
Content-Disposition: inline

--s8J8qjRpxLkp1Gun
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jan 28, 2019 at 06:20:02PM +0800, Meng.Li@windriver.com wrote:

> From: Limeng <Meng.Li@windriver.com>
>=20
> Hi Richard,
>=20
> Could you please help to merge this patch into meta/recipes-bsp/u-boot, b=
ranch is master?
>=20
> There are 2 CVE issues fixing in latest u-boot upstream, so
> update commit id to involve these fixing patches.

With my U-Boot maintainer hat on, NAK.  While there are two CVEs that
have been addressed now (and present for a long while) I would say both:
- The issues themselves are not so catastrophic that you should move to
  a pre-release (I haven't even tagged v2019.04-rc1 yet!) to get them
  nor blindly back-port the changes.  I intentionally didn't apply them
  to the last release as I expected unintended consequences.  Surprise!
  There have been unintended consequences of those changes and I haven't
  pulled in the changes for that just yet.
- Even once the patches to address the CVEs are addressed, I don't see
  why you would move to "top of tree" rather than as is normal practice
  backport the changes.  Simon's fix here is a clear series in patchwork
  (as well as git history) to apply as needed, if after evaluating the
  CVEs it's something that you feel should be addressed in this way and
  not with the workaround (telling U-Boot to load at most $X bytes).

Thanks!

--=20
Tom

--s8J8qjRpxLkp1Gun
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBAgAGBQJcUJlvAAoJEIf59jXTHXZSWLcQALljYTCWf8ylz/kOMVm6gdZ+
QFrmkZN6XruF4kaDnGoVQG6tgMlzeX0gJaQJ8db9EtJhz8e/IRamGX6Hcow61Zax
LZn3/Bp4FinjQDqbkN0tkALvsliwAAkVALQhItCUY1UhGMbyALVjUfmjwQ0xv5qt
dvuNg2U/6qJbhWsydIzRYNu8B5+/y257EnpGVyP593cw94+u/3C/OL0gy+om6uQS
Fxd9L34yNUDTCI35zPnO1I4wu1WnyCVc8JNmliFPEJ8djHGgOKPUxaBXT+cO45nR
5rBzuG+KuoY2dgMS/lfjIs/YNHOXSIMEGyqVyCNrZQunjz9QVhLKeUR/uhn9qHgP
Lny6qgoaSimEaDKpTYxbKhNpZooRnQgCfpBLjqzYnPtg/XTRvB+7V189Mckpf01/
OijqvrSBFHVUASjFCfaPKI3ETkQxeZ1mvrPxR/2izEKl3BHnvS3OB+aVdkgkPxxO
3DBCYHLa1/gTvizaIVTv0If7mSmwB/xRIlagWTQLWU5WpCAmePaOLwPyBiFTpJQZ
a5iExkJfLmGMR/NpqdkdMlFHaOTYuC6CwL1E3Je+9+YD8V+BRf7X4Rhmcltjzv8g
Q7Jc9uexipMkRW7rTGJdpgXuFmO+3IRslrWdLvD7lkMgycXnyoDG8Pyjfvh1xpGH
66sp+MFNNeQwtrvf8epn
=Uy14
-----END PGP SIGNATURE-----

--s8J8qjRpxLkp1Gun--
