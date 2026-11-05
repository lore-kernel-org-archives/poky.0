Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.30097.1793868316523718842
 for <poky@lists.yoctoproject.org>;
 Thu, 05 Nov 2026 00:45:16 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile.fr header.s=google2 header.b=ZBaZsLCz;
 spf=pass (domain: smile.fr, ip: 209.85.128.47, mailfrom: yoann.congal@smile.fr)
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-4a2167bd087so13086235e9.3
        for <poky@lists.yoctoproject.org>; Thu, 05 Nov 2026 00:45:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google2; t=1793868315; x=1794473115; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=mPAhLS9/9fK9azNrg0PwI31p5w+q6qa/91xt1ZLotqw=;
        b=ZBaZsLCzGVGwiTHeYFUA78fC34/GIbvDs8ITXFHQWM5Oj9shkPSPJaOo/blOiFu4D0
         eXgPkoUW3nUshKnCN6voyakfIFfjhmLG/X6s0pPUDIGdMnD9hwpUkhydnD5/iw3QL1av
         8uwkmABBdjxJBzEdzhYDWSayxdohs0EAYuVsfXx//jjPHj5kSUXqUXYCHbCk4Eo0YP5f
         3CmJEDDBwFloNZMwoBjgQhpL2jK46keYzhDnq1sQI0vMsYNPeYeIvpZHY+YF0E+uBTO0
         5a43ackxwAump7lJ26yZ018PlZIT16AYuOzKwnrFmJPJlFsBzVmjk/WvLDsR4LCwlHKE
         DNTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793868315; x=1794473115;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=mPAhLS9/9fK9azNrg0PwI31p5w+q6qa/91xt1ZLotqw=;
        b=Qxd0kHQpSUehnyugmbywSfZn8dUVCMOiWaT1BQ1i5Gj9/zpZKKgRG1rbMtV4SwaZnB
         CS2Yc1grInQoroa0FXvTw5Vyhluo2313Xtfq+jPRXBbO+FTgk4QY3Hscdd/XF+x8P4G+
         D1c74fVYvf9eNzfsivW5tdGPREgGMtrc5NFTKn3kqGAiSBwV0KDkinpH4XhiS6MkYxb/
         81QTtteueT4r6wWUxHkgA607ZLPOu8SIfblESgLQMcvzJIaLvD8PojVj8gNEgwUQAFMs
         blBOh6EEDyy/GIG7kKilRwtdPOWfG+5QeCur2y3qo9ggJvcV1XkjWqZsbNnsWJeIVk8U
         Gddg==
X-Gm-Message-State: APuU4Z/u++WsNhvMvM1IpfO1o/GoHK0V4TMnmzg0EP4MljEJqWLMEAnW
	QHzu3dF8ViJgO2aTk74i3sQbPN66Y+49XiTeXQ0N2YXm+hBdeIpXi6axcdej5ssy/3HhJ384ojc
	3jbcwuFA=
X-Gm-Gg: AYBFou3nKg5C6BmzgYEIlqJSRqrbQ7nvY+7wbceVfPYaBLC8LAszXGUFA5rhvQXX/oW
	z5Pi1p238jRcq8vQIdoBxeqEBUQZTwCIVQ3X/KHxDvR9PDztn7sxaPQjpjmBwk7GaXjoQS//LWm
	uUuWHfCP/ZjPxBFzVEIE8p4iWq3bT68jguXTjoQN8rTDnjQLgIMKDYfG2r57l7DyAEISxenpquO
	0DjR6zgqCqf2ny/nACiRzcdodMcuOXtYM1+l3aItO3/ITU6lxN6syGjuMQIkOo6n4twzc1rDog/
	J7MnyOLuOil/Yqhe23fW0UE6r3NUqW+YkV6iLs0VjCFUj0DNx0xbBSy3q+U4QAw4THEQpDVNxQV
	kO+vyjaaDu8xnyd9PJWbFVvdFJ0URnmRMyNVeEJz6xlW5Pl7FZJtdmjf0JZRxE48ZVccNu4m/7L
	4xwnqf++bE8kGuVf6LF78SQG2n+CffFdkKh20GkQtRSvqPY3ViAF5ESTZNk27M6QJHCpXpDW3P5
	3OIJRRxC1JNQozjOiAFJLgtjnX6rbpKUZX5H/uPZKvuYkxVGFxJ1qXvXWFtCt8pONbbcvXAmTpT
	QGBM69p8TTcedI6LHg5E4lQTw+kaF5UOmjz96D7Cd+aQhaAhL1rQzxveTQFoS2Uw2NVH5+pAYxt
	8kGb7ksvBJB9frzw62IYoMw8+np8E
X-Received: by 2002:a05:600c:8b64:b0:4a2:84c:52f3 with SMTP id 5b1f17b1804b1-4ac16fa21dcmr437711145e9.6.1793868314718;
        Thu, 05 Nov 2026 00:45:14 -0800 (PST)
Return-Path: <yoann.congal@smile.fr>
Received: from FRSMI25-LASER.home (2a01cb001331aa00a2e4fb7b0d887544.ipv6.abo.wanadoo.fr. [2a01:cb00:1331:aa00:a2e4:fb7b:d88:7544])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4b56ea592fbsm41683965e9.4.2026.11.05.00.45.14
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Nov 2026 00:45:14 -0800 (PST)
From: Yoann Congal <yoann.congal@smile.fr>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][blacksail 0/5] Patch review
Date: Thu,  5 Nov 2026 09:45:08 +0100
Message-ID: <cover.1793868274.git.yoann.congal@smile.fr>
X-Mailer: git-send-email 2.55.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by lin-tor-korg-lkml-alma10-1 with HTTPS for <poky@lists.yoctoproject.org>; Thu, 05 Nov 2026 08:45:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13986
Content-Type: text/plain; charset="utf-8"

Please review this set of changes for blacksail and have comments back by
end of day Monday, November 9.

Passed a-full on autobuilder:
https://autobuilder.yoctoproject.org/valkyrie/#/builders/29/builds/5060

The following changes since commit d0119aa2eb77b985fcd33ac527d5c0287eb68e58:

  yocto-bsps: update to v6.18.54 (2026-10-05 11:53:53 +0200)

are available in the Git repository at:

  https://git.yoctoproject.org/meta-yocto-contrib stable/blacksail-review
  https://git.yoctoproject.org/meta-yocto-contrib/log/?h=stable/blacksail-review

for you to fetch changes up to 52327e67cab80384323bec9b73d39cd152fec7bc:

  yocto-bsps: update to v7.2.13 (2026-11-02 16:20:11 +0100)

----------------------------------------------------------------

Bruce Ashfield (4):
  yocto-bsps: update to v6.18.57
  yocto-bsps: update to v7.2.11
  yocto-bsps: update to v6.18.59
  yocto-bsps: update to v7.2.13

Richard Purdie (1):
  Fix LICENSE file and licensing

 LICENSE                                       | 14 ++---------
 LICENSE.MIT                                   | 25 +++++++++++++++++++
 .../lib/oeqa/controllers/beaglebonetarget.py  |  4 +--
 .../lib/oeqa/controllers/grubtarget.py        |  2 +-
 .../linux/linux-yocto_6.18.bbappend           |  2 +-
 .../linux/linux-yocto_7.2.bbappend            |  2 +-
 6 files changed, 32 insertions(+), 17 deletions(-)
 create mode 100644 LICENSE.MIT

