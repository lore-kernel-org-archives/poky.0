Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id DAFF64C8009D
	for <poky@yoctoproject.org>; Tue, 15 Mar 2011 18:42:32 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 15 Mar 2011 16:42:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,191,1299484800"; d="scan'208";a="613438797"
Received: from unknown (HELO localhost) ([10.255.12.159])
	by orsmga002.jf.intel.com with ESMTP; 15 Mar 2011 16:42:32 -0700
Message-Id: <827f94705c0d98399239f6bedff0c59550511989.1300232339.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1300232338.git.scott.m.rifenbark@intel.com>
References: <cover.1300232338.git.scott.m.rifenbark@intel.com>
Old-Date: Mon, 14 Mar 2011 15:29:55 -0600
Date: Tue, 15 Mar 2011 17:43:24 -0600
To: poky@yoctoproject.org
CC: 
From: <scott.m.rifenbark@intel.com>
Subject: [PATCH 06/13] documentation/adt-manual/style.css: Changed PNG file in the title page style
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
X-List-Received-Date: Tue, 15 Mar 2011 23:42:33 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

The .aurthorgroup style uses a 'background-image' item to add the
book title image.  This had to be changed to 'figures/adt-title.png'
from 'figures/kernel-title.png' since it is for the ADT manual.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/adt-manual/style.css |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/documentation/adt-manual/style.css b/documentation/adt-manual/style.css
index 33a01d1..7c24fe5 100644
--- a/documentation/adt-manual/style.css
+++ b/documentation/adt-manual/style.css
@@ -122,7 +122,7 @@ h6 {
   background-color: transparent;
   background-repeat: no-repeat;
   padding-top: 256px;
-  background-image: url("figures/kernel-title.png");
+  background-image: url("figures/adt-title.png");
   background-position: left top;
   margin-top: -256px;
   padding-right: 50px;
-- 
1.7.1


