Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.16051.1604244194488793594
 for <poky@lists.yoctoproject.org>;
 Sun, 01 Nov 2020 07:23:14 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@gmail.com header.s=20161025 header.b=kep5a7vo;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: alex.kanavin@gmail.com)
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 5A34838C0866
	for <poky@yoctoproject.org>; Sun,  1 Nov 2020 07:23:14 -0800 (PST)
Received: by mail-ej1-f43.google.com with SMTP id o9so13051066ejg.1
        for <poky@yoctoproject.org>; Sun, 01 Nov 2020 07:23:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ZUOXgASqFTqXmskK5DLpfp6X7IwM0X9GyrW2RT8Hdm0=;
        b=kep5a7voSNEArLmc2c2Gvy7rq5bMBcAPaE4gwl6sNvsIJ7SqG7CwXtfpzwi9LLF5Ma
         merr9I0U+Bh6gDj+/WUsTvRsmz4dixE/Wg/PgTTgshJNrnVBQiSJbjeT4bhh0a4ygHZN
         PGlPTLqJcgPUAQA8PP2Vk1/RdQ80tzc+C/sRvrXHmisaTgPdahxKMUwP0uUvI0H1UNee
         fyh5WAICuJ/AXyGct7xtoq70vlnl6lEljmpin+VyeGCc+Xj1ERFYbH3sqLdaqktU4aw2
         GYR0uZKDH9qEs7eBZrZ/keJxwyswkkLuuuHS17B66LHSEu7qZfoAfz8w8ZZtxZYsh4ha
         JO1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ZUOXgASqFTqXmskK5DLpfp6X7IwM0X9GyrW2RT8Hdm0=;
        b=oQxwPXqTkCl1pltPzeeIm2PmAYKk5JjHMWBYub/+5X7qMS9KFvTiKWoiAyrxTtZfdy
         /cp/U/f8t14ysmPTCeF8TX1finBRA8+AtsD3caUGXopnpMCrnaFP4ehR9aKDShWHPbMO
         Mj1ZmcnXtS7Z4mcDiQ1BirNUisyghn6xK88J0+UsJ+3HB4KICMucjM/lNcFIqLmRQFd7
         49AXyd+DJ9nNOwteG8jFq8U0IvhWJ4bUlfIQs0e5/8b5V5/BHGjvJVU1REfLsU0yocmk
         4KkYaAdNFc8xKQxyfrDinDGU9M8kCMh9gPZBejQuO+YWd07SqT8nn3ElrRpZ8naq+WKq
         861w==
X-Gm-Message-State: AOAM531BzQJGRbfpexcXaxL/l0+5g1dJGqsgn74/6kg0pmLATupF54Az
	Sm1zPBenM3GAZ8X4tOG7q/5afOCafdWMsQ==
X-Google-Smtp-Source: ABdhPJwCU2KiXJAA1777pCi+6fgXmJIaykVV2TCIhRWmTJsaEn6GvON35YHkR9Ye35+ZQqRckzwVJA==
X-Received: by 2002:a17:906:e10e:: with SMTP id gj14mr12068412ejb.134.1604244192592;
        Sun, 01 Nov 2020 07:23:12 -0800 (PST)
Received: from linux-f9zs.fritz.box ([2a02:2450:1011:4f7:596d:bf31:3950:5bda])
        by smtp.gmail.com with ESMTPSA id m27sm2283738ejg.3.2020.11.01.07.23.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Nov 2020 07:23:12 -0800 (PST)
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
To: poky@yoctoproject.org
Cc: Alexander Kanavin <alex.kanavin@gmail.com>
Subject: [PATCH] mklibs: drop support for
Date: Sun,  1 Nov 2020 16:22:49 +0100
Message-Id: <20201101152249.20472-1-alex.kanavin@gmail.com>
X-Mailer: git-send-email 2.29.0
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

This is not enabled or tested by default, and has never been
ported to python 3 upstream[1], which means it doesn't work at all
with plain poky. If you need it, please put it in a separate layer
and/or modernize to work with py3.

https://salsa.debian.org/installer-team/mklibs/-/blob/master/src/mklibs

Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
---
 meta-poky/conf/local.conf.sample          | 5 +----
 meta-poky/conf/local.conf.sample.extended | 9 ---------
 2 files changed, 1 insertion(+), 13 deletions(-)

diff --git a/meta-poky/conf/local.conf.sample b/meta-poky/conf/local.conf=
.sample
index 68e71b930b..e0ba9a35ef 100644
--- a/meta-poky/conf/local.conf.sample
+++ b/meta-poky/conf/local.conf.sample
@@ -148,11 +148,8 @@ EXTRA_IMAGE_FEATURES ?=3D "debug-tweaks"
 # enable extra features. Some available options which can be included in=
 this variable
 # are:
 #   - 'buildstats' collect build statistics
-#   - 'image-mklibs' to reduce shared library files size for an image
 #   - 'image-prelink' in order to prelink the filesystem image
-# NOTE: if listing mklibs & prelink both, then make sure mklibs is befor=
e prelink
-# NOTE: mklibs also needs to be explicitly enabled for a given image, se=
e local.conf.extended
-USER_CLASSES ?=3D "buildstats image-mklibs image-prelink"
+USER_CLASSES ?=3D "buildstats image-prelink"
=20
 #
 # Runtime testing of images
diff --git a/meta-poky/conf/local.conf.sample.extended b/meta-poky/conf/l=
ocal.conf.sample.extended
index 62415a43ed..024bf14af5 100644
--- a/meta-poky/conf/local.conf.sample.extended
+++ b/meta-poky/conf/local.conf.sample.extended
@@ -115,15 +115,6 @@ DISTRO_FEATURES_remove =3D "x11"
 #
 # TCMODE ?=3D "external-sourcery"
=20
-# mklibs library size optimization is more useful to smaller images,
-# and less useful for bigger images. Also mklibs library optimization
-# can break the ABI compatibility, so should not be applied to the
-# images which are to be extended or upgraded later.
-#This enabled mklibs library size optimization just for the specified im=
age.
-#MKLIBS_OPTIMIZED_IMAGES ?=3D "core-image-minimal"
-#This enable mklibs library size optimization will be for all the images=
.
-#MKLIBS_OPTIMIZED_IMAGES ?=3D "all"
-
 # This value is currently used by pseudo to determine if the recipe shou=
ld
 # build both the 32-bit and 64-bit wrapper libraries on a 64-bit build s=
ystem.
 #
--=20
2.29.0

