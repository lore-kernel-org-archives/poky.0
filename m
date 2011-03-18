Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id C57044C80AC0
	for <poky@yoctoproject.org>; Fri, 18 Mar 2011 12:31:04 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 18 Mar 2011 10:31:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,206,1299484800"; d="scan'208";a="668780843"
Received: from unknown (HELO localhost) ([10.255.12.99])
	by fmsmga002.fm.intel.com with ESMTP; 18 Mar 2011 10:31:04 -0700
Message-Id: <61017bc6290968610b2ec28f3f4f1fcad360da1e.1300469401.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1300469401.git.scott.m.rifenbark@intel.com>
References: <cover.1300469401.git.scott.m.rifenbark@intel.com>
Old-Date: Wed, 16 Mar 2011 14:29:28 -0600
Date: Fri, 18 Mar 2011 11:31:57 -0600
To: poky@yoctoproject.org
CC: 
From: <scott.m.rifenbark@intel.com>
Subject: [PATCH 3/6] documentation/yocto-project-qs/style.css: Updated note text color
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
X-List-Received-Date: Fri, 18 Mar 2011 17:31:04 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

Had to update the note and tip text color to white to match other
books.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/yocto-project-qs/style.css |    1 -
 1 files changed, 0 insertions(+), 1 deletions(-)

diff --git a/documentation/yocto-project-qs/style.css b/documentation/yocto-project-qs/style.css
index 8b0c034..21caf85 100644
--- a/documentation/yocto-project-qs/style.css
+++ b/documentation/yocto-project-qs/style.css
@@ -247,7 +247,6 @@ div.legalnotice p.legalnotice-title {
 p {
   line-height: 1.5em;
   margin-top: 0em;
-  color: black; font-size: 100%;
   
 }
 
-- 
1.7.1


