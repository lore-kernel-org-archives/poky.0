Return-Path: <ste.lendl@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9191EE00A54; Tue, 27 Nov 2018 05:19:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (ste.lendl[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.221.45 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com
	[209.85.221.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 01B25E009AA
	for <poky@yoctoproject.org>; Tue, 27 Nov 2018 05:19:53 -0800 (PST)
Received: by mail-wr1-f45.google.com with SMTP id q18so22652127wrx.9
	for <poky@yoctoproject.org>; Tue, 27 Nov 2018 05:19:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=3VL9hbh0tKw7QoqVYOO0VY7y1csNCCCqKciTSgj2I3Q=;
	b=B7WH1fmh+ysQOTpkiaxQpPOmlEQJt7jf2aQVWkzIhc9a+fp+jn3Te8Kny4qhjxajgO
	yaUAZHG1z2Lwf1rNpvguc9jEQsnci5Q9Vi5T+PKNC4UF+vmJ4RVhtTAEskLr9bOZW7Ts
	LCfkl1r1FO3utBlWcQNegMOqAX7aUHPsQf97iVjjxAWEP4KUOFw7TvwQH17dKdXbMoAq
	iD8wMaM0rj9LD+szRaTG32XjpxkZrsl8EfUM9mqlvfrpJ1du+RHfEtEgOVEL/1IqDupi
	JTv952780ghc4vQprbVjbyD4BO4c96vaKEOc3YDkWWD9eJDR+I6gj3WnhGhI//At+6VP
	TycA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=3VL9hbh0tKw7QoqVYOO0VY7y1csNCCCqKciTSgj2I3Q=;
	b=qwKSLgGklmYLZ/nG2/sddyjKhX4vlL5g4KS0GmwajS3x3Rwk/7SVIKwWJBIldIaTzL
	PbDJaBgDUSBnLDbmNNXe3oihfJr6KkKjvgcjuZX+CeCzThF124M2Az3lpSBZkfF5wtUk
	kJaHWqmcN2MgpH0Ox4q9OroSL9Kk4+9H6iVCuUE/UJWGw/qpvXr9waqg4agSHEnI8DWe
	1oNrAekiiw953vUXjD1lHJFax7OE41VOTClTfSjTZvjcZsNqsme2+BrKYbS6pGYpO9pZ
	uwbqc74UYRWCcy9o1xD8BEI+vg6in4Fe6VQNkdiybLHjoOsoG4UsIM1OtSug0bfUtZCa
	GBNA==
X-Gm-Message-State: AA+aEWZ9Ei7Exv/kK1k7UROMVFPTFfIxN98GyjWVeHj898bGTL6beE9z
	94cY8yh2o9/1U3taO+9+qE2jlAwNPJE=
X-Google-Smtp-Source: AFSGD/UbGmxYWmDALEVjrbACvMid5MefHRrhTkMTs+4Z4uPGuZTza6DM0BOqxhl1Yurdgr1kgdp/Mw==
X-Received: by 2002:adf:9591:: with SMTP id p17mr7129529wrp.224.1543324792672; 
	Tue, 27 Nov 2018 05:19:52 -0800 (PST)
Received: from localhost ([212.69.186.40])
	by smtp.gmail.com with ESMTPSA id d8sm2777577wrw.70.2018.11.27.05.19.51
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Tue, 27 Nov 2018 05:19:51 -0800 (PST)
From: Stefan Lendl <ste.lendl@gmail.com>
X-Google-Original-From: Stefan Lendl <sll@mission-embedded.com>
To: poky@yoctoproject.org
Date: Tue, 27 Nov 2018 14:19:45 +0100
Message-Id: <20181127131945.10796-1-sll@mission-embedded.com>
X-Mailer: git-send-email 2.14.5
Cc: Stefan Lendl <ste.lendl@gmail.com>
Subject: [PATCH][sumo] make PREFERRED_VERSION_openssl* overwritable on sumo
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
X-List-Received-Date: Tue, 27 Nov 2018 13:19:54 -0000

From: Stefan Lendl <ste.lendl@gmail.com>

defaultsetup.conf and therefore default-versions.inc is sourced pretty late in bitbake.conf.
default-versions.inc overwrites previous assignments of PREFERRED_VERSION_openssl.
Assigning it with ?= allows other .conf files to assign correctly.
in particular assignment in conf/local.conf and machine config is used instead of default.
---
 meta/conf/distro/include/default-versions.inc | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/meta/conf/distro/include/default-versions.inc b/meta/conf/distro/include/default-versions.inc
index 868073843a..3d88e8f656 100644
--- a/meta/conf/distro/include/default-versions.inc
+++ b/meta/conf/distro/include/default-versions.inc
@@ -2,6 +2,6 @@
 # Default preferred versions
 #
 
-PREFERRED_VERSION_openssl = "1.0.%"
-PREFERRED_VERSION_openssl-native = "1.0.%"
-PREFERRED_VERSION_nativesdk-openssl = "1.0.%"
+PREFERRED_VERSION_openssl ?= "1.0.%"
+PREFERRED_VERSION_openssl-native ?= "1.0.%"
+PREFERRED_VERSION_nativesdk-openssl ?= "1.0.%"
-- 
2.14.5


