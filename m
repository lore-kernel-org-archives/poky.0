Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4B997E00C62; Thu,  7 Apr 2016 08:55:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.42 listed in list.dnswl.org]
Received: from mail-wm0-f42.google.com (mail-wm0-f42.google.com [74.125.82.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 07EEEE00C28
	for <poky@yoctoproject.org>; Thu,  7 Apr 2016 08:55:01 -0700 (PDT)
Received: by mail-wm0-f42.google.com with SMTP id l6so31555127wml.1
	for <poky@yoctoproject.org>; Thu, 07 Apr 2016 08:55:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:subject:date:message-id;
	bh=iHwGvaErSFP5AS2XkHIV5pImx6tS7vIFT8p9H+MhiEU=;
	b=M+4fwHGqMHUPIGbWKodl1Ne4ktQN0+QFllsGtnxzjimGSLCv3ojAq+0lVHAD47qlcl
	dDBkDuYLMHthhE/h21FbXlDRtL+UJxvPRBesQDrFEtlFlp8wLmKjbA7JiHfaQICEhgos
	0iD8GUBK4lU8YAeLQvLfOUD9RMqFdihLxQZwGtciRevvUvld23NvB5KKyC3xNCH9VSLT
	i/A4jpDirsdvw5MkNpFoJRdNgde9Jgx/+WA9zQF+NB70YgMDFuuA65VYlWxrBrnDkUP5
	HMh27YDm33zaxDWF3CY+9e57btV3kyTgHK9OLryGHMgtDlB+UJLqT4Qum9+Qsf/dzn4z
	nt8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=iHwGvaErSFP5AS2XkHIV5pImx6tS7vIFT8p9H+MhiEU=;
	b=kjGj73J9RwtTodFbuavU6LQwonO3exuDGvxmk+r/WybrIFmfrET4SeDdFar0GuCa6c
	9n+PtF9/Ocd5MqI9bJpkEpsVyMB7J0pG68Oy1xlgXnpzJWPE8d3k2KcYcWUItFGEF4tw
	hoFDgjSVTbIDcYOQC3/XcuVoxKpx5PsZcntPS92T6CGpSvAFKwxojV2oPKWs340iz1ct
	i+Cvjr0wbusiszq/y3hhXfPRBGm+H5NnvYjhPFzt946yZ/3/PTqyj3vQaVf/IRU9/6jQ
	JEF7Tl8eNr2m7G5zQEF4ZU97b1WRc4wuqV7D/fln9LvnJF82fC9270ULhSFX6cLz+kuD
	KvvA==
X-Gm-Message-State: AD7BkJK5rHSjFvG+R3z2qL3q9tvnv1WC8SCoOT89kyZsx2s8H+HvsK5UBxEhsZ++LGUYAswq
X-Received: by 10.28.169.196 with SMTP id s187mr5441903wme.63.1460044500963;
	Thu, 07 Apr 2016 08:55:00 -0700 (PDT)
Received: from flashheart.burtonini.com (home.burtonini.com. [81.2.106.35])
	by smtp.gmail.com with ESMTPSA id
	138sm30931653wmf.13.2016.04.07.08.55.00 for <poky@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 07 Apr 2016 08:55:00 -0700 (PDT)
From: Ross Burton <ross.burton@intel.com>
To: poky@yoctoproject.org
Date: Thu,  7 Apr 2016 16:54:54 +0100
Message-Id: <1460044494-17848-1-git-send-email-ross.burton@intel.com>
X-Mailer: git-send-email 2.7.0
Subject: [PATCH] poky.conf: add Fedora 23 to supported distros
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
X-List-Received-Date: Thu, 07 Apr 2016 15:55:06 -0000

[ YOCTO #8871 ]

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 meta-poky/conf/distro/poky.conf | 1 +
 1 file changed, 1 insertion(+)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index b94717f..385102f 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -79,6 +79,7 @@ SANITY_TESTED_DISTROS ?= " \
             Ubuntu-15.10 \n \
             Fedora-21 \n \
             Fedora-22 \n \
+            Fedora-23 \n \
             CentOS-6.* \n \
             CentOS-7.* \n \
             Debian-7.* \n \
-- 
2.7.0


