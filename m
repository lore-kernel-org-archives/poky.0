Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com [209.85.216.49])
 by mx.groups.io with SMTP id smtpd.web10.44704.1660842649766574523
 for <poky@lists.yoctoproject.org>;
 Thu, 18 Aug 2022 10:10:49 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112 header.b=xRzJ7Dhw;
 spf=softfail (domain: sakoman.com, ip: 209.85.216.49, mailfrom: steve@sakoman.com)
Received: by mail-pj1-f49.google.com with SMTP id w11-20020a17090a380b00b001f73f75a1feso5326972pjb.2
        for <poky@lists.yoctoproject.org>; Thu, 18 Aug 2022 10:10:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc;
        bh=ZgVpzjUEa8gvRTVk/q8mQER1oLyGEi7zeZsAaISfjKQ=;
        b=xRzJ7DhwWU/FjWzesD+xUSgGql8F+vfBIRvrh726ppRXs3YP6/TfQJGygC44aHd7+K
         hCOi6ALnDAgL/Pj6PYUK0LyE2w8pSOviswjfK3yd4iiMiQxQ1SWgNeySOa6DqnnDMYMF
         6HQkT6Gk6KcwWzRy8L5FmA8iLJG+fS6+KMAgAELSdAdS7OZkdABfnXMHn3sXGyLtXpNv
         yBgjT5XSgWNP7IokVGDZSN1kyP+kV2MJIgE/VbFdsFi9/ir4YlikgYm2QSRu8jUWd10x
         dGfEsUCYYN9M3A8WO25keQLbuY/yamVnElLC+N3e3dNgmqwmdJ+DgKRlsRsV634fqA71
         /RiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc;
        bh=ZgVpzjUEa8gvRTVk/q8mQER1oLyGEi7zeZsAaISfjKQ=;
        b=ps7QJE87RZB7LROaXeoAH0JMqGTJZW3j1oENdbKCdvBEoX7QsTmZeJFeRGs/qKVmzG
         d0IHrL7Bw+c/X3kaMZsOgR7fnmHg/17fwsvCzyzu9G02DgSFJN3y4L4HJmrDGiTNv/2z
         I6PeAr824S3jPIjiXrsVh240SMhXFVhzGzRIHh3yR0C/Rs/A0PPPXMEKmYmeeRk4Xdef
         lPMeZd6ymWuIuYWmupT0eq6Qh1MDRHHw4Ju/0b5vj3a3clCCBwuGFrwnbBrsrHKs+7Z8
         riOuLZUUYknoP92Iql14gWJv8p/mSdwKIj0mpJEu2+vlg/HaUkMH9ZWi7qzHcpKBAYZU
         VeAw==
X-Gm-Message-State: ACgBeo0Ua3l/eTvA5oFn0oSlj4wYBRa5SWDenuB8d4oKP+1lNTVo4XUe
	TdJTYAZxif4k2THAv0d5MoTPoVB1/52kIToM
X-Google-Smtp-Source: AA6agR59HfdXMrvLfzssCei4jjrXZJ45aBWFsXcfpBX6J6dR3t0Ts/GP1TyERe+YC7o+u+tX/Gs2JA==
X-Received: by 2002:a17:90a:2b0f:b0:1fa:d73f:ce92 with SMTP id x15-20020a17090a2b0f00b001fad73fce92mr1899870pjc.60.1660842648653;
        Thu, 18 Aug 2022 10:10:48 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from hexa.router0800d9.com (dhcp-72-253-6-214.hawaiiantel.net. [72.253.6.214])
        by smtp.gmail.com with ESMTPSA id h2-20020a63c002000000b0040cb1f55391sm1546692pgg.2.2022.08.18.10.10.47
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Aug 2022 10:10:47 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][dunfell] poky.conf: bump version for 3.1.19 release
Date: Thu, 18 Aug 2022 07:10:40 -1000
Message-Id: <d705a0199028a58a8bdd07978c9caea7a49b6041.1660842577.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1660842577.git.steve@sakoman.com>
References: <cover.1660842577.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 meta-poky/conf/distro/poky.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index ecf4813..eefd37f 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -1,6 +1,6 @@
 DISTRO = "poky"
 DISTRO_NAME = "Poky (Yocto Project Reference Distro)"
-DISTRO_VERSION = "3.1.18"
+DISTRO_VERSION = "3.1.19"
 DISTRO_CODENAME = "dunfell"
 SDK_VENDOR = "-pokysdk"
 SDK_VERSION = "${@d.getVar('DISTRO_VERSION').replace('snapshot-${DATE}', 'snapshot')}"
-- 
2.25.1

