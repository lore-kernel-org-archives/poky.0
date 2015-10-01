Return-Path: <rehsack@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A6771E00CAD; Thu,  1 Oct 2015 11:06:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (rehsack[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wi0-f179.google.com (mail-wi0-f179.google.com
	[209.85.212.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 64B35E00A73
	for <poky@yoctoproject.org>; Thu,  1 Oct 2015 11:06:43 -0700 (PDT)
Received: by wicge5 with SMTP id ge5so905777wic.0
	for <poky@yoctoproject.org>; Thu, 01 Oct 2015 11:06:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:content-transfer-encoding:subject:message-id:date
	:to:mime-version;
	bh=AY2WCTeGwgR69a0HVbHa/tXch7uAqma7ZRe1DOApsJM=;
	b=WEufQMlmBlTe2n68aakwltZCAVR/8mR9g9GvwquVMn/hrk58P3wu8KesLIFOSlp7k/
	+vSlIg21fc9lBUMIMjqbMu33Z6ZVxak03CfWkeFAskWYC9rxLG9xOBbXxWamLfGFE0MB
	fIhP/Vjy+rT/Dzdrpxv2FhyrAkE0OqNgPJD4m+FK+eBGpHev+CgJcM5IXBegl3bCeA4O
	mUoVc4oMqPU5LfoWNjIo0nknxfvvCueh697tMUnUhNdeSum6dYkAKyeid7ptQ9cFFRfo
	kfzn+pkDEy2o8/GjtyS+vJBHYl9nSJRZXbeHwoUMH6tdoZDGSOXMpuj5PdfYoKQNFFpL
	MEsg==
X-Received: by 10.180.39.193 with SMTP id r1mr112242wik.57.1443722803156;
	Thu, 01 Oct 2015 11:06:43 -0700 (PDT)
Received: from ernie.rdm.local (rademacherexchange.de. [46.245.221.222])
	by smtp.gmail.com with ESMTPSA id jf3sm4352813wic.8.2015.10.01.11.06.42
	for <poky@yoctoproject.org> (version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 01 Oct 2015 11:06:42 -0700 (PDT)
From: Jens Rehsack <rehsack@gmail.com>
Message-Id: <28FE669A-45D5-4970-9E31-F62B4AEC6681@gmail.com>
Date: Thu, 1 Oct 2015 20:06:42 +0200
To: poky@yoctoproject.org
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2104\))
X-Mailer: Apple Mail (2.2104)
Subject: [PATCH 8/9] Remove errornous extra path-specs for Module::Build based modules
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
X-List-Received-Date: Thu, 01 Oct 2015 18:06:45 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Signed-off-by: Jens Rehsack <sno@netbsd.org>
---
 meta/classes/cpan_build.bbclass | 10 ++--------
 1 file changed, 2 insertions(+), 8 deletions(-)

diff --git a/meta/classes/cpan_build.bbclass =
b/meta/classes/cpan_build.bbclass
index 3653748..fac074d 100644
--- a/meta/classes/cpan_build.bbclass
+++ b/meta/classes/cpan_build.bbclass
@@ -17,14 +17,8 @@ cpan_build_do_configure () {
 		. ${STAGING_LIBDIR}/perl/config.sh
 	fi
=20
-	perl Build.PL --installdirs vendor \
-				--destdir ${D} \
-				--install_path arch=3D"${libdir}/perl" \
-				--install_path script=3D${bindir} \
-				--install_path bin=3D${bindir} \
-				--install_path bindoc=3D${mandir}/man1 \
-				--install_path libdoc=3D${mandir}/man3 \
-                                ${EXTRA_CPAN_BUILD_FLAGS}
+	perl Build.PL --installdirs vendor --destdir ${D} \
+			${EXTRA_CPAN_BUILD_FLAGS}
=20
 	# Build.PLs can exit with success without generating a
 	# Build, e.g. in cases of missing configure time
--=20
1.9.1

--=20
Jens Rehsack - rehsack@gmail.com


