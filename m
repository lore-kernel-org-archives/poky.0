Return-Path: <michael.opdenacker@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DD599C41513
	for <webhook@archiver.kernel.org>; Tue,  8 Aug 2023 19:45:21 +0000 (UTC)
Received: from relay2-d.mail.gandi.net (relay2-d.mail.gandi.net [217.70.183.194])
 by mx.groups.io with SMTP id smtpd.web11.71646.1691523911864630268
 for <poky@lists.yoctoproject.org>;
 Tue, 08 Aug 2023 12:45:12 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=SmfkA+am;
 spf=pass (domain: bootlin.com, ip: 217.70.183.194, mailfrom: michael.opdenacker@bootlin.com)
Received: by mail.gandi.net (Postfix) with ESMTPSA id E5BA440003;
	Tue,  8 Aug 2023 19:45:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1691523910;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=yyszSllbA3P1TazKzLElAhRB8R9TdDAMHrNapcOiY34=;
	b=SmfkA+am5Q6vpI2Ph+qG1UYynjUu0bXBcFZiajnyDYm8dkr/yUKKxxqPWuqR30YkPT8dlr
	2u1sbb3I3E78geazApmiyTIHR9Aj6Tu+wAHdpm/jjkWeOtu86ZKliVuC09YzWgPVuL5KkU
	UYb7bvpbpLVMVzZ8K4dEdAuMq2b5Zc48Ax+y1cK9JR6YoeHLsXXVcsq83PAQSflFn0D1Sf
	teW+pw3VhoLrfli8eOwUgAfUL2+gxkAv++jKcXrL9ROgFZ3X3JfM8BA5n/IErRuD0hJmRG
	LfdfYPK1SdPg485OiuKNzC3J+vf8KQ8qpuDQSjEQJsbKo4EPBM7k6Fw1afTewQ==
From: michael.opdenacker@bootlin.com
To: poky@lists.yoctoproject.org
Cc: Michael Opdenacker <michael.opdenacker@bootlin.com>
Subject: [PATCH] [kirkstone] poky.conf: update SANITY_TESTED_DISTROS to match autobuilder
Date: Tue,  8 Aug 2023 21:45:07 +0200
Message-Id: <20230808194507.188180-1-michael.opdenacker@bootlin.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-GND-Sasl: michael.opdenacker@bootlin.com
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 08 Aug 2023 19:45:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13119

From: Michael Opdenacker <michael.opdenacker@bootlin.com>

From the intersection of the list of allowed workers
on https://git.yoctoproject.org/yocto-autobuilder2/tree/config.py
and the active workers on
https://autobuilder.yoctoproject.org/typhoon/#/workers

Signed-off-by: Michael Opdenacker <michael.opdenacker@bootlin.com>
---
 meta-poky/conf/distro/poky.conf | 13 ++-----------
 1 file changed, 2 insertions(+), 11 deletions(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index f5ab979..50048ca 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -34,22 +34,13 @@ TCLIBCAPPEND = ""
 SANITY_TESTED_DISTROS ?= " \
             poky-3.3 \n \
             poky-3.4 \n \
-            ubuntu-16.04 \n \
             ubuntu-18.04 \n \
             ubuntu-20.04 \n \
-            ubuntu-21.10 \n \
             ubuntu-22.04 \n \
-            fedora-34 \n \
-            fedora-35 \n \
-            fedora-36 \n \
-            centos-7 \n \
-            centos-8 \n \
-            debian-9 \n \
-            debian-10 \n \
+            fedora-37 \n \
             debian-11 \n \
             opensuseleap-15.3 \n \
-            almalinux-8.5 \n \
-            almalinux-8.7 \n \
+            almalinux-8.8 \n \
             "
 # add poky sanity bbclass
 INHERIT += "poky-sanity"
-- 
2.34.1


