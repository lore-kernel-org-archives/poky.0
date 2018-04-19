Return-Path: <Vignesh.Rajendran@in.bosch.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DD3D4E00C19; Wed, 18 Apr 2018 21:26:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from de-out1.bosch-org.com (de-out1.bosch-org.com [139.15.230.186])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F179FE00B9C
	for <poky@yoctoproject.org>; Wed, 18 Apr 2018 21:26:52 -0700 (PDT)
Received: from si0vm1948.rbesz01.com (unknown [139.15.230.188])
	by fe0vms0187.rbdmz01.com (Postfix) with ESMTPS id 40RQtN0W3Lz1XLFYb
	for <poky@yoctoproject.org>; Thu, 19 Apr 2018 06:26:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=in.bosch.com;
	s=2015-01-21; t=1524112012;
	bh=Z82gI/uiUyInIjpSrNlFiRoFPJ1/SMTjDPb3N8PyKbs=; l=10;
	h=From:From:Reply-To:Sender;
	b=JJTd90iZDp32JowKpZyMT59UPRjehY6VC8MAIlSLglu77d8tmYpxlHNytThkYGmGY
	JWwMZnftx0obgV+AOluwNmZLN+MF+O8pHgxL4o53nBMcfJrs2jzkw4Mlmly0Z+AlHh
	1tYLmsvHLp0g5a96Vyu5c6/Y9OLRVSLXfsppj8GU=
Received: from fe0vm1741.rbesz01.com (unknown [10.58.172.176])
	by si0vm1948.rbesz01.com (Postfix) with ESMTPS id 40RQtN0C7Qz1SC
	for <poky@yoctoproject.org>; Thu, 19 Apr 2018 06:26:52 +0200 (CEST)
