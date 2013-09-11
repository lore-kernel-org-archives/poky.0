Return-Path: <ross.burton@intel.com>
Received: from mail-we0-f171.google.com (mail-we0-f171.google.com
	[74.125.82.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6C404E015B6
	for <poky@yoctoproject.org>; Wed, 11 Sep 2013 06:43:15 -0700 (PDT)
Received: by mail-we0-f171.google.com with SMTP id t61so7040837wes.30
	for <poky@yoctoproject.org>; Wed, 11 Sep 2013 06:43:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=ZRSkh0qxJ2UQictQBiG9nCPeqfZ3MUe4/QlY+X6vlIQ=;
	b=jRmUkKGZKxn/XEQB23aCHcQQLtk2EjNmPPFJw585pghl+6iRGPrvIeDe3btwDTFTcs
	1sWM5RL9pcy0c0XiI72OcNRt+DFg4qFS9JHm+KwCO/27CH/pRE+ZW8iSq8/M0N6doOX3
	2m228EXortop2gujes7h4fkbjSA7N7QZ4K/s9Gkn2GXbqISdMzg15frg6xSMUvqeO2p/
	tKhpQdnCBkSB3o20R1nhiw1+AzFtcP5WhBnH0kzy0noewe7Dtxi7AccpFsxIvnblopid
	J4h2vHw9jUsUxEcVZ0uiXpK41he69N7LLkJeIdPkJs09yVpq65GFP01xjWq2w5UqT7dR
	Nq3w==
X-Gm-Message-State: ALoCoQk8KRNx8u3eRxFGyd8LI46S2pMKwSD3NOonoBBEFra0cCSxmqY3fFWjjPq1N5HqZ0M/24CP
X-Received: by 10.180.189.17 with SMTP id ge17mr15099511wic.53.1378906994091; 
	Wed, 11 Sep 2013 06:43:14 -0700 (PDT)
Received: from melchett.burtonini.com (35.106.2.81.in-addr.arpa. [81.2.106.35])
	by mx.google.com with ESMTPSA id e5sm10755927wiy.2.1969.12.31.16.00.00
	(version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 11 Sep 2013 06:43:13 -0700 (PDT)
From: Ross Burton <ross.burton@intel.com>
To: poky@yoctoproject.org
Date: Wed, 11 Sep 2013 14:43:08 +0100
Message-Id: <1378906988-15025-1-git-send-email-ross.burton@intel.com>
X-Mailer: git-send-email 1.7.10.4
Subject: [PATCH] bblayers.conf.sample: use ##OEROOT## instead of ##COREBASE##
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
X-List-Received-Date: Wed, 11 Sep 2013 13:43:16 -0000

The variable ##COREBASE## has been deprecated, so use ##OEROOT## instead.

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 meta-yocto/conf/bblayers.conf.sample |   10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/meta-yocto/conf/bblayers.conf.sample b/meta-yocto/conf/bblayers.conf.sample
index 7fd755d..0eda565 100644
--- a/meta-yocto/conf/bblayers.conf.sample
+++ b/meta-yocto/conf/bblayers.conf.sample
@@ -6,11 +6,11 @@ BBPATH = "${TOPDIR}"
 BBFILES ?= ""
 
 BBLAYERS ?= " \
-  ##COREBASE##/meta \
-  ##COREBASE##/meta-yocto \
-  ##COREBASE##/meta-yocto-bsp \
+  ##OEROOT##/meta \
+  ##OEROOT##/meta-yocto \
+  ##OEROOT##/meta-yocto-bsp \
   "
 BBLAYERS_NON_REMOVABLE ?= " \
-  ##COREBASE##/meta \
-  ##COREBASE##/meta-yocto \
+  ##OEROOT##/meta \
+  ##OEROOT##/meta-yocto \
   "
-- 
1.7.10.4


