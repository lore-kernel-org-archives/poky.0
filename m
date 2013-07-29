Return-Path: <ross.burton@intel.com>
Received: from mail-wi0-f176.google.com (mail-wi0-f176.google.com
	[209.85.212.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5E736E0153F
	for <poky@yoctoproject.org>; Mon, 29 Jul 2013 09:23:11 -0700 (PDT)
Received: by mail-wi0-f176.google.com with SMTP id f14so1327954wiw.15
	for <poky@yoctoproject.org>; Mon, 29 Jul 2013 09:23:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=from:to:subject:date:message-id:x-mailer:in-reply-to:references
	:x-gm-message-state;
	bh=Qwld36Jde/C+jPjdJc1HU+q35Em82ZPHhtQkQZ31Of0=;
	b=H2I6Dm6MhsKLeV5Qc+D+Nfw5PvWU1Nkn9otGW1dEa4zA6Ka/vGjm3LLb4SoRo8Ksts
	uXUm4bZ9WYBPAexhlBun1fZCldVNxe1hbaf689Sg2jGZ7N37Y/Gyuq6hGg7if79a9m99
	C/RUGpwsT3C3ATyVxmAiDOe1f89WvRTJ3v2wYoDR6bMkhizj2Y9F0iwqYxBeQHZiU1sz
	Mh8E1Ae2mFvg1s/M/i6v9n4I/kl1sobROJBn8p+9e7knFR3RffPmL6QbYHsqDLwQJise
	bJZ0s5awJnRIrOs+spjkQNa7LRs7+csDTV3PcMbGcM9KgY1/WRo/VEtTnNULOvzJsMUd
	TC3g==
X-Received: by 10.180.38.45 with SMTP id d13mr7663348wik.62.1375114991133;
	Mon, 29 Jul 2013 09:23:11 -0700 (PDT)
Received: from melchett.burtonini.com (35.106.2.81.in-addr.arpa. [81.2.106.35])
	by mx.google.com with ESMTPSA id e7sm3679164wiy.4.2013.07.29.09.23.09
	for <poky@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 29 Jul 2013 09:23:10 -0700 (PDT)
From: Ross Burton <ross.burton@intel.com>
To: poky@yoctoproject.org
Date: Mon, 29 Jul 2013 17:22:55 +0100
Message-Id: <1375114978-28831-3-git-send-email-ross.burton@intel.com>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <1375114978-28831-1-git-send-email-ross.burton@intel.com>
References: <1375114978-28831-1-git-send-email-ross.burton@intel.com>
X-Gm-Message-State: ALoCoQm60Q1us6+RPpDBz2Pmx0Z1N48IaZb9S8gA0SlVLca+Cni/hxXq96IsHswigxA2EQ6iA6/u
Subject: [PATCH 2/5] local.conf.sample: add genericx86 reference
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
X-List-Received-Date: Mon, 29 Jul 2013 16:23:13 -0000

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


