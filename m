Return-Path: <corneliux.stoicescu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B8003E0157B
	for <poky@yoctoproject.org>; Tue, 20 Aug 2013 01:40:04 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 20 Aug 2013 01:40:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,918,1367996400"; d="scan'208";a="348814716"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by azsmga001.ch.intel.com with ESMTP; 20 Aug 2013 01:39:58 -0700
Received: from localhost.localdomain (unknown [10.237.112.161])
	by linux.intel.com (Postfix) with ESMTP id 2ED7C6A4007;
	Tue, 20 Aug 2013 01:39:54 -0700 (PDT)
From: Stoicescu Cornel <corneliux.stoicescu@intel.com>
To: poky@yoctoproject.org
Date: Tue, 20 Aug 2013 11:44:45 +0200
Message-Id: <5c7b8fc342b19080ec02012156eb53c038794d69.1376923556.git.corneliux.stoicescu@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <712622e2dbfa2559b873730bd1d4d23cc827b295.1376923556.git.corneliux.stoicescu@intel.com>
References: <712622e2dbfa2559b873730bd1d4d23cc827b295.1376923556.git.corneliux.stoicescu@intel.com>
In-Reply-To: <cover.1376923556.git.corneliux.stoicescu@intel.com>
References: <cover.1376923556.git.corneliux.stoicescu@intel.com>
Subject: [PATCH 003/186] buildhistory: use bb.utils.mkdirhier instead of os.makedirs
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
X-List-Received-Date: Tue, 20 Aug 2013 08:40:06 -0000

From: Martin Jansa <martin.jansa@gmail.com>

* Multiple do_fetch[prefunc] can happen at the same time and
  if not os.path.exists(pkghistdir):
    os.makedirs(pkghistdir)
  isn't safe
* Use bb.utils.mkdirhier which doesn't raise error when directory exists

(From OE-Core rev: 9aac194d7db79129dcbed29cfb89c57dccf33729)

Signed-off-by: Martin Jansa <Martin.Jansa@gmail.com>
Signed-off-by: Saul Wold <sgw@linux.intel.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 meta/classes/buildhistory.bbclass |    6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/meta/classes/buildhistory.bbclass b/meta/classes/buildhistory.bbclass
index 55b6bbf..c32c7aa 100644
--- a/meta/classes/buildhistory.bbclass
+++ b/meta/classes/buildhistory.bbclass
@@ -169,7 +169,7 @@ python buildhistory_emit_pkghistory() {
 
     packagelist = packages.split()
     if not os.path.exists(pkghistdir):
-        os.makedirs(pkghistdir)
+        bb.utils.mkdirhier(pkghistdir)
     else:
         # Remove files for packages that no longer exist
         for item in os.listdir(pkghistdir):
@@ -268,7 +268,7 @@ def write_pkghistory(pkginfo, d):
 
     pkgpath = os.path.join(pkghistdir, pkginfo.name)
     if not os.path.exists(pkgpath):
-        os.makedirs(pkgpath)
+        bb.utils.mkdirhier(pkgpath)
 
     infofile = os.path.join(pkgpath, "latest")
     with open(infofile, "w") as f:
@@ -579,7 +579,7 @@ python write_srcrev() {
     srcrevs, tag_srcrevs = _get_srcrev_values(d)
     if srcrevs:
         if not os.path.exists(pkghistdir):
-            os.makedirs(pkghistdir)
+            bb.utils.mkdirhier(pkghistdir)
         old_tag_srcrevs = {}
         if os.path.exists(srcrevfile):
             with open(srcrevfile) as f:
-- 
1.7.9.5


