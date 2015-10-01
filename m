Return-Path: <rehsack@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F2DF6E00B43; Thu,  1 Oct 2015 11:04:08 -0700 (PDT)
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
	*      [209.85.212.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wi0-f182.google.com (mail-wi0-f182.google.com
	[209.85.212.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 63550E00CAD
	for <poky@yoctoproject.org>; Thu,  1 Oct 2015 11:04:07 -0700 (PDT)
Received: by wiclk2 with SMTP id lk2so2250657wic.0
	for <poky@yoctoproject.org>; Thu, 01 Oct 2015 11:04:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:content-transfer-encoding:subject:message-id:date
	:to:mime-version;
	bh=Kt3D/bOqhNrxzEDmb+H38zw59GXkIa3UzQSEPwTB6mQ=;
	b=ihDRasDC9VWRkKIJLKstgmfZMGrTqQysMzPZecqMvspYcHXvPVGmwIbWFmvJZ46x92
	2KKIc7fndxBMpMFKbmZezJD3Sh5JfRdLpmk1Gy+XQHgqlUGh6h6OskpoyPnifzttItPe
	IyeOy0KmpHmtw6efZos28u0u+0ho1ViZWoifact7jsXz9qqvaIYakKDXFtSwcwo0yRb8
	6TGSdj3ot/TN4SOyIwCtoGwMvWeHTP/NDKWPIKts4PGMfHcKQJdCYKuJ1nc737ic3v7+
	bbsVvZOnkwkD5NewXPQNDBuIoAkVC7wdW7vZSverMH5NPP13QnNJPeKXSSmprAnNFGjx
	GHIA==
X-Received: by 10.180.105.196 with SMTP id go4mr146793wib.36.1443722646447;
	Thu, 01 Oct 2015 11:04:06 -0700 (PDT)
Received: from ernie.rdm.local (rademacherexchange.de. [46.245.221.222])
	by smtp.gmail.com with ESMTPSA id jf3sm4352813wic.8.2015.10.01.11.04.05
	for <poky@yoctoproject.org> (version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 01 Oct 2015 11:04:05 -0700 (PDT)
From: Jens Rehsack <rehsack@gmail.com>
Message-Id: <87382DB8-72AF-422C-87DC-B8CC5BDBF133@gmail.com>
Date: Thu, 1 Oct 2015 20:04:04 +0200
To: poky@yoctoproject.org
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2104\))
X-Mailer: Apple Mail (2.2104)
Subject: [PATCH 4/9] add support for svn-checkout to different path
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
X-List-Received-Date: Thu, 01 Oct 2015 18:04:09 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


avoid checkout is always module - svn is path based and =
tag/branch-checkout
might break builds because of invaid pathspecs

Signed-off-by: Jens Rehsack <sno@netbsd.org>
---
 bitbake/lib/bb/fetch2/svn.py | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/bitbake/lib/bb/fetch2/svn.py b/bitbake/lib/bb/fetch2/svn.py
index 1733c2b..8a29193 100644
--- a/bitbake/lib/bb/fetch2/svn.py
+++ b/bitbake/lib/bb/fetch2/svn.py
@@ -54,6 +54,11 @@ class Svn(FetchMethod):
=20
         ud.module =3D ud.parm["module"]
=20
+        if not "path_spec" in ud.parm:
+            ud.path_spec =3D ud.module
+        else:
+            ud.path_spec =3D ud.parm["path_spec"]
+
         # Create paths to svn checkouts
         relpath =3D self._strip_leading_slashes(ud.path)
         ud.pkgdir =3D os.path.join(data.expand('${SVNDIR}', d), =
ud.host, relpath)
@@ -102,7 +107,7 @@ class Svn(FetchMethod):
=20
             if command =3D=3D "fetch":
                 transportuser =3D ud.parm.get("transportuser", "")
-                svncmd =3D "%s co %s %s://%s%s/%s%s %s" % (ud.basecmd, =
" ".join(options), proto, transportuser, svnroot, ud.module, suffix, =
ud.module)
+                svncmd =3D "%s co %s %s://%s%s/%s%s %s" % (ud.basecmd, =
" ".join(options), proto, transportuser, svnroot, ud.module, suffix, =
ud.path_spec)
             elif command =3D=3D "update":
                 svncmd =3D "%s update %s" % (ud.basecmd, " =
".join(options))
             else:
@@ -149,7 +154,7 @@ class Svn(FetchMethod):
=20
         os.chdir(ud.pkgdir)
         # tar them up to a defined filename
-        runfetchcmd("tar %s -czf %s %s" % (tar_flags, ud.localpath, =
ud.module), d, cleanup =3D [ud.localpath])
+        runfetchcmd("tar %s -czf %s %s" % (tar_flags, ud.localpath, =
ud.path_spec), d, cleanup =3D [ud.localpath])
=20
     def clean(self, ud, d):
         """ Clean SVN specific files and dirs """
--=20
1.9.1

--=20
Jens Rehsack - rehsack@gmail.com


