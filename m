Return-Path: <antonin.godard@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 17C03C87FD2
	for <webhook@archiver.kernel.org>; Fri,  8 Aug 2025 12:01:29 +0000 (UTC)
Received: from relay16.mail.gandi.net (relay16.mail.gandi.net [217.70.178.236])
 by mx.groups.io with SMTP id smtpd.web10.20351.1754654481975685008
 for <poky@lists.yoctoproject.org>;
 Fri, 08 Aug 2025 05:01:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=YGWYqNpu;
 spf=pass (domain: bootlin.com, ip: 217.70.178.236, mailfrom: antonin.godard@bootlin.com)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 229E94497B;
	Fri,  8 Aug 2025 12:01:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1754654480;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=Hf+lul6v2mpN4YB9Yl9S0ubvwkPNqxGka22TdSR0p2E=;
	b=YGWYqNpuEWK6EPTiTW17YS1G+6F16AHx0EXzW5fuKK16SwqQA/BVm0CA0BqEqemZo5ucBo
	BPAryVFwLP3pKKL3Q+Njno1XU1tZZHqqDa+IBCS40E9fdkLzN8nWqxTEW/gxlx9MEZdT+0
	CocXzXds6SfzORupBXjsuss13S3/Oc70YtfywPfiQoFUIEpgcXKhGLufAVD54oGNHjHZl7
	JuUZ131sx5YpF4FULJXEa1csjb2eD328iu1BO6p1gdmNKARqTzdxizROWxolNivkmOmrSr
	4pQ2KP27dyAEs36oUMdLBTiuuDeaSBBbKf4RhPkXfqKntAljGoL+6BzV2dp/zg==
From: Antonin Godard <antonin.godard@bootlin.com>
Date: Fri, 08 Aug 2025 14:00:34 +0200
Subject: [PATCH] poky: remove Ubuntu 20.04 from supported distribtions
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250808-remove-ubuntu-20-04-v1-1-414fbb92f27c@bootlin.com>
X-B4-Tracking: v=1; b=H4sIAOHmlWgC/yXMSw6CQBBF0a2QGltJdYsB3YpxwOchZWJj+kNIC
 HunkeEZ3LtSgFcEehQrecwadHIZ5lJQNzbuDdY+m6zYm9RSs8d3msGpTS4mtsJS8v0qaKoSgzE
 95fLnMejyvz5fp0NqP+jisaJt2wEme5pIdwAAAA==
X-Change-ID: 20250808-remove-ubuntu-20-04-930ea74ef11d
To: poky@lists.yoctoproject.org
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 Mathieu Dubois-Briand <mathieu.dubois-briand@bootlin.com>, 
 Antonin Godard <antonin.godard@bootlin.com>
X-Mailer: b4 0.15-dev
X-Developer-Signature: v=1; a=openpgp-sha256; l=976;
 i=antonin.godard@bootlin.com; h=from:subject:message-id;
 bh=l6CwEKMFSQC/IcxKyP76xgvofY4ZpoAH42pZmqdQuwU=;
 b=owEBbQKS/ZANAwAKAdGAQUApo6g2AcsmYgBolecPDvRCpOjT7lMJQJajAXg7CWutqYfiZtRBf
 Xqj0NnhFS+JAjMEAAEKAB0WIQSGSHJRiN1AG7mg0//RgEFAKaOoNgUCaJXnDwAKCRDRgEFAKaOo
 NohkD/9ZOuELCwYYEnuFCy1in2hP51oFPvK28nRPLpJyChrV82lKHVJZNyMu1ilh2yxRTaVsDrG
 Qd90iHDr+GwUowQzkeku6axUtMq9/+aI4SX5Dx9yXld+ZUXTTsGNhg2+33WRPjR5j9v3Zti5FfO
 KkHl8fGTLuGyt2w9A0DkWiO3FijA6xNzcE35728Tip8Cnn0Pop6FQCv3aLapu7lJDd/H6hNLoga
 e60SKoo/X8+X3hRnWD90QyTkYPmYmovlRUWyzJzSmfo/EwFxPHk4XJEk9lAKItkAY1BGJRETn0Z
 mxOR/gq3wFCEpwrDL2tNL4FfCCiiUCEW3GhWq66A5FCv8c20LTJgkKlKFkoPq6TFoFRIXWCAw2c
 6NWV5pQXJAFfheqEE+ar2plIgIWSeJrcFWJXL7FVVuy3/TF1CBWXum9aZHp70hA3y1ale9me3l+
 HUZhsQjyDfm5hw7GA8NmRkl/VFLFSt2Y/EZJqY0bLKx9E9bVKyndeywONqHbQARtBy6LYOKqISC
 U3GiEFOJL/BlasqDcTd7lWbh7NTus73RFtZiv3HBayX1YE/vs5NpaVvy/lTjg8E59LcPqJL6mW6
 suw4oHmbfvYktFsWl/N9lIhV7kOVjMphyuPbCB82YeYctI7xPxQpt5erWsEDOMbW0MJ9gVBoh6/
 uTBeh2ZwIavVlyw==
