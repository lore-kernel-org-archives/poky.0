Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7DE63E00B9E; Fri, 29 Jan 2016 02:52:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f42.google.com (mail-wm0-f42.google.com [74.125.82.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9CF89E00A92
	for <poky@yoctoproject.org>; Fri, 29 Jan 2016 02:52:44 -0800 (PST)
Received: by mail-wm0-f42.google.com with SMTP id 128so47499327wmz.1
	for <poky@yoctoproject.org>; Fri, 29 Jan 2016 02:52:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:subject:date:message-id;
	bh=eqb9Rb83JN2VXcxJ6RVj1kO2VcFDWYjA2cZn4sPNzAc=;
	b=klgO9PQiCdLOG4xyLwcREsrNSTDqvkkQCrZVBBnCtWAgTvNku+nufGmFDP2tZFctj3
	CXPkA6fJxjXvhiPlUZyjq4+rDXXVf2jQ1iQ47TeTzsVHbEYsTTRr/Q2IG5FDQtPZTNsW
	LBOomaWiiLDjIC9ub+7Mjeax2hIo8Zv7vGKH3oPVT1EC6mWRsujXi7qfhhohz3ehBo2s
	pzJSkx01znRIqusINnhz0epKsPiDaM4DzpzSt7vmSm+67P12b5NObdozxhgJh6SyCCdU
	edSwkkdS2kBpFQrDre1aDkSGcTLHMnnevnawyIamFQoEiwKIxVZdOq8yaXVNcuedUDDb
	TNVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=eqb9Rb83JN2VXcxJ6RVj1kO2VcFDWYjA2cZn4sPNzAc=;
	b=isRFInbgiiMmKbI+j4U1IMsCYb26IDoMFPxWIrNzwaQgLLO22xiuRw9AxFdchfjKk4
	CfGqsMlH2UM+iqTPb9cNCCJ9Djf+giFngGhsI9GQL19TCXyh966oXPzauetCqEkIW+Uv
	EfiswystMn0M42nlYXOTlv367WNkzoze8xFA2hJYqxAYfSEzR2tpIQ73vmZ9qs2t29C9
	xdF6TndtWrqYoS5pocc7y1kbOfSK6RcI+b/ULV+C2F/DTqWCV9+apKxmpRHiKG3PB2Iz
	+v7K8ouOVVHTb/X+jl9sE18ebdIKVlpjnwOkEyZOkKVDSDcVMluC0U2z9t37QMkUlG9V
	x+4A==
X-Gm-Message-State: AG10YOSfNxwCYXLlnXtOx2P1wE31/8+GtouuIljG4mUtpZUiLt3cm0IQwREdUNKUEQ1565ME
X-Received: by 10.28.55.209 with SMTP id e200mr8613953wma.2.1454064763478;
	Fri, 29 Jan 2016 02:52:43 -0800 (PST)
Received: from flashheart.burtonini.com (35.106.2.81.in-addr.arpa.
	[81.2.106.35]) by smtp.gmail.com with ESMTPSA id
	lh1sm14972975wjb.20.2016.01.29.02.52.42 for <poky@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 29 Jan 2016 02:52:42 -0800 (PST)
From: Ross Burton <ross.burton@intel.com>
To: poky@yoctoproject.org
Date: Fri, 29 Jan 2016 10:52:37 +0000
Message-Id: <1454064757-5232-1-git-send-email-ross.burton@intel.com>
X-Mailer: git-send-email 2.6.4
Subject: [PATCH] conf/distro/poky.conf: use example.com for connectivity check
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
X-List-Received-Date: Fri, 29 Jan 2016 10:52:45 -0000

Instead of pinging both the Yocto Project download and bugzilla sites, use
https://www.example.com/.  This is a reserved domain name and hosted by IANA, so
is a key part of the Internet and should be available everywhere (whereas for
example google.com is generally blocked by the Great Firewall of China).  Also
using a https: site verifies that any local proxies are configured for HTTPS as
well as HTTP.

In my testing this reduces the time taken for connectivity checks from 3 seconds
to 1 second.

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 meta-yocto/conf/distro/poky.conf | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
index 39419d5..76520fb 100644
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
2.6.4


