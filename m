Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 38BEBE0073A; Fri,  9 May 2014 13:50:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=RCVD_IN_DNSWL_MED,RDNS_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail.windriver.com (unknown [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F320CE00478
	for <poky@yoctoproject.org>; Fri,  9 May 2014 13:50:12 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s49Ko8AD024800
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 9 May 2014 13:50:08 -0700 (PDT)
Received: from yow-bashfiel-d3.wrs.com (128.224.56.46) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.169.1; Fri, 9 May 2014 13:50:07 -0700
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: <richard.purdie@linuxfoundation.org>
Date: Fri, 9 May 2014 16:50:04 -0400
Message-ID: <8b1342405708473ecfedc63d6f62f6cc4c74c74a.1399668374.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.8.1.2
In-Reply-To: <cover.1399668374.git.bruce.ashfield@windriver.com>
References: <cover.1399668374.git.bruce.ashfield@windriver.com>
MIME-Version: 1.0
Cc: poky@yoctoproject.org, steve.long@windriver.com, denys@ti.com
Subject: [PATCH 1/1] README: add maintainers section for hardware reference boards
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
X-List-Received-Date: Fri, 09 May 2014 20:50:16 -0000
Content-Type: text/plain

Kevin Hao has stepped up to take care of issues specific to the meta-yocto-bsp
hardware reference boards. I'll also serve as a maintaier, so adding my name
as well.

To make this clear, let's add it to the README.hardware file that describes
the boards.

cc: Kevin Hao <kexin.hao@windriver.com>
Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 README.hardware | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/README.hardware b/README.hardware
index 37fdab08b0b1..f11fdd7794ae 100644
--- a/README.hardware
+++ b/README.hardware
@@ -52,6 +52,13 @@ The following boards are supported by the meta-yocto-bsp layer:
 For more information see the board's section below. The appropriate MACHINE
 variable value corresponding to the board is given in brackets.
 
+Reference Board Maintenance
+===========================
+
+Send pull requests, patches, comments or questions about meta-yocto-bsps to poky@yoctoproject.org
+
+Maintainers: Kevin Hao <kexin.hao@windriver.com>
+             Bruce Ashfield <bruce.ashfield@windriver.com>
 
 Consumer Devices
 ================
-- 
1.8.1.2


