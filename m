Received: from mail-pj1-f43.google.com (mail-pj1-f43.google.com [209.85.216.43])
 by mx.groups.io with SMTP id smtpd.web11.12767.1614955097635696653
 for <poky@lists.yoctoproject.org>;
 Fri, 05 Mar 2021 06:38:17 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=YA8YM8Gw;
 spf=softfail (domain: sakoman.com, ip: 209.85.216.43, mailfrom: steve@sakoman.com)
Received: by mail-pj1-f43.google.com with SMTP id kx1so1981602pjb.3
        for <poky@lists.yoctoproject.org>; Fri, 05 Mar 2021 06:38:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=KnA5l9f0/q12zekABLsAflD3QgeRx+AZI3vv7KCerv8=;
        b=YA8YM8Gw7JTWwwEuHrZ4xwAm1IJZMgy/ABy0BUTBFPjfsQ91B95ayyxfxA8iWSaqyr
         iZeLRDCHxDmw9+wEsvDF3EpTq3x9VJUHgg55NZEvGCqXolICBf0w3DE3ObYWgJt+6hwT
         eDTfKyKN1J8A8/hHMPo06i9ipxBWCavVsrkVuQW5rjd/q/okLuOoDkEkHIF6Eyadg2bO
         GdnaVC3kP//j2Owmo6pK/xU64i34meYHrYepJaqWnRFKEtlTXuZytzvK9PszqAqM11W7
         hRpzMiyttugPUra/jM0Iq6Ys0ICLj8WgEM5YJMUY1JRIXHv5q6WNkpie8CI8OXCZPb2C
         EtzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=KnA5l9f0/q12zekABLsAflD3QgeRx+AZI3vv7KCerv8=;
        b=Rs44CBmUBfMdOJ5PXOGr3WCmf2T4eKo7Iu2yTWD6vt8QS0Ggluq8bvkmC0T9QcBk27
         q7XN/yfnf2/MEvyT5BeyYaOfW7l7/aD4RRyPn6Y1pOmVqKE4tbyGbv3OOLKs7nkuQ4ry
         W2O8/6qZyjfjSA0FQJH2f7rJwYIGNyY+maBB6H5plkzx5IRWiVKDImF88WBgS7EdcK3c
         7CCGqeX+pwWYAGHk26RczH85RmS8ZoQLUQnaBqSopFr5HEwfZUgM0z7vzlitWyHMXgwH
         UxCzD9mHegDRwVBgpN9jxMY1Bms8TPb0XVZQidEdk9NZq+QOkNbCM98qm0QpokbcCuRi
         SAlw==
X-Gm-Message-State: AOAM533ePpXFkDEY8aBSxUae26WDBNeKOrhdBkH1O6QLkgKm+4e55kzo
	vgZ1H2Rfz/EIh8NHves64HO0/58t9jgw3kYQ
X-Google-Smtp-Source: ABdhPJzziWepzWgivWT+pOXFJRWBP+W1ywS5pom2oOy91MhTCBilPF261UqmkHU/U0jnBdTeRlu0Sw==
X-Received: by 2002:a17:902:7249:b029:e4:358a:1d47 with SMTP id c9-20020a1709027249b02900e4358a1d47mr9454061pll.8.1614955096498;
        Fri, 05 Mar 2021 06:38:16 -0800 (PST)
Return-Path: <steve@sakoman.com>
Received: from localhost.localdomain ([72.173.249.164])
        by smtp.gmail.com with ESMTPSA id i10sm858416pjm.1.2021.03.05.06.38.12
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Mar 2021 06:38:16 -0800 (PST)
From: "Steve Sakoman" <steve@sakoman.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][dunfell 3/6] local.conf.sample.extended: Bring back into sync with OE-Core
Date: Fri,  5 Mar 2021 04:37:29 -1000
Message-Id: <d0aa2708a0e66bff19a84385a8227e933e0a09a3.1614954239.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1614954239.git.steve@sakoman.com>
References: <cover.1614954239.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Richard Purdie <richard.purdie@linuxfoundation.org>

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
(cherry picked from commit ea6e777cac72f22b56b2c8be0ba05ba164efe5de)
Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 meta-poky/conf/local.conf.sample.extended | 29 +++++++++++++++++++----
 1 file changed, 24 insertions(+), 5 deletions(-)

diff --git a/meta-poky/conf/local.conf.sample.extended b/meta-poky/conf/local.conf.sample.extended
index 9e85736..54ba7ce 100644
--- a/meta-poky/conf/local.conf.sample.extended
+++ b/meta-poky/conf/local.conf.sample.extended
@@ -23,6 +23,13 @@
 #
 # For a quad-core machine, BB_NUMBER_THREADS = "4", PARALLEL_MAKE = "-j 4" would
 # be appropriate for example.
+#
+# Some users are behind firewalls or use servers where the number of parallel connections
+# is limited. In such cases you can limit the number of fetch tasks which run in parallel by
+# setting the option below, in this case limiting to a maximum of 4 fetch tasks in parallel:
+#
+#do_fetch[number_threads] = "4"
+#
 
 # If you want to get an image based on directfb without x11 alter
 # DISTRO_FEATURES:
@@ -87,10 +94,7 @@ DISTRO_FEATURES_remove = "x11"
 # PACKAGE_DEBUG_SPLIT_STYLE = 'debug-file-directory'
 
 # Uncomment these to build a package such that you can use gprof to profile it.
-# NOTE: This will only work with 'linux' targets, not
-# 'linux-uclibc', as uClibc doesn't provide the necessary
-# object files.  Also, don't build glibc itself with these
-# flags, or it'll fail to build.
+# NOTE: Don't build glibc itself with these flags, or it'll fail to build.
 #
 # PROFILE_OPTIMIZATION = "-pg"
 # SELECTED_OPTIMIZATION = "${PROFILE_OPTIMIZATION}"
@@ -191,7 +195,8 @@ DISTRO_FEATURES_remove = "x11"
 #                           commercial_lame \
 #                           commercial_libmad \
 #                           commercial_libomxil \
-#                           commercial_mpeg2dec"
+#                           commercial_mpeg2dec \
+#                           commercial_qmmp"
 
 
 #
@@ -374,3 +379,17 @@ DISTRO_FEATURES_remove = "x11"
 #INIT_MANAGER = "sysvinit"
 #INIT_MANAGER = "systemd"
 #INIT_MANAGER = "mdev-busybox"
+
+#
+# Use a full set of packages instead of busybox for base utils
+#
+#PREFERRED_PROVIDER_base-utils = "packagegroup-core-base-utils"
+#VIRTUAL-RUNTIME_base-utils = "packagegroup-core-base-utils"
+#VIRTUAL-RUNTIME_base-utils-hwclock = "util-linux-hwclock"
+#VIRTUAL-RUNTIME_base-utils-syslog = "syslog"
+
+#
+# Enable LTO system-wide
+#
+#require conf/distro/include/lto.inc
+#DISTRO_FEATURES_append = " lto"
-- 
2.25.1

