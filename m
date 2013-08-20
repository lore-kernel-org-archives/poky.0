Return-Path: <corneliux.stoicescu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 27911E014E4
	for <poky@yoctoproject.org>; Tue, 20 Aug 2013 01:40:44 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 20 Aug 2013 01:40:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,918,1367996400"; d="scan'208";a="383552014"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by fmsmga001.fm.intel.com with ESMTP; 20 Aug 2013 01:40:44 -0700
Received: from localhost.localdomain (unknown [10.237.112.161])
	by linux.intel.com (Postfix) with ESMTP id 026AB6A4093;
	Tue, 20 Aug 2013 01:40:41 -0700 (PDT)
From: Stoicescu Cornel <corneliux.stoicescu@intel.com>
To: poky@yoctoproject.org
Date: Tue, 20 Aug 2013 11:45:12 +0200
Message-Id: <482943bd2cd8b5a39dd8d8aa3ad1111fa3c72038.1376923556.git.corneliux.stoicescu@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <712622e2dbfa2559b873730bd1d4d23cc827b295.1376923556.git.corneliux.stoicescu@intel.com>
References: <712622e2dbfa2559b873730bd1d4d23cc827b295.1376923556.git.corneliux.stoicescu@intel.com>
In-Reply-To: <cover.1376923556.git.corneliux.stoicescu@intel.com>
References: <cover.1376923556.git.corneliux.stoicescu@intel.com>
Subject: [PATCH 030/186] ref-manual: Added URL for the pre-built buildtools tarball
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
X-List-Received-Date: Tue, 20 Aug 2013 08:40:45 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

Fixes [YOCTO #4753]

I added the URL for where this tarball will be located once we
release YP 1.5.  Until we release, the URL will not resolve.

(From yocto-docs rev: 694571690e91ecc49e9afa85b9084543b71a85c3)

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 documentation/ref-manual/introduction.xml |    3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/documentation/ref-manual/introduction.xml b/documentation/ref-manual/introduction.xml
index 566fa5a..5db08a5 100644
--- a/documentation/ref-manual/introduction.xml
+++ b/documentation/ref-manual/introduction.xml
@@ -320,7 +320,8 @@
 
         <para>
             If downloading a pre-built tarball, locate the
-            <filename>*.sh</filename> at [NEED A PATH HERE from Beth].
+            <filename>*.sh</filename> at
+            <ulink url='&YOCTO_DL_URL;/releases/yocto/yocto-1.5/buildtools/'></ulink>.
         </para>
 
         <para>
-- 
1.7.9.5


