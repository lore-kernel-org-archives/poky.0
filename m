Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by mx.groups.io with SMTP id smtpd.web09.22180.1645368469650978898
 for <poky@lists.yoctoproject.org>;
 Sun, 20 Feb 2022 06:47:50 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@intel.com header.s=intel header.b=ByPoM7BF;
 spf=pass (domain: intel.com, ip: 134.134.136.24, mailfrom: anuj.mittal@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1645368469; x=1676904469;
  h=from:to:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=sIVHe6/4Qh6emrxot0aq3tLjQxnm5bXwVFtx3d89QmE=;
  b=ByPoM7BF4N35+2itjrikcc0M7VoeRHM7Tb6+ZJDILrC/K5UmVYwIZe4S
   feOnqXpp1ECUYM0LbgRadBbDNyDa0jL0h/wQVpPdThhcs1tmLwtUAAU3d
   22Ky8iG1ewOdDmwcn03EF0Di02gkshRxrHXmtQV4g7DIjlHjVYpoOp4b8
   Vtoz1G0+fgPtKopnAGGT8JW/rrIsSMavbktTvfcsVH8rBwFAB0mtLxfKe
   WQX34iGwTR7s8fSU0+Jz58HshiN5eBWpkTmdzebdJtD1P6819PS+ndtBZ
   MEGjQB3CG66h9ldwh6ImX2Xh41QQ/dLTox183XtYENL5tg9wBK5GQNskS
   w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10263"; a="251131643"
X-IronPort-AV: E=Sophos;i="5.88,383,1635231600"; 
   d="scan'208";a="251131643"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Feb 2022 06:47:48 -0800
X-IronPort-AV: E=Sophos;i="5.88,383,1635231600"; 
   d="scan'208";a="778458844"
Received: from chinboon-mobl1.gar.corp.intel.com (HELO anmitta2-mobl3.intel.com) ([10.213.133.219])
  by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Feb 2022 06:47:47 -0800
From: "Anuj Mittal" <anuj.mittal@intel.com>
To: poky@lists.yoctoproject.org,
	richard.purdie@linuxfoundation.org
Subject: [meta-yocto][hardknott][PATCH] poky.conf: bump version for 3.3.5 release
Date: Sun, 20 Feb 2022 22:47:40 +0800
Message-Id: <20220220144740.13171-1-anuj.mittal@intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Anuj Mittal <anuj.mittal@intel.com>
---
 meta-poky/conf/distro/poky.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index d12908c..773e80c 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -1,6 +1,6 @@
 DISTRO = "poky"
 DISTRO_NAME = "Poky (Yocto Project Reference Distro)"
-DISTRO_VERSION = "3.3.4"
+DISTRO_VERSION = "3.3.5"
 DISTRO_CODENAME = "hardknott"
 SDK_VENDOR = "-pokysdk"
 SDK_VERSION = "${@d.getVar('DISTRO_VERSION').replace('snapshot-${METADATA_REVISION}', 'snapshot')}"
-- 
2.35.1