X-AuditID: 0a3aad15-9f3ff70000007ca2-ef-5ad81a9084ba
Received: from si0vm1949.rbesz01.com ( [10.58.173.29])
	(using TLS with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by fe0vm1741.rbesz01.com (SMG Outbound) with SMTP id
	C2.20.31906.09A18DA5; Thu, 19 Apr 2018 06:26:56 +0200 (CEST)
Received: from FE-HUB1001.de.bosch.com (fe-hub1001.de.bosch.com [10.4.103.109])
	by si0vm1949.rbesz01.com (Postfix) with ESMTPS id 40RQtM5WVpz6D44M6
	for <poky@yoctoproject.org>; Thu, 19 Apr 2018 06:26:51 +0200 (CEST)
Received: from APAC (10.169.42.196) by FE-HUB1001.de.bosch.com (10.4.103.109)
	with Microsoft SMTP Server id 14.3.319.2;
	Thu, 19 Apr 2018 06:26:51 +0200
From: Vignesh Rajendran <vignesh.rajendran@in.bosch.com>
To: <poky@yoctoproject.org>
Date: Thu, 19 Apr 2018 09:56:47 +0530
Message-ID: <e8d2f42f4a0ff11961e831d00caeb86a5efdbb13.1522820703.git.vignesh.rajendran@in.bosch.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1522820703.git.vignesh.rajendran@in.bosch.com>
References: <cover.1522820703.git.vignesh.rajendran@in.bosch.com>
MIME-Version: 1.0
X-Originating-IP: [10.169.42.196]
X-Brightmail-Tracker: H4sIAAAAAAAAA22Sa0wTWRiGOe1Ap03HTKcgH6UQHV0UV7BVFLzEeInJ/tkEl8SEJisOdKRV
	Ck2nVDGamBgvFEVUVGjQlY0QXKru4oVqEKXuD/CCgCJgvWRZogSNks1qrZfWGQdsf/jvO9/7
	PuedeXNwKXVMpsHNxXbWVswU0TEKTLHkbFJalWbQoDvYmJp1POiWrUA/7e2sjMlGBsUyI1tk
	drC2ecs3KEwD9b9LrVdg63DNn7KdqF3tRHIcyAw49PARciIFTpE1ErjZ2IGJBx+C/yqqYgQX
	RdYiGDundSIcjyGzYOT5EmGMJROhu71McEjJReCqaJYJs5rMhdGGpq8kRv4AB1y9UmEmSCPU
	njgqFXOTYai7/OssJ1dBZfeZaDFpJVS3jUhEvwq6akcw8X6AjtHRCXY6tFwYw6oQ6YqwuSJs
	p5DkDxS3kdU5LPrMDH26LZ/ltun06QUllhYklhbnQfX167yIxBGtJHyyQQMVzTi4MosXLcQl
	dBxxb+mAgZqSX2IsMzGcKc9WWsRytIZAUVFRlPrbmivNt5g5zlxS7EWAS+lYIv4uzxFGpmwb
	aysRMS9KxDE6nthv3G6gyELGzm5mWStrm1SX4jgNxEgC/w0qG1vIbt1oLrJPynSSmDk1UomM
	leByL1qAK/nshcIVBGdlLJy5cAJPEHFqchtGb6FMTTzxVGBIQTWVFn9L1WiJ1F39BiouQgiT
	Y2gI8b2piU4BVvLvMZwHhEddl0upJpZhaH4Dz5CVcqi7M4DgpOctAt+7v6Ph3J6+aOi76pLB
	g4//ysAZKJdD08uQEjyfAyrYX96s5nddseC6f2sqnHQ/Bjjs3JcA7vGjGrjkb9bCp4utWnAH
	bmrh0amKZAhU1yTD+9PBZGgbrpwBwb7GmfDqdmcKHOn9ZzYM1g7/CLvfnpkLQ43euRD0NKTD
	Y39oHlz39+jAU31fN8aXKeHLfLjggVCmnbF/p8yJbfjvNDvRjcS6Z38FlEHPm/EV2ry7vb4t
	w72Zd/z92T2hn+H/1zn9Bxxu355szL7+8IlcWUrIf/l8PnaNW5xVnaS3271chqPDnbN2xzq0
	LKRJSCnI3vTrs67z9PIdL7acbU2TSK1Ns1pX0+3Em5zxGuuTGaYPq5Wqmb/d+6UFHcQ8A2um
	3aYxzsTo50htHPMFyjl1rSkEAAA=
Subject: [PULL] package.bbclass: provide debug sources in externalsrc -dbg packages
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
X-List-Received-Date: Thu, 19 Apr 2018 04:26:53 -0000
Content-Type: text/plain

The recipes which are using externalsrc method doesn't contain the
debug sources in their -dbg packages.

Add a handling in copydebugsources function to copy the debugsources for
externalsrc -dbg packages.

Signed-off-by: Vignesh Rajendran <vignesh.rajendran@in.bosch.com>
---
 meta/classes/externalsrc.bbclass |  3 +++
 meta/classes/package.bbclass     | 14 +++++++++++---
 2 files changed, 14 insertions(+), 3 deletions(-)

diff --git a/meta/classes/externalsrc.bbclass b/meta/classes/externalsrc.bbclass
index 3f1d396..042f935 100644
--- a/meta/classes/externalsrc.bbclass
+++ b/meta/classes/externalsrc.bbclass
@@ -126,6 +126,9 @@ python () {
             d.setVar('CONFIGURESTAMPFILE', configstamp)
             d.setVar('STAMP', '${STAMPS_DIR}/work-shared/${PN}/${EXTENDPE}${PV}-${PR}')
             d.setVar('STAMPCLEAN', '${STAMPS_DIR}/work-shared/${PN}/*-*')
+
+	# set DEBUG_PREFIX_MAP to external source path
+	d.appendVar("DEBUG_PREFIX_MAP", "-fdebug-prefix-map=${EXTERNALSRC}=/usr/src/debug/${PN}/${EXTENDPE}${PV}-${PR}")
 }
 
 python externalsrc_configure_prefunc() {
diff --git a/meta/classes/package.bbclass b/meta/classes/package.bbclass
index 504c023..9466a4b 100644
--- a/meta/classes/package.bbclass
+++ b/meta/classes/package.bbclass
@@ -414,6 +414,7 @@ def copydebugsources(debugsrcdir, d):
         workdir = d.getVar("WORKDIR")
         workparentdir = os.path.dirname(os.path.dirname(workdir))
         workbasedir = os.path.basename(os.path.dirname(workdir)) + "/" + os.path.basename(workdir)
+	externalsrc = d.getVar('EXTERNALSRC', True)
 
         # If build path exists in sourcefile, it means toolchain did not use
         # -fdebug-prefix-map to compile
@@ -438,10 +439,17 @@ def copydebugsources(debugsrcdir, d):
         processdebugsrc += "fgrep -zw '%s' | "
         # Remove prefix in the source paths
         processdebugsrc += "sed 's#%s##g' | "
-        processdebugsrc += "(cd '%s' ; cpio -pd0mlL --no-preserve-owner '%s%s' 2>/dev/null)"
+        # handle external sources to provide sources in -dbg packages
+        if externalsrc:
+            localsrc_prefix = "/usr/src/debug/"
+            processdebugsrc += "sed 's#%s/##g' | "
+            processdebugsrc += "(cd '%s' ; cpio -pd0mlL --no-preserve-owner '%s%s/%s' 2>/dev/null)"
+            cmd = processdebugsrc % (sourcefile, workbasedir, localsrc_prefix, workbasedir, externalsrc, dvar, debugsrcdir, workbasedir)
+        else:
+            processdebugsrc += "(cd '%s' ; cpio -pd0mlL --no-preserve-owner '%s%s' 2>/dev/null)"
+            cmd = processdebugsrc % (sourcefile, workbasedir, localsrc_prefix, workparentdir, dvar, debugsrcdir)
 
-        cmd = processdebugsrc % (sourcefile, workbasedir, localsrc_prefix, workparentdir, dvar, debugsrcdir)
-        (retval, output) = oe.utils.getstatusoutput(cmd)
+	(retval, output) = oe.utils.getstatusoutput(cmd)
         # Can "fail" if internal headers/transient sources are attempted
         #if retval:
         #    bb.fatal("debug source copy failed with exit code %s (cmd was %s)" % (retval, cmd))
-- 
2.7.4


