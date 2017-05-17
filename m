Return-Path: <maryan.pricak@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 05032E00B2E; Wed, 17 May 2017 15:25:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (maryan.pricak[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.193 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.128.193 listed in dnsbl.sorbs.net]
Received: from mail-wr0-f193.google.com (mail-wr0-f193.google.com
	[209.85.128.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 97A4EE00B21
	for <poky@yoctoproject.org>; Wed, 17 May 2017 15:25:15 -0700 (PDT)
Received: by mail-wr0-f193.google.com with SMTP id v42so3756895wrc.3
	for <poky@yoctoproject.org>; Wed, 17 May 2017 15:25:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=CdWjmW1VaHsGI0B10ZQwmEi0UoGXucXB36bxx5KcUYg=;
	b=rzoaznJW5UAe5VezLjsQ3U9zKobchdW+AxB74rop/yWQE9P6ZynqhTal140BNY8DKt
	TdQgiTpImkA1VEy1YchqTNopfj7XjxZkeZ8a3o4Q2FaqX89a0DDEIoWO8n2SAm7Hr4JE
	EMRR0Us3G6+97BSMN3SKth4yN0LnIfcrfv7J9ZD0iFm9CcqHSs9THi3fp2x39UJBowVd
	bo6IF8FY3STDdab642t50yUAYKch+Kq9z+p2BanerJDmBQ3D5cZuj63uwB9diPDHeE7h
	DOAqlrxtjHblR7LgoEVr66i7zrIDqqKJtCljtxt8pVzvOvwL5qRuPRERHkFRl5KXqjmo
	cQlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=CdWjmW1VaHsGI0B10ZQwmEi0UoGXucXB36bxx5KcUYg=;
	b=Fed+0cudztsanyctSaRAbH7HdGPFsb9hFKNxD19m2ki31HAzJn8ENyX15LvlQmFrMv
	+3mb2zzadUICtVcR+F81CsaetxXRyAZFzwVxtcZE8MdzkU43SnPXiRQuKX2hK3d4jSYe
	Rx5H0s0oEakrXvpITkSf30xKG0FtGJ5cWh0XWz/00ZiuA8+yAbOfCo83jpcwRifbIXcK
	kNwRCn2B7Bc8a4AkOWJi8CMe4VlgpU8FSIa0zVJgFPH984hbwoEFJ9HO/S/DLBMJI5Rr
	eIYGMkDpk+maBGC3AFgYc7XGSiShlrL+EcBeed9/4vLmMb1CXjmh1JUaYeQQW7bQpGR6
	UfzQ==
X-Gm-Message-State: AODbwcCZ6ghBEvgY1OfZhdUdwtNqhPCs4w8NWnmoK/1nIsa7Z+B+iPsH
	ubv+VHpmeHKUy+awrfA=
X-Received: by 10.46.92.131 with SMTP id q125mr344852ljb.57.1495059914001;
	Wed, 17 May 2017 15:25:14 -0700 (PDT)
Received: from localhost.localdomain ([93.75.94.160])
	by smtp.gmail.com with ESMTPSA id g42sm601595ljg.35.2017.05.17.15.25.13
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 17 May 2017 15:25:13 -0700 (PDT)
From: Marian Pritsak <maryan.pricak@gmail.com>
To: poky@yoctoproject.org
Date: Thu, 18 May 2017 01:25:05 +0300
Message-Id: <5ebe86726275a2840af2e050dcc3fe6bf3c373cc.1495058109.git.maryan.pricak@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1495058109.git.maryan.pricak@gmail.com>
References: <cover.1495058109.git.maryan.pricak@gmail.com>
Subject: [PATCH 1/1] libjansson: Initial support
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
X-List-Received-Date: Wed, 17 May 2017 22:25:18 -0000

Integrate libjansson v2.10 - C library for encoding, decoding and manipulating
JSON data

Signed-off-by: Marian Pritsak <maryan.pricak@gmail.com>
---
 meta/recipes-core/libjansson/libjansson_2.10.bb | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)
 create mode 100644 meta/recipes-core/libjansson/libjansson_2.10.bb

diff --git a/meta/recipes-core/libjansson/libjansson_2.10.bb b/meta/recipes-core/libjansson/libjansson_2.10.bb
new file mode 100644
index 0000000..c49ab35e
--- /dev/null
+++ b/meta/recipes-core/libjansson/libjansson_2.10.bb
@@ -0,0 +1,22 @@
+SUMMARY = "Jansson is a C library for encoding, decoding and manipulating JSON data"
+SECTION = "libs"
+LICENSE = "MIT"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=8b70213ec164c7bd876ec2120ba52f61"
+
+SRC_URI = "git://github.com/akheron/jansson.git \
+"
+
+SRCREV = "b23201bb1a566d7e4ea84b76b3dcf2efcc025dac"
+
+S = "${WORKDIR}/git"
+
+inherit autotools pkgconfig
+
+FILES_${PN} += "${libdir}/libjansson.so.* \
+"
+FILES_${PN}-dev += "${includedir}/jansson.h \
+                    ${includedir}/jansson_config.h \
+                    ${libdir}/libjansson.so \
+                    ${libdir}/libjansson.la \
+"
+
-- 
2.7.4


