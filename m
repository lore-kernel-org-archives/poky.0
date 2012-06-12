Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A4EAFE0144D
	for <poky@yoctoproject.org>; Tue, 12 Jun 2012 13:41:47 -0700 (PDT)
Received: from localhost (c-76-105-137-48.hsd1.or.comcast.net [76.105.137.48])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id F07F92FE88
	for <poky@yoctoproject.org>; Tue, 12 Jun 2012 16:41:40 -0400 (EDT)
From: Scott Garman <scott.a.garman@intel.com>
To: poky@yoctoproject.org
Date: Tue, 12 Jun 2012 13:41:01 -0700
Message-Id: <4c2ee8f48b78a43fc1f1f10ad633dadd5285c559.1339533507.git.scott.a.garman@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1339533507.git.scott.a.garman@intel.com>
References: <cover.1339533507.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1339533507.git.scott.a.garman@intel.com>
References: <cover.1339533507.git.scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: F07F92FE88.25895
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 11/31] rpm 5.4.0: respect to the arch when choose the alternatives
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
X-List-Received-Date: Tue, 12 Jun 2012 20:41:47 -0000

From: Robert Yang <liezhi.yang@windriver.com>

There is a bug if we:
1) bitbake diffutils with MACHINE=crownbay
2) bitbake diffutils with MACHINE=qemux86
3) bitbake core-image-sato with MACHINE=crownbay

Then the diffutils.i586 would be installed to the crownbay's image, this
is because diffutils.i586 is newer than diffutils.core2, and rpm doesn't
respect to the arch priorities:

We have put the archs in order in _solve_dbpath:

crownbay/solvedb:core2/solvedb:i586/solvedb:all/solvedb

Fix rpm to respect to the order, for example, if it finds a pkg in both
core2/ and i586/, and the core2/ comes first, it should not use the one
in i586/ even if it's build time is newer.

Note: Don't worry about the _free(*ptr), it can check whether ptr is
NULL or not.

This is for the denzil branch, and the master branch also needs it.

[YOCTO #2360]

Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
---
 .../rpm/rpm/rpm-respect-arch.patch                 |   67 ++++++++++++++++++++
 meta/recipes-devtools/rpm/rpm_5.4.0.bb             |    3 +-
 2 files changed, 69 insertions(+), 1 deletion(-)
 create mode 100644 meta/recipes-devtools/rpm/rpm/rpm-respect-arch.patch

diff --git a/meta/recipes-devtools/rpm/rpm/rpm-respect-arch.patch b/meta/recipes-devtools/rpm/rpm/rpm-respect-arch.patch
new file mode 100644
index 0000000..9b63b37
--- /dev/null
+++ b/meta/recipes-devtools/rpm/rpm/rpm-respect-arch.patch
@@ -0,0 +1,67 @@
+rpmts.c: respect to the arch priorities
+
+Let rpm respect to the priorities when choose alternatives rpm, the arch
+which comes first is preferred.
+
+Upstream-Status: Pending
+
+Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
+---
+ lib/rpmts.c |   14 ++++++++++++++
+ 1 files changed, 14 insertions(+), 0 deletions(-)
+
+diff --git a/lib/rpmts.c b/lib/rpmts.c
+index 3fbbc9e..40ec08e 100644
+--- a/lib/rpmts.c
++++ b/lib/rpmts.c
+@@ -353,6 +353,7 @@ int rpmtsSolve(rpmts ts, rpmds ds, /*@unused@*/ const void * data)
+     Header h = NULL;
+     size_t bhnamelen = 0;
+     time_t bhtime = 0;
++    const char *bharch = NULL;
+     rpmTag rpmtag;
+     const char * keyp;
+     size_t keylen = 0;
+@@ -409,6 +410,7 @@ fprintf(stderr, "--> %s(%p,%p,%p)\n", __FUNCTION__, ts, ds, data);
+ 	while ((h = rpmmiNext(mi)) != NULL) {
+ 	    size_t hnamelen;
+ 	    time_t htime;
++	    const char *harch = NULL;
+ 
+ 	    if (rpmtag == RPMTAG_PROVIDENAME && !rpmdsAnyMatchesDep(h, ds, 1))
+ 		continue;
+@@ -431,12 +433,23 @@ fprintf(stderr, "--> %s(%p,%p,%p)\n", __FUNCTION__, ts, ds, data);
+ 	    if (htime <= bhtime)
+ 		continue;
+ 
++	    /* XXX Respect to the arch priorities */
++	    he->tag = RPMTAG_ARCH;
++	    xx = headerGet(h, he, 0);
++	    harch = ((xx && he->p.str) ? xstrdup(he->p.str) : NULL);
++	    he->p.ptr = _free(he->p.ptr);
++	    if (bharch && (strcmp(bharch, harch) != 0))
++		continue;
++
+ 	    /* Save new "best" candidate. */
+ 	    (void)headerFree(bh);
+ 	    bh = NULL;
+ 	    bh = headerLink(h);
+ 	    bhtime = htime;
+ 	    bhnamelen = hnamelen;
++	    bharch = _free(bharch);
++	    bharch = xstrdup(harch);
++	    harch = _free(harch);
+ 	}
+ 	mi = rpmmiFree(mi);
+ 
+@@ -449,6 +462,7 @@ fprintf(stderr, "--> %s(%p,%p,%p)\n", __FUNCTION__, ts, ds, data);
+       } while (1);
+ 
+     }
++    bharch = _free(bharch);
+ 
+     /* Is there a suggested resolution? */
+     if (bh == NULL)
+-- 
+1.7.1
+
diff --git a/meta/recipes-devtools/rpm/rpm_5.4.0.bb b/meta/recipes-devtools/rpm/rpm_5.4.0.bb
index 5ee6b47..d79d199 100644
--- a/meta/recipes-devtools/rpm/rpm_5.4.0.bb
+++ b/meta/recipes-devtools/rpm/rpm_5.4.0.bb
@@ -45,7 +45,7 @@ LIC_FILES_CHKSUM = "file://COPYING.LIB;md5=2d5025d4aa3495befef8f17206a5b0a1"
 DEPENDS = "bzip2 zlib db openssl elfutils expat libpcre attr acl popt ${extrarpmdeps}"
 extrarpmdeps = "python perl file"
 extrarpmdeps_virtclass-native = "python-native file-native"
-PR = "r36"
+PR = "r37"
 
 # rpm2cpio is a shell script, which is part of the rpm src.rpm.  It is needed
 # in order to extract the distribution SRPM into a format we can extract...
@@ -70,6 +70,7 @@ SRC_URI = "http://www.rpm5.org/files/rpm/rpm-5.4/rpm-5.4.0-0.20101229.src.rpm;ex
 	   file://pythondeps.sh \
 	   file://rpmdeps-oecore.patch \
 	   file://rpm-resolvedep.patch \
+	   file://rpm-respect-arch.patch \
 	  "
 
 #	   file://rpm-autoconf.patch \
-- 
1.7.9.5


