Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by mx.groups.io with SMTP id smtpd.web10.28638.1641797903897073738
 for <poky@lists.yoctoproject.org>;
 Sun, 09 Jan 2022 22:58:25 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@intel.com header.s=intel header.b=QYxIbooa;
 spf=pass (domain: intel.com, ip: 134.134.136.24, mailfrom: anuj.mittal@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1641797903; x=1673333903;
  h=from:to:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=V0VLzRMAh6+x2TQqdJeNzoRoBSgzO16fe+AjA9TOtTU=;
  b=QYxIbooaq0YtRqTzyBOy27a2WumcUK8DZags15OBcxh6YlVGGH6yz/xh
   xm5IKi7K7dM3qt+BY9bbt7HHay79FbTk44CyOnd1StZ3cLNTqhx9PkN4f
   X85o0osejGRmZm15fy3dG0jZ0WF5TU2BxPK6xSESDUC/X2xktc/WzuhR9
   uHcIj1Xth+nId12LkX2zd/ectGeqJU7xm+b3dmxOlBM8WVUEKy+4AQubn
   wPUWmVNvPfcPU//aA/Zi3XVr28BGyrRJ8odrlTVqS4787gUeBupXIhuc0
   7NUVJm46pviqLwtsovVPLwq9prZ+RhKw2MJkUj6JNWskPoXaqGUExqPTa
   g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10222"; a="242963373"
X-IronPort-AV: E=Sophos;i="5.88,276,1635231600"; 
   d="scan'208";a="242963373"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Jan 2022 22:58:23 -0800
X-IronPort-AV: E=Sophos;i="5.88,276,1635231600"; 
   d="scan'208";a="557893987"
Received: from bboox-mobl.gar.corp.intel.com (HELO anmitta2-mobl3.intel.com) ([10.213.135.82])
  by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Jan 2022 22:58:21 -0800
From: "Anuj Mittal" <anuj.mittal@intel.com>
To: poky@lists.yoctoproject.org
Subject: [honister][meta-yocto][PATCH 0/2] Patch review
Date: Mon, 10 Jan 2022 14:58:15 +0800
Message-Id: <20220110065817.22633-1-anuj.mittal@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Kernel updates for honister. Tested and no issues seen on autobuilder.
Please merge.

Thanks,

Anuj

Teoh Jay Shen (2):
  linux-yocto/5.10: update genericx86* machines to v5.10.87
  linux-yocto/5.14: update genericx86* machines to v5.14.21

 .../recipes-kernel/linux/linux-yocto_5.10.bbappend        | 8 ++++----
 .../recipes-kernel/linux/linux-yocto_5.14.bbappend        | 8 ++++----
 2 files changed, 8 insertions(+), 8 deletions(-)

-- 
2.34.1

