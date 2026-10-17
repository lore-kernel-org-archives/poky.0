Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66557CCF2C9
	for <webhook@archiver.kernel.org>; Sat, 17 Oct 2026 21:38:15 +0000 (UTC)
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.4587.1792273084997093270
 for <poky@lists.yoctoproject.org>;
 Sat, 17 Oct 2026 14:38:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=dtj3+N5x;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.45, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-48b060ec084so564428f8f.0
        for <poky@lists.yoctoproject.org>; Sat, 17 Oct 2026 14:38:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1792273083; x=1792877883; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=CHwnm5YYNUINovrtqgiPLm9q+OETIYz3Biud2Y5Kyfw=;
        b=dtj3+N5xqbm/cN3YKsB82NyBlGtjvNCp+d8D3uC3oSnFMizXyIlbgwRmp6kTYG+e1y
         uXS5Cr6YXNqMLmvyY4NprG2RBJuYFuqMpSVhuFEVYCULWpZK3yKcwPx9V5wCdAy2DA/x
         Jfo0fBjuNF0HPql09BPX8WJ8EfRXOO55dELwI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792273083; x=1792877883;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=CHwnm5YYNUINovrtqgiPLm9q+OETIYz3Biud2Y5Kyfw=;
        b=WxHi4/rkZ6Bs7QbgPEfXOSg/9tKB0+dgfInniJ1JlpLi66f+2rX9cvACVhCyLsjZ2+
         hZFF2IdPsRCPrI9kvp0MSg4SzD+iLx2n7MxJ17j7CCR/BVx+y7GVdRgJDCWT/tN0aUtY
         Zwti3TpjuCl88ncyxJJgBrkWJSXnf0vG8RXpSUt8uhgmiLbLOIzdlJSi6hiIXcRWzjpI
         yoiqEmU5fImqjApYA9gFxRwzl3YQ0xpxAyjS9JSZw99nsqX2h1BK+vle5q3GKZsoJloj
         HYuL6mPfYOjqij6Kw1D3W7TGQK/05zLsGNLk/BlqXOBKQPF0euiFnR+oH9C6vhadKevM
         bt4A==
X-Gm-Message-State: AFq9FYJvKpJIaoBuOgwvQewwTyEmy2tE6owoCSKDtTxPfFd8Klsdydem
	zpX6yjTLAeO5/rMVGKE10ngoTQzjmPjZRfMRSVKxzZ+Ikcuo04P4qkzzHBo5he4Fbr6DtxTy5gp
	lDOLoC6c=
X-Gm-Gg: AYBFou0Lio1x0YlMh+S3T4qBFjfkf2jeQniMgSqitLrIpZTSXKoXSU7DGGBCt2gWl2c
	qVjBu6javN/XDI4h0Jy2xuphfI876mOpXIebNL1xIrQU4zDm6SJoNKdWygyKluCJ4wLtbcJef5n
	CICF1IJwn4VsATb/Or9Iv6t0XRnUpqpdYkyU8seCs6AbsDOWK7gydS6U54dFcmoldD2UwW1BHTx
	jhl6WERL5Li8iEdRiNdMsbv+Z5ikKQC7rhRUoW7/hCyyW0uqjHOs3HSbwikPKH2bo21VVA4y1FG
	Y8Nv9IZ98pGmyEBCs/KFFqkUYBNN84iALl8GceYzGnYTAIPNP741r/ey5P1Ue2RISH+Qcw1QuSd
	/3hJbYwC/DsnqRS5ZxxF3EiyUIwZyaiiQtFpc3mBM2HSb5s8qgsNj8mVTDYNxfrwWTqsO5jb368
	NHJ/ItC9T1k1tNig1aFPseXpi1xMl4elWqlMU+vTpSOgmhMg8roAIHVjaAEA58cxLXRAr2NX3d4
	YClVWYmdkob33r7YN7lABhDzwI=
X-Received: by 2002:a05:600c:4443:b0:4a0:89:6727 with SMTP id 5b1f17b1804b1-4a1d75f9261mr75440115e9.16.1792273082682;
        Sat, 17 Oct 2026 14:38:02 -0700 (PDT)
Received: from max.int.rpsys.net ([2001:8b0:aba:5f3c:471d:9ae9:4cd8:a378])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48dfd471a35sm11387942f8f.7.2026.10.17.14.38.00
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Oct 2026 14:38:02 -0700 (PDT)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: poky@lists.yoctoproject.org
Subject: [PATCH] poky: Add Fedora 45 to SANITY_TESTED_DISTROS
Date: Sat, 17 Oct 2026 22:37:59 +0100
Message-ID: <20261017213759.152121-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.55.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Sat, 17 Oct 2026 21:38:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13974

Builds now work on Fedora 45 and are enabled in testing so add it to the list.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 meta-poky/conf/distro/poky.conf | 1 +
 1 file changed, 1 insertion(+)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index 96d668d52a5..adadb95615a 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -39,6 +39,7 @@ SANITY_TESTED_DISTROS ?= " \
             ubuntu-26.04 \n \
             fedora-43 \n \
             fedora-44 \n \
+            fedora-45 \n \
             centos-9 \n \
             centos-10 \n \
             debian-11 \n \

