Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8E7EAE00D17; Mon, 25 Apr 2016 01:50:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2443EE00CA1
	for <poky@yoctoproject.org>; Mon, 25 Apr 2016 01:50:22 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id u3P8oLdU021375
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Mon, 25 Apr 2016 01:50:21 -0700 (PDT)
Received: from ala-blade47.wrs.com (147.11.105.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.248.2;
	Mon, 25 Apr 2016 01:50:20 -0700
From: Robert Yang <liezhi.yang@windriver.com>
To: <poky@yoctoproject.org>
Date: Mon, 25 Apr 2016 01:50:19 -0700
Message-ID: <0d355d02112e0ef164c25a76144acd43d3c54a88.1461574142.git.liezhi.yang@windriver.com>
X-Mailer: git-send-email 2.8.0
In-Reply-To: <cover.1461574142.git.liezhi.yang@windriver.com>
References: <cover.1461574142.git.liezhi.yang@windriver.com>
MIME-Version: 1.0
Subject: [PATCH 1/1] bblayers.conf.sample: update BBPATH to use BBPATH_EXTRA
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
X-List-Received-Date: Mon, 25 Apr 2016 08:50:24 -0000
Content-Type: text/plain

So that user can easily make their own conf files such as conf/site.conf
When user sets BBPATH_EXTRA in env to their own dir which contains
conf/site.conf, it will work.

Note, BBPATH_EXTRA must end with ":", we can't set BBPATH as
"${BBPATH_EXTRA}:${TOPDIR}" since the sanity would fail when
BBPATH_EXTRA is null.

[YOCTO #7837]

Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
---
 meta-poky/conf/bblayers.conf.sample | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/meta-poky/conf/bblayers.conf.sample b/meta-poky/conf/bblayers.conf.sample
index 8b1cbdf..3857656 100644
--- a/meta-poky/conf/bblayers.conf.sample
+++ b/meta-poky/conf/bblayers.conf.sample
@@ -2,7 +2,8 @@
 # changes incompatibly
 POKY_BBLAYERS_CONF_VERSION = "2"
 
-BBPATH = "${TOPDIR}"
+BBPATH_EXTRA ??= ""
+BBPATH = "${BBPATH_EXTRA}${TOPDIR}"
 BBFILES ?= ""
 
 BBLAYERS ?= " \
-- 
2.8.0


