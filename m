Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9B438E007B3; Sun,  9 Sep 2018 15:32:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.195 listed in list.dnswl.org]
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
	[209.85.214.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D1F10E00474
	for <poky@yoctoproject.org>; Sun,  9 Sep 2018 15:32:07 -0700 (PDT)
Received: by mail-pl1-f195.google.com with SMTP id j8-v6so8816292pll.12
	for <poky@yoctoproject.org>; Sun, 09 Sep 2018 15:32:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=hcJWIQpvWzxwKPNEa1aw1hNCoNWBMynwUhCTYLLMo4g=;
	b=tBD6E3LAjfv4Pjgk4APx6mDcyo/bLisQXpEsruCH9bYu+PAMgLdG2LPyDBACPtesId
	wUBVdJcjyaf1ey6Ro0DMFOpHMMs/ZBUzn0pQCLh2sh+gAi//usgch3dn3X5lHaBXl98n
	6uxYEYRCDQPf51l5cr2kPjkovwqTPNXCWq6M7wJRUDIk3lElNRXiIZL0dBYUUYdafzCc
	YdwoiNB7P/DQCnDNtFA2mbPTFU+j1YJlKoDeSk8qI8rC4RUtTkC7TyE5ofgwY8uycvTz
	lerGokAvAosxm2hREICwdkxxDn9SOOUlBxOCJnNA5xd+gMZmPwmhS9J4vSfm53uKV/UB
	6qEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=hcJWIQpvWzxwKPNEa1aw1hNCoNWBMynwUhCTYLLMo4g=;
	b=O3Y2fcdWV3JnrtlL+IqhvkdACqvm/BkSe//+2JKTuLB3EozSUzX5gxtDhiNXQMg6co
	wcQ071egAh6lYUbg4Ay/oZIdD1nXI6J079XnxNiX6CeBf/7vGvFSbJ9QrdrVycIuZX6H
	jSFD/B5Ur2MtdqCeokNFtOATEuuFoJKuZIxry8hz+/j9ZalElxDidtiyeZ0YI8KQ/MKn
	Fb32ZYyl/QMcIYLB7FRj9N9vbGWDO2rU5C0TyyqcgCzk/AwYf5Bi3qH6vAwUxh78A63w
	Z6k3SUnQyTccLeEIjb65uqa9d4JuhPf723Ci5+CE0+eBj28XBvjnaf4dx63BNTlD1eLA
	t5hg==
X-Gm-Message-State: APzg51AtDXM0B6I5m8AiflCt7nJlh9fXpvutWaTsAZPBM1PLGbkab5bA
	DVRYpBdTvweN/T5cNCi9tESuO+5Q
X-Google-Smtp-Source: ANB0VdZq09fHAXP6l5ZSIXwLn9oOj+IqU9dfesPbGr/ERDxbRS7BNwgaybLc7GXilwEdKJzhhKzfnA==
X-Received: by 2002:a17:902:7c96:: with SMTP id
	y22-v6mr19028491pll.332.1536532326621; 
	Sun, 09 Sep 2018 15:32:06 -0700 (PDT)
Received: from localhost.localdomain ([2601:646:877f:9499::71e7])
	by smtp.gmail.com with ESMTPSA id
	77-v6sm16637783pga.40.2018.09.09.15.32.05
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 09 Sep 2018 15:32:05 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: poky@yoctoproject.org
Date: Sun,  9 Sep 2018 15:31:55 -0700
Message-Id: <20180909223155.9915-1-raj.khem@gmail.com>
X-Mailer: git-send-email 2.18.0
Subject: [meta-poky][PATCH] poky.conf: Promote unknown-configure-option to QA Error
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
X-List-Received-Date: Sun, 09 Sep 2018 22:32:08 -0000

Currently, this is a QA warning by default, howver its a useful
check to catch configuration errors, where we might have forgotten
to update or adapt configure options on updates/upgrades to a package

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 meta-poky/conf/distro/poky.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index 392c2383ee4..9c7f2a38c30 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -91,7 +91,7 @@ INHERIT += "poky-sanity"
 # QA check settings - a little stricter than the OE-Core defaults
 WARN_TO_ERROR_QA = "already-stripped compile-host-path install-host-path \
                     installed-vs-shipped ldflags pn-overrides rpaths staticdev \
-                    useless-rpaths"
+                    unknown-configure-option useless-rpaths"
 WARN_QA_remove = "${WARN_TO_ERROR_QA}"
 ERROR_QA_append = " ${WARN_TO_ERROR_QA}"
 
-- 
2.18.0


