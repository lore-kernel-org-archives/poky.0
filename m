Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 16376E0099B; Tue,  5 May 2015 05:21:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wg0-f44.google.com (mail-wg0-f44.google.com [74.125.82.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1CB32E00961
	for <poky@yoctoproject.org>; Tue,  5 May 2015 05:21:03 -0700 (PDT)
Received: by wgyo15 with SMTP id o15so180819246wgy.2
	for <poky@yoctoproject.org>; Tue, 05 May 2015 05:21:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=UCwIlbndPW9O3Eqf+CpkbbX3xOMy78dVeHXMsuU3AkM=;
	b=hcT/2JExpJl2oBWZrOL5ZiE2telT0Zzm0nU9nJ+KcIO4afBr4X4e/vcqUTWmkfBbPM
	VNNr7D/w6LHE44LJlw1u80Rk/eUuTKOz7L6KZHYW0x2p3VBQ1oHYlgDoW8ebO/FoDXaR
	4wZr9gPy2NNC4Zalv6hmHtqIAvwAdhs42uAb1qlwRrpB8G2HTtITPuUeCcfDSJtDPF+w
	EWUQJdnUdAVS4wKGueXIrXfW4T/X9we8aFYAKoidTUpnToEocTYV+O8SLUenIp+a+G08
	MVjhr5bnmwdQB9PiuQ3+Hy0CApnhfRFUbDqMNPT9eQwRPXjntkkCXfr2HuuCyK9u1g43
	Hdcw==
X-Gm-Message-State: ALoCoQnGp4TZdOCJQ7YAXmB33QcwvvdVU1Ia8gkDgC/t2NHonqneaOMCh//lJQLcYsz6aFSq1x7U
X-Received: by 10.180.73.202 with SMTP id n10mr2174257wiv.0.1430828462787;
	Tue, 05 May 2015 05:21:02 -0700 (PDT)
Received: from flashheart.burtonini.com (35.106.2.81.in-addr.arpa.
	[81.2.106.35]) by mx.google.com with ESMTPSA id
	ex2sm25323755wjd.28.2015.05.05.05.21.01 for <poky@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 05 May 2015 05:21:02 -0700 (PDT)
From: Ross Burton <ross.burton@intel.com>
To: poky@yoctoproject.org
Date: Tue,  5 May 2015 13:17:10 +0100
Message-Id: <1430828230-14320-1-git-send-email-ross.burton@intel.com>
X-Mailer: git-send-email 2.1.4
Subject: [PATCH] poky.conf: remove SVK mirror
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
X-List-Received-Date: Tue, 05 May 2015 12:21:07 -0000

The svk fetcher was removed in bitbake 1.22 and oe-core master doesn't consider
svk: a valid URL for mirrors.

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 meta-yocto/conf/distro/poky.conf | 1 -
 1 file changed, 1 deletion(-)

diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
index 3598f4f..aa6f01e 100644
--- a/meta-yocto/conf/distro/poky.conf
+++ b/meta-yocto/conf/distro/poky.conf
@@ -53,7 +53,6 @@ gitsm://.*/.* http://downloads.yoctoproject.org/mirror/sources/ \n \
 hg://.*/.*    http://downloads.yoctoproject.org/mirror/sources/ \n \
 osc://.*/.*   http://downloads.yoctoproject.org/mirror/sources/ \n \
 p4://.*/.*    http://downloads.yoctoproject.org/mirror/sources/ \n \
-svk://.*/.*   http://downloads.yoctoproject.org/mirror/sources/ \n \
 svn://.*/.*   http://downloads.yoctoproject.org/mirror/sources/ \n"
 
 MIRRORS =+ "\
-- 
2.1.4


