Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EC0E5E00B33; Thu, 18 Jul 2019 04:53:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.128.66 listed in list.dnswl.org]
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
	[209.85.128.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 485A8E00B33
	for <poky@yoctoproject.org>; Thu, 18 Jul 2019 04:53:55 -0700 (PDT)
Received: by mail-wm1-f66.google.com with SMTP id a15so25284644wmj.5
	for <poky@yoctoproject.org>; Thu, 18 Jul 2019 04:53:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=xrv6tyKznVcz4nLJVQ2SfsH2d0PAj+Y+uIfe0UvHsHM=;
	b=pQpMqvupSbuqULij2SoPFZXzxpxW3kuE/wUfRQ7D/GC52CyyCrvd+aBo9TvksB6SC6
	lJvwNSZ6UIHSXJ58VVsGTj0GYOVqMgO9Si/Uxsnf1bAuBrQh/+dbL/H+nKgeA9zFjQrQ
	7TsR3p1YY/T2pWZT30d66KMJ5CH1zF+LfjN3avksp99z+iGOgMJyq6HXBxzd0Y3art/z
	J4iIS9T03hiaNVE+HcrVMLtPgEbYhQjtDtdrCtws1A+4+gXGOp7zNqB8OciNVHhkOd88
	2J7FhvOweUOnR5WGFl/BOkt3i6RO25ndVi3P07gZ1obBDvI5BpD/no3R9OR99weM5Zx6
	fIFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=xrv6tyKznVcz4nLJVQ2SfsH2d0PAj+Y+uIfe0UvHsHM=;
	b=j0atdTjbKWjz6jZKQdmiDmFPYXtjtFvVQebETmyks46Yof78QJr4WClqDfQEMUt1UA
	EqvpDXOLwLnBGECBgfZiXhYdaCwJ3TmgQnCduaYKIwgZIXM+Lqc7Dqwp5Gk6Yd4bY0qu
	S2ZbKnn9sxNZa1Q5Zlbb4Y5lBVNzFCCUMgZteKiN/dhHu76qiNnApHz6yBSKCoQVvPoO
	DWsEF+j0zYQz2HJaOwGL0TjGxMIKgLc962qTuKDKZ2O4M4Tv+o3wHq9y6zi7yahZapML
	fQiI16OGIwSFn/ZWULQ9PlB9DrVK84+IVpeDsfTzVApbVuvF9tKgjLKwZniwDsOnxiSL
	URjQ==
X-Gm-Message-State: APjAAAWjK4gdeofNRJ9/T33M4HyYmukcd6pDtzUTCNbzqaUrEJ9xe3UQ
	LY6p4QO64TterDc3gRaNReyTDnd7f0o=
X-Google-Smtp-Source: APXvYqzud0tZ4zHV1IF4WFFleCr4uULuAg1vwUyZ2tJcoD7HzxISKVgxK0qYyVYn5rfTD3nNRlISKw==
X-Received: by 2002:a1c:3b02:: with SMTP id i2mr40339254wma.23.1563450834107; 
	Thu, 18 Jul 2019 04:53:54 -0700 (PDT)
Received: from flashheart.burtonini.com (35.106.2.81.in-addr.arpa.
	[81.2.106.35]) by smtp.gmail.com with ESMTPSA id
	a8sm21039668wma.31.2019.07.18.04.53.53 for <poky@yoctoproject.org>
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Thu, 18 Jul 2019 04:53:53 -0700 (PDT)
From: Ross Burton <ross.burton@intel.com>
To: poky@yoctoproject.org
Date: Thu, 18 Jul 2019 12:53:51 +0100
Message-Id: <20190718115351.2754-1-ross.burton@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [PATCH] conf/poky: add Fedora 30 and Opensuse Leap 15.1 to supported distributions
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
X-List-Received-Date: Thu, 18 Jul 2019 11:53:56 -0000
Content-Transfer-Encoding: 8bit

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 meta-poky/conf/distro/poky.conf | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index 2d155d0de18..ac6368ddab1 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -56,11 +56,13 @@ SANITY_TESTED_DISTROS ?= " \
             ubuntu-18.04 \n \
             fedora-28 \n \
             fedora-29 \n \
+            fedora-30 \n \
             centos-7 \n \
             debian-8 \n \
             debian-9 \n \
             debian-10 \n \
             opensuse-42.3 \n \
+            opensuseleap-15.1 \n \
             "
 #
 # OELAYOUT_ABI allows us to notify users when the format of TMPDIR changes in
-- 
2.20.1


