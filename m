Return-Path: <sascha-ml-linux-yocto-poky@silbe.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7A46BE00DA8; Fri, 15 Dec 2017 06:17:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [84.201.25.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from bbox.sascha.silbe.org (bbox.sascha.silbe.org [84.201.25.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B1EB0E00DA5
	for <poky@yoctoproject.org>; Fri, 15 Dec 2017 06:17:48 -0800 (PST)
Received: from twin.sascha.silbe.org (twin.sascha.silbe.org [192.168.1.2])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(Client CN "twin.sascha.silbe.org",
	Issuer "stunnel Pseudo-CA" (verified OK))
	by bbox.sascha.silbe.org (Postfix) with ESMTPS id 90B11BEF83
	for <poky@yoctoproject.org>; Fri, 15 Dec 2017 15:17:47 +0100 (CET)
Received: (nullmailer pid 22460 invoked by uid 8193);
	Fri, 15 Dec 2017 14:17:47 -0000
Resent-To: poky@yoctoproject.org
Resent-From: Sascha Silbe <sascha-pgp@silbe.org>
Resent-Date: Fri, 15 Dec 2017 15:17:30 +0100
Resent-Message-ID: <toebmj0cbyd.fsf@twin.sascha.silbe.org>
To: Alexander Kanavin <alexander.kanavin@linux.intel.com>,
	poky@yoctoproject.org
In-Reply-To: <f02f7dfd-cee9-809e-1ea3-313d1c42e79c@linux.intel.com>
References: <20171215105208.9957-1-x-yo17@se-silbe.de>
	<f02f7dfd-cee9-809e-1ea3-313d1c42e79c@linux.intel.com>
Date: Fri, 15 Dec 2017 15:15:49 +0100
Message-ID: <toeefnwcc16.fsf@twin.sascha.silbe.org>
MIME-Version: 1.0
From: Sascha Silbe <x-yo17@se-silbe.de>
Subject: Re: [PATCH] gitignore: ignore documentation build products
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
X-List-Received-Date: Fri, 15 Dec 2017 14:17:49 -0000
X-Groupsio-MsgNum: 11078
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Dear Alexander,

Alexander Kanavin <alexander.kanavin@linux.intel.com> writes:

> On 12/15/2017 12:52 PM, Sascha Silbe wrote:
>
>> +/documentation/bsp-guide/bsp-guide.html
>> +/documentation/bsp-guide/bsp-guide.pdf
>> +/documentation/bsp-guide/bsp-guide.tgz
>> +/documentation/dev-manual/dev-manual.html
>> +/documentation/dev-manual/dev-manual.pdf
>> +/documentation/dev-manual/dev-manual.tgz
>
> You can condense these into much fewer amount of entries using *, I think?

I've thought about that but e.g. /documentation/*/*.html would risk
excluding future manually edited files as well, not just the build
output. If source and build directory were different that would be much
less of a concern but the documentation doesn't use a separate build
directory. And unfortunately git only supports fnmatch() style patterns
in .gitignore, not bash-style brace expansion or regular expressions.

But if you're certain there won't be manually edited HTML or PDF files
in the future and would prefer a more compact solution I'm happy to
switch to using wildcards.

Sascha
=2D-=20
Softwareentwicklung Sascha Silbe, Niederhofenstra=C3=9Fe 5/1, 71229 Leonberg
https://se-silbe.de/
USt-IdNr.: DE281696641

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCgAGBQJaM9keAAoJEMGPauiBMO2Xzr8P/2AU9NibFeMMTnyNdj/iVudN
o28fZD2LClhOnOH9IK0tVP6w41JYSPPlw92HMr/OP7wpwcWaSdhS9bZ8m5dUVCrS
oxHZPlx7zu27tvriCaWHMAbyzqDCEJvWVLi3b2smRqtRNDdrwqgiifqdfzzdSiyA
9O9YAgk0lAF1V3cyBkQdZGQdz+s3Q8u20/FMkA2CKPCtbuO3TSNr7VUR7orlgnpm
i6jI6G5z62PqtCt2gxmqDORnbhPQtRb5wyVNGvl7UrqwwWixXpetwOU2fG6gd35D
OpjXHot1CisSL4U5K7sUTQ+RimjkyHghPu2XaMbo1QMIgy34js3cIqMPAnTR3zTp
PXtVesLyieY/DK1DJKDx3MgBKFpKrSlFl0VD/dqyVNtNL76SoUaSOEmztVdQBQxE
q3MDbImAK57Wqcif0z2QXekOZY/4nqFXLxyN+emIPI/zjAxWB0tvz0ehj1ur8hft
Rm+SwHlLt4fTdxrOi+7TzXzjLAcR7PvNk5b5+QfCYTtjZLWJmT+J2Xgh8aS5xIpD
NvfnlgHVB2QC2nWDY9NV/kh5ZasKKKrwFy8WTRuWzMA+xnZv2xdL/4t75VLlxhAL
RkSAsWNav9I4A0AfMi4OTxphZLEuK8EjD8cyIeJZe73DU6cPXPp52EfipMLZjkTe
E6ssZLdk8ybcbypeautt
=zUWc
-----END PGP SIGNATURE-----

--=-=-=--
