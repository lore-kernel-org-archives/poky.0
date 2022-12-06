Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by mx.groups.io with SMTP id smtpd.web10.44145.1670320497340367762
 for <poky@lists.yoctoproject.org>;
 Tue, 06 Dec 2022 01:54:57 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@intel.com header.s=intel header.b=GGX+R5r7;
 spf=pass (domain: intel.com, ip: 192.55.52.136, mailfrom: adhityax.siddartha.ravula@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1670320497; x=1701856497;
  h=from:to:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=Fr15/mBHgHRm9SP/ZbdIDyd7/AGgp7+l7s2zeFHPaOg=;
  b=GGX+R5r74yKnkJEe9EzUG1FMPD7BgRzRehVsWzl890tQKzPXOXc2YUaq
   RyV+4ati58K7BtE0LErUpp7zR4kSmzImw0RJpgosSDq0MU/wiA1xH6BLe
   pJDovYM4zlKzzESNZ047ue2O46kPSDgxSYilkyXtgK09MNxUHkIQAOuRf
   Y6DRYzIefXzLEJS5658X0HFWanFNB/39Yz7uplruOVf41qNt1gIxm49Up
   gl+mS6GL8Vwb9UbYrhvL2jOyTtsR1H4X4kzTfmRU4E5xnqbXdTN9FJ/EX
   9gIWibCanygRWfsDsFUeC6xKQp6eg1LEQFi+rdezMAHOiikUBdE2UGcTo
   w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="296276790"
X-IronPort-AV: E=Sophos;i="5.96,222,1665471600"; 
   d="scan'208";a="296276790"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 06 Dec 2022 01:54:57 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="639811246"
X-IronPort-AV: E=Sophos;i="5.96,222,1665471600"; 
   d="scan'208";a="639811246"
Received: from pg02rnw00154.png.intel.com ([172.22.33.69])
  by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 06 Dec 2022 01:54:55 -0800
From: adhityax.siddartha.ravula@intel.com
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][langdale][PATCH 1/2] linux-yocto/5.15: update genericx86* machines to v5.15.72
Date: Tue,  6 Dec 2022 17:54:34 +0800
Message-Id: <20221206095435.1401028-1-adhityax.siddartha.ravula@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Ravula Adhitya Siddartha <adhityax.siddartha.ravula@intel.com>

Signed-off-by: Ravula Adhitya Siddartha <adhityax.siddartha.ravula@intel.com>
---
 .../recipes-kernel/linux/linux-yocto_5.15.bbappend        | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.15.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.15.bbappend
index a5c0ecdbd9..3ad175dc84 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.15.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.15.bbappend
@@ -7,8 +7,8 @@ KMACHINE:genericx86 ?= "common-pc"
 KMACHINE:genericx86-64 ?= "common-pc-64"
 KMACHINE:beaglebone-yocto ?= "beaglebone"
 
-SRCREV_machine:genericx86 ?= "a40d2daf2795d89e3ef8af0413b25190558831ec"
-SRCREV_machine:genericx86-64 ?= "a40d2daf2795d89e3ef8af0413b25190558831ec"
+SRCREV_machine:genericx86 ?= "0b628306d1f9ea28c0e86369ce9bb87a47893c9c"
+SRCREV_machine:genericx86-64 ?= "0b628306d1f9ea28c0e86369ce9bb87a47893c9c"
 SRCREV_machine:edgerouter ?= "90f1ee6589264545f548d731c2480b08a007230f"
 SRCREV_machine:beaglebone-yocto ?= "9aabbaa89fcb21af7028e814c1f5b61171314d5a"
 
@@ -17,7 +17,7 @@ COMPATIBLE_MACHINE:genericx86-64 = "genericx86-64"
 COMPATIBLE_MACHINE:edgerouter = "edgerouter"
 COMPATIBLE_MACHINE:beaglebone-yocto = "beaglebone-yocto"
 
-LINUX_VERSION:genericx86 = "5.15.54"
-LINUX_VERSION:genericx86-64 = "5.15.54"
+LINUX_VERSION:genericx86 = "5.15.72"
+LINUX_VERSION:genericx86-64 = "5.15.72"
 LINUX_VERSION:edgerouter = "5.15.54"
 LINUX_VERSION:beaglebone-yocto = "5.15.54"
-- 
2.34.1

