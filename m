Return-Path: <maxime.roussinbelanger@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0FF83E00C7E; Thu, 29 Nov 2018 15:51:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (maxime.roussinbelanger[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.194 listed in list.dnswl.org]
Received: from mail-qt1-f194.google.com (mail-qt1-f194.google.com
	[209.85.160.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0AB4CE00BFD
	for <poky@yoctoproject.org>; Thu, 29 Nov 2018 15:51:43 -0800 (PST)
Received: by mail-qt1-f194.google.com with SMTP id n32so4071268qte.11
	for <poky@yoctoproject.org>; Thu, 29 Nov 2018 15:51:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=HXZHwaVP6e4s+FLaRfJSsKaEhpOP4RUOSROv7VYsC/Q=;
	b=k3Z119vOkrF0wCg92xYoEIjL7PR0t4o80SDU2Kxj2mruPJKUwzv+s0D2CbLHsIr9wb
	Z5YuDjYA8BVo2RGQ1/++3jGl6XIzHTIXfuseN3O8U/FZGKbxsfU5nLDBLZEnqKrFKgFC
	dRYiYtaJMQekNzXk/dG2tIxPMsTy0/SJ8LHmn2vVYS9BXLlyEQAFGSsjW5vi5lBtSWM5
	+VAV53htVbb5ZK2rFuhIuzD7VMSs8ibQJIgw0QRjWbFjX9RSnJpTqoZdGnYnngiMTKQb
	ZPniOJ9Nj922KJR+BSIwtdVepi9paNvmbH4nuzSeQSmMugCaTKQoMTQZlcG/tgSXS4p0
	izxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=HXZHwaVP6e4s+FLaRfJSsKaEhpOP4RUOSROv7VYsC/Q=;
	b=IunaWsTMI6GgjD50XLeE6L5jeI5MM3vBvDV4A7tmeyliwiiDvgRiF4gdnd7r/9hhGm
	3U+BiS23npSY6HT+mM+e4StkR2zUieW+y/yro8zoHD4aun+s3Dya+D7ey1MNkUS6PE9J
	FTMSiEi0WsDPxvcKOg1q7KnP7SqgvdGDTMFIxbEbKqTlemEwIwhOyY/Nu1rRHQiEtg0j
	S8R0DdrQHwJmelIka+ltbHXmjnyzxMG5ehkaqXINaj+NmqyGBPorCscoruXf19P1avU2
	1agoEcUbpnkajSVvIAWMI9Ql7c8+9opgLhZ8ih5ddA0ou8z04pr7+gV02WlsSZ3Y5TWv
	zUcg==
X-Gm-Message-State: AA+aEWaIrTX5hnMUpc99GHURZR2I/B+Z/KjrRBCo1QWYYfIpSAaUsdvv
	5V10bAd3wi6hfae+r6TU+grJD9tq
X-Google-Smtp-Source: AFSGD/U5zzT7S8rBh8ZL7BYoFyMV9impi0CtDvM4C7ZVFRq6EeZ5+IjmxGfLu6dryzJwmkEhTWtbtg==
X-Received: by 2002:a0c:985d:: with SMTP id e29mr3526348qvd.16.1543535502402; 
	Thu, 29 Nov 2018 15:51:42 -0800 (PST)
Received: from mbedesk.Sonatest.net
	(ipagstaticip-d73c7528-4de5-0861-800b-03d8b15e3869.sdsl.bell.ca.
	[174.94.156.236]) by smtp.gmail.com with ESMTPSA id
	o21sm2118675qto.18.2018.11.29.15.51.41
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 29 Nov 2018 15:51:41 -0800 (PST)
From: "=?UTF-8?q?Maxime=20Roussin-B=C3=A9langer?="
	<maxime.roussinbelanger@gmail.com>
X-Google-Original-From: =?UTF-8?q?Maxime=20Roussin-B=C3=A9langer?=
	<roussinm@sonatest.com>
To: poky@yoctoproject.org
Date: Thu, 29 Nov 2018 18:51:34 -0500
Message-Id: <cover.1543535225.git.roussinm@sonatest.com>
X-Mailer: git-send-email 2.19.2
MIME-Version: 1.0
Cc: =?UTF-8?q?Maxime=20Roussin-B=C3=A9langer?= <roussinm@sonatest.com>
Subject: [PATCH 0/1] cmake: remove version in directory structure
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
X-List-Received-Date: Thu, 29 Nov 2018 23:51:45 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

I removed the version on the directory because it doesn't seems to be the philosophy
the support multiple version of the same package in an embedded system.

The following changes since commit 41d89552620bfbc94031d314e6b3d0324f7a330e:

  bitbake: fetch2: Avoid warning about incorrect character escaping in regex (2018-11-27 22:15:34 +0000)

are available in the Git repository at:

  git://git.yoctoproject.org/poky-contrib mroussin/remove_cmake_version
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=mroussin/remove_cmake_version

Maxime Roussin-Bélanger (1):
  cmake: remove version in directory structure

 meta/recipes-devtools/cmake/cmake-native_3.12.2.bb | 2 ++
 meta/recipes-devtools/cmake/cmake_3.12.2.bb        | 7 ++++---
 2 files changed, 6 insertions(+), 3 deletions(-)

-- 
2.19.2


