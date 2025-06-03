Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 32F82C5AE59
	for <webhook@archiver.kernel.org>; Tue,  3 Jun 2025 11:36:08 +0000 (UTC)
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
 by mx.groups.io with SMTP id smtpd.web10.8966.1748950567487540794
 for <poky@lists.yoctoproject.org>;
 Tue, 03 Jun 2025 04:36:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Y0mi+Ges;
 spf=pass (domain: gmail.com, ip: 209.85.128.43, mailfrom: alex.kanavin@gmail.com)
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-450cb2ddd46so34770545e9.2
        for <poky@lists.yoctoproject.org>; Tue, 03 Jun 2025 04:36:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1748950566; x=1749555366; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AcnvmtLmZd9g3NpYml9dxv+NmVaZGtpKzcf9znh1jfw=;
        b=Y0mi+Ges9IcgVSUj/9a9nWN8Wt70VLaxSlFkphzT4bbhud7Zbw6J+CtcdDSVLMGQT9
         fVjAFqps8eARQ3nuBhtq+cLA2+MybroZenoD0g3CZTK+vXbMi6CMwbDEN9clA87lig6n
         gRf3ENPoQ4D0tYt1g6p6y7cyvSIAIzO+1OFj0ORjRjytDGiTspAlMgI/xzOr1VWsG0U2
         LrwSfXxuTZjaiGeVz/0q3A4UDbCYwyuFppLcey9D1GO5r1LpQJLL0IYW2rybwhmkOGJH
         /+fMUUIWWgDGIIeTNbkPRmGJGrqAlOIJsXhx+7677PUe7Z6/qMTHJdjZxBZZuIBQX6o7
         LfNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748950566; x=1749555366;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AcnvmtLmZd9g3NpYml9dxv+NmVaZGtpKzcf9znh1jfw=;
        b=FfjqpRQ1d2wwTE1XJWRGhY8u3+wLyUvqPrQecEGb1D+Z217662yjZf+gXkX7URzI8v
         maA9RmJ3Gdio57qClu6EC7457ZBrMOORg+1TfW7ekxplkt9XmRNY0i1ZuwFOt/HIdIGY
         VFh6QcjO5PQECCC2fcTzomvwgEE5QBZqdYlOdjglJK96k+BDZvWpLc4MNbGe7xQO/0ye
         Q+ultVZjFmvI/aIkR2r2QcLMkYwuhl/ew+yH+aWgRHY5c6JrhVSTxovxD+2AVkQ/80PW
         3skUiKCTACn3JHIfyha0rmaTnpzqVRgDfNdj3ckhXKUI4PFKtfFhTTcGrfi75a9rEL+r
         ZVCA==
X-Gm-Message-State: AOJu0YzEJ16rU1i+6RCJ7TPs4fr/wuBQ/70TcJ4zmo2Gk2GcoywacS3D
	lm7JJOC5vjIbc8di7sFlyMOzumVii7Lnk7MjNG/wNeqXhnoJEqW22v7J/Rsk4g==
X-Gm-Gg: ASbGncvbW+DdfQuYcQTJnmhiprrM3IGvzlpmzeTmrCQ/Yn8150Mc3aN2GWQIfZKpaEN
	242QuBPj+gTNUjg0YNr0R+8SEFDa6FsOaEYjkwDONurbPbR+cqX4+9D6jB/DV/DHmperzzC1FFg
	BpllrtHbOcI7xhRxjXgR4hKlAEXbyWLA2bhU3hGkjLndvw8STc3aFKRvkuz8zMOSB1a58iHCASU
	ytMRA8Ppa2yO6Zy8VkHsqJ0QDCgbnvCxRw4PMNziBw6DwmD4eRIq3++AvjlwyBLXVN3uMMtSAzv
	meSoQ7tGSSxw2axJYrgRRjl1GUpGoEocF1z/f/j8OtpyXlIc8dDFqR7FGdvFADZc1yeyDd1Wsdj
	UJl5n0Zlw8xyW
X-Google-Smtp-Source: AGHT+IGMqk0UhzKLByoNbgkDdwJSsz95q9EQWVSF6UicTJ/aZU8CRHicAWTJBXA1eSVVrjqXpxm+NQ==
X-Received: by 2002:a05:600c:a342:b0:43d:5ec:b2f4 with SMTP id 5b1f17b1804b1-450d64d638emr174030385e9.10.1748950565647;
        Tue, 03 Jun 2025 04:36:05 -0700 (PDT)
Received: from Zen2.lab.linutronix.de. (drugstore.linutronix.de. [80.153.143.164])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-451e58c348asm16707585e9.3.2025.06.03.04.36.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Jun 2025 04:36:05 -0700 (PDT)
From: Alexander Kanavin <alex.kanavin@gmail.com>
To: poky@lists.yoctoproject.org
Cc: Alexander Kanavin <alex@linutronix.de>
Subject: [PATCH 2/4] conf/fragments: add fragments for qemux86-64 and qemuarm64
Date: Tue,  3 Jun 2025 13:35:56 +0200
Message-Id: <20250603113558.3104618-2-alex.kanavin@gmail.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250603113558.3104618-1-alex.kanavin@gmail.com>
References: <20250603113558.3104618-1-alex.kanavin@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 03 Jun 2025 11:36:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13635

From: Alexander Kanavin <alex@linutronix.de>

These will be used by official bitbake-setup configurations,
and so let's start with them :) Plenty more fragments can
be added over time.

Signed-off-by: Alexander Kanavin <alex@linutronix.de>
---
 meta/conf/fragments/machines/qemuarm64.conf  | 5 +++++
 meta/conf/fragments/machines/qemux86-64.conf | 5 +++++
 2 files changed, 10 insertions(+)
 create mode 100644 meta/conf/fragments/machines/qemuarm64.conf
 create mode 100644 meta/conf/fragments/machines/qemux86-64.conf

diff --git a/meta/conf/fragments/machines/qemuarm64.conf b/meta/conf/fragments/machines/qemuarm64.conf
new file mode 100644
index 00000000000..0fc164541d5
--- /dev/null
+++ b/meta/conf/fragments/machines/qemuarm64.conf
@@ -0,0 +1,5 @@
+BB_CONF_FRAGMENT_SUMMARY = "Use qemuarm64 as a target MACHINE, suitable for running in QEMU system emulator."
+BB_CONF_FRAGMENT_DESCRIPTION = "Select qemuarm64 as the target machine. This is the best option for running the target system inside QEMU emulator on arm64 build hosts, \
+as it allows near-native performance with kvm acceleration. Also useful for testing arm64 specific assembly code or compiler output."
+
+MACHINE ?= "qemuarm64"
diff --git a/meta/conf/fragments/machines/qemux86-64.conf b/meta/conf/fragments/machines/qemux86-64.conf
new file mode 100644
index 00000000000..0fce37c4e2e
--- /dev/null
+++ b/meta/conf/fragments/machines/qemux86-64.conf
@@ -0,0 +1,5 @@
+BB_CONF_FRAGMENT_SUMMARY = "Use qemux86-64 as a target MACHINE, suitable for running in QEMU system emulator."
+BB_CONF_FRAGMENT_DESCRIPTION = "Select qemux86-64 as the target machine. This is the best option for running the target system inside QEMU emulator on x86-64 build hosts, \
+as it allows near-native performance with kvm acceleration. Also useful for testing x86-64 specific assembly code or compiler output."
+
+MACHINE ?= "qemux86-64"
-- 
2.39.5


