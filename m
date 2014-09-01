Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D3F3EE0082B; Sun, 31 Aug 2014 21:07:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pd0-f169.google.com (mail-pd0-f169.google.com
	[209.85.192.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D74F5E00821
	for <poky@yoctoproject.org>; Sun, 31 Aug 2014 21:07:02 -0700 (PDT)
Received: by mail-pd0-f169.google.com with SMTP id g10so5158412pdj.0
	for <poky@yoctoproject.org>; Sun, 31 Aug 2014 21:07:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id;
	bh=Tl1yoQlsTd6ZAQgwbCdKaaNC1GIfugvZxaV15FgtNNA=;
	b=0TkWnJeHb5im27WEUye3sIKv5iAXOfwPrataGpNjpw5DBaP0NMGBmcjkd3Etf3pPZE
	nlb6vfJ9kZEar80l3Z0EPHY9MrZ0/qWvTk/oSZ4eTLA+dx1HtT48MmysOiRaWgvEt9/4
	ZquCQod4eRBXOmWFK/F/Vc8wcRQgx6zTO+oHZSzAnfXvG8kA2K+hTOuuKiE5ZKWTNOge
	JLyXY0V9iDznDrcb2x1YREXYpVRC2Hkpl3n1H753OIg9PpJzHixvaOgOM0yrw+Kbvn7y
	+VM9bUwhs36w5hZ691O9g/+7ueowkdDPOiWBa1rcaFto/Uf27wPG7vfpr1+SbM07DuLK
	7SWg==
X-Received: by 10.68.194.66 with SMTP id hu2mr36038560pbc.19.1409544421622;
	Sun, 31 Aug 2014 21:07:01 -0700 (PDT)
Received: from Pahoa2.hsd1.ca.comcast.net (c-76-20-92-207.hsd1.ca.comcast.net.
	[76.20.92.207])
	by mx.google.com with ESMTPSA id aq1sm6556805pbc.96.2014.08.31.21.06.59
	for <poky@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 31 Aug 2014 21:07:00 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: poky@yoctoproject.org
Date: Sun, 31 Aug 2014 21:06:54 -0700
Message-Id: <1409544416-14993-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 1.9.1
Subject: [PATCH 0/2] update package tracking info
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
X-List-Received-Date: Mon, 01 Sep 2014 04:07:09 -0000

Add nettle and lz4 to package tracking system.

Armin Kuster (2):
  nettle: Add name to maintainers list
  upstream_tracking: add lz4 version and date info for package

 meta-yocto/conf/distro/include/maintainers.inc       | 1 +
 meta-yocto/conf/distro/include/upstream_tracking.inc | 3 +++
 2 files changed, 4 insertions(+)

-- 
1.9.1


