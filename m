Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9BA53E00BF5; Tue, 26 Jan 2016 06:21:02 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.49 listed in list.dnswl.org]
Received: from mail-wm0-f49.google.com (mail-wm0-f49.google.com [74.125.82.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 030CFE00BEC
	for <poky@yoctoproject.org>; Tue, 26 Jan 2016 06:21:00 -0800 (PST)
Received: by mail-wm0-f49.google.com with SMTP id l65so106033989wmf.1
	for <poky@yoctoproject.org>; Tue, 26 Jan 2016 06:21:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:subject:date:message-id;
	bh=gO3ZL2poBJyWFL+n/mJdF/7yzAHVymazMMjsgIHR/wU=;
	b=WmJODFnZhgh+v61wogar+jnIBvAOWF+VyRy77aRZiT2SBLWcT+pDRouy5ny5MF+XON
	pG+zzyvNWO9tM8HsLOtQrKg+yjstsu8l6/2uVAHb6V9n8ZGyRfgEPXjQlPEjGuQbsl8T
	rK2bZwsuopQVZ9Nz3N3pcvpxSEwXhVAPUB9ALAD6q6f61Wh69aH/NV9DxabkW3YkPfyM
	LwpT2nIlgY5VeowSExj3KPQiiWBeloLClD+aLlIn8XgwJIIyHzKVOtdFFSYV4do14sJk
	G7gwBOwdHRlT8zzacJUGC/Aaw7hLZHQlLm5OaWcLEuO8NWafqWlH0PEN7L5bdiY9sPIz
	mZwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=gO3ZL2poBJyWFL+n/mJdF/7yzAHVymazMMjsgIHR/wU=;
	b=mFtVXNqshjQx/u4KtQzKANF9ul7EBAkfiOqJ8gGDDruNGVP0dEf0uyvAIOaROxJZol
	wfS2lVlDb1BKB8NYskShMzNuCXqV7LV6fKCsWeNRYbpedN9dF42HBYOZL9/5s8JS78II
	Olrj8mn+1tBML39If5caIUXSFX6advX5JfQb3WIRWVaMSOKFgYv3b2v13x51W/l/UFg7
	EPX6IUNIZmAh1PMp7o2Q2hbwdyZ+stFS5zCp+Qvp3/9N6jePbHLasSNm5kH2hbuZDetE
	PgAp6GZ8aye1O1hsk3IKgyOo9H43n85i7ijxSBdL0yUDZ9SCvc41SQ2bHZw4v+d1KWlw
	YiBQ==
X-Gm-Message-State: AG10YOTp88Gfse8mpTQarayJcuDO8qoaAu+xXEib08/AOuJBcu2miPeV5xQ2WkV9bR8R9PiB
X-Received: by 10.28.144.10 with SMTP id s10mr23441193wmd.97.1453818059675;
	Tue, 26 Jan 2016 06:20:59 -0800 (PST)
Received: from flashheart.burtonini.com (35.106.2.81.in-addr.arpa.
	[81.2.106.35]) by smtp.gmail.com with ESMTPSA id
	bg1sm1687109wjc.27.2016.01.26.06.20.58 for <poky@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 26 Jan 2016 06:20:58 -0800 (PST)
From: Ross Burton <ross.burton@intel.com>
To: poky@yoctoproject.org
Date: Tue, 26 Jan 2016 14:20:56 +0000
Message-Id: <1453818056-6498-1-git-send-email-ross.burton@intel.com>
X-Mailer: git-send-email 2.6.4
Subject: [PATCH] conf/distro/poky.conf: use google.com for connectivity check
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
X-List-Received-Date: Tue, 26 Jan 2016 14:21:02 -0000

Instead of pinging both the Yocto Project download site and bugzilla, just ping
google.com.

In my testing this reduces the time taken for connectivity checks from 3 seconds
to 0.15 seconds.

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 meta-yocto/conf/distro/poky.conf | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
index 39419d5..f3bea27 100644
--- a/meta-yocto/conf/distro/poky.conf
+++ b/meta-yocto/conf/distro/poky.conf
@@ -65,9 +65,7 @@ https://.*/.*    http://downloads.yoctoproject.org/mirror/sources/ \n"
 # the variable to be empty.
 # Git example url: git://git.yoctoproject.org/yocto-firewall-test;protocol=git;rev=master
 
-CONNECTIVITY_CHECK_URIS ?= " \
-             https://eula-downloads.yoctoproject.org/index.php \
-             http://bugzilla.yoctoproject.org/report.cgi"
+CONNECTIVITY_CHECK_URIS ?= "http://google.com/"
 
 SANITY_TESTED_DISTROS ?= " \
             poky-1.7 \n \
-- 
2.6.4


