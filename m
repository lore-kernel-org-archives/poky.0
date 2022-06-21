Received: from mail-pj1-f52.google.com (mail-pj1-f52.google.com [209.85.216.52])
 by mx.groups.io with SMTP id smtpd.web12.45117.1655826441956094504
 for <poky@lists.yoctoproject.org>;
 Tue, 21 Jun 2022 08:47:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112 header.b=R0zzD4wh;
 spf=softfail (domain: sakoman.com, ip: 209.85.216.52, mailfrom: steve@sakoman.com)
Received: by mail-pj1-f52.google.com with SMTP id p3-20020a17090a428300b001ec865eb4a2so8942500pjg.3
        for <poky@lists.yoctoproject.org>; Tue, 21 Jun 2022 08:47:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=ypgxBlq+uhjugvI2uNhQ6c4V+pQcO8WzndSb6WSvYXI=;
        b=R0zzD4whav5CBDu3xO+xyuaizrTPIfiofEfOH6OQtR2W3Elktgkj7OtqdUH7+HFaeS
         isKasb0LVkvO4Do/v4ijsljSMd2A9b1FY56C7+KGzuGPxgU9HB4dLF+av2LM0JCwGN82
         v9bU1cCMeTpolvUVAB6ZvHHFsUu295ZqY28wsHeUq1+T27hTiTo1MAv/kyQirdbKDQnN
         29cxKuGa2bn1ip4VBHObKvMryEg+PSlPOLKFY/LdQI+kZl0cd+Spxg0C7JjS8c5hnzPu
         nbxcwvTJe7hbbLRD95gipZl5hVqmkYnhp6zk+guFjwrL2/UFPS2YcEGlfTL9gBH0C/RI
         5hhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ypgxBlq+uhjugvI2uNhQ6c4V+pQcO8WzndSb6WSvYXI=;
        b=UokZipx1W5zP9c7vqbyfIcuKueNbp5ROCGy2LZkJ26tNsl0KEfVp9jevdERadEzLz2
         nddymoaIDFmJZNoEpFFQyACuWxBvBOz3Cy4tvU5pgKqSnkq8b6fonYtIngRR77zvWYo2
         WXObUA4QANJuihI9xUJj7tyV4Ds7n9iyzYAMamspI4ITAB8S88r+jbpMppCxP5qIMImH
         XHXPf8FPFUWl+S/dCA376jSXSRJSH3qUUIAZQ2C+3/qzgHyIqPzCtfIYoCDvuic9eNT6
         vkVv2T6JeYl5iYBDdBhyiQfRoo8v3NWnx/oHG7kK2VvnIrtiYw+MnYrRAkUu2de9dz+H
         bAhw==
X-Gm-Message-State: AJIora8m3bv89eqBAI2QhHgZBtNWi2n+TdMQ9lM0T9AEuVOiI/G9XzJ3
	6vZ1YNJLXNPyaiSV4aGGU3e6VzeoYJAmaoAS
X-Google-Smtp-Source: AGRyM1tvYthm144wWKVz0RPg0rE2mMofh3wyEvkKnD5vuqLRQBA8BNPogBSLA5CgAunxT+1rbcSz7g==
X-Received: by 2002:a17:90b:3ec9:b0:1e8:6ab9:a47 with SMTP id rm9-20020a17090b3ec900b001e86ab90a47mr33306329pjb.60.1655826440759;
        Tue, 21 Jun 2022 08:47:20 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from hexa.router0800d9.com (dhcp-72-253-6-214.hawaiiantel.net. [72.253.6.214])
        by smtp.gmail.com with ESMTPSA id e7-20020a17090a9a8700b001eab99a42efsm8337513pjp.31.2022.06.21.08.47.19
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Jun 2022 08:47:20 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][kirkstone] poky.conf: bump version for 4.0.2
Date: Tue, 21 Jun 2022 05:47:12 -1000
Message-Id: <9ca11116da66a3a0be3199303dabd40def77838e.1655826349.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1655826349.git.steve@sakoman.com>
References: <cover.1655826349.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 meta-poky/conf/distro/poky.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index 4d969b9..0cea4ce 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -1,7 +1,7 @@
 DISTRO = "poky"
 DISTRO_NAME = "Poky (Yocto Project Reference Distro)"
 #DISTRO_VERSION = "3.4+snapshot-${METADATA_REVISION}"
-DISTRO_VERSION = "4.0.1"
+DISTRO_VERSION = "4.0.2"
 DISTRO_CODENAME = "kirkstone"
 SDK_VENDOR = "-pokysdk"
 SDK_VERSION = "${@d.getVar('DISTRO_VERSION').replace('snapshot-${METADATA_REVISION}', 'snapshot')}"
-- 
2.25.1

