Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7BF5BE007A0; Fri, 31 Oct 2014 11:50:17 -0700 (PDT)
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
	*      [209.85.212.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wi0-f176.google.com (mail-wi0-f176.google.com
	[209.85.212.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 923C0E00749
	for <poky@yoctoproject.org>; Fri, 31 Oct 2014 11:50:15 -0700 (PDT)
Received: by mail-wi0-f176.google.com with SMTP id h11so2094564wiw.15
	for <poky@yoctoproject.org>; Fri, 31 Oct 2014 11:50:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:date:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=z8MdfTgtEY/L48bM0t5DFKCcHo0C0B/GVWxck44VZ5I=;
	b=0RiLWnepMiEM5hEMQ01cbaMob/UDKyZd3eMEZU0r/ldQYU43iO2FqYmsCDkLCk3Wff
	M4eIL0TbR7XQ59jTto2O2nuSe8+JoWux81G9nx/+pAMMb9iEvYlFW7y6uR2D/ULOgiB8
	jI//caT90tDsw3tes3wVV73wUj6pJXTm/SxJmvkrD9Rgw31UyRpt7xkZIDysoqFwkqWz
	heGfb81/31WaKYSCLU1I5pTMGdGxW8IoB6tOVl6vAYSYjxdTdQ3YXgHGjfjaNmdjoZBC
	fOscS0isAfFQhsR7M6WA318/oPYyvZGuv7n5PQUz1RxrtM1J7hFPtCUhKhRAYBzh8lCn
	NQsA==
X-Received: by 10.180.80.39 with SMTP id o7mr5641956wix.37.1414781415024;
	Fri, 31 Oct 2014 11:50:15 -0700 (PDT)
Received: from localhost (ip-89-176-104-3.net.upcbroadband.cz. [89.176.104.3])
	by mx.google.com with ESMTPSA id
	el4sm26500737wid.11.2014.10.31.11.50.12 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 31 Oct 2014 11:50:12 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Fri, 31 Oct 2014 19:50:19 +0100
To: Johnny Vestergaard <jkv@unixcluster.dk>
Message-ID: <20141031185019.GG15148@jama>
References: <CAO+iiFx2h3Ufga3QTdw4bNdm0-dFCiK1pPT=ngRrJXAoGDz-qQ@mail.gmail.com>
	<1493154.0U7i0oWxCZ@peggleto-mobl5.ger.corp.intel.com>
	<CAO+iiFxU=A7e0eNGUH5kZ6BvJ6LhiTrUcv7fGJKiC1pUQPwMsg@mail.gmail.com>
	<7149224.6hmKD4ZtYX@peggleto-mobl5.ger.corp.intel.com>
	<CAO+iiFwKrRkwHj2HVjam31XSp-TXac=SGZgAh53A_FfOjYGGmg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAO+iiFwKrRkwHj2HVjam31XSp-TXac=SGZgAh53A_FfOjYGGmg@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>, poky@yoctoproject.org
Subject: Re: Auto loading nls-iso8859-1kernel module
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
X-List-Received-Date: Fri, 31 Oct 2014 18:50:17 -0000
X-Groupsio-MsgNum: 9804
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="p7qwJlK53pWzbayA"
Content-Disposition: inline

--p7qwJlK53pWzbayA
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Oct 31, 2014 at 04:51:26PM +0100, Johnny Vestergaard wrote:
> Still no luck, but thanks! Now i at least have a pointer to a potential
> root cause.

Is this with oe-core master or dizzy?

In that case you need to add the module basename in KERNEL_MODULE_AUTOLOAD =
and in
cases where module name =3D=3D basename, you don't need module_autoload
variable at all.

> On Fri, Oct 31, 2014 at 3:53 PM, Paul Eggleton <
> paul.eggleton@linux.intel.com> wrote:
>=20
> > On Friday 31 October 2014 15:49:29 Johnny Vestergaard wrote:
> > > On Fri, Oct 31, 2014 at 1:11 PM, Paul Eggleton <
> > >
> > > paul.eggleton@linux.intel.com> wrote:
> > > > On Friday 31 October 2014 13:01:22 Johnny Vestergaard wrote:
> > > > > Thanks for the quick response. Actually i tried adding it to
> > local.conf,
> > > > > but it seems like bitbake did not pick it up - at least it did not
> > > >
> > > > rewrite
> > > >
> > > > > the rootfs.
> > > >
> > > > Right, that is a known issue - you'll have to clean the kernel & im=
age
> > as
> > > > it
> > > > won't pick up changes to the module_autoload variable after the ker=
nel
> > has
> > > > been built:
> > > >
> > > > bitbake -c clean virtual/kernel
> > > > bitbake -c clean your-imagename
> > > >
> > > > Then you should be able to build the image with the change to
> > > > module_autoload
> > > > incorporated.
> > >
> > > Thanks for the tips. certainly get's me in the right direction.
> > > But, putting the following at the end of my local.conf:
> > >
> > > MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS +=3D  " kernel-module-nls-cp437"
> > > module_autoload_nls-cp437 =3D "nls-cp437"
> > >
> > > and cleaning virtual/kernel afterwards still does not autoload the
> > module -
> > > but the module is included correctly.
> >
> > Oh, sorry, I think you'd need to do:
> >
> > bitbake -c cleansstate virtual/kernel
> > bitbake -c cleansstate your-imagename
> >
> > Cheers,
> > Paul
> >
> > --
> >
> > Paul Eggleton
> > Intel Open Source Technology Centre
> >

> --=20
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--p7qwJlK53pWzbayA
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iEYEARECAAYFAlRT2esACgkQN1Ujt2V2gBwipACfaDxGSD5MreltAx0DsDQW3xir
Uv8An2mQmXrOOpIoSTOuq2AflY7GekOd
=jTpe
-----END PGP SIGNATURE-----

--p7qwJlK53pWzbayA--
