Return-Path: <ross.burton@intel.com>
Received: from mail-wi0-f182.google.com (mail-wi0-f182.google.com
	[209.85.212.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F1013E014F5
	for <poky@yoctoproject.org>; Thu, 25 Jul 2013 09:42:03 -0700 (PDT)
Received: by mail-wi0-f182.google.com with SMTP id m6so2037538wiv.3
	for <poky@yoctoproject.org>; Thu, 25 Jul 2013 09:42:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=from:to:subject:date:message-id:x-mailer:in-reply-to:references
	:x-gm-message-state;
	bh=Qwld36Jde/C+jPjdJc1HU+q35Em82ZPHhtQkQZ31Of0=;
	b=dFUMTTe8nqb2sd9bqbZNZ24SyQO0MHgTZqlp5F0d/Je6Z00pWiVqthStnlQImuih60
	6mPBuiuU2IYpXAHe6JEde4iJFHitBgUcRySxamu7qJ1feOV0BCgBtkBHkclcrCjrBHLn
	D7W8tO0z6rziFB4ty+GIW1I+Pl/Zhx8m4DAXI6Mr68gPCSZ9qGUs+7qPbwCmZ0Yufpzv
	NtDFc2JjQdMDQqWJvCSWz4V0fUR1OhMhIPFg/oxZM6F3nL8Pff/iFBDyppmKvwUQA/B9
	2kuAAroZGSi0dN4rdtgbPSnVlyu3P+BQLNmAZDhFC836WHUUHXmxLk7/vsp5ibGD08US
	LjFQ==
X-Received: by 10.194.109.104 with SMTP id hr8mr31317292wjb.32.1374770522485; 
	Thu, 25 Jul 2013 09:42:02 -0700 (PDT)
Received: from melchett.burtonini.com (35.106.2.81.in-addr.arpa. [81.2.106.35])
	by mx.google.com with ESMTPSA id l2sm4909463wif.8.2013.07.25.09.42.00
	for <poky@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 25 Jul 2013 09:42:01 -0700 (PDT)
From: Ross Burton <ross.burton@intel.com>
To: poky@yoctoproject.org
Date: Thu, 25 Jul 2013 17:38:01 +0100
Message-Id: <1374770285-22235-3-git-send-email-ross.burton@intel.com>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <1374770285-22235-1-git-send-email-ross.burton@intel.com>
References: <1374770285-22235-1-git-send-email-ross.burton@intel.com>
X-Gm-Message-State: ALoCoQmYelQ/l+Pt57Xt3mYRJ7YpPUMjYQzfGZQEEOqP5N4dgj+dfG5GjHP+6++ZbHyBY9zqY9DB
Subject: [PATCH 2/6] local.conf.sample: add genericx86 reference
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
X-List-Received-Date: Thu, 25 Jul 2013 16:42:04 -0000

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 meta-yocto/conf/local.conf.sample |    1 +
 1 file changed, 1 insertion(+)

diff --git a/meta-yocto/conf/local.conf.sample b/meta-yocto/conf/local.conf.sample
index 2d89282..b6c26d5 100644
--- a/meta-yocto/conf/local.conf.sample
+++ b/meta-yocto/conf/local.conf.sample
@@ -44,6 +44,7 @@
 #
 #MACHINE ?= "atom-pc"
 #MACHINE ?= "beagleboard"
+#MACHINE ?= "genericx86"
 #MACHINE ?= "mpc8315e-rdb"
 #MACHINE ?= "routerstationpro"
 #
-- 
1.7.10.4


