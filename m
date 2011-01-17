Return-Path: <aalonso00@gmail.com>
Received: from mail-gx0-f176.google.com (mail-gx0-f176.google.com
	[209.85.161.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 06EB44C8121A
	for <poky@yoctoproject.org>; Mon, 17 Jan 2011 14:24:20 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by mail-gx0-f176.google.com with SMTP id 4so2387299gxk.35
	for <poky@yoctoproject.org>; Mon, 17 Jan 2011 12:24:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:sender:from:to:cc:subject:date:message-id
	:x-mailer:in-reply-to:references;
	bh=AcmYyfFf8M1JEApA40xpXak2oG9PdGb1uGVsWi1okgY=;
	b=oOmI1FU+7Jak+XPumnpqJb0iKxh92Y0M9RK9I/Tuo6h4Jzg/2qPsI5DyYTWM3eF8mq
	RYcdsAGbA6V/HdmV1zo5YFDIPfFnvVd0yfcoeKe8c41HVqkh26g0c9lEOODc8W8oTWvn
	56M6Lb3duVqDZD/J97W3f1o1tp0nViAt661ko=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
	:references;
	b=ZohKdlHba+2HprSzWmAvyUQCfr/LIE6OvAbKjBwxZa+ZJxmXVOe/sFN0JVt+Q4iT9K
	/hIvbbd8veJj2lXGsJK4jaJiFxPXYRRPf0SXUOSm0AquEDMOimfgUAXwN6GArBI7AIMt
	uuzWoO7pj4cWQo9OPcICTCs0vwE8oEKR8ZqJ8=
Received: by 10.100.48.4 with SMTP id v4mr2833121anv.47.1295295859912;
	Mon, 17 Jan 2011 12:24:19 -0800 (PST)
Received: from localhost.localdomain ([201.153.229.4])
	by mx.google.com with ESMTPS id c30sm5898586anc.0.2011.01.17.12.24.17
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Mon, 17 Jan 2011 12:24:19 -0800 (PST)
Sender: Adrian Alonso <aalonso00@gmail.com>
From: Adrian Alonso <aalonso@secretlab.ca>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Date: Mon, 17 Jan 2011 14:29:33 -0600
Message-Id: <1295296178-18590-20-git-send-email-aalonso@secretlab.ca>
X-Mailer: git-send-email 1.7.3.4
In-Reply-To: <1295296178-18590-1-git-send-email-aalonso@secretlab.ca>
References: <1295296178-18590-1-git-send-email-aalonso@secretlab.ca>
Cc: Adrian Alonso <aalonso@secretlab.ca>
Subject: [PATCH 20/25] tune-ppc440: append ppc405 in PACKAGE_EXTRA_ARCHS
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 17 Jan 2011 20:24:20 -0000

* Append ppc405 in PACKAGE_EXTRA_ARCHS
* Support gnueabi toolchain for pcc440 and ppc405 archs
  (Xilinx PowerPC targets)

Signed-off-by: Adrian Alonso <aalonso@secretlab.ca>
---
 conf/machine/include/tune-ppc440.inc |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/conf/machine/include/tune-ppc440.inc b/conf/machine/include/tune-ppc440.inc
index 709727c..bdfb13f 100644
--- a/conf/machine/include/tune-ppc440.inc
+++ b/conf/machine/include/tune-ppc440.inc
@@ -1,4 +1,4 @@
 TARGET_CC_ARCH = "-mcpu=440"
 BASE_PACKAGE_ARCH = "ppc440"
 FEED_ARCH = "ppc440"
-PACKAGE_EXTRA_ARCHS += "${BASE_PACKAGE_ARCH}"
+PACKAGE_EXTRA_ARCHS += "${BASE_PACKAGE_ARCH} ppc405"
-- 
1.7.3.4


