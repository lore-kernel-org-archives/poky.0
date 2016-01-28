Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3E52DE00948; Thu, 28 Jan 2016 05:21:06 -0800 (PST)
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
	*      [74.125.82.43 listed in list.dnswl.org]
Received: from mail-wm0-f43.google.com (mail-wm0-f43.google.com [74.125.82.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E6F74E008F5
	for <poky@yoctoproject.org>; Thu, 28 Jan 2016 05:21:02 -0800 (PST)
Received: by mail-wm0-f43.google.com with SMTP id l66so25071250wml.0
	for <poky@yoctoproject.org>; Thu, 28 Jan 2016 05:21:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:subject:date:message-id;
	bh=UGJATUBpKeiVx9NbAMUuIcN+KsAT2Sh0lIte5Wk5ZfM=;
	b=yv6eUl6GvTR4H4ZKRo8CKLm2J1OO8PP1oigifxyny/KO8ecqBOzvmfu2AbKpYpYHLh
	0mK0vUlhLcmVC/ky8Iik+cletYASaa9jE1LpLQVyLBeuydjTO8nr546o69i867xe9x11
	LU/ZTMn5hzKV/laytKrD9w0TPA2EyzlZO6K/M2YIwRahlN48F8tYaHXT6NNqw8CklTVg
	dvR91OoyIomcEU4q6uEHbFfXEYBdrKOV3R0UWC/4khaEq1vXCy1ohRHcOZQSwbfJg8qM
	RA4pN+1xaTdNKRDISRzj/Hia5ZM3mpICNfXEQHfIztKk3LnV76W9zrhcDlLC61vQ5Hy9
	i4AQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=UGJATUBpKeiVx9NbAMUuIcN+KsAT2Sh0lIte5Wk5ZfM=;
	b=JkQmGFbPnVGe11T+KF5yTRumHmxW2hETKTN0oJg8EW5drtt6GcbP2sXJOnW2zZ3LzC
	Oy+qnoSYbmfzKFFk0e2GPvbDmqD0/A8mQVXK6RhlJgbgGUPeinTMr2l7D5weT2VmwTaW
	Y9KC3tVBbGhjWaiYeFMsmj/OgR6XWCln4mitAudta9bJBkWUYUNAlwumT4dW2TFpXTVZ
	1z4oINlxMVn+UO8M74q/gkDZMLTA+8k2c4ketJwuIoZa0/6Lrx424FDrrNsT3tyGOsKz
	AvlEemt3SSuiIl6HOG09Z+kaw7Toq4NhsnhwoUjml3xdZXHKo4/KC3HfAYXPNmUillId
	RRXw==
X-Gm-Message-State: AG10YOTo+O+e9KLiRQamALNO9EJKVyBkp9gYYkeEbTxrgePI0+IamgwwOEkjYBOXc2v6ODux
X-Received: by 10.194.123.167 with SMTP id mb7mr3718241wjb.0.1453987261273;
	Thu, 28 Jan 2016 05:21:01 -0800 (PST)
Received: from flashheart.burtonini.com (35.106.2.81.in-addr.arpa.
	[81.2.106.35]) by smtp.gmail.com with ESMTPSA id
	e198sm2911351wmd.0.2016.01.28.05.21.00 for <poky@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 28 Jan 2016 05:21:00 -0800 (PST)
From: Ross Burton <ross.burton@intel.com>
To: poky@yoctoproject.org
Date: Thu, 28 Jan 2016 13:20:56 +0000
Message-Id: <1453987256-7071-1-git-send-email-ross.burton@intel.com>
X-Mailer: git-send-email 2.6.4
Subject: [PATCH][V2] conf/distro/poky.conf: use iana.org for connectivity check
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
X-List-Received-Date: Thu, 28 Jan 2016 13:21:06 -0000

Instead of pinging both the Yocto Project download site and bugzilla, use
https://www.iana.org/.  As IANA are a key part of the Internet this site should
be available everywhere, for example google.com is generally blocked by the
Great Firewall of China.  Also using a https: site verifies that any local
proxies are configured for HTTPS as well as HTTP.

In my testing this reduces the time taken for connectivity checks from 3 seconds
to 1 second.

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 meta-yocto/conf/distro/poky.conf | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
index 39419d5..5be0d5e 100644
--- a/meta-yocto/conf/distro/poky.conf
+++ b/meta-yocto/conf/distro/poky.conf
@@ -65,9 +65,7 @@ https://.*/.*    http://downloads.yoctoproject.org/mirror/sources/ \n"
 # the variable to be empty.
 # Git example url: git://git.yoctoproject.org/yocto-firewall-test;protocol=git;rev=master
 
-CONNECTIVITY_CHECK_URIS ?= " \
-             https://eula-downloads.yoctoproject.org/index.php \
-             http://bugzilla.yoctoproject.org/report.cgi"
+CONNECTIVITY_CHECK_URIS ?= "https://www.iana.org/"
 
 SANITY_TESTED_DISTROS ?= " \
             poky-1.7 \n \
-- 
2.6.4


