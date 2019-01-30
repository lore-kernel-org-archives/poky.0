Return-Path: <jpewhacker@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5ED1EE00D1B; Wed, 30 Jan 2019 11:30:19 -0800 (PST)
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
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.167.194 listed in list.dnswl.org]
Received: from mail-oi1-f194.google.com (mail-oi1-f194.google.com
	[209.85.167.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DEB0DE00D15
	for <poky@yoctoproject.org>; Wed, 30 Jan 2019 11:30:18 -0800 (PST)
Received: by mail-oi1-f194.google.com with SMTP id x202so588492oif.13
	for <poky@yoctoproject.org>; Wed, 30 Jan 2019 11:30:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=iIbEwwhVNpuaD/5Q9egb7dVtk92ZU4LPoP63FTt+12g=;
	b=tRmh7vzS8lcMXgtm9bhARMHbusA8mApUM0LZhJPhST+CsuyAgL2CJU92MgjkG6HAI1
	vm9mNZNEdvnN+AJ06ft17Pk0rrbVWl/Q2ewWTV2vxOtF2imFIxOsdQbHT46hUs+Knxft
	nf9LqLFWfGWvGW+9H8/Ly2736ylHRiPwwl0PaZjppB10z8FWACrgUsTWz2HiQYmR90I7
	W0mvugEEJCTjkgzuV4GlGqH0HCNxASoQW5fb3qXxeYoKSA6R3dT0de83TfRVnizjW5dh
	USxzcA1EKqK+qA196gaL+jr7PbRZRFwZ+GtnfQtCtkkeZt0Ee0y02k7zCNGRWdiPr/rJ
	EB4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=iIbEwwhVNpuaD/5Q9egb7dVtk92ZU4LPoP63FTt+12g=;
	b=OsEjULlIeuYyNrlh8zjx9Jd4rINOA74M6fPZSuZrUlnaDU8Bk3/AKi31VvT20wXD0p
	gZlzZpFFjGrkMHmiia1r02B1A+7IHpO9vvaz+GuhIzbVJ250Ct3zYda5CBnk6N14alAD
	BjMxfS+ofZ0h0chGW1Z3HJYhepJCFKsuzVtAjhWIgklb1qEs5iNLEV6L99vjdv4WwiIT
	M24q5duRaSx+khYzbjR7PDXTudGrg5KZr0AfOo2SQqYIHY/TeJBbDs1daCGis2Dxahlx
	no+65bc7Ic0hN066jRhe1DrBg6D4D9cgTj/eAPRm3oFx9tzintyTk+ufsAniah/+FsD0
	g0aQ==
X-Gm-Message-State: AHQUAubJDVHNX0rw90zKBD0rI/b++3A4gxNGvV3SMStAgXyyZ2WTjvHP
	ekx5He1QIRr9lDYC7rNMC9oyzYxdyD0=
X-Google-Smtp-Source: ALg8bN53GV/t4sLFL8y6pYpt6aBBqmwLUhUzccl1pAog2akuHUyQxbXRWjFA1ow34JD3MujSWq9JWg==
X-Received: by 2002:aca:2ccc:: with SMTP id
	s195mr13477335ois.282.1548876617921; 
	Wed, 30 Jan 2019 11:30:17 -0800 (PST)
Received: from ola-842mrw1.ad.garmin.com ([204.77.163.55])
	by smtp.gmail.com with ESMTPSA id
	v141sm1057108oia.25.2019.01.30.11.30.17
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Wed, 30 Jan 2019 11:30:17 -0800 (PST)
From: Joshua Watt <jpewhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
To: poky@yoctoproject.org
Date: Wed, 30 Jan 2019 13:30:14 -0600
Message-Id: <20190130193014.20061-1-JPEWhacker@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [meta-poky][PATCH] local.conf.sample: Explain src-pkgs
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
X-List-Received-Date: Wed, 30 Jan 2019 19:30:19 -0000
Content-Transfer-Encoding: 8bit

Adds documentation to explain that src-pkgs can be added to
EXTRA_IMAGE_FEATURES

Signed-off-by: Joshua Watt <JPEWhacker@gmail.com>
---
 meta-poky/conf/local.conf.sample | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/meta-poky/conf/local.conf.sample b/meta-poky/conf/local.conf.sample
index cf96598819c..267108d6850 100644
--- a/meta-poky/conf/local.conf.sample
+++ b/meta-poky/conf/local.conf.sample
@@ -124,6 +124,8 @@ PACKAGE_CLASSES ?= "package_rpm"
 # variable can contain the following options:
 #  "dbg-pkgs"       - add -dbg packages for all installed packages
 #                     (adds symbol information for debugging/profiling)
+#  "src-pkgs"       - add -src packages for all installed packages
+#                     (adds source code for debugging)
 #  "dev-pkgs"       - add -dev packages for all installed packages
 #                     (useful if you want to develop against libs in the image)
 #  "ptest-pkgs"     - add -ptest packages for all ptest-enabled packages
-- 
2.20.1


