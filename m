Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by mx.groups.io with SMTP id smtpd.web10.28638.1641797903897073738
 for <poky@lists.yoctoproject.org>;
 Sun, 09 Jan 2022 22:58:25 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@intel.com header.s=intel header.b=A0EClloT;
 spf=pass (domain: intel.com, ip: 134.134.136.24, mailfrom: anuj.mittal@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1641797905; x=1673333905;
  h=from:to:subject:date:message-id:in-reply-to:references:
   mime-version:content-transfer-encoding;
  bh=kgBdXOacsV8ufcfYW1AIoBm9PX5/UlVHHrZy1wDKUMU=;
  b=A0EClloT+fFOwA50EXInkg+Sfn5mQ2S7zncEDZejHDk804+VSFgv1z3K
   5tonX4lQdPvQoYhCBhnPgI+2S+X4zDVe2aPIwNhHvb9+6SH6FdmR96Y8o
   e31pUxtUlHnLxQt0pZNseymWTTfkOAO3JurbbnFQF2t9K3JK5nZ4zpRds
   YOkJ6Xz9B4QzPxMq9IQvlf4dMN4tQ25zNlR+DGRyPVaeMHfZI6hWWfUc1
   X4Kh04J/EJPvui8iqBc7NnxU2vPNrChFApEIpujyf2z04edMPBDaTx3wD
   J0p+KPHxwg6L9kcj/dr3qAKWUrukYo33OzBBPZ1e3E3WRQv5pFpSano5v
   A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10222"; a="242963380"
X-IronPort-AV: E=Sophos;i="5.88,276,1635231600"; 
   d="scan'208";a="242963380"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Jan 2022 22:58:25 -0800
X-IronPort-AV: E=Sophos;i="5.88,276,1635231600"; 
   d="scan'208";a="557893990"
Received: from bboox-mobl.gar.corp.intel.com (HELO anmitta2-mobl3.intel.com) ([10.213.135.82])
  by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Jan 2022 22:58:23 -0800
From: "Anuj Mittal" <anuj.mittal@intel.com>
To: poky@lists.yoctoproject.org
Subject: [honister][meta-yocto][PATCH 1/2] linux-yocto/5.10: update genericx86* machines to v5.10.87
Date: Mon, 10 Jan 2022 14:58:16 +0800
Message-Id: <20220110065817.22633-2-anuj.mittal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220110065817.22633-1-anuj.mittal@intel.com>
References: <20220110065817.22633-1-anuj.mittal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Teoh Jay Shen <jay.shen.teoh@intel.com>

(From meta-yocto rev: 5f448324755c98306cce24305f25921454476ed0)

Signed-off-by: Teoh Jay Shen <jay.shen.teoh@intel.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
(cherry picked from commit 0cb7772e9e3b76b8c1a7f02f38e9ce4897fbdf4b)
Signed-off-by: Anuj Mittal <anuj.mittal@intel.com>
---
 .../recipes-kernel/linux/linux-yocto_5.10.bbappend        | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.10.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.10.bbappend
index a7ef143dc97..9928466b27e 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.10.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.10.bbappend
@@ -7,8 +7,8 @@ KMACHINE:genericx86 ?= "common-pc"
 KMACHINE:genericx86-64 ?= "common-pc-64"
 KMACHINE:beaglebone-yocto ?= "beaglebone"
 
-SRCREV_machine:genericx86 ?= "164ed895bc1e94722e80fe6496b176f6bb815cd4"
-SRCREV_machine:genericx86-64 ?= "164ed895bc1e94722e80fe6496b176f6bb815cd4"
+SRCREV_machine:genericx86 ?= "4f2bb635ea267e71f112fd11323c1d3a2f2b85d0"
+SRCREV_machine:genericx86-64 ?= "4f2bb635ea267e71f112fd11323c1d3a2f2b85d0"
 SRCREV_machine:edgerouter ?= "4ab94e777d8b41ee1ee4c279259e9733bc8049b1"
 SRCREV_machine:beaglebone-yocto ?= "941cc9c3849f96f7eaf109b1e35e05ba366aca56"
 
@@ -17,7 +17,7 @@ COMPATIBLE_MACHINE:genericx86-64 = "genericx86-64"
 COMPATIBLE_MACHINE:edgerouter = "edgerouter"
 COMPATIBLE_MACHINE:beaglebone-yocto = "beaglebone-yocto"
 
-LINUX_VERSION:genericx86 = "5.10.63"
-LINUX_VERSION:genericx86-64 = "5.10.63"
+LINUX_VERSION:genericx86 = "5.10.87"
+LINUX_VERSION:genericx86-64 = "5.10.87"
 LINUX_VERSION:edgerouter = "5.10.63"
 LINUX_VERSION:beaglebone-yocto = "5.10.63"
-- 
2.34.1

