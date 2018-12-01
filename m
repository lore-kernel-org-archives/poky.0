Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D18C0E00CCA; Fri, 30 Nov 2018 17:35:16 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.193 listed in list.dnswl.org]
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
	[209.85.214.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D25D5E00C71
	for <poky@yoctoproject.org>; Fri, 30 Nov 2018 17:35:15 -0800 (PST)
Received: by mail-pl1-f193.google.com with SMTP id p8so3643292plo.2
	for <poky@yoctoproject.org>; Fri, 30 Nov 2018 17:35:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=hjlLRWLBsY35RMLsZ5PW5yh8KdO1XQH1M0kaVLBz2Sk=;
	b=S4YNFP4+hg3IIfFsxUHLvEpBU3eFYhjuJYk0aXeAJlPaNDrPJ8y5RE9Ewl8dO5BzDL
	MonkWwfTI8lRAMRloC/lWQh9XLKxCImp2Ez2lX16pnVkq0/sqFg4VHgR0buyjxFAF89W
	JgKOQgfKZXoZkUboXlA6ppMn6Sigd1klCC2mWlRTjiYeyXmFai3wcI/tzu4Y1Pvlb8Cv
	L4JdDFjka16HlV/EZ8aOxvus88SfnhMl6KCbBfUubckmmpMnDHdg1yZtY/EFKNBBQD6n
	cwAHb0+TZN0DcmxpPWvUqk4R+9lXxMdV5R/Jwnh7tYd9x0PEJ4GOe9nk6rhU/7V/ZUcy
	CdWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=hjlLRWLBsY35RMLsZ5PW5yh8KdO1XQH1M0kaVLBz2Sk=;
	b=iV5jcCwli0IBpdWl8bmuVrZVHcUruYd3gSYtMlkw+im+FwZkjjpd+CvmSsWdL4o3d8
	FmPXl97krrpGwqFdTad9vURgqOgsxww9lsNnSsVwuLEK/PxFGWiD/kqHuzqICfC3+NvL
	GR4H6cj+I+FexyPQn9ioTEXNu30N4eHXa4yka3LJSwDTxGG8P6quMgHXpMMAZvBjjgXT
	I7M/vFMDqP34ypH9Lq22Ytu69z0pulP7S/Dp6JmPV2lFjcsHkqTdzSiBnY66m3goA8aV
	tGmM0wOVdxGpvI5HNFvx5D5k/J8V6kbX/gAaqGF0o+X37b3FCOiQfy+BWigEFI9TARBM
	nUqA==
X-Gm-Message-State: AA+aEWaA/pyfGv8+4xwEJAsRwspykza+9PlL2nRJOY26O6ZzWZ7Eo+X5
	UvOZu5DAh8984eop56Cw18CnMLM1XTU=
X-Google-Smtp-Source: AFSGD/VbfA1GX7ukwXoqUnjk7TCAvVLW1Vc+s0QOM+xow6L8xE96gR2cFUgK4TqwJXHKPZtilJfLmg==
X-Received: by 2002:a17:902:6848:: with SMTP id
	f8mr7602001pln.300.1543628114936; 
	Fri, 30 Nov 2018 17:35:14 -0800 (PST)
Received: from localhost.localdomain ([2601:646:877f:9499::26ab])
	by smtp.gmail.com with ESMTPSA id
	y12sm9520340pfk.70.2018.11.30.17.35.14
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 30 Nov 2018 17:35:14 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: poky@yoctoproject.org
Date: Fri, 30 Nov 2018 17:35:04 -0800
Message-Id: <20181201013504.33246-1-raj.khem@gmail.com>
X-Mailer: git-send-email 2.19.2
MIME-Version: 1.0
Subject: [meta-poky][PATCH] local.conf.sample: Update the sample config as per new migration manual
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
X-List-Received-Date: Sat, 01 Dec 2018 01:35:16 -0000
Content-Transfer-Encoding: 8bit

Syncs with oe-core and the documentation
https://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#var-TESTIMAGE_AUTO
https://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#migration-2.6-automatic-testing-changes

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 meta-poky/conf/local.conf.sample | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/meta-poky/conf/local.conf.sample b/meta-poky/conf/local.conf.sample
index d28bf58a1e7..cf96598819c 100644
--- a/meta-poky/conf/local.conf.sample
+++ b/meta-poky/conf/local.conf.sample
@@ -157,10 +157,12 @@ USER_CLASSES ?= "buildstats image-mklibs image-prelink"
 # Runtime testing of images
 #
 # The build system can test booting virtual machine images under qemu (an emulator)
-# after any root filesystems are created and run tests against those images. To
-# enable this uncomment this line. See classes/testimage(-auto).bbclass for
-# further details.
-#TEST_IMAGE = "1"
+# after any root filesystems are created and run tests against those images. It can also
+# run tests against any SDK that are built. To enable this uncomment these lines.
+# See classes/test{image,sdk}.bbclass for further details.
+#IMAGE_CLASSES += "testimage testsdk"
+#TESTIMAGE_AUTO_qemuall = "1"
+
 #
 # Interactive shell configuration
 #
-- 
2.19.2


