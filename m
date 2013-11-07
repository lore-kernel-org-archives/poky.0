Return-Path: <keller.eric@gmail.com>
Received: from mail-ee0-f51.google.com (mail-ee0-f51.google.com [74.125.83.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7EBABE01827
	for <poky@yoctoproject.org>; Thu,  7 Nov 2013 14:04:21 -0800 (PST)
Received: by mail-ee0-f51.google.com with SMTP id t10so603588eei.24
	for <poky@yoctoproject.org>; Thu, 07 Nov 2013 14:04:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=V1BvXCGv7uZ8zi8JV+dsk/FVAfwN2DkOfvVRp3Jezv0=;
	b=M7IF7q8UKFYs0+5D6l+89uIgH9AgPET0JRP0he+hOGLEzvq3EwzeQ8Ke4Vf+p4bFrC
	stSNkNbWM3LnZUrxm8r8OfdYDhNvHnSc3g83qkKr18RAExd1cCxE4iV3A0eSO7v2r1xE
	EUZtCpiJWepSc2DuKon/KUpBA+nxiT/5f8bcYuY+hoHFHy/SBovt9J+/6Wjt4Ep7t2Vx
	eLRCx6Mw8TZVqwDyLzrGvxB1VtC/EJBiTnJKKJa3jiJGiEjK2ieMYHAzIlbZfY6hbaok
	bchXgNqVf1s2FCePvr/ahRki9WhOqM1KBtg1U7rGlikCuNnOmhmxqgWK8Bc5scjsyGw2
	7Mlg==
X-Received: by 10.15.73.130 with SMTP id h2mr11901110eey.56.1383861859775;
	Thu, 07 Nov 2013 14:04:19 -0800 (PST)
Received: from localhost.localdomain (77-57-96-182.dclient.hispeed.ch.
	[77.57.96.182])
	by mx.google.com with ESMTPSA id 8sm14422272eem.15.2013.11.07.14.04.18
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 07 Nov 2013 14:04:18 -0800 (PST)
From: Eric Keller <keller.eric@gmail.com>
To: poky@yoctoproject.org
Date: Thu,  7 Nov 2013 23:04:03 +0100
Message-Id: <1383861844-26405-1-git-send-email-eric.keller.ek1@roche.com>
X-Mailer: git-send-email 1.7.10.4
Cc: Eric Keller <eric.keller.ek1@roche.com>
Subject: [PATCH] meta-yocto-bsp/recipes-kernel/linux/: add genericx86(-64) support for linux-yocto-rt_3.10
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
X-List-Received-Date: Thu, 07 Nov 2013 22:04:24 -0000

create linux-yocto-rt_3.10.bbappend in order to support genericx86(-64) rt kernel

Eric Keller (1):
  add linux-yocto-rt_3.10.bbappend recipe for genericx86 and
    genericx86-64

 .../linux/linux-yocto-rt_3.10.bbappend             |   23 ++++++++++++++++++++
 1 file changed, 23 insertions(+)
 create mode 100644 meta-yocto-bsp/recipes-kernel/linux/linux-yocto-rt_3.10.bbappend

-- 
1.7.10.4


