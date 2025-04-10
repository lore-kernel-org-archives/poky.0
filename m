Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3A20C369A4
	for <webhook@archiver.kernel.org>; Thu, 10 Apr 2025 10:07:19 +0000 (UTC)
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
 by mx.groups.io with SMTP id smtpd.web10.30553.1744279630807446118
 for <poky@lists.yoctoproject.org>;
 Thu, 10 Apr 2025 03:07:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=FDAC8Afk;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.50, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-39c31e4c3e5so347405f8f.0
        for <poky@lists.yoctoproject.org>; Thu, 10 Apr 2025 03:07:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1744279629; x=1744884429; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=/csZyZODLYmsD/Q+sHBImoT5EzFGTOs3CEsYYv1anPc=;
        b=FDAC8AfkjnwwSxXHpuvO4rEYv8xWIcMjjVbJAbi6UNWdtxPq0dgB3dm/DR7/cFsSpq
         2KDakwE/B7zU9oFbKtID1l6H6c2pnT/7DiDel4rnaxSYXSr7A0FlY3zFK7udU1rlBKF/
         +xeoO5+ngMtFQNrSe/LokhNLxqkCy3ioids7c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744279629; x=1744884429;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/csZyZODLYmsD/Q+sHBImoT5EzFGTOs3CEsYYv1anPc=;
        b=j+BhS0qHn99NmkxHV2dECiwAIM1P0pM6mhapFyUxtm+h8aIelIWw/2Riw/4XKI9pbr
         RsYVap2md1WkgRgXjNgdMfTO0IBxjuuY8b5+//XF8HbVkPniEt6Xj1dR30iqmSkLQB3w
         FJ7fpI0DDKlermEaC+GAkBxK0+ytBFOdECFZXGOsJHnSYTMqeIHBK+RDDomnhsAvMh5Z
         gf0AwXLPlv00JFCy4Gs8UvAx6UHHwACPdHqo1oakLjyfZqsKcH2huIlm8QtC3XqM2lHW
         WTCJYMyPG8jdfDwDQy83c7SLvFAOIunJ+X1e8MC6kpoFiPZaD4XDym5QQiDMien6NrIE
         FzRw==
X-Gm-Message-State: AOJu0YyOyaXtWdU/jouuJPk+e1m1iu+JaWTMeRI/chRw6NZDCZf8lyFQ
	qK7tC3djXFeBdLFTcDCAbKfjYgEMJwRtPs3TQSU3qOXvfNMWChEFpN96IQVmdxXK0n1HtnegFYh
	9
X-Gm-Gg: ASbGnct7/aAhZIuJ32KO77cVN9WBZ58xFx6eA4MdnMyU4ZfEIEfVL+/BPjek8v8CdfX
	vXHgOGClJNFPrJSHDSrZcRhQWNOQB/HUYRaH+0kbwss/pENVbnrz/tApuTPSAbHlxIqJzx/7gs9
	8zepZnRkjt1vUZGkXlOxF0BWFOMuWwZ1b+mHr7tDuAmGVt2Tf9qd7TTaCBX9IlajfmRokzD/925
	7jWWqhtHCOOWXIWh6nKKZwe0LfgRvhCmEZ0PcZspZ8iQgWPyd25iOt4XEPU1+e6bRkb8CqcUKw/
	QCBJBb3gvJwW/F1cmaeOSxqXEuS8ml0RYt/0eSnr5FNa4Z61JeDCCHge1gSRVS7rH6DSyQ==
X-Google-Smtp-Source: AGHT+IFks4b4ntO8upUNrC0J0JhUGQ2vPfnf8aK70eBfTTbtHoOFE71W53gZxCYeqkDey8IQ4ZfiPg==
X-Received: by 2002:a5d:648f:0:b0:39c:1257:c7a3 with SMTP id ffacd0b85a97d-39d8f50227emr1736135f8f.59.1744279628544;
        Thu, 10 Apr 2025 03:07:08 -0700 (PDT)
Received: from max.int.rpsys.net ([2001:8b0:aba:5f3c:48b8:26f1:fe26:d411])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39d893f0b76sm4275181f8f.77.2025.04.10.03.07.07
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Apr 2025 03:07:07 -0700 (PDT)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: poky@lists.yoctoproject.org
Subject: [PATCH] poky-bleeding: Drop debug code
Date: Thu, 10 Apr 2025 11:07:06 +0100
Message-ID: <20250410100706.3626509-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 10 Apr 2025 10:07:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13591

Drop some debug code which shouldn't have been merged.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 meta-poky/classes/poky-bleeding.bbclass | 2 --
 1 file changed, 2 deletions(-)

diff --git a/meta-poky/classes/poky-bleeding.bbclass b/meta-poky/classes/poky-bleeding.bbclass
index b12aea61b01..fe558f25a8b 100644
--- a/meta-poky/classes/poky-bleeding.bbclass
+++ b/meta-poky/classes/poky-bleeding.bbclass
@@ -9,8 +9,6 @@ python pokybleeding_version_handler () {
     bpn = bpn.replace("-nativesdk", "").replace("nativesdk-", "")
 
     if bpn in d.getVar("POKY_AUTOREV_RECIPES").split():
-        if "pseudo" in bpn:
-            bb.warn("Here 5 %s %s" % (d.getVar("PN"), bpn))
         d.setVar("SRCREV", "${AUTOREV}")
         srcrev_format = d.getVar("SRCREV_FORMAT")
         if srcrev_format:

