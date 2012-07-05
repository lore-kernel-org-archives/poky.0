Return-Path: <scott.a.garman@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BEA6DE006AD
	for <poky@yoctoproject.org>; Thu,  5 Jul 2012 11:02:52 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 05 Jul 2012 11:02:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="167463335"
Received: from miles.jf.intel.com (HELO localhost) ([10.7.199.51])
	by orsmga002.jf.intel.com with ESMTP; 05 Jul 2012 11:02:52 -0700
From: Scott Garman <scott.a.garman@intel.com>
To: poky@yoctoproject.org
Date: Thu,  5 Jul 2012 11:02:50 -0700
Message-Id: <b0edda9f3b91ae9ab25382399191f64a02e323b5.1341511275.git.scott.a.garman@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1341511275.git.scott.a.garman@intel.com>
References: <cover.1341511275.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1341511275.git.scott.a.garman@intel.com>
References: <cover.1341511275.git.scott.a.garman@intel.com>
Subject: [PATCH 2/2] .gitignore: unmask meta-yocto files
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
X-List-Received-Date: Thu, 05 Jul 2012 18:02:52 -0000

Signed-off-by: Scott Garman <scott.a.garman@intel.com>
---
 .gitignore |    1 +
 1 file changed, 1 insertion(+)

diff --git a/.gitignore b/.gitignore
index bd0acdc..4a3d660 100644
--- a/.gitignore
+++ b/.gitignore
@@ -10,6 +10,7 @@ sources/
 meta-*
 !meta-skeleton
 !meta-demoapps
+!meta-yocto
 *.swp
 *.orig
 *.rej
-- 
1.7.9.5


