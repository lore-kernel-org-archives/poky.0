Return-Path: <martin.jansa@gmail.com>
Received: from mail-fx0-f48.google.com (mail-fx0-f48.google.com
	[209.85.161.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 359C94C80AA7
	for <poky@yoctoproject.org>; Thu, 14 Apr 2011 16:12:41 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by fxm7 with SMTP id 7so2577905fxm.35
	for <poky@yoctoproject.org>; Thu, 14 Apr 2011 14:12:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent; bh=TrlpGHDk/Op5ew+9x4SDWRW1HHbjQtmU3wKHdAn8BC0=;
	b=do5i/Z0NmDQUK6Nw69N6wuJdwVQ1bbQXAVHwqtkdWbZRoKFH71dfNE0Ak9oGgIS00I
	dnb2L92+vhxM5mqMgU740Hs5fxV5IqeS0ABboK+F+TGD2tPE3xtVI6k8uhN9vO1PV1Vj
	wh9/Mk7VjOkrfM8zZWtC0/DbsRtiQ//YvqWmk=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	b=BS5Q788S2sPtiGPmNmbI7aDFmAGcjjtMuGl2/ikfsu6ItdBy13SFCpRRMCh4NlrF/a
	ixB9ZMQfUIUhH00k80sF4rEIE7etbi8QX+A6BpTiUqFW5yYn7cuK/8gyeX/85fYvYvFf
	s+3S9lTrXaG624PIdvezXCv0mMIknZ1wq5RH4=
Received: by 10.223.24.72 with SMTP id u8mr1355276fab.10.1302815560076;
	Thu, 14 Apr 2011 14:12:40 -0700 (PDT)
Received: from localhost (161-24.13.24.78.awnet.cz [78.24.13.161])
	by mx.google.com with ESMTPS id l4sm612366fan.14.2011.04.14.14.12.38
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 14 Apr 2011 14:12:38 -0700 (PDT)
Date: Thu, 14 Apr 2011 23:12:32 +0200
From: Martin Jansa <martin.jansa@gmail.com>
To: Chris Larson <clarson@kergoth.com>
Message-ID: <20110414211232.GM21027@jama.jama.net>
References: <20110414194445.9BCC5151F83@gemini.denx.de>
	<4DA758E6.7040606@intel.com>
	<BANLkTikLPSrRtUObRTSHFRdWS+h5pTuO0A@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <BANLkTikLPSrRtUObRTSHFRdWS+h5pTuO0A@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: poky@yoctoproject.org, Saul Wold <saul.wold@intel.com>
Subject: Re: Distro policy ?
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
X-List-Received-Date: Thu, 14 Apr 2011 21:12:41 -0000
X-Groupsio-MsgNum: 5283
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="lbQeYSs6J2ITmUo7"
Content-Disposition: inline

--lbQeYSs6J2ITmUo7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Apr 14, 2011 at 01:57:16PM -0700, Chris Larson wrote:
> On Thu, Apr 14, 2011 at 1:28 PM, Saul Wold <saul.wold@intel.com> wrote:
> >> So, from the policy side I think we should go with our own layer.
> >> On the technical side I'm disappointed with this 'include' problem: I
> >> find it rather impractical to copy things we don't want to change and
> >> just want to use from one layer to another and then having to keep
> >> these in sync with mainline.
>=20
> There's no reason you should have to copy unmodified files from one
> layer to another, ever.  Configuration files are found via BBPATH when
> they're referenced via a relative path, and file:// files via
> FILESPATH are easily dealt with as well.  The only time you should
> have to copy is if you have a need to modify them, particularly as
> there's no "bbappend" that corresponds to recipe .inc files.  Is there
> a particular case you're thinking of here?

I guess he was talking about
require/include some.inc
used in recipe

Then I had to copy some.inc to same folder there my recipe is. Even when
it's used in same path relative to layer top dir

Regards,

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--lbQeYSs6J2ITmUo7
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.17 (GNU/Linux)

iEYEARECAAYFAk2nY0AACgkQN1Ujt2V2gBxVxACfewdxL2fHhcdY2kk5W2aQMmfC
LBYAnR5bLkwup8tlxOvhhwRIgcnJEuFH
=ZhRC
-----END PGP SIGNATURE-----

--lbQeYSs6J2ITmUo7--
