Return-Path: <Jack_Fewx@dell.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 910FAE00A53; Tue, 28 Jul 2015 07:12:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [143.166.148.223 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from ausxipps301.us.dell.com (ausxipps301.us.dell.com
	[143.166.148.223])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B5A21E00992
	for <poky@yoctoproject.org>; Tue, 28 Jul 2015 07:12:19 -0700 (PDT)
DomainKey-Signature: s=smtpout; d=dell.com; c=nofws; q=dns;
	h=X-LoopCount0:X-IronPort-AV:From:To:Date:Subject:
	Thread-Topic:Thread-Index:Message-ID:Accept-Language:
	Content-Language:X-MS-Has-Attach:X-MS-TNEF-Correlator:
	x-titus-version:x-tituslabs-classifications-30:
	x-tituslabs-classificationhash-30:x-titusconfig:
	acceptlanguage:Content-Type:Content-Transfer-Encoding:
	MIME-Version;
	b=K4wU8E715zHsQyzTrsedItj9NHcArh4qPJSUn9sz5sOFE84vufWquwnY
	h0z+btVYHiAC2T8kOeIEJEx3Yk8ZkXITjbbaEK/r1ptc0cMXGNvyPGHyc
	9RpWEuJPF8Wm9CvporP0sDRkxPfHVrznxBOqgDr1ErLj0/bgbA2/vyRnB
	E=;
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
	d=dell.com; i=@dell.com; q=dns/txt; s=smtpout;
	t=1438092740; x=1469628740; h=from:to:date:subject:message-id:
	content-transfer-encoding:mime-version;
	bh=XrMyv2aXGjF7Qob4oPlDpVplmBCkthKEd3O1qXG+DZ4=;
	b=U/3BIfBmYL1YwfDwyWQIbEs/OJ2mGdEhZvo3GJSbf6D6nVq6fu7DvYVL
	t6hjRVEW1im+gnSs/nPAIi6mT29oBIy3Ezh9u6q2/NaDItZNgXjcDO0YY
	rauy32fatgkW62RA6/dmPhpeyGdVfhDdeiBtHo9Rs4qK7T9hutY+At1AR w=;
X-LoopCount0: from 10.170.28.41
X-IronPort-AV: E=Sophos;i="5.15,563,1432616400"; d="scan'208";a="683242482"
From: <Jack_Fewx@Dell.com>
To: <poky@yoctoproject.org>
Date: Tue, 28 Jul 2015 09:12:07 -0500
Thread-Topic: Missing dependencies after setscene, postinst fails
Thread-Index: AdDEh7zdmHfhIRw2Tx+asoTJ0o4bgA==
Message-ID: <DBEC4AD184C3D34D8E5AF7DE018CA85C1C62E6E54E@AUSX7MCPS305.AMER.DELL.COM>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-version: 3.5.29.3
x-tituslabs-classifications-30: TLPropertyRoot=Dell;Classification=No
	Restrictions;Sublabels=;
x-tituslabs-classificationhash-30: aZMi/WbTZrlATXhBcdW5gZbc7KdRWPMNqVURt28QiqDnLiAkEUJqYTPGAAbovQVBuq3RALLamgASmDFbZr2E7UYB6TYTH/UEJhP+1UnFDpgBHl/e4GuVp4hBM2/cZcc3L3Z/RTnH+p9CKaWOaPEEM1QRE6LgNS+R48L+GKAzPHxITDr68qZ/LnnvyAPCnICrP1SWbRDZNzfOFhshcPObxR4is3zovvWuxt9I6OLEqHMJLLfKSx/RJEJPG4LlFBof
x-titusconfig: 1.4AMER
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Missing dependencies after setscene, postinst fails
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
X-List-Received-Date: Tue, 28 Jul 2015 14:12:21 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

I am seeing build problems with a number of poky packages.  I know why the =
build is failing, but these should work "out of the box".  I have figured o=
ut a workaround, but it seems very hack-ish to me, and I'd really like to k=
now if there is a more elegant solution or if this is a bug?  Has anyone el=
se seen this?

- Setup:=20
Poky version is 1.7.1.  Working directories have been removed, forcing all =
packages to be restored through the setscene process. The rootfs is read-on=
ly, so postinst causes build failure instead of being postponed to first bo=
ot.

- Problem:
In this scenario I am consistently seeing 3 Poky recipes fail at postinst. =
 I have triaged the problem to be missing native-class dependencies for eac=
h of the 3 packages. =20

The problem packages are: ca-certificates, nss, and gdk-pixbuf-native.  ca-=
certificates and nss both depend on their own native-class builds, so ca-ce=
rtificates-native and nss-native respectively, and they fail after doing do=
_package_write_ipk_setscene.  gdk-pixbuf-native needs jpeg-native in order =
to complete do_populate_sysroot_setscene, but fails due to its absence.

Each of these recipes has a DEPENDS or PACKAGECONFIG appropriate to pull in=
 the needed package during the normal build process, but these dependencies=
 don't seem to carry over to the setscene process.

- My attempt at a solution:
My workaround is to write a bbappend for each of the 3 recipes that looks s=
omething like below, that explicitly add the missing dependencies:

--- /dev/null
+++ b/nss/nss_%.bbappend
+do_package_write_ipk_setscene[depends] +=3D "nss-native:do_populate_sysroo=
t"



