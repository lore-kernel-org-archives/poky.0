Return-Path: <mcampbell@izotope.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6E063E00C81; Tue, 14 Jun 2016 14:34:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f175.google.com (mail-qk0-f175.google.com
	[209.85.220.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 29631E00C70
	for <poky@yoctoproject.org>; Tue, 14 Jun 2016 14:34:07 -0700 (PDT)
Received: by mail-qk0-f175.google.com with SMTP id p10so2915525qke.3
	for <poky@yoctoproject.org>; Tue, 14 Jun 2016 14:34:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=izotope-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id;
	bh=uGAEypK8dKNjJppy+C0IR7WLCd3DKbQMNh19Sy/bbzU=;
	b=x3dOE1t3f10bgQWQawPl+ZIOur4hRngykzd+4hkBZ58+6CxCjXufLMc2F/mCgJlf9m
	rtBZD/OIxokAXrxOosQwQIangxrINly2PsXhMEdhbLIb8ijvG5vsIMFIG44bczWsydTc
	Mn7I/plzPU4jpne13Y1qavH8Er6dFSD9H0KgrLPGf+D6RBbCQbrQTH1HaYKXapgMqFdY
	HDJgTWZr20Mdm9OGk37lUpd6dtpqYbLVR9ev8W2xNRDPtakZK96zboV7pY32hLjpLkaz
	R+9zlDc5iFQvy9V/Jqf4OF/8HlRDPKPpfnQJCOWd8BYHYAc0eD9i03wLWuImIGDNkvf7
	Rj4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=uGAEypK8dKNjJppy+C0IR7WLCd3DKbQMNh19Sy/bbzU=;
	b=m/RSqWry2C0i8YeBLAacMOPVU2qhqCBxPXtwv0s5gimD08CGy4nyps2BNLydBzjaZo
	jSV3J269kBkgJT4LeWzKhU2uH4YaYL7GzZAIV3c9zlNCNF+DUNFfr+cTSfwNVTgHYwDz
	PY3tbc1dY2lVXvNJpwc+izBvxP5C+V8b1lZ8BcDxDDyvo/VDE3oMydf0/6p0MCTI+U6l
	U3AO8ZZqoIJXOfuYAA7ohX/R2xOvvotGr+7oeQu0faexgcaHQhbMgdPiiYSUUoTZQgIu
	9xtDmjn72nnfkMtrTucZWPzG+ZUnx3+Ax5uFffVKtAt2uceo8I5mXcFQbvxgro+tvOls
	85Tg==
X-Gm-Message-State: ALyK8tJO7FPL/X74fScQQ+ZiE5xL3qC2frBHRSPAjLqQP5vu/1PKuaQRahCdjN/iTSRCojRi
X-Received: by 10.233.222.4 with SMTP id s4mr16694321qkf.74.1465940046764;
	Tue, 14 Jun 2016 14:34:06 -0700 (PDT)
Received: from ubuntu.localdomain ([38.97.94.98])
	by smtp.gmail.com with ESMTPSA id t1sm8736569qke.18.2016.06.14.14.34.06
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 14 Jun 2016 14:34:06 -0700 (PDT)
From: Matthew Campbell <mcampbell@izotope.com>
To: poky@yoctoproject.org
Date: Tue, 14 Jun 2016 17:34:00 -0400
Message-Id: <cover.1465939233.git.mcampbell@izotope.com>
X-Mailer: git-send-email 2.5.0
Subject: [PATCH 0/1] Fix openssh init script for read-only-rootfs
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
X-List-Received-Date: Tue, 14 Jun 2016 21:34:11 -0000

The following changes since commit 71765a90d1ff455608a006ed32cf42110e779217:

  bitbake: cooker.py: fix warn() -> warning() (2016-06-13 12:16:10 +0100)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib mcampbell/openssh-readonly
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=mcampbell/openssh-readonly

Matthew Campbell (1):
  openssh: fix init script restart with read-only-rootfs

 meta/recipes-connectivity/openssh/openssh/init | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

-- 
2.5.0


