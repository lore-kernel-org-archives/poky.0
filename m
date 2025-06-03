Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3393AC5AE59
	for <webhook@archiver.kernel.org>; Tue,  3 Jun 2025 11:36:18 +0000 (UTC)
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
 by mx.groups.io with SMTP id smtpd.web11.9051.1748950568387619565
 for <poky@lists.yoctoproject.org>;
 Tue, 03 Jun 2025 04:36:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=LGy/GW9x;
 spf=pass (domain: gmail.com, ip: 209.85.128.54, mailfrom: alex.kanavin@gmail.com)
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-451ebd3d149so2741865e9.2
        for <poky@lists.yoctoproject.org>; Tue, 03 Jun 2025 04:36:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1748950567; x=1749555367; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xsEackaOHg3TS1D8iTwOHTNi0cq3brSePmqidvRoAkQ=;
        b=LGy/GW9xQYZtXRMJbt0yV+ZtwhsQc3CrCEmVa84f7ATGsRz7Z6NVG+xUpBuMAhriV5
         te0wiKJSOlhEHIOxMhf8/4oSupsdJws3GrH79F/sdlyeaEbRhpPhDxIuKFDsE2tJF6c4
         6avvf+h5XtdIkYnopgZOGhRmQV+hAK3MF5ldNjtXl/6+wCOcazl1n8zqlu+hhlrj2QrA
         SdsnOnBV9OLETLqhTxVhYwMJ/RXZbifLhdyYdipKOjvPAgxm3HEeaXIT8QxzMkcENrTy
         6uNTWDkYfmazquKiOQ1cSK0iaxRcaPMNV5jYzJAhT/vhde/LdO3WTMwKlefCaHG6Hz1p
         TBsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748950567; x=1749555367;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xsEackaOHg3TS1D8iTwOHTNi0cq3brSePmqidvRoAkQ=;
        b=rN4vrfFtYwaJPqsgHunjuVfwV0zSMABAKmFNT1oHN4OcTlOIT2ufxhmMpCq3FUwddy
         WcdxdVLQiK4MN8Mu2ApAQ5r72eYD601VISRSxb7l6gDt4Sj/87ufMyz/7vuydCBQEJs0
         W6lT0B2T5KnwTC07B4MSQzHmJqYNAQxiL7Gu5IBerBZcfAzONJhPE3GWpgLcUxcKcWpy
         qkF8LJavWNu0+fC/xnBsk+fPzM0ebUXc8jfmz8GjKFaJMmAGSvPKc4F1laIL9opNcerI
         Zs8O8gsXQoeCpPducSQWB2glxr5/dU7gjps0Q6MrZVaPziQiRhuHfy0f4nV9en5Tv4cP
         qesQ==
X-Gm-Message-State: AOJu0YzaPIWWVFnX7BSaBDMllXSa40BfOOleMJWTDeHCXLnYDdypFEbr
	aUm34xmK8Hfw8gQqg2msP1UjttWDKoHB02U8cH4fZ1GhQabkNY25khDXYhNFsA==
X-Gm-Gg: ASbGncuXTR/+ZLhIkvJH62IBsXcTKXkWi+MslZ2O4macuo5UaHFXajXHiKfPzC99AK2
	pakTeKn1rVXpsI9fWbA36o3BvAPacBCQhMzdpf/aux2VDMeYzG/libEethrlpFTMQwSgOGjbqgv
	861LG8Kzorx46nq7a0IdvvqWKmMWUfwThBZ0PlTv1F4+8UzPACKTDIuGJ2stmJCgN1OXxx/NNcJ
	9YydPW97LzwvP19OGtw8AoMVYNT7GgHepT07qMR8O2LWr04AC/kVXLO94BITtN0ypq5V5hLpg+1
	G4aQzS13drthM/gnS6BlxgnUY6Z1ZmHZ+Y82gfysr8wZcG0EuWCV5FdUeFUlzMzxqFSl0FRLFUz
	UA0C1W5Xq9bho
X-Google-Smtp-Source: AGHT+IHp0RddAjXSaHG0fykcITaytUUjTewiCplsZ3pWkjZQe+x5QFqJv1lCYIwrDgc8CWNffiwyXw==
X-Received: by 2002:a05:600c:3544:b0:43c:f050:fed3 with SMTP id 5b1f17b1804b1-4511ec9eb53mr107312945e9.11.1748950566435;
        Tue, 03 Jun 2025 04:36:06 -0700 (PDT)
Received: from Zen2.lab.linutronix.de. (drugstore.linutronix.de. [80.153.143.164])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-451e58c348asm16707585e9.3.2025.06.03.04.36.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Jun 2025 04:36:06 -0700 (PDT)
From: Alexander Kanavin <alex.kanavin@gmail.com>
To: poky@lists.yoctoproject.org
Cc: Alexander Kanavin <alex@linutronix.de>
Subject: [PATCH 3/4] conf/fragments: add a fragment for CDN sstate mirror
Date: Tue,  3 Jun 2025 13:35:57 +0200
Message-Id: <20250603113558.3104618-3-alex.kanavin@gmail.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250603113558.3104618-1-alex.kanavin@gmail.com>
References: <20250603113558.3104618-1-alex.kanavin@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 03 Jun 2025 11:36:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13636

From: Alexander Kanavin <alex@linutronix.de>

This will be used in bitbake-setup official configurations and
it will be awesome.

Signed-off-by: Alexander Kanavin <alex@linutronix.de>
---
 meta/conf/fragments/yocto/sstate-mirror-cdn.conf | 12 ++++++++++++
 1 file changed, 12 insertions(+)
 create mode 100644 meta/conf/fragments/yocto/sstate-mirror-cdn.conf

diff --git a/meta/conf/fragments/yocto/sstate-mirror-cdn.conf b/meta/conf/fragments/yocto/sstate-mirror-cdn.conf
new file mode 100644
index 00000000000..e204975ce3b
--- /dev/null
+++ b/meta/conf/fragments/yocto/sstate-mirror-cdn.conf
@@ -0,0 +1,12 @@
+BB_CONF_FRAGMENT_SUMMARY = "Use prebuilt sstate artifacts for standard Yocto build configurations."
+BB_CONF_FRAGMENT_DESCRIPTION = "The Yocto Project has prebuilt artefacts available for standard build configurations. \
+This fragment enables their use. This will mean the build will query the \
+the network to check for artefacts at the start of builds, which does slow it down \
+initially but it will then speed up the builds by not having to build things if they are \
+present in the cache. It assumes you can download something faster than you can build it \
+which will depend on your network. \
+Note: For this to work you also need hash-equivalence passthrough to the matching server \
+"
+
+BB_HASHSERVE_UPSTREAM = 'wss://hashserv.yoctoproject.org/ws'
+SSTATE_MIRRORS ?= "file://.* http://sstate.yoctoproject.org/all/PATH;downloadfilename=PATH"
-- 
2.39.5