X-Developer-Key: i=antonin.godard@bootlin.com; a=openpgp;
 fpr=8648725188DD401BB9A0D3FFD180414029A3A836
X-GND-State: clean
X-GND-Score: -100
X-GND-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdefgdduvdefjeeiucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuifetpfffkfdpucggtfgfnhhsuhgsshgtrhhisggvnecuuegrihhlohhuthemuceftddunecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpefhfffugggtgffkvfevofesthejredtredtjeenucfhrhhomheptehnthhonhhinhcuifhouggrrhguuceorghnthhonhhinhdrghhouggrrhgusegsohhothhlihhnrdgtohhmqeenucggtffrrghtthgvrhhnpeduieejledtieeuteffveetleeuffeivdffjefgteehgfehleeiteehieeuieekueenucfkphepvdgrtddumegtsgdugeemheehieemjegrtddtmeeftgekudemvggsrgejmedusgeksgemrgehtgelnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehinhgvthepvdgrtddumegtsgdugeemheehieemjegrtddtmeeftgekudemvggsrgejmedusgeksgemrgehtgelpdhhvghloheplgduvdejrddtrddurddungdpmhgrihhlfhhrohhmpegrnhhtohhnihhnrdhgohgurghrugessghoohhtlhhinhdrtghomhdpnhgspghrtghpthhtohepgedprhgtphhtthhopehpohhkhieslhhishhtshdrhihotghtohhprhhojhgvtghtrdhorhhgpdhrtghpthhtoheprghnthhonhhinhdrghhouggrrhgusegsohhothhlihhnrdgtohhmpdhrtghpthhtohepthhhohhmrghsrdhpvghtrgiiiihonhhisegsohhot
 hhlihhnrdgtohhmpdhrtghpthhtohepmhgrthhhihgvuhdrughusghoihhsqdgsrhhirghnugessghoohhtlhhinhdrtghomh
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 08 Aug 2025 12:01:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13719

This distribution will not be supported for the next release, so remove
it from SANITY_TESTED_DISTROS. The worker on the Autobuilder has been
disconnected soon after Ubuntu 20.04 reached EOL.

Signed-off-by: Antonin Godard <antonin.godard@bootlin.com>
---
 meta-poky/conf/distro/poky.conf | 1 -
 1 file changed, 1 deletion(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index 483684c..b12df2b 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -33,7 +33,6 @@ PACKAGE_CLASSES ?= "package_rpm"
 SANITY_TESTED_DISTROS ?= " \
             poky-5.1 \n \
             poky-5.2 \n \
-            ubuntu-20.04 \n \
             ubuntu-22.04 \n \
             ubuntu-24.04 \n \
             ubuntu-24.10 \n \

---
base-commit: 506379cb241e6a865139307e06216a07f737b602
change-id: 20250808-remove-ubuntu-20-04-930ea74ef11d

Best regards,
--  
Antonin Godard <antonin.godard@bootlin.com>


