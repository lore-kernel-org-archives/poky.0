Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AE9E0E00D04; Mon, 25 Apr 2016 23:48:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C20A5E00CFB
	for <poky@yoctoproject.org>; Mon, 25 Apr 2016 23:48:02 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id u3Q6m2dO032094
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK)
	for <poky@yoctoproject.org>; Mon, 25 Apr 2016 23:48:02 -0700
Received: from ala-blade47.wrs.com (147.11.105.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.248.2;
	Mon, 25 Apr 2016 23:48:01 -0700
From: Robert Yang <liezhi.yang@windriver.com>
To: <poky@yoctoproject.org>
Date: Mon, 25 Apr 2016 23:47:58 -0700
Message-ID: <9d57d8f85b866598bfae700c39cfb967d7ff1cc8.1461653189.git.liezhi.yang@windriver.com>
X-Mailer: git-send-email 2.8.0
In-Reply-To: <cover.1461653189.git.liezhi.yang@windriver.com>
References: <cover.1461653189.git.liezhi.yang@windriver.com>
MIME-Version: 1.0
Subject: [PATCH 1/3] conf/distro/poky.conf: use example.com for connectivity check
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
X-List-Received-Date: Tue, 26 Apr 2016 06:48:05 -0000
Content-Type: text/plain

From: Ross Burton <ross.burton@intel.com>

Instead of pinging both the Yocto Project download and bugzilla sites, use
https://www.example.com/.  This is a reserved domain name and hosted by IANA, so
is a key part of the Internet and should be available everywhere (whereas for
example google.com is generally blocked by the Great Firewall of China).  Also
using a https: site verifies that any local proxies are configured for HTTPS as
well as HTTP.

In my testing this reduces the time taken for connectivity checks from 3 seconds
to 1 second.

(From meta-yocto rev: b253c6073be44090a19d1743deb58ef566853056)

Signed-off-by: Ross Burton <ross.burton@intel.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
---
 meta-yocto/conf/distro/poky.conf | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
index f654f9e..2f01348 100644
--- a/meta-yocto/conf/distro/poky.conf
+++ b/meta-yocto/conf/distro/poky.conf
@@ -64,10 +64,7 @@ https://.*/.*    http://downloads.yoctoproject.org/mirror/sources/ \n"
 # fetch from the network (and warn you if not). To disable the test set
 # the variable to be empty.
 # Git example url: git://git.yoctoproject.org/yocto-firewall-test;protocol=git;rev=master
-
-CONNECTIVITY_CHECK_URIS ?= " \
-             https://eula-downloads.yoctoproject.org/index.php \
-             http://bugzilla.yoctoproject.org/report.cgi"
+CONNECTIVITY_CHECK_URIS ?= "https://www.example.com/"
 
 SANITY_TESTED_DISTROS ?= " \
             poky-1.7 \n \
-- 
2.8.0


