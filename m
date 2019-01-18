Return-Path: <peter.kjellerstedt@axis.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 81364E00CE2; Fri, 18 Jan 2019 07:49:30 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [195.60.68.11 listed in list.dnswl.org]
Received: from bastet.se.axis.com (bastet.se.axis.com [195.60.68.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2A5D7E00C94
	for <poky@yoctoproject.org>; Fri, 18 Jan 2019 07:49:28 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by bastet.se.axis.com (Postfix) with ESMTP id 919B9185E2
	for <poky@yoctoproject.org>; Fri, 18 Jan 2019 16:49:26 +0100 (CET)
X-Axis-User: NO
X-Axis-NonUser: YES
X-Virus-Scanned: Debian amavisd-new at bastet.se.axis.com
Received: from bastet.se.axis.com ([IPv6:::ffff:127.0.0.1])
	by localhost (bastet.se.axis.com [::ffff:127.0.0.1]) (amavisd-new,
	port 10024) with LMTP id gq9mm628mUuj for <poky@yoctoproject.org>;
	Fri, 18 Jan 2019 16:49:22 +0100 (CET)
Received: from boulder02.se.axis.com (boulder02.se.axis.com [10.0.8.16])
	by bastet.se.axis.com (Postfix) with ESMTPS id 87C9A185FC
	for <poky@yoctoproject.org>; Fri, 18 Jan 2019 16:49:22 +0100 (CET)
Received: from boulder02.se.axis.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 710AB1A0A6
	for <poky@yoctoproject.org>; Fri, 18 Jan 2019 16:49:22 +0100 (CET)
Received: from boulder02.se.axis.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 6619C1A0A5
	for <poky@yoctoproject.org>; Fri, 18 Jan 2019 16:49:22 +0100 (CET)
Received: from seth.se.axis.com (unknown [10.0.2.172])
	by boulder02.se.axis.com (Postfix) with ESMTP
	for <poky@yoctoproject.org>; Fri, 18 Jan 2019 16:49:22 +0100 (CET)
Received: from saur-2.se.axis.com (saur-2.se.axis.com [10.92.3.2])
	by seth.se.axis.com (Postfix) with ESMTP id 5A7DF187C
	for <poky@yoctoproject.org>; Fri, 18 Jan 2019 16:49:22 +0100 (CET)
Received: from saur-2.se.axis.com (localhost [127.0.0.1])
	by saur-2.se.axis.com (8.14.5/8.14.5) with ESMTP id x0IFnLSj015523
	for <poky@yoctoproject.org>; Fri, 18 Jan 2019 16:49:21 +0100
Received: (from pkj@localhost)
	by saur-2.se.axis.com (8.14.5/8.14.5/Submit) id x0IFnLBB015522
	for poky@yoctoproject.org; Fri, 18 Jan 2019 16:49:21 +0100
From: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
To: poky@yoctoproject.org
Date: Fri, 18 Jan 2019 16:49:20 +0100
Message-Id: <20190118154920.15457-1-pkj@axis.com>
X-Mailer: git-send-email 2.12.0
X-TM-AS-GCONF: 00
Subject: [PATCH] poky.conf: Define SDK_VERSION so DISTRO_VERSION overrides are supported
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
X-List-Received-Date: Fri, 18 Jan 2019 15:49:30 -0000

If DISTRO_VERSION is defined using an override, e.g., by defining it
in auto.conf as DISTRO_VERSION_forcevariable, then the unoverridden
value was still used in SDK_VERSION since it was defined using the :=
operator. However, there should be no reason to define SDK_VERSION
this way.

Signed-off-by: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
---
 meta-poky/conf/distro/poky.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index f5de8f2335..73d200ebbd 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -3,7 +3,7 @@ DISTRO_NAME = "Poky (Yocto Project Reference Distro)"
 DISTRO_VERSION = "2.6+snapshot-${DATE}"
 DISTRO_CODENAME = "master"
 SDK_VENDOR = "-pokysdk"
-SDK_VERSION := "${@'${DISTRO_VERSION}'.replace('snapshot-${DATE}','snapshot')}"
+SDK_VERSION = "${@d.getVar('DISTRO_VERSION').replace('snapshot-${DATE}', 'snapshot')}"
 
 MAINTAINER = "Poky <poky@yoctoproject.org>"
 
-- 
2.12.0


