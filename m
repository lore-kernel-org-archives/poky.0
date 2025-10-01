Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E5859CAC5BB
	for <webhook@archiver.kernel.org>; Wed,  1 Oct 2025 14:17:38 +0000 (UTC)
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
 by mx.groups.io with SMTP id smtpd.web10.19067.1759328247734602776
 for <poky@lists.yoctoproject.org>;
 Wed, 01 Oct 2025 07:17:28 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=ScWJ9sY2;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.52, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-3ece1102998so4978923f8f.2
        for <poky@lists.yoctoproject.org>; Wed, 01 Oct 2025 07:17:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1759328245; x=1759933045; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=rOoPTZd35eqQ3q1BseeTY5zXlh3Q/oJLNYiD9j4B4/U=;
        b=ScWJ9sY2W7sEWcqYQlE79uKe5nyURw7/ymoTiTxYyBBaBqX2zFILwjUfcSUkzawE/9
         ftL6Qro6HAbuZZJU19TXSMguMEGehhm0rkGogc6dmO/g9iyYMeW0F9Vwokd8gTo1Pe1G
         xAIo+rojBJhWRYZERS8m1E02yMqjuiuHXFOY0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759328245; x=1759933045;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rOoPTZd35eqQ3q1BseeTY5zXlh3Q/oJLNYiD9j4B4/U=;
        b=bfoxQm7AoMMhQWA4I4gjj4v/8wsuatS8uMK01RV4++iLsvx8k8vrov0t09J/FGQ9mL
         XlB0Nh9pmNcF8pitBwYmJCkIbs0HtKf02n1hlZscisJ9HjO05nlygbsCynOqHiCJqjU5
         3hcSbIbkzjQop5ebCJBpVHW8jJenc0hZWzi/zKdzxpGfJo6doIvGwlGqSaVHjm5TzInt
         xEFklGRAkncWriK2FSuitewrVT8+p5w9Jbj9LsfjsBEozxCJIeb74WAFJ+yuwQE8/BLn
         4HWo9/eT8nP9XcgvpBSSnngTLhgDM/KePGw6QfXIg3flMJQMRd4yXwKykF62Hw+cBCv+
         CYoQ==
X-Gm-Message-State: AOJu0YzlNwJUK9vXY3jioRRsJc57i4CSWPyhyZmd5KwgwJ7kJQw88Edy
	DLk+0J2Iqb2pgf5y8yEpfg6ChXBike31HjH5Ue+H9mIya0uTjyHccsEUZp4vvFPMAvb0z4q2rZM
	PEYNq
X-Gm-Gg: ASbGncuUkc5bQsfx2byHQgdKjL9pFr7AgNWsmS4vhlD3oEwvbJ+R5UNbfufTnucQIro
	Cvw26QbliDb6VkCpH1d9ls0x2/CWzdcqd/1bEZ/HWyPXxuQnbLo4pF7qn9uGhzoBCUWAHZFOwXH
	jsxd0N0Vij3Cm+6FUaf1LwexNnnuoT2KBkrktt3pgmahTv8v3vr+fqmhSotZA9NedeBPMa3Mzrg
	senHGPbbQTl06JW+SZogOsyWAPvlsOM7bQYNgH124ssr0cMPsE60JeELNKLoRqIEH1USVyTICt4
	ellEwm9I8oUsBM1vnQwp37GjOytpG68C35IrZQFVV6+YOTsWiBQbb24Oiti345qofKj+8g3aODM
	pAXhapJyfueGgPXZ0Xe1x8cuevDZUgjvvwci5S0AbtOle+P0tSA3Dx0pRlBoqj8u/jW2nhZLl2c
	Jx+uus6T9mMg==
X-Google-Smtp-Source: AGHT+IFhX50Ct0K/6ZBskpCKk3p+A35w4eWb8wfWDOWZCu2I+DwjfcWPNSZoIiWBs1nwgPMy3XSNRQ==
X-Received: by 2002:a5d:588f:0:b0:3f0:4365:1d36 with SMTP id ffacd0b85a97d-425577f1c45mr2824531f8f.16.1759328245086;
        Wed, 01 Oct 2025 07:17:25 -0700 (PDT)
Received: from max.int.rpsys.net ([2001:8b0:aba:5f3c:d53b:59af:db6b:d4f7])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-40fc5603365sm28308286f8f.37.2025.10.01.07.17.23
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Oct 2025 07:17:23 -0700 (PDT)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: poky@lists.yoctoproject.org
Subject: [PATCH] poky: Update SANITY_TESTED_DISTROS
Date: Wed,  1 Oct 2025 15:17:22 +0100
Message-ID: <20251001141723.267866-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 01 Oct 2025 14:17:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13759

Add Fedora 52, Debian 13 and Ubuntu 25.04, drop Ubuntu 24.10.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 meta-poky/conf/distro/poky.conf | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index 3a17748fdba..8c291d305e9 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -35,13 +35,15 @@ SANITY_TESTED_DISTROS ?= " \
             poky-5.2 \n \
             ubuntu-22.04 \n \
             ubuntu-24.04 \n \
-            ubuntu-24.10 \n \
+            ubuntu-25.04 \n \
             fedora-39 \n \
             fedora-40 \n \
             fedora-41 \n \
+            fedora-42 \n \
             centosstream-9 \n \
             debian-11 \n \
             debian-12 \n \
+            debian-13 \n \
             opensuseleap-15.5 \n \
             opensuseleap-15.6 \n \
             almalinux-8.8 \n \

