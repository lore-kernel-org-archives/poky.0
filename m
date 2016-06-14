Return-Path: <mcampbell@izotope.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 445CCE00C9D; Tue, 14 Jun 2016 14:34:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f41.google.com (mail-qg0-f41.google.com
	[209.85.192.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F5AAE00C81
	for <poky@yoctoproject.org>; Tue, 14 Jun 2016 14:34:25 -0700 (PDT)
Received: by mail-qg0-f41.google.com with SMTP id k6so1981141qgk.1
	for <poky@yoctoproject.org>; Tue, 14 Jun 2016 14:34:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=izotope-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=fABhr2/3HyVw32WKSPZp5el31nE5Mpuu32G0EbDES60=;
	b=Kr6DGe/8KkEUkEsgMIfGta+7QcYDeI09wdwzk5e65ea1d3//Vdt/a7W5/iQve3L5cZ
	clyssgTK0GKgRv8fuuBXoNFDV9Jko+ePFYCnJI67iagwu5ucgJ2hG7aQgOV+H/jqJ1EN
	OxMUAq8R3TkJZcC6+xmgulLUD1Zi93lZuCU6pvVZoCIpu9SxHtpO8m+UZNCAIWNYutvV
	B4WVzuomdiDZ+qLT68nPmg+BgUu2f/1/FsS8u+jB+2xmRiLT2v4cdf8oZo9vPk4J8v1I
	qgvZaFVhlWfk6arVqVvpBildgF2zbL8x5bkYjmvszW4l6z0L6fZWIFAxUx9P/SOVNIk3
	WXpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=fABhr2/3HyVw32WKSPZp5el31nE5Mpuu32G0EbDES60=;
	b=QwsIWzVxrGCz2DhqElO4gi2WQGLk0HJ8dStlpHef+yRjLA/3V1ZbZCm/P2tS1Ax1G4
	tcIvZT9pneThZk3KJtxoXDQa3qW0DEKuUebwYjQs5T3EvhSrF4Y2VliNTTDmByCTGqgV
	iw/fk0otn9ZQIP1RjHZ/qyjqfB0Mrwzf3PnxokN3HVTZv2odCm8rzUcA7ErQWBPV8+W5
	zmZvUYsF5FkdQJErn5DxjktyxwarI4kYHaIuQjdW1JMfs5itFRlgOkhJgJEgktrgj/6o
	K0LUKWagh+8sT2sQAwp50WG9NT9pwF7NWc4GtQnfDw9mPyZLILkikxIjI84tDjsFaNoB
	K3tA==
X-Gm-Message-State: ALyK8tIV3UcTflaQMFcR+faGiROM8eitQQrzFDgFAtvRYZernQFzO6kjJ+BJSm0GvUQ5bOPk
X-Received: by 10.140.27.212 with SMTP id 78mr21403000qgx.106.1465940064923;
	Tue, 14 Jun 2016 14:34:24 -0700 (PDT)
Received: from ubuntu.localdomain ([38.97.94.98])
	by smtp.gmail.com with ESMTPSA id
	g51sm8806407qtg.26.2016.06.14.14.34.24
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 14 Jun 2016 14:34:24 -0700 (PDT)
From: Matthew Campbell <mcampbell@izotope.com>
To: poky@yoctoproject.org
Date: Tue, 14 Jun 2016 17:34:18 -0400
Message-Id: <6c36bb4911b40f30001428e23fc7b5d7183e8039.1465939233.git.mcampbell@izotope.com>
X-Mailer: git-send-email 2.5.0
In-Reply-To: <cover.1465939233.git.mcampbell@izotope.com>
References: <cover.1465939233.git.mcampbell@izotope.com>
Subject: [PATCH 1/1] openssh: fix init script restart with read-only-rootfs
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
X-List-Received-Date: Tue, 14 Jun 2016 21:34:28 -0000

restart in the init script uses the check_config() function which doesn't have
the $SSHD_OPTS passed through. This causes it to check the wrong config (and
fail when read-only-rootfs is enabled.

Signed-off-by: Matthew Campbell <mcampbell@izotope.com>
---
 meta/recipes-connectivity/openssh/openssh/init | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta/recipes-connectivity/openssh/openssh/init b/meta/recipes-connectivity/openssh/openssh/init
index 70d4a34..1f63725 100644
--- a/meta/recipes-connectivity/openssh/openssh/init
+++ b/meta/recipes-connectivity/openssh/openssh/init
@@ -41,7 +41,7 @@ check_privsep_dir() {
 }
 
 check_config() {
-	/usr/sbin/sshd -t || exit 1
+	/usr/sbin/sshd -t $SSHD_OPTS || exit 1
 }
 
 check_keys() {
-- 
2.5.0


