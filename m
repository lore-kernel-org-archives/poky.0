Return-Path: <avery.brian@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D7D77E00E61; Sat, 19 Sep 2015 17:51:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (avery.brian[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f41.google.com (mail-pa0-f41.google.com
	[209.85.220.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 598DEE00E61
	for <poky@yoctoproject.org>; Sat, 19 Sep 2015 17:51:53 -0700 (PDT)
Received: by pacex6 with SMTP id ex6so83118255pac.0
	for <poky@yoctoproject.org>; Sat, 19 Sep 2015 17:51:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=RcNoDLBnUXHCWD9YaGUnsaCo5mTxx1lzOiaKwDz1Tx0=;
	b=ZVUqJuQoFn0I3t91Y1H9Rvfrh/znRd4Wc7bvbyaDx/F1DxHNgpOvbxbYBTGM2N2FCA
	B1W4e4L6LF8uH/kfAcb4UUprqToFVwAoZhkCsTQdJnO5QvXG20p9exvS9aOVYMWVkcgO
	zi/BHIfRhmrVKM2BdtTqBl7gPBqRUVEki1sDhJ0d2C1fLgufWZVKV7gyj0y4ogVQqQ8j
	oVq9DAZgfs1xe8/Ea6TTHNC63X/5N49e4LjoyDPPGfwv2Wl4ixDEn8sL72C/gfh3/wcH
	uWB9NX6iOjFtJA1yC49x6jd99dTqDk9/eAKASaXmy98lW6ltN1x7YRMQ7aTMmzCle9mv
	j6FQ==
X-Received: by 10.66.221.170 with SMTP id qf10mr15283935pac.134.1442710313341; 
	Sat, 19 Sep 2015 17:51:53 -0700 (PDT)
Received: from whisper.hsd1.or.comcast.net
	(c-98-232-142-195.hsd1.or.comcast.net. [98.232.142.195])
	by smtp.gmail.com with ESMTPSA id
	by1sm16561417pab.6.2015.09.19.17.51.52
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sat, 19 Sep 2015 17:51:52 -0700 (PDT)
From: brian avery <avery.brian@gmail.com>
To: poky@yoctoproject.org
Date: Sat, 19 Sep 2015 17:53:14 -0700
Message-Id: <ce1b1e6f90c04502bb96418880367f0784e4acd4.1442710213.git.avery.brian@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1442710213.git.avery.brian@gmail.com>
References: <cover.1442710213.git.avery.brian@gmail.com>
Subject: [PATCH 1/1] meta-selftest: add error recipe and error-image
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
X-List-Received-Date: Sun, 20 Sep 2015 00:51:54 -0000

    * The error recipe throws an error during compile

    * The error-image includes the error recipe

    * Not currently used by oe-selftest

    * Initial target is toaster selenium testing

Signed-off-by: brian avery <avery.brian@gmail.com>
---
 meta-selftest/recipes-test/error/error.bb        | 10 ++++++++++
 meta-selftest/recipes-test/images/error-image.bb |  8 ++++++++
 2 files changed, 18 insertions(+)
 create mode 100644 meta-selftest/recipes-test/error/error.bb
 create mode 100644 meta-selftest/recipes-test/images/error-image.bb

diff --git a/meta-selftest/recipes-test/error/error.bb b/meta-selftest/recipes-test/error/error.bb
new file mode 100644
index 0000000..af718dc
--- /dev/null
+++ b/meta-selftest/recipes-test/error/error.bb
@@ -0,0 +1,10 @@
+SUMMARY = "Error Test case that fails on do_compile"
+DESCRIPTION = "This generates a compile time error to be used to for testing. Not currently used by oe-selftest"
+LICENSE = "MIT"
+LIC_FILES_CHKSUM = "file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
+
+INHIBIT_DEFAULT_DEPS = "1"                                                                                                                                                                  
+
+do_compile() {
+        false;
+}
diff --git a/meta-selftest/recipes-test/images/error-image.bb b/meta-selftest/recipes-test/images/error-image.bb
new file mode 100644
index 0000000..13d9cc0
--- /dev/null
+++ b/meta-selftest/recipes-test/images/error-image.bb
@@ -0,0 +1,8 @@
+SUMMARY = "An image that includes the error recipe and will therefore fail"
+DESCRIPTION = "This generates an error. Not currently used by oe-selftest"
+
+IMAGE_INSTALL = "error"
+
+IMAGE_LINGUAS = " "
+
+inherit core-image
-- 
1.9.1


