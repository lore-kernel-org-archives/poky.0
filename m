Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B0EF2E00DE6; Wed,  9 Oct 2019 06:03:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.128.67 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
	[209.85.128.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6B13DE00DA3
	for <poky@yoctoproject.org>; Wed,  9 Oct 2019 06:03:31 -0700 (PDT)
Received: by mail-wm1-f67.google.com with SMTP id i16so2505679wmd.3
	for <poky@yoctoproject.org>; Wed, 09 Oct 2019 06:03:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=vH/owa1eh2xuelLjI+HUCIClSHgdsjjDvT1pQL3XxKM=;
	b=Hxtj1CZJomJgaPLwsSLiVivubOmw6D2z1qZ0NUypJX+6qRbFfjUlG5GzTdny48LWrr
	IyiOKtsU59ABVma+QJ1BRA1pij6aRAkmqVJyKvHJRHizqQA0ttSlKuOYzAkm15doFULW
	SR1tioVDjE6lvCYDnDhsRc0OUvNHnuLdmCo2YgpGcQdcN8D2C3jnEP2cDtgRwQOMme6a
	m/23y8FsXqs5v0hZLAoTj81X6addA7IhTojai7Ax45q5GMzTHzMHseb79nuHiINxkZze
	1rTIv80PumNjsTaN3+9Z9QRZNkb1kL6gX87lo3G0rMf7bfSRTorOB+gyVbdAjbKHWqGs
	d68g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=vH/owa1eh2xuelLjI+HUCIClSHgdsjjDvT1pQL3XxKM=;
	b=JWEqkaLNAAmVlRvwCdnUJEgzB/am4LKCGijq6iExXDs5JQ2yuTkWU+tLzA8cAsPJO8
	d0UoDE6RGKwu/EDytN8aK/TSFxpp8jKFErlP6XJpNjZBEq7onfHGP6bB+PSOPU7PNpc/
	9FYzmT6oguZehcW56O/lXPmhrnpJaFrPqBWWdEdtx9eJUDjvjHNXyKIb3paWAxtHhIxI
	1jW9g3HzH80Z4HfUXQh5gfX1ksKr3YFQE45NcF5oKQjInhHGGww4AM737Q3onV7qzNhu
	oxv6Z1SDxJtDX9cajhaJlqgc84B7rUSDp0d/rGGA3OdLwRVlH9LN7hZOoyYmgSf7hoKS
	ifzA==
X-Gm-Message-State: APjAAAXu1+61acfDkJvirWyAW2GE6nWtA5jD0ZUmOmwo3UzfL49bGNfM
	7QsrKsWjD7PK5+eJZepZKPYbW1NJexc=
X-Google-Smtp-Source: APXvYqxsT3se9ThFPv1ELGSLORjfBKyM5bDKbFOGX8pkXmkZG+snY2+9Xw6/RXBeGlJF2fcY/QNMVw==
X-Received: by 2002:a7b:c8c5:: with SMTP id f5mr2530490wml.170.1570626210843; 
	Wed, 09 Oct 2019 06:03:30 -0700 (PDT)
Received: from flashheart.burtonini.com (35.106.2.81.in-addr.arpa.
	[81.2.106.35]) by smtp.gmail.com with ESMTPSA id
	q15sm3627533wrg.65.2019.10.09.06.03.29 for <poky@yoctoproject.org>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Wed, 09 Oct 2019 06:03:30 -0700 (PDT)
From: Ross Burton <ross.burton@intel.com>
To: poky@yoctoproject.org
Date: Wed,  9 Oct 2019 14:03:28 +0100
Message-Id: <20191009130328.28520-1-ross.burton@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [PATCH] poky: add Ubuntu 19.04 as a supported distribution
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
X-List-Received-Date: Wed, 09 Oct 2019 13:04:12 -0000
Content-Transfer-Encoding: 8bit

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 meta-poky/conf/distro/poky.conf | 1 +
 1 file changed, 1 insertion(+)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index f999992c90a..e3df6be2ac5 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -54,6 +54,7 @@ SANITY_TESTED_DISTROS ?= " \
             poky-2.7 \n \
             ubuntu-16.04 \n \
             ubuntu-18.04 \n \
+            ubuntu-19.04 \n \
             fedora-28 \n \
             fedora-29 \n \
             fedora-30 \n \
-- 
2.20.1


