Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C7CC6E00D36; Mon, 15 Jul 2019 03:24:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.221.66 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
	[209.85.221.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7B716E00BF7
	for <poky@yoctoproject.org>; Mon, 15 Jul 2019 03:23:58 -0700 (PDT)
Received: by mail-wr1-f66.google.com with SMTP id x4so16446560wrt.6
	for <poky@yoctoproject.org>; Mon, 15 Jul 2019 03:23:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=1KQNmdvwi4DHrvCoyxc4YxgHRlTXv0nUVbL7w/tkkio=;
	b=pbsWtpL9FUXUeyg5wYwNQrkJnK8Qw6PVgOYP9FOSaKBwxotQCTtdUf8KE31J4iqxo3
	VOzkmev/aeh57iS1zpomSOPFAX8sS8VOqxDMlp2EfmvmuoMVDWfTVqMqeS/O5kUyktpI
	TN9NrZDk3gbC22ADe9e46qtR1Hx0q67ER0+ihC5BrfAFBwenWwhuFRwjwtxa+LO/TtK0
	6FpYC89ago7NMP5Z8m+k3T1O2d745LO9mdKGpbR6e8qVkfaOL8A8aVxopkaQXtpNTIDa
	3xxs5Und51GLyLFpcK+A0SpfvsV7wpZk9TdCVgG1nO1/TDAspE0taP/qKtR+hjSjskeR
	Xo5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=1KQNmdvwi4DHrvCoyxc4YxgHRlTXv0nUVbL7w/tkkio=;
	b=kqgmKd2KrZ4mlL+mnqJx7XmVxUP9zhE35LdNR9nEFjxY9Iog9esuCokryHS3SAbIt1
	qqfGHiTVhPc76zPxvCoIT0vkXSG2x5LWjRQX0Rg18dm/CDwBrkSgb7jNOfluBj6jY9dA
	Hz4y9k3yoG9RyWNurwNh4+TOwl7LuUQqyOHAUwmqDa3psG+yRhJDuEURNSxhZcNglQDj
	ndPqUT+abVJxKktNMMyUXd+wuCWvIt9S56XWPMOggjv4KILQsOMrHCaIXPs5o1Wzv0z4
	AoLbgOLzN0zL5c+zOpRtn3vyWxZgD++5DJdvVlncOru0z3kI7I4Tnw6qkAwLMJPLXtLl
	VmuA==
X-Gm-Message-State: APjAAAVUq+NElogVQ2ZRr8e7fq9pfSgtnNbCnLDj44e4rM2ek51eO+0M
	lFAOAc1nnILXRGbWvDKaW/3tD++VI7o=
X-Google-Smtp-Source: APXvYqx3BcUv6dt6H0jZRlPK/EiD7N41H7e/RqSx2n5rXPCntbkYDuhaLQGFOOLj21YD2i+DSBaKDA==
X-Received: by 2002:adf:91c2:: with SMTP id 60mr29690754wri.334.1563186237274; 
	Mon, 15 Jul 2019 03:23:57 -0700 (PDT)
Received: from flashheart.burtonini.com (35.106.2.81.in-addr.arpa.
	[81.2.106.35]) by smtp.gmail.com with ESMTPSA id
	n5sm13941838wmi.21.2019.07.15.03.23.56 for <poky@yoctoproject.org>
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Mon, 15 Jul 2019 03:23:56 -0700 (PDT)
From: Ross Burton <ross.burton@intel.com>
To: poky@yoctoproject.org
Date: Mon, 15 Jul 2019 11:23:51 +0100
Message-Id: <20190715102351.2576-1-ross.burton@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [PATCH] conf/poky: add debian-10 to the supported distribution list
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
X-List-Received-Date: Mon, 15 Jul 2019 10:24:00 -0000
Content-Transfer-Encoding: 8bit

Debian 10 is the new stable release and is being tested on the autobuilder, so
add this to the supported distribution list.

[ YOCTO #13432 ]

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 meta-poky/conf/distro/poky.conf | 1 +
 1 file changed, 1 insertion(+)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index 78621e6dbfc..2d155d0de18 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -59,6 +59,7 @@ SANITY_TESTED_DISTROS ?= " \
             centos-7 \n \
             debian-8 \n \
             debian-9 \n \
+            debian-10 \n \
             opensuse-42.3 \n \
             "
 #
-- 
2.20.1


