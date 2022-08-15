Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by mx.groups.io with SMTP id smtpd.web11.485.1660561054240349287
 for <poky@lists.yoctoproject.org>;
 Mon, 15 Aug 2022 03:57:34 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@intel.com header.s=intel header.b=b1hPa9T9;
 spf=pass (domain: intel.com, ip: 134.134.136.24, mailfrom: anuj.mittal@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1660561054; x=1692097054;
  h=from:to:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=w+wtTsvj8e4bC6doreXVJ/d5K0BgCeuK2oyAb1njXHw=;
  b=b1hPa9T9SAl1qxjdf0Uuonmfzf9A15Iwe+260rY7RiWoQqkTTNdaeP1E
   7CQSS99KuLC6kyLR6v2zs47RKy0H2zBFVIg4JPZB1ngszAKKJhh81DcZe
   Ic+c0aqAhf57ityW1gxl2bDj2/y+xu1MdEtBbv0C1aDyb65qves2zUEsO
   CPMo+ZhyH9wGb+uBYSwhmBBNcUSrZ7+K5qzdrFYdkGUa7aV/2KuRrrq9v
   O17pZTm9PDhZOb3Nj78+7Myb1dKxQK7FjXt6dLhn5RpnDQSgczn03vw27
   cy3XUkptXG6x+r7ekxOMICuMXUf5eXFfkI+JI+X3pWvvmwFf8xvjKhEkZ
   w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10439"; a="292731806"
X-IronPort-AV: E=Sophos;i="5.93,238,1654585200"; 
   d="scan'208";a="292731806"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Aug 2022 03:57:33 -0700
X-IronPort-AV: E=Sophos;i="5.93,238,1654585200"; 
   d="scan'208";a="582840328"
Received: from clarises-mobl1.gar.corp.intel.com (HELO anmitta2-mobl3.intel.com) ([10.213.148.245])
  by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Aug 2022 03:57:32 -0700
From: "Anuj Mittal" <anuj.mittal@intel.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][master][kirkstone][PATCH] poky.conf: add ubuntu-22.04 to tested distros
Date: Mon, 15 Aug 2022 18:57:22 +0800
Message-Id: <20220815105722.83358-1-anuj.mittal@intel.com>
X-Mailer: git-send-email 2.37.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Anuj Mittal <anuj.mittal@intel.com>
---
 meta-poky/conf/distro/poky.conf | 1 +
 1 file changed, 1 insertion(+)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index 769b69c..856c885 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -38,6 +38,7 @@ SANITY_TESTED_DISTROS ?= " \
             ubuntu-18.04 \n \
             ubuntu-20.04 \n \
             ubuntu-21.10 \n \
+            ubuntu-22.04 \n \
             fedora-34 \n \
             fedora-35 \n \
             debian-10 \n \
-- 
2.37.1

