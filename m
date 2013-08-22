Return-Path: <ross.burton@intel.com>
Received: from mail-wg0-f47.google.com (mail-wg0-f47.google.com [74.125.82.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BBB13E01412
	for <poky@yoctoproject.org>; Thu, 22 Aug 2013 08:59:18 -0700 (PDT)
Received: by mail-wg0-f47.google.com with SMTP id j13so1764931wgh.2
	for <poky@yoctoproject.org>; Thu, 22 Aug 2013 08:59:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references:in-reply-to:references;
	bh=DH0xhNyrCUqNfLAh96HBNcaDVcMX9lqet109tW1aVaw=;
	b=DHJ3rYTqhM0z1SPPxkVwyXtncSoKTbfHZn9kmi9/bz3R6w/zZp9RmXbTnl3tq1UnMT
	RwrSMPHxjutPZJCxftI4uJZEJSUoVEaMIYxyhvpCNi43+2facgCw/6rwt6h2iKpUAVwN
	dzvvrUws3zBFgnRj8uF4rkE+aFNgzpHPZl3+OufTQuj33RHl6mE/MVzThglBU8n54wLQ
	2fuNF9f6gMR1OJmL9uDHt3mIcd+EO1f2JrBNBC4E0ieuRGN8fma7bqaTL2/GtdQB4Sg9
	Hw8/H0DBsjJ8ug4TYyFOyvfz/moeZCvcyMdJE51iLU3gVGo3WsIy+Q/NssK7swEeLlM2
	WJ8g==
X-Gm-Message-State: ALoCoQlmOjcZAQTUWLX7PptWJvDZcsQF5K5Iztb3lSaopg7MWKsB06sWRqxRK4Ah8T+fQij3NOsZ
X-Received: by 10.180.183.108 with SMTP id el12mr21218481wic.55.1377187157501; 
	Thu, 22 Aug 2013 08:59:17 -0700 (PDT)
Received: from melchett.burtonini.com (35.106.2.81.in-addr.arpa. [81.2.106.35])
	by mx.google.com with ESMTPSA id a4sm39519248wik.11.1969.12.31.16.00.00
	(version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 22 Aug 2013 08:59:16 -0700 (PDT)
From: Ross Burton <ross.burton@intel.com>
To: poky@yoctoproject.org
Date: Thu, 22 Aug 2013 16:59:09 +0100
Message-Id: <bb384339bf1cc8737aae6ee4d2851fa1358f8aaa.1377186905.git.ross.burton@intel.com>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <2eacc0a56e45f8210ff25844cee1fd31014cbb64.1377186905.git.ross.burton@intel.com>
References: <2eacc0a56e45f8210ff25844cee1fd31014cbb64.1377186905.git.ross.burton@intel.com>
In-Reply-To: <cover.1377186905.git.ross.burton@intel.com>
References: <cover.1377186905.git.ross.burton@intel.com>
Cc: dvhart@linux.intel.com
Subject: [PATCH 3/4] genericx86: disable USB autosuspend
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
X-List-Received-Date: Thu, 22 Aug 2013 15:59:19 -0000

USB autosuspend doesn't reliably work with arbitrary hardware, so don't enable
it.

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 meta-yocto-bsp/conf/machine/genericx86.conf |    2 --
 1 file changed, 2 deletions(-)

diff --git a/meta-yocto-bsp/conf/machine/genericx86.conf b/meta-yocto-bsp/conf/machine/genericx86.conf
index e144754..042f206 100644
--- a/meta-yocto-bsp/conf/machine/genericx86.conf
+++ b/meta-yocto-bsp/conf/machine/genericx86.conf
@@ -31,8 +31,6 @@ MACHINE_EXTRA_RRECOMMENDS = "kernel-modules eee-acpi-scripts linux-firmware v86d
 
 IMAGE_FSTYPES ?= "ext3 cpio.gz live"
 
-APPEND += "usbcore.autosuspend=1"
-
 GLIBC_ADDONS = "nptl"
 
 EXTRA_OECONF_append_pn-matchbox-panel-2 = " --with-battery=acpi"
-- 
1.7.10.4


