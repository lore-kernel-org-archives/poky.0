Return-Path: <Jack_Fewx@dell.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 212B5E00927; Wed, 22 Jul 2015 07:51:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [143.166.148.206 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 64 seconds by postgrey-1.32 at yocto-www;
	Wed, 22 Jul 2015 07:51:21 PDT
Received: from ausc60ps301.us.dell.com (ausc60ps301.us.dell.com
	[143.166.148.206])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 97A04E008EC;
	Wed, 22 Jul 2015 07:51:21 -0700 (PDT)
DomainKey-Signature: s=smtpout; d=dell.com; c=nofws; q=dns;
	h=X-LoopCount0:X-IronPort-AV:From:To:Date:Subject:
	Thread-Topic:Thread-Index:Message-ID:Accept-Language:
	Content-Language:X-MS-Has-Attach:X-MS-TNEF-Correlator:
	x-titus-version:x-tituslabs-classifications-30:
	x-tituslabs-classificationhash-30:x-titusconfig:
	acceptlanguage:Content-Type:Content-Transfer-Encoding:
	MIME-Version;
	b=A/ISzhuamr4qA7UfCfGElB2auya31nboYBWhC6P4vIZqAHJNsNLlpjbA
	H5OuBIRERSCcFOCmatIe9J2R86o12chktJ7o3S2dbJrTH7XTNF9K06cKP
	pvOu8syYM9DRp/FdvLZRjGmjEliYjmz6Tfb8uOrq3Yg8cBEKGXrxKgF2v
	k=;
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
	d=dell.com; i=@dell.com; q=dns/txt; s=smtpout;
	t=1437576682; x=1469112682; h=from:to:date:subject:message-id:
	content-transfer-encoding:mime-version;
	bh=c5ZY5iKCbI4Hm400RtHN/4+KNA3A4qsKF2Gub6a7Lqs=;
	b=z+2WTeSMGeNZia5Jw+n7a5f5hTHbKaCaYSAjKAzPL6JHYWLpfXdOgayV
	efK9GvmkT3kUVmp8k+WX+ASZQo4JE+zHtQQrxpLRvf9Y743qnjATSPeM2
	6Mp/MsFwd7VGj47tBFc9j8Or0nyTEZDMFFv5skdlkPLrLy5R2eo+JUKSy g=;
X-LoopCount0: from 10.175.216.251
X-IronPort-AV: E=Sophos;i="5.15,523,1432616400"; d="scan'208";a="709316499"
From: <Jack_Fewx@Dell.com>
To: <poky@yoctoproject.org>, <yocto@yoctoproject.org>
Date: Wed, 22 Jul 2015 09:50:04 -0500
Thread-Topic: Missing dependencies after setscene, postinst fails
Thread-Index: AdDEh7zdmHfhIRw2Tx+asoTJ0o4bgA==
Message-ID: <DBEC4AD184C3D34D8E5AF7DE018CA85C1C62DCC663@AUSX7MCPS305.AMER.DELL.COM>
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
X-List-Received-Date: Wed, 22 Jul 2015 14:51:24 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

I need some help figuring out a build problem I'm seeing.  I know why the b=
uild is failing, I just don't know the best way to fix it.  I have figured =
out a workaround, but it seems very hack-ish to me, and I'd really like to =
know if there is a more elegant solution?  Is this a defect or something I'=
m doing wrong?  Has anyone else seen this?

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



