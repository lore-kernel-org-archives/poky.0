Return-Path: <anton@advancedtelematic.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7B676E00E46; Tue, 16 Aug 2016 06:13:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f44.google.com (mail-wm0-f44.google.com [74.125.82.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 32D31E00E41
	for <poky@yoctoproject.org>; Tue, 16 Aug 2016 06:13:21 -0700 (PDT)
Received: by mail-wm0-f44.google.com with SMTP id q128so143189906wma.1
	for <poky@yoctoproject.org>; Tue, 16 Aug 2016 06:13:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=advancedtelematic.com; s=google;
	h=from:to:subject:date:message-id;
	bh=+dcqoBM9JLiV2k5HGW8H4sKHFmOJfTkPd6k0aakQJ74=;
	b=SN/QRsppHETVgohbkSneucq5Oh7UIzlsb83ncPaKgeuEOleuw9Ne8fv9h1rOol+LEY
	GCl6MA7rB3y9IR87vsF0gQPdEJjwb6yQQ0A6YdOg4KKvYgA3ss9bwQYDUBuNsZjnCh/q
	44YzJKvVzjh31dmbhocVkPm05ZfYAM4qFEm2g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=+dcqoBM9JLiV2k5HGW8H4sKHFmOJfTkPd6k0aakQJ74=;
	b=A/w925acsdr2GaPiiCuhWmO+mKZ32jz8ZU0/WpniqtIkPAvCfNVhYvDxaTd6L0Ahbi
	IFpQlhxt6KCTp+AJ3AXj8IS+ZK4Kp/WXxGajelH+8R7S8s5vwe6QwvcRFR6NAPbDezAj
	7V/qyQ7EkBCX7uxiorIuOODAWU/aLKzV2NB1VEAxhFHEldgCFyGPiqqZIvKzgbKNMeqy
	ly5olsvE7E3amMuByKanmAsQy+3NkPuj4tNrsWb+mzpIVPOxY+wguXXx3xIjJ06ai9ed
	FbYfLIKOP148zA1QmgePeLLDhzZNkh8g+veTs0quMa5h5yvRDjg0hY2Dw/xEy4kk6VB/
	J4aw==
X-Gm-Message-State: AEkoouviSOi40icwfrpnUEeeIH/+euld26H6YpECWtlxvyVQj6hM8RYEBy39lQXWRLJ0LA==
X-Received: by 10.194.222.194 with SMTP id qo2mr41971607wjc.109.1471353200438; 
	Tue, 16 Aug 2016 06:13:20 -0700 (PDT)
Received: from anton-ats.internal.advancedtelematic.com
	(p578a6cbb.dip0.t-ipconnect.de. [87.138.108.187])
	by smtp.gmail.com with ESMTPSA id
	qe2sm26689917wjc.28.2016.08.16.06.13.19 for <poky@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 16 Aug 2016 06:13:20 -0700 (PDT)
From: Anton Gerasimov <anton@advancedtelematic.com>
To: poky@yoctoproject.org
Date: Tue, 16 Aug 2016 15:11:15 +0200
Message-Id: <cover.1471348606.git.anton@advancedtelematic.com>
X-Mailer: git-send-email 2.8.3
Subject: [PULL 0/1] runqemu: add OTA image
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
X-List-Received-Date: Tue, 16 Aug 2016 13:13:26 -0000

Tipical use of OSTree deployment system relies on u-boot and specific
boot filesysem organization. It would be useful to be able to emulate
such system natively with qemu. On x86 machine u-boot can be run either
as BIOS or with Coreboot BIOS, default SeaBIOS is not supported.
Respective changes are made to runqemu.
Image type for otaimg is committed to meta-agl-extra/meta-sota at AGL
and is copied to gerasimov/meta-sota branch at poky-contrib for convenience.

The following changes since commit 6b66e9317f4ec3a69f98f29836aafa35b52f3fc7:

  Allow for simultaneous do_rootfs tasks with rpm (2016-08-12 15:25:22 +0100)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib gerasimov/qemuota
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=gerasimov/qemuota

Anton Gerasimov (1):
  runqemu: add OTA image

 scripts/runqemu          | 27 +++++++++++++++++++++++++--
 scripts/runqemu-internal | 41 +++++++++++++++++++++++++++++++----------
 2 files changed, 56 insertions(+), 12 deletions(-)

-- 
2.8.3


