Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67BD1C28B20
	for <webhook@archiver.kernel.org>; Wed,  2 Apr 2025 09:58:29 +0000 (UTC)
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
 by mx.groups.io with SMTP id smtpd.web10.4448.1743587902579911035
 for <poky@lists.yoctoproject.org>;
 Wed, 02 Apr 2025 02:58:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=XRqDwSh2;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.41, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-39bf44be22fso3397496f8f.0
        for <poky@lists.yoctoproject.org>; Wed, 02 Apr 2025 02:58:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1743587900; x=1744192700; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=QWsAo1OY/XJZzV3NjvNqUjHLLHDUvaSqRp/+PlJ2nfs=;
        b=XRqDwSh2a1N+mvOu9GerXV+jrps+DG0LwYXVc4+eJiFYWE6T2OtsMIONDcVGyfm5Pl
         v3NkwmtblmS1l9gLaGoj7+JPxhLZsZgrlz9FAqcdh5omp9HGkzMD2QKlGICoboIlDHkN
         FIGYH5MhpLPzVDWmupUeMzkxhA5aTtD75ss0w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743587900; x=1744192700;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QWsAo1OY/XJZzV3NjvNqUjHLLHDUvaSqRp/+PlJ2nfs=;
        b=hB53DfMGUMRWcW+MYjIy5ORptZBOCPz64CM1AgZcmFtHduDs+KWXMjSYJ8kPkBmX0m
         Tu7GYT0RzZXtQYZm31l+N2LlIJEEW+eKYcxkIhOKdQ+dAn46B5sB0DswMTbzjIuDd7sR
         MCQtKc6wmJiYSchVeOWNo+VNfEoYknkhBGxjfdoTyjmfMqzH6FfkOjLKLXvK+hqwSBew
         CsLJEHCVWPzahOK+YChuculaqAYkasEa4GC16aMak9HoRcATt30vSpRex1Ar1NgKls4y
         2DjVSO36MTUoqG6LlxF/Fjxz481GUVXoQLGnrHhA8eRs7rvVTgN7aJf43yrlzVGRQ4gr
         hwiw==
X-Gm-Message-State: AOJu0Yyb+APNTqiO8eR0Gvt72GmtQtmFddnGrFtwguChapF8E6X06xma
	uSwJ6SS/mPB7UP+BlrIK71K9uFspKvQqKCOM9IeioC3mI2KZtKwsq6QVGPMUJnZrLA1CaHoMRZI
	R
X-Gm-Gg: ASbGncshpS2Z8zs7sHAsiBOGJDp2PqwvsWazxQOikXVOhnzY/vfQMS4pDAyGPz2fV8s
	/oD6Gg2wpu02CPItm6JSKQGWYMhbg2TDYP9MENCIYMBRh5451Y8HkJfv1Toyh3UTC9p7acrUXVD
	IrAWT1spVQAdk81JWmmrWI/SsvgSdjkUWScyBekQWgUs+KWBtME/IiRupJxHZm9dVDwltxRI6+4
	pZiHnMFEdoS2oEotJh5HNM5g0AQtI7anFwkidF+cI5+UkgjFqXs9PSiYjMjI3441hvKSy8hNFXA
	3ItsJLlxcVKJHhyZTyUChtRAAcmULwdxTJosUEDN/55tiLyBRK/3suZxmuPhiIHRFOLkkYFCzw=
	=
X-Google-Smtp-Source: AGHT+IH/+w3zRYJU3g7PpxSfEhsTiao629ZxmeZR0I/ua7HqJbYxn8/z2txWThFoY7ASpMul2cLKdQ==
X-Received: by 2002:a5d:584d:0:b0:391:4684:dbef with SMTP id ffacd0b85a97d-39c29752bc0mr1309373f8f.17.1743587900508;
        Wed, 02 Apr 2025 02:58:20 -0700 (PDT)
Received: from max.int.rpsys.net ([2001:8b0:aba:5f3c:24b8:b374:749c:8558])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39c0b663623sm16662184f8f.35.2025.04.02.02.58.19
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Apr 2025 02:58:19 -0700 (PDT)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: poky@lists.yoctoproject.org
Subject: [PATCH] poky-tiny: Fix whitespace in variable assignment
Date: Wed,  2 Apr 2025 10:58:18 +0100
Message-ID: <20250402095819.2365312-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 02 Apr 2025 09:58:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13586

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 meta-poky/conf/distro/poky-tiny.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-poky/conf/distro/poky-tiny.conf b/meta-poky/conf/distro/poky-tiny.conf
index d3c0a781e4b..81153b3b36d 100644
--- a/meta-poky/conf/distro/poky-tiny.conf
+++ b/meta-poky/conf/distro/poky-tiny.conf
@@ -56,7 +56,7 @@ ENABLE_WIDEC:class-native = "true"
 
 # Drop native language support. This removes the
 # eglibc->bash->gettext->libc-posix-clang-wchar dependency.
-USE_NLS="no"
+USE_NLS = "no"
 # As we don't have native language support, don't install locales into images
 IMAGE_LINGUAS = ""
 

