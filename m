Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D5BE6E006EE; Fri,  1 Aug 2014 05:58:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (martin.jansa[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.176 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wi0-f176.google.com (mail-wi0-f176.google.com
	[209.85.212.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 36D90E005BB
	for <poky@yoctoproject.org>; Fri,  1 Aug 2014 05:58:55 -0700 (PDT)
Received: by mail-wi0-f176.google.com with SMTP id bs8so1329570wib.3
	for <poky@yoctoproject.org>; Fri, 01 Aug 2014 05:58:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:date:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=Js5Ig0+Q6F0ecd/kCBqJZ4F6VExkeHUq2h1BibbsxNU=;
	b=wToYGJz/dM94vchSBOFUtw0PcOxDNBRw1fV4BZRM1MzY1sO3ctLMML8i1HZh9221lf
	EHjN5PRddqFmC0YQQjD6Fy84BDElSYBz0DgyXunlBtmugLZ6IFYmkQYN6SmMPtq6qPDx
	VE/Q+YiOVL4Ah6OAooyc/CqqDJojXK7d+kW0l1b5SuiROrbcTRpE/M6SRbcLqAe4l7RN
	sx2rLkTE7SARobM2S0JZLD98MyuY6J+WLF+vrJ/KRWVWt3Pt9jw9R5DQJKA4YcHL5Jvm
	L7dadSzWN6GnfDhQCeL8ts+opxjdituJn+w3578FmllHGhR6wqKvFL2d8DnK5SNKSLM3
	PPHw==
X-Received: by 10.180.10.98 with SMTP id h2mr6644693wib.29.1406897932584;
	Fri, 01 Aug 2014 05:58:52 -0700 (PDT)
Received: from localhost (ip-89-176-104-3.net.upcbroadband.cz. [89.176.104.3])
	by mx.google.com with ESMTPSA id
	ej10sm8516129wib.12.2014.08.01.05.58.51 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 01 Aug 2014 05:58:51 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Fri, 1 Aug 2014 14:59:16 +0200
To: Bart Jansseune <Bart.Jansseune@prodatamobility.com>
Message-ID: <20140801125916.GD16445@jama>
References: <A5CAA1824448514280B127CC52AD68A103073E4635BE@PSBEMAIL.psbe.site>
MIME-Version: 1.0
In-Reply-To: <A5CAA1824448514280B127CC52AD68A103073E4635BE@PSBEMAIL.psbe.site>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: examine SSTATE_MIRRORS differences
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
X-List-Received-Date: Fri, 01 Aug 2014 12:58:56 -0000
X-Groupsio-MsgNum: 9727
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="awxGVdTeoOKEHxWQ"
Content-Disposition: inline

--awxGVdTeoOKEHxWQ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Aug 01, 2014 at 01:46:40PM +0200, Bart Jansseune wrote:
> Hello,
>=20
> I'm trying to setup a SSTATE_MIRROR using a fast build server so that a s=
low virtual machine doesn't have to rebuild everything.
> Both are Ubuntu 14.04 64 bit machines and use the same poky release (dais=
y).
> What I notice is that for some components the cache is used eg perl-nativ=
e but not for others.
> I understand that once there is a delta between both machines, all depend=
ent packages also mismatch and need to be rebuilt.
>=20
> How do you figure out where things start diverging?
>=20
> Are there requirements on the tools of the build to ensure that SSTATE_MI=
RROR can be used effectively? E.g. the gcc version on both machines might n=
eed to be the same.

Run openembedded-core/scripts/sstate-diff-machines.sh on both machines
and compare list.M files in generated folders.

That will give you pointers to interesting .sigdata files, which you can
compare with bitbake-diffsigs - which will reveal more .sigdata files
and so on until you find root cause.

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--awxGVdTeoOKEHxWQ
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iEYEARECAAYFAlPbjyQACgkQN1Ujt2V2gBxJywCgnfnqmFnPcBVb0W+rBRqs3f4Q
Me0AoJV6/TMv4pV9mtJhValSxxivkIKC
=dDGc
-----END PGP SIGNATURE-----

--awxGVdTeoOKEHxWQ--
