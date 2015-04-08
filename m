Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9B8CBE008EC; Wed,  8 Apr 2015 07:18:43 -0700 (PDT)
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
	*      [209.85.212.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wi0-f170.google.com (mail-wi0-f170.google.com
	[209.85.212.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E36BAE0086E;
	Wed,  8 Apr 2015 07:18:41 -0700 (PDT)
Received: by wizk4 with SMTP id k4so56898869wiz.1;
	Wed, 08 Apr 2015 07:18:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:date:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=YvlPSMniWgx2IQRFrT9camOTq1zq7JkmRjBvZ8hg6Pk=;
	b=wOHAxppUFHDoUvnJ/k4mzj9xoFYZz6z4WcH34z5XTmMgcT6Zan56I8Hu4XBxQ7/c1N
	ThwZE8iuPH2d+Pfadd/zbQmgqPehFGFP3YcRNaylZLnplduaz3T1c/uUmsdiuN+P+86Q
	wEhUADrbziYBp3+pzM3Np5IKqVsSs5+rI3UM+rnQACX/jWNFd4qdhyymUhekbpa+2zyt
	hP9h2/6NjYioE6tJTXOSQuXCOQAz8xqP3DytQKshiyXXmJsi0bFsEBFRHaeqZGPpKpQv
	JqbRk8O8IEv3R5N/lzOsmZ4pi4QLIZh+P6JCpv4IUXvhHPaB71t+L1W4Dqz4Or3l6uuM
	kXag==
X-Received: by 10.180.187.171 with SMTP id ft11mr15152797wic.0.1428502720694; 
	Wed, 08 Apr 2015 07:18:40 -0700 (PDT)
Received: from localhost (ip-86-49-34-37.net.upcbroadband.cz. [86.49.34.37])
	by mx.google.com with ESMTPSA id
	nb9sm15887590wic.10.2015.04.08.07.18.39
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 08 Apr 2015 07:18:39 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Wed, 8 Apr 2015 16:18:43 +0200
To: praveen vattipalli <praveen.vatt@gmail.com>
Message-ID: <20150408141843.GH2337@jama>
References: <CA+pXca1Wjea0jtPUH5mMcqA13E3_E_o6am4yjn28w-cJq3nYuQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CA+pXca1Wjea0jtPUH5mMcqA13E3_E_o6am4yjn28w-cJq3nYuQ@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: yocto <yocto@yoctoproject.org>, poky@yoctoproject.org
Subject: Re: error in xerces-c in yocto-dizzy-1.7.1
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
X-List-Received-Date: Wed, 08 Apr 2015 14:18:43 -0000
X-Groupsio-MsgNum: 9981
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="ZG5hGh9V5E9QzVHS"
Content-Disposition: inline

--ZG5hGh9V5E9QzVHS
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Apr 08, 2015 at 07:17:56PM +0530, praveen vattipalli wrote:
> hi,
> I am building xerces-c in yocto-1.7.1(dizzy) on ubuntu12.04 64bit for
> cortexa9 board.
>=20
> I am referring below link
>=20
> http://lists.openembedded.org/pipermail/openembedded-devel/
> 2012-January/082676.html
> xerces-c_3.1.1.bb
>=20
> +DESCRIPTION =3D "Xerces-c is a validating xml parser written in C++"
> +HOMEPAGE =3D "http://xerces.apache.org/xerces-c/"
> +SECTION =3D "libs"
> +PRIORITY =3D "optional"
> +LICENSE =3D "Apache-2.0"
> +LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3D3b83ef96387f14655fc854ddc3c6b=
d57
> +
> +PR =3D "r1"
> +
> +SRC_URI =3D "http://apache.lauf-forum.at/xerces/c/3/sources/${BP}.tar.
> gz"
> +
> +inherit autotools pkgconfig
> +
> +PACKAGES =3D "libxerces-c \
> + libxerces-c-dbg \
> + libxerces-c-dev \
> + xerces-c-samples \
> + xerces-c-samples-dbg \
> +"
> +
> +FILES_libxerces-c =3D "${libdir}/libxerces-c-3.1.so"
> +FILES_libxerces-c-dbg =3D "${libdir}/.debug/"
> +FILES_libxerces-c-dev =3D "${libdir}/lib*.la \
> + ${libdir}/lib*.a \
> + ${libdir}/libxerces-c.so \
> + ${libdir}/pkgconfig/xerces-c.pc \
> + ${includedir}/xercesc \
> +"
> +FILES_xerces-c-samples =3D "${bindir}/*"
> +FILES_xerces-c-samples-dbg =3D "${bindir}/.debug/"

You shouldn't remove default PACKAGES and you shouldn't create extra
-dev and -dbg packages, then this issue will be resolved in default
FILES_* variables for default PACKAGEs, you only need to preprend
libxerces-c package to include ${libdir}/libxerces-c-3.1.so file there
(before it's included in PN-dev).

> +SRC_URI[md5sum] =3D "6a8ec45d83c8cfb1584c5a5345cb51ae"
> +SRC_URI[sha256sum] =3D
> "a42785f71e0b91d5fd273831c87410ce60a73ccfdd207de1b805d26d44968736"
> +
> +BBCLASSEXTEND +=3D "native"
>=20
>=20
> I am getting below error
>=20
> ERROR: QA Issue: xerces-c: Files/directories were installed but not shipp=
ed
> /usr/src
> /usr/src/debug
> /usr/src/debug/xerces-c
> /usr/src/debug/xerces-c/3.1.1-r0
> /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1
> /usr/src/debug/xerces-c/3.1.1-r0/build
> /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src
> /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/samples
> /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/strnicmp.h
> /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/strnicmp.c
> /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/stricmp.c
> /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/stricmp.h
> /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc
> /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/validators
> /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/util
> /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/sax
> /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/framework
> /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/internal
> /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/xinclude
> /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/sax2
> /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/parsers
> /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/dom
> /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/validators/co=
mmon
> /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/validators/da=
tatype
> /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/validators/sc=
hema
> /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/validators/DTD
> /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/validators/co=
mmon/CMBinaryOp.cpp
> /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/validators/co=
mmon/GrammarResolver.hpp
> /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/validators/co=
mmon/CMNode.hpp
> /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/validators/co=
mmon/Grammar.cpp
> /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/validators/co=
mmon/Grammar.hpp
> /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/validators/co=
mmon/CMLeaf.hpp
> /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xe
>=20
> and so on........
>=20
>=20
> Could i get any help..
>=20
> Thanks
>=20
> Praveen

> --=20
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--ZG5hGh9V5E9QzVHS
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iEYEARECAAYFAlUlOMMACgkQN1Ujt2V2gBxFVwCgtZKAhMUeGYutTWMYoi8LwNDo
rnIAn2zImQBQU5T9C5sWpiLm2wW37J50
=4ZJ8
-----END PGP SIGNATURE-----

--ZG5hGh9V5E9QzVHS--
