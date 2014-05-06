Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CCDB8E00A44; Tue,  6 May 2014 11:09:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (martin.jansa[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.181 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vc0-f181.google.com (mail-vc0-f181.google.com
	[209.85.220.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 41DC1E006EF;
	Tue,  6 May 2014 11:09:07 -0700 (PDT)
Received: by mail-vc0-f181.google.com with SMTP id hy4so1472956vcb.12
	for <multiple recipients>; Tue, 06 May 2014 11:09:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=J9ENx/wUtye5UCGmeCN3scVT5wMDfc/8nofhZzUxoGE=;
	b=q2mclvJ6g1nbI/R2AUQeGZVBpb0kJDMqHifb0fT5DuGntosb2VO097FSVVhsYgSn6P
	RzOK00nwDJZB6cQqvhmUmTo7tqpLhI6uUWrrl3/6EewjHd9aQCXVePKYKvahywD+44XV
	QNXf2r8xRe+PdgYKjTeL4LLiL75qwqpWxlknSXpMpJWzsrQxied0FRis41//vwXD8hYK
	+iJIijR4/9blyZvOMIT+ykk5Wj/npt+RYN3doYKXR0u8yWuPI1XPCDz8R0F+X6aJpD1m
	GxVgIGjiesMb6rsAshyUn7sngNr9YJSGLZZr+Rc5uYEbd2nq0baClfsgikgMeu2y70mr
	YK4A==
X-Received: by 10.52.72.4 with SMTP id z4mr1618194vdu.71.1399399747118;
	Tue, 06 May 2014 11:09:07 -0700 (PDT)
Received: from localhost (ip-89-176-104-3.net.upcbroadband.cz. [89.176.104.3])
	by mx.google.com with ESMTPSA id
	xr10sm17305670vec.2.2014.05.06.11.09.05 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 06 May 2014 11:09:06 -0700 (PDT)
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Tue, 6 May 2014 20:09:26 +0200
From: Martin Jansa <martin.jansa@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20140506180926.GB30955@jama>
References: <53691266.2090107@intel.com>
	<CAMKF1so2Zrx0D39wkGj0xYSbGOKu7Kd3iMS6D=6_+yjj2vGYXA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMKF1so2Zrx0D39wkGj0xYSbGOKu7Kd3iMS6D=6_+yjj2vGYXA@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>,
	Yocto Project Discussion <yocto@yoctoproject.org>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>,
	bitbake-devel <bitbake-devel@lists.openembedded.org>,
	Saul Wold <saul.wold@intel.com>
Subject: Re: [bitbake-devel] [OE-core] Daisy Stable Branch - open for patch suggestions
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
X-List-Received-Date: Tue, 06 May 2014 18:09:09 -0000
X-Groupsio-MsgNum: 9637
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="MW5yreqqjyrRcusr"
Content-Disposition: inline

--MW5yreqqjyrRcusr
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, May 06, 2014 at 10:55:59AM -0700, Khem Raj wrote:
> Saul
>=20
> On Tue, May 6, 2014 at 9:48 AM, Saul Wold <saul.wold@intel.com> wrote:
> >
> > [Sorry for the overlap, want to make sure I hit a broad audience]
> >
> > Hi Everyone!
> >
> > I will be the stable maintainer for the Daisy branch, and it is now ope=
n for
> > suggestions of backport patches.  I am starting to generate a list of
> > patches that are already in master.
>=20
> Thanks for helping with 1.6/daisy
>=20
> >
> > The following wiki page has the Policies and process for requesting a f=
ix in
> > a stable branch, please review that before sending a patch.
> >
> > https://wiki.yoctoproject.org/wiki/Stable_branch_maintenance
> >
> > Please remember to include [daisy] in any request (backport or commit).
> >
>=20
> I already have a patch posted for daisy back port.
> see http://comments.gmane.org/gmane.comp.handhelds.openembedded.core/50627

I'm preparing patches I would like to see in daisy in
contrib/jansa/daisy-backports branch, I'll send it to ML when I consider
them ready, e.g. top 7 commits:
http://git.openembedded.org/openembedded-core-contrib/log/?h=3Djansa/daisy-=
backports

> > We do not have a hard date for this yet, but likely be in late May - ea=
rly
> > June time frame for the 1.6.1 release.
> >
> > Thanks to all for your efforts.
> >
> > Sau!
> > --
> > _______________________________________________
> > Openembedded-core mailing list
> > Openembedded-core@lists.openembedded.org
> > http://lists.openembedded.org/mailman/listinfo/openembedded-core
> --=20
> _______________________________________________
> bitbake-devel mailing list
> bitbake-devel@lists.openembedded.org
> http://lists.openembedded.org/mailman/listinfo/bitbake-devel

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--MW5yreqqjyrRcusr
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iEYEARECAAYFAlNpJVYACgkQN1Ujt2V2gBzEVQCfcZ3wSzmF4QQcwPmLccmGy57x
NvMAoIgXLZPhU5UDYTpfdutvfB0yY9Tz
=MM9P
-----END PGP SIGNATURE-----

--MW5yreqqjyrRcusr--
