Return-Path: <raj.khem@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 02316E01471
	for <poky@yoctoproject.org>; Tue,  3 Jul 2012 15:32:38 -0700 (PDT)
Received: by mail-pb0-f48.google.com with SMTP id rq8so11784488pbb.35
	for <poky@yoctoproject.org>; Tue, 03 Jul 2012 15:32:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:x-mailer:in-reply-to:references
	:in-reply-to:references;
	bh=CBq5fYygpAjzlpAO5rVTxR8Q3R+2serFODxMlf+Kdso=;
	b=fC6pYUyOsp1UK/mfJtSAydnRDpiHu4MgzYRuSIFSWTolopZH74joPOhg3DW9Mbk03x
	u6L85r+xgI06hpIqsLMeJuITtmSvKhDCHbU102+fVjFiM/SCcmO9Rogr2lFud27p/sjl
	Y5KHzLO4WI5NAtGrh7lpwntzLjRsill65G1vb/5R73kDTG1Eg/4QGkUzdFyuTPEPruKu
	IGoWoa0xrEobROeiNwQVnx4J3Y4w14Ov0Dba9LBEyaFWkISrSnf0irez1NMfJAr8uW6b
	oigBWk9RjCK4Eh9eOxAXfhunTJ2rwSCHHwHr52u9x4PGjcHF3AUmXJkVRv5oVnb+K4Oe
	NqoQ==
Received: by 10.68.221.41 with SMTP id qb9mr11425436pbc.147.1341354758939;
	Tue, 03 Jul 2012 15:32:38 -0700 (PDT)
Received: from leo.gateway.2wire.net
	(99-57-140-209.lightspeed.sntcca.sbcglobal.net. [99.57.140.209])
	by mx.google.com with ESMTPS id nj4sm2425447pbc.5.2012.07.03.15.32.37
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 03 Jul 2012 15:32:38 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: poky@yoctoproject.org
Date: Tue,  3 Jul 2012 15:32:08 -0700
Message-Id: <698ad12b6571de4a951e7da18cd459cd1727ad11.1341354357.git.raj.khem@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <f6a37520b3bcecef1618bf98a15eac5b69000b78.1341354357.git.raj.khem@gmail.com>
References: <f6a37520b3bcecef1618bf98a15eac5b69000b78.1341354357.git.raj.khem@gmail.com>
In-Reply-To: <cover.1341354357.git.raj.khem@gmail.com>
References: <cover.1341354357.git.raj.khem@gmail.com>
Subject: [denzil][PATCH 7/9] bitbake: fetch2: Explicitly check for mirror tarballs in mirror handling code
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
X-List-Received-Date: Tue, 03 Jul 2012 22:32:39 -0000

From: Richard Purdie <richard.purdie@linuxfoundation.org>

With support for things like git:// -> git:// urls, we need to be
more explicity about the mirrortarball check since we need to fall
through to the following code in other cases.

(From Poky rev: 28e858cd6f7509468ef3e527a86820b9e06044db)

(Bitbake rev: a2459f5ca2f517964287f9a7c666a6856434e631)

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 bitbake/lib/bb/fetch2/__init__.py |    3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/bitbake/lib/bb/fetch2/__init__.py b/bitbake/lib/bb/fetch2/__init__.py
index 7c05c61..b3b3b48 100644
--- a/bitbake/lib/bb/fetch2/__init__.py
+++ b/bitbake/lib/bb/fetch2/__init__.py
@@ -476,7 +476,8 @@ def try_mirror_url(newuri, origud, ud, ld, check = False):
         # We may be obtaining a mirror tarball which needs further processing by the real fetcher
         # If that tarball is a local file:// we need to provide a symlink to it
         dldir = ld.getVar("DL_DIR", True)
-        if os.path.basename(ud.localpath) != os.path.basename(origud.localpath):
+        if origud.mirrortarball and os.path.basename(ud.localpath) == os.path.basename(origud.mirrortarball) \
+                and os.path.basename(ud.localpath) != os.path.basename(origud.localpath):
             open(ud.donestamp, 'w').close()
             dest = os.path.join(dldir, os.path.basename(ud.localpath))
             if not os.path.exists(dest):
-- 
1.7.9.5


