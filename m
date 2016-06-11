Return-Path: <manuel.h87@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 291A4E00E1E; Sat, 11 Jun 2016 00:47:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (manuel.h87[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f54.google.com (mail-wm0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9B31CE00DF4
	for <poky@yoctoproject.org>; Sat, 11 Jun 2016 00:47:47 -0700 (PDT)
Received: by mail-wm0-f54.google.com with SMTP id v199so17412480wmv.0
	for <poky@yoctoproject.org>; Sat, 11 Jun 2016 00:47:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=1pWEZlp9txF05bU5syBol5CF2bQvQlk2DocWZUNzyF4=;
	b=aCJ5ONUXySSlrRreQzAiE2KRLly2aXY77/gJ9ncTK3IMapbx6dOmbmM/KAvgmFpaly
	OhCSQewV6t879+QeXlhNIYl0DWJvxlWWmAxBBQk0i4d3/hWv0FK2+Uk4F/xS4cE2jLrt
	B9Nzd1K/XxQom9pvmkzP0FUwiC9p6wV2HABMV7ReAh2XXSriwn54GygRDQtyvNUwWTNt
	tM62cdZXQB9yA1vpTZ59/lVtWTbtFttALtfwiDD6KyAtUs0mM5HhlacgPZIQlwNoFV9j
	GTqAEX0qmFgCzCSzVnkbvxkTpQOBgG934n4pNZHSZZd2JZSNfNATITULH5VFosSPRpGZ
	QOcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=1pWEZlp9txF05bU5syBol5CF2bQvQlk2DocWZUNzyF4=;
	b=UYPA6vHAXbQTk/cNNGgMgq4BqyznwGt35v2JvwIJ2tqVnWdPl5ybdQmLMBCVKbSLMV
	eTd3EVF+H9ppHw8sI7zMyiXp8HbnitUe99fjk1KkXHFCKTBv29F6chiG/rwuTYgWcCa1
	jJEv83Lg+9pvQRX28R2zsNRFnAJ1o5h46hsDeRAOlHD4e5GODVpp0s7effI+N3fXPFna
	UFuaCj+zUkf7VF9f10dE3rzY/cexawsGGq5zImZvab2/GP9hWSbfSp2HLwl3IQlQDBmV
	2ap0d6B6EGiYetfblVamWWi4y9jELq0FkweK6YUR++XxQ2KVWXR1gBIDRS7NRSc6jrzq
	l1QA==
X-Gm-Message-State: ALyK8tI5cDzl//usHMcFKttufOflT1UO9IpesRkQjzHX7jRQGsMWFiP4396IIcYXm7Qg/Q==
X-Received: by 10.194.179.233 with SMTP id dj9mr5553775wjc.115.1465631266164; 
	Sat, 11 Jun 2016 00:47:46 -0700 (PDT)
Received: from localhost.localdomain (d86-32-133-80.cust.tele2.at.
	[86.32.133.80]) by smtp.googlemail.com with ESMTPSA id
	75sm2837448wml.15.2016.06.11.00.47.45
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sat, 11 Jun 2016 00:47:45 -0700 (PDT)
From: Manuel Huber <manuel.h87@gmail.com>
To: poky@yoctoproject.org
Date: Sat, 11 Jun 2016 09:47:22 +0200
Message-Id: <cover.1465630004.git.manuel.h87@gmail.com>
X-Mailer: git-send-email 2.5.0
Cc: Manuel Huber <manuel.h87@gmail.com>
Subject: [PATCH 0/1] Handle errors during license hard-links
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
X-List-Received-Date: Sat, 11 Jun 2016 07:47:49 -0000

This might be a real corner case I hit:

I'm using docker for building poky with separate volumes for source
code (poky and all layers) and the actual build result. Poky tries to
create hard links for licenses depending on st_dev. But unfortunately
across docker volumes the number might be the same (0) but creating
hard links still fails with EXDEV.

The following changes since commit 40e789d1fee7f0df2d23230fff38325119ad2935:

  bitbake: lib/bb/main.py: Fix use of BBPOSTCONF and BBPRECONF (2016-06-09 18:00:58 +0100)

are available in the git repository at:

  git://github.com/boon-code/poky bugfix/master/Fix-license-copy-in-docker
  https://github.com/boon-code/poky/tree/bugfix/master/Fix-license-copy-in-docker

Manuel Huber (1):
  Handle EXDEV if hard link to license fails

 meta/classes/license.bbclass | 20 +++++++++++++++-----
 1 file changed, 15 insertions(+), 5 deletions(-)

-- 
2.5.0


