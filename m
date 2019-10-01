Return-Path: <jpewhacker@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 02283E00CBC; Tue,  1 Oct 2019 15:10:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	https://www.dnswl.org/, no *      trust
	*      [209.85.210.193 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jpewhacker[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
	[209.85.210.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8942AE00BA1
	for <poky@lists.yoctoproject.org>; Tue,  1 Oct 2019 15:10:00 -0700 (PDT)
Received: by mail-pf1-f193.google.com with SMTP id x127so9102712pfb.7
	for <poky@lists.yoctoproject.org>; Tue, 01 Oct 2019 15:10:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=GwdqaLKxv88ryVGth/wQWaXdVLhK2mURwR61l3YXB1M=;
	b=kvI2KwEa0PIdTUIiUwcuqiCny5/5thH1SA5L+ZWDWx32ZRAwNvcbf/VX3Dug+E8su4
	qTs6KBRexGx5ZhsSdQNtlDPIySLRqKbkrn53slYIS/OQEbxamSbRi16k51E64qp4ccLI
	AZYUlzIn/7BQaSFY4IvpP72wwSNp/qUE0b6gAJ4tmxwMHzmkTvmoqz+V4Fco0+cyZiHs
	CZUUDXCMV4LSAhkrD5DzArS/khmPWc0RQcN4L8DwTd2wnlNZj0cKghZhibpb1q51TsZM
	bN94SIhZbW/BauB+KMQMB+Tpyw/jksq9UghOJqd5z/F9Kqv9YJPJnqnDx6HwwQ5YtjgW
	Gh4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=GwdqaLKxv88ryVGth/wQWaXdVLhK2mURwR61l3YXB1M=;
	b=XX5wyvhIHFiX3GXLfX925rR+XOtOoavu4bKfd4KUg9RA3W+BqNTW1DHmD7TcC1yGgB
	z2RB9cVd3as1L1rJoPXpzpw+GUkUq0bP7FFfnldt3rp7BlKxZ/9ahbqPiBOeb5u11fse
	O51gjMlWSycTAFI/iT3+LWLEFmX42LzIGFxMroqDNGY/VE8H5zbghl1cdMmAFx2/Py/f
	pzdSRvt8BA2PRzD2BuAKnLtVRDtkP49zbkLOwyUp6sVl05pyo1Tbyf34BNNDno3xNY/z
	OOI0ZkhZ6iAVcJ1da35W7aRvlmKe91htmNdz5AjLyXIOEKeNen5BE0zq8V6ke2Tlvuep
	9QdQ==
X-Gm-Message-State: APjAAAUFu6/4yGaJNb5eRFMbQPUcZOJDHcQYFAoJ9SHV/6RKrE1gFJrc
	HUSdQLo6MRV1MshtOFnFDcL1QOY4
X-Google-Smtp-Source: APXvYqzaZMRBmOsaTpzBqzicPktIvjiqaqGpNAKWLr9/+t0lFLs6zRfLmlpjebLdMHNQw9quHY+n9w==
X-Received: by 2002:a63:5146:: with SMTP id r6mr72162pgl.99.1569967799695;
	Tue, 01 Oct 2019 15:09:59 -0700 (PDT)
Received: from localhost.localdomain ([167.220.60.92])
	by smtp.gmail.com with ESMTPSA id
	r30sm19585435pfl.42.2019.10.01.15.09.58
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Tue, 01 Oct 2019 15:09:59 -0700 (PDT)
From: Joshua Watt <jpewhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
To: poky@lists.yoctoproject.org
Date: Tue,  1 Oct 2019 15:09:51 -0700
Message-Id: <20191001220951.9547-1-JPEWhacker@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [meta-poky][PATCH] local.conf.sample: Add Hash Equivalence
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
X-List-Received-Date: Tue, 01 Oct 2019 22:10:01 -0000
Content-Transfer-Encoding: 8bit

Updates the local.conf sample file to reference the variables required
to enable a local hash equivalence server.

Signed-off-by: Joshua Watt <JPEWhacker@gmail.com>
---
 meta-poky/conf/local.conf.sample | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/meta-poky/conf/local.conf.sample b/meta-poky/conf/local.conf.sample
index c86eee45602..2e0bb41e646 100644
--- a/meta-poky/conf/local.conf.sample
+++ b/meta-poky/conf/local.conf.sample
@@ -248,6 +248,20 @@ PACKAGECONFIG_append_pn-qemu-system-native = " sdl"
 # a handy set of menus for controlling the emulator.
 #PACKAGECONFIG_append_pn-qemu-system-native = " gtk+"
 
+#
+# Hash Equivalence
+#
+# Enable support for automatically running a local hash equivalence server and
+# instruct bitbake to use a hash equivalence aware signature generator. Hash
+# equivalence improves reuse of sstate by detecting when a given sstate
+# artifact can be reused as equivalent, even if the current task hash doesn't
+# match the one that generated the artifact.
+#
+# A shared hash equivalent server can be set with "<HOSTNAME>:<PORT>" format
+#
+#BB_HASHSERVE = "auto"
+#BB_SIGNATURE_HANDLER = "OEEquivHash"
+
 # CONF_VERSION is increased each time build/conf/ changes incompatibly and is used to
 # track the version of this file when it was generated. This can safely be ignored if
 # this doesn't mean anything to you.
-- 
2.21.0


