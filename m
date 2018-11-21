Return-Path: <jpewhacker@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9403BE00C74; Wed, 21 Nov 2018 08:37:30 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jpewhacker[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.193 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f193.google.com (mail-it1-f193.google.com
	[209.85.166.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 15C32E00C10
	for <poky@yoctoproject.org>; Wed, 21 Nov 2018 08:37:29 -0800 (PST)
Received: by mail-it1-f193.google.com with SMTP id b5so9775627iti.2
	for <poky@yoctoproject.org>; Wed, 21 Nov 2018 08:37:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=jQDyWfBXi4/D96YLm1f7CGjyxQp6PoHOWFVLV/vysuA=;
	b=aA2Rok9whyHCRycayt807WUhgUvOAJBR6W2qjzTRt1oOreJsGSvoI3oKD5LiDdIEA3
	JDepFuCA0YT1bhf01rcx2kJoKw5FdeMAy6jzIgRz+FWF08LePjb7DbN5md7NvuYPcX7a
	+VJno1HlvIniQA7y0uXAQ0IBYUF6u1TKkovmg3LXCppM7qJupXmsLXo/g0lGxTNel+/Z
	na1beHie0Sze8vMuyS2i8PQDfvb3++1QO5ELfkYROztYauAyuHAJAzBNG2aYKIgrlTyi
	XqhaIZJ2Qe4irn9e9GjUZYKVSSgHaUmS4YbxfJHwCIqmFuGb0VaCs4FKI+Syqqc/1yD7
	Q1TA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=jQDyWfBXi4/D96YLm1f7CGjyxQp6PoHOWFVLV/vysuA=;
	b=dP0Oqgs2f5dow5j5inysCBrVJq3+zS7WhScLUckQW9L0ibN/dsivdZNCXXWBHUWOqd
	SrNeHoRev10xx9pv+6/KXpGWWfx0C6GbBgxvf+5mhAl9HXKCnrAxxCs6G8XxB0ofJ3WT
	AGckqTMvFbSSLf15sFgiF2CObpVPI8f1sWY2w9iS1Q1cd/GvnDzKgrjIo6/UcbChQ7EK
	RsmrMMDlGK7lYihwl89fK4mkSaF1mxuoZTZ89ner/U6eABfbqfyx4Vm+K2rC9iCMuOrv
	o2UpKNlWY8pgskYQW89NEWvRKY4x6qlfg1GDvsjjnhOB6e523gejPv/qv5z4B9wn3ivE
	8XEg==
X-Gm-Message-State: AGRZ1gKWuWo3cS3nr2rBDGBKhzmoQROpjLfx/+jjHGspoH8NLumsazJR
	xiOQfO4FlKdBBCrDk7Qo0x1Xvwndx0c=
X-Google-Smtp-Source: AFSGD/XP8McfuCCp1UCNhk3bx5vvj3i0SP4y9Fr3/73wXn1wgtqx47672gaN/2swdYDSaCrK7RrhtQ==
X-Received: by 2002:a02:b424:: with SMTP id i33mr6638339jaj.37.1542818249245; 
	Wed, 21 Nov 2018 08:37:29 -0800 (PST)
Received: from ola-842mrw1.ad.garmin.com ([204.77.163.55])
	by smtp.gmail.com with ESMTPSA id
	n25-v6sm13759595iop.34.2018.11.21.08.37.28
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Wed, 21 Nov 2018 08:37:28 -0800 (PST)
From: Joshua Watt <jpewhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
To: poky@yoctoproject.org
Date: Wed, 21 Nov 2018 10:37:05 -0600
Message-Id: <20181121163705.13477-1-JPEWhacker@gmail.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Subject: [meta-poky][PATCH] poky.conf: Include SDKMACHINE in SDK name
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 21 Nov 2018 16:37:30 -0000
Content-Transfer-Encoding: 8bit

Replace SDK_ARCH with SDKMACHINE so that SDK targeting different
development machines but having the same architecture don't cause
similar errors as found in '3614dd4aee9 ("poky.conf: Add MACHINE to
SDK_NAME")'

This doesn't have any effect on the SDK machines provided in oe-core,
since SDK_ARCH is the same as SDKMACHINE for all of them.

Signed-off-by: Joshua Watt <JPEWhacker@gmail.com>
---
 meta-poky/conf/distro/poky.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index c9c3ed976a2..f5de8f2335d 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -23,7 +23,7 @@ DISTRO_FEATURES ?= "${DISTRO_FEATURES_DEFAULT} ${DISTRO_FEATURES_LIBC} ${POKY_DE
 
 PREFERRED_VERSION_linux-yocto ?= "4.18%"
 
-SDK_NAME = "${DISTRO}-${TCLIBC}-${SDK_ARCH}-${IMAGE_BASENAME}-${TUNE_PKGARCH}-${MACHINE}"
+SDK_NAME = "${DISTRO}-${TCLIBC}-${SDKMACHINE}-${IMAGE_BASENAME}-${TUNE_PKGARCH}-${MACHINE}"
 SDKPATH = "/opt/${DISTRO}/${SDK_VERSION}"
 
 DISTRO_EXTRA_RDEPENDS += " ${POKY_DEFAULT_EXTRA_RDEPENDS}"
-- 
2.19.1


