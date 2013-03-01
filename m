Return-Path: <martin.jansa@gmail.com>
Received: from mail-da0-f48.google.com (mail-da0-f48.google.com
	[209.85.210.48]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id DC720E01400
	for <poky@yoctoproject.org>; Fri,  1 Mar 2013 13:20:23 -0800 (PST)
Received: by mail-da0-f48.google.com with SMTP id w4so1575576dam.35
	for <poky@yoctoproject.org>; Fri, 01 Mar 2013 13:20:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent; bh=klvynhkG40dZtYE4MF4eBTg+gFIfq6uDSHxJy7EMWqw=;
	b=hq3RUOpIyYrT3WdxVEhDL2oEFHfOCk3vNjmvtkA13HHvKQXxgwe2DCp/kftITcKteT
	hV1PeXEOhTeaEItThXHytLKCDqvnnwJ+sHeFRnk8xOCDNUGOgXwUGxMH7/mfTosh1ZUS
	n/w0tKoHuYGw7+OY65h89A9aSlqIWqdZDSTbymmt+l9VZjC/hMdVYkXZG0JnVRTaGrGT
	iu2zhii0HNr20gGgZEvXp9vmz0Py4K5Y4L8oEiZJVc2DAQqvHH6TXfZPdgCfSL0P5JSz
	UD9K3KB0e2hXUwqHYU1rQchTPOxhADIdqKhXqFsPqX6+VM20MuTCF2Jel9J+/NvfXmos
	1RGQ==
X-Received: by 10.66.159.201 with SMTP id xe9mr20408149pab.110.1362172823605; 
	Fri, 01 Mar 2013 13:20:23 -0800 (PST)
Received: from localhost (ip-62-24-80-7.net.upcbroadband.cz. [62.24.80.7])
	by mx.google.com with ESMTPS id
	rr14sm13165883pbb.34.2013.03.01.13.20.19
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Fri, 01 Mar 2013 13:20:22 -0800 (PST)
Date: Fri, 1 Mar 2013 22:20:12 +0100
From: Martin Jansa <martin.jansa@gmail.com>
To: Trevor Woerner <twoerner@gmail.com>
Message-ID: <20130301212012.GS3279@jama>
References: <1362135473-20635-1-git-send-email-Martin.Jansa@gmail.com>
	<1362154793-10296-1-git-send-email-Martin.Jansa@gmail.com>
	<CAHUNapTo8kOO+k9aFOnDCyc6LgMtx+tRzm=hJW4q_5rjL+Nd0Q@mail.gmail.com>
	<20130301173817.GP3279@jama>
	<CAHUNapTJVB_Opb1pBpMEpWTc8S9gZBz1S+iAJAyg9ybEwao=hQ@mail.gmail.com>
	<20130301191053.GR3279@jama>
	<CAHUNapTnV7mCppOBC=-JuXp-7Tc6KquyN2=KJWRh0rPOPY1WaA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAHUNapTnV7mCppOBC=-JuXp-7Tc6KquyN2=KJWRh0rPOPY1WaA@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: poky@yoctoproject.org
Subject: Re: [PATCHv2] poky.conf: update SANITY_TESTED_DISTROS
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
X-List-Received-Date: Fri, 01 Mar 2013 21:20:24 -0000
X-Groupsio-MsgNum: 8727
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="i483Pv/KqyjCUwB1"
Content-Disposition: inline

--i483Pv/KqyjCUwB1
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Mar 01, 2013 at 02:43:20PM -0500, Trevor Woerner wrote:
> As Richard points out, this doesn't apply cleanly to master's HEAD.

Ah my fault, I've rebased it, but in the end sent old version of that
patch, new one should be on ML now:
https://lists.yoctoproject.org/pipermail/poky/2013-March/008824.html

> When I test with the following:
>=20
> SANITY_TESTED_DISTROS ?=3D " \
>             Yocto-1.2 \n \
>             Poky-1.2 \n \
>             Poky-1.3 \n \
>             Ubuntu-10.04 \n \
>             Ubuntu-11.10 \n \
>             Ubuntu-12.04 \n \
>             Ubuntu-12.10 \n \
>             Fedora-16 \n \
>             Fedora-17 \n \
>             Fedora-18 \n \
>             CentOS-5.6 \n \
>             CentOS-5.7 \n \
>             CentOS-5.8 \n \
>             CentOS-6.3 \n \
>             Debian-6.0 \n \
>             Debian-7.0 \n \
>             SUSE-LINUX-11.4 \n \
>             SUSE-LINUX-12.1 \n \
>             SUSE-LINUX-12.2 \n \
>             openSUSE 12.2 \n \
>             "

openSUSE 12.2 \n \

This line shouldn't be needed with this patch for oe-core:
http://lists.linuxtogo.org/pipermail/openembedded-core/2013-March/036566.ht=
ml

> Do I have to clean out all or any part of my sstate-cache for this
> test? Sorry if I'm messing up on my end.

No, just running bitbake and not seeing WARNING from sanity is good
enough.

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--i483Pv/KqyjCUwB1
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.19 (GNU/Linux)

iEYEARECAAYFAlExG4wACgkQN1Ujt2V2gByWlQCgmwRPd/yySyUHcb3hay8ocBGJ
+OcAmgMFYJMS2ZWknffGcngDS0795sWJ
=Tm6m
-----END PGP SIGNATURE-----

--i483Pv/KqyjCUwB1--
