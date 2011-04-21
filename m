Return-Path: <martin.jansa@gmail.com>
Received: from mail-fx0-f48.google.com (mail-fx0-f48.google.com
	[209.85.161.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3A4F14C80A54
	for <poky@yoctoproject.org>; Thu, 21 Apr 2011 01:27:28 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by fxm7 with SMTP id 7so1472379fxm.35
	for <poky@yoctoproject.org>; Wed, 20 Apr 2011 23:27:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent; bh=PP8gR1vcaCpUd8ubLOMM7tszbHbFNLDAlaLvpzD2wdA=;
	b=xEGz/okonXVXfbmad3hV7TN8Bc6TM8SQitRc0HaD0nmOoOsadw7JCCPcvuZAu1kIDm
	BS7S+tVlOHOV9lxTLQy/O4RSM2e2AbK/VyGn8yN1CDSoNA2dX0kz0fRi3GE6i31tTEjK
	WmV0qZ3iA8Nl0XUeZQHBVckqmqgZ+mkXHOl3A=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	b=Pn9A4DhwakTPnstvQB5sBLJOA4vtqBS0MsHKrCC+DbnBJNM6Cs/ORqDIpER/JyuNL1
	E6fKZ+sOwsbLf8BS/Su/Tug7F8IMN7cYQPfL8CA3/pArgCgfb2L8nYivUlV5ZjacCfHn
	3NxWdL1TtQRq/D15Ld+S70wPQj1Ra4rIVJcNY=
Received: by 10.223.143.12 with SMTP id s12mr711877fau.121.1303367247128;
	Wed, 20 Apr 2011 23:27:27 -0700 (PDT)
Received: from localhost (161-24.13.24.78.awnet.cz [78.24.13.161])
	by mx.google.com with ESMTPS id g5sm496176faa.2.2011.04.20.23.27.25
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 20 Apr 2011 23:27:25 -0700 (PDT)
Date: Thu, 21 Apr 2011 08:27:19 +0200
From: Martin Jansa <martin.jansa@gmail.com>
To: Darren Hart <dvhart@linux.intel.com>
Message-ID: <20110421062719.GA6678@jama.jama.net>
References: <4DA2CC29.7040301@de-haardt.com> <4DAEFAF2.3020507@linux.intel.com>
	<20110420153153.GK5675@jama.jama.net>
	<4DAF008F.70706@linux.intel.com>
MIME-Version: 1.0
In-Reply-To: <4DAF008F.70706@linux.intel.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: poky <poky@yoctoproject.org>
Subject: Re: load kernel module at startup
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 21 Apr 2011 06:27:28 -0000
X-Groupsio-MsgNum: 5445
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="/9DWx/yDrRhgMJTb"
Content-Disposition: inline

--/9DWx/yDrRhgMJTb
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Apr 20, 2011 at 08:49:35AM -0700, Darren Hart wrote:
>=20
>=20
> On 04/20/2011 08:31 AM, Martin Jansa wrote:
> > On Wed, Apr 20, 2011 at 08:25:38AM -0700, Darren Hart wrote:
> >>
> >>
> >> On 04/11/2011 02:38 AM, Gerard van den Bosch wrote:
> >>> Hello,
> >>>
> >>> I would like to modprobe my wireless driver kernel module at startup=
=20
> >>> automatically.
> >>>
> >>> This works when I generate a rootfs and then boot up the first time s=
o=20
> >>> the modules file gets generated and then I can manually add the kerne=
l=20
> >>> module in that file and then reboot.
> >>>
> >>> When I look in the manpage of update-modules it states that a config=
=20
> >>> file should be added in /etc/modutils but that directory is not in my=
=20
> >>> rootfs.
> >>>
> >>> So I was wondering what I have to do to get /etc/modutils directory o=
r=20
> >>> an other way to get the kernel module loaded at startup.
> >>>
> >>> I am using the Poky 4.0 Laverne release.
> >>
> >> I believe you can just add the name of the module to:
> >>
> >> /etc/modules
> >>
> >> Can you try that?
> >=20
> > module_autoload_module_name to do that, is not supported in Poky?
>=20
> I am not familiar with this technique.

I've checked Poky 5.0 and according to git log it was there from the
beginning, so also in Poky 4.0. And also it's inherited by
linux-yocto(-stable).

if you read classes/kernel.bbclass you'll notice ie:
module_autoload_ipv6 =3D "ipv6"

which adds postinst to kernel-module-ipv6 package to "modprobe ipv6" and
also creates /etc/modutils/ipv6 file with "ipv6" in it to autoload ipv6
module after reboot.

similar
module_conf_bluez =3D "alias net-pf-31 bluez"
creates
/etc/modprobe.d/bluez.conf (or /etc/modutils/bluez.conf for 2.4 kernel)
with "alias net-pf-31 bluez"

and those files are added to kernel-module-something FILES, so removing
module removes autoload and config with it properly.

Regards,
--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--/9DWx/yDrRhgMJTb
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.17 (GNU/Linux)

iEYEARECAAYFAk2vzkcACgkQN1Ujt2V2gByqpwCgppSilksx6EiBbSg86kxpGMEw
TwsAn0sKCDeq26HYzPb30qNb3j2o+oBW
=sxq7
-----END PGP SIGNATURE-----

--/9DWx/yDrRhgMJTb--
