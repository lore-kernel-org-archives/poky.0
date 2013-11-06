Return-Path: <ajlennon@gmail.com>
Received: from mail-wg0-f44.google.com (mail-wg0-f44.google.com [74.125.82.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A3886E017F4
	for <poky@yoctoproject.org>; Wed,  6 Nov 2013 10:15:47 -0800 (PST)
Received: by mail-wg0-f44.google.com with SMTP id n12so5305130wgh.23
	for <poky@yoctoproject.org>; Wed, 06 Nov 2013 10:15:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:subject:date:message-id;
	bh=dvds1FCX+sLMgfgEIMtU0Ufwai2sJJXFQOtNf2em9mc=;
	b=Tj7VES6gYZxFvVPjuBr1SGtXA53FF/Z7QJxhIJlXC40Ry+4OZfsgh5+i8Ww8sU4/8c
	iEuNB4wZF/AOytnK11WDuwLozF7LyAWu5hhkBKVHBlk1Ni6Qm0HwVc0Wl46xlYIf4IRn
	xVgrOLK1X78yV3wuSPHLT9tx6t7gB8PupsKpW6aBQG0aHZIr9enHG07G2fBRJ1CMnFUW
	tKeOipIS8sbmTruoGGTLVbZBScOrJ5DyDy/JURsKJqHBP5aQizZNj/pBLDLkEDDaABp6
	iIuSU26uFUEWwYtxjlkgy9+QtIJE2t0UEuO7pZ9rE55hGKBhlyrG1tM0oSztiPtRSsEd
	oh/Q==
X-Received: by 10.194.219.70 with SMTP id pm6mr2994851wjc.47.1383761746097;
	Wed, 06 Nov 2013 10:15:46 -0800 (PST)
Received: from localhost.localdomain
	(cpc16-live22-2-0-cust180.know.cable.virginm.net. [82.42.220.181])
	by mx.google.com with ESMTPSA id hv5sm27105315wib.2.2013.11.06.10.15.44
	for <multiple recipients>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 06 Nov 2013 10:15:45 -0800 (PST)
Sender: Alex Lennon <ajlennon@gmail.com>
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
To: poky@yoctoproject.org,
	openembedded-core@lists.openembedded.org
Date: Wed,  6 Nov 2013 18:15:38 +0000
Message-Id: <cover.1383761518.git.ajlennon@dynamicdevices.co.uk>
X-Mailer: git-send-email 1.7.9.5
Subject: [PULL] [PATCH 0/1] sqlite3: Add support for column metadata API
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
X-List-Received-Date: Wed, 06 Nov 2013 18:15:56 -0000

The following changes since commit d6cc7c8ed76c8b1117cf03c7bd4b0742f98f79b3:

  toolchain-scripts/meta-environment: Further cleanup code duplication (2013-11-06 11:02:27 +0000)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib ajlennon/sqlite3
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=ajlennon/sqlite3

Alex J Lennon (1):
  sqlite3: Add support for column metadata API

 meta/recipes-support/sqlite/sqlite3_3080002.bb |    5 +++++
 1 file changed, 5 insertions(+)

-- 
1.7.9.5


