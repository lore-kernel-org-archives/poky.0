Return-Path: <keller.eric@gmail.com>
Received: from mail-ee0-f52.google.com (mail-ee0-f52.google.com [74.125.83.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A5B23E01846
	for <poky@yoctoproject.org>; Fri,  8 Nov 2013 07:07:34 -0800 (PST)
Received: by mail-ee0-f52.google.com with SMTP id e49so1095210eek.11
	for <poky@yoctoproject.org>; Fri, 08 Nov 2013 07:07:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=xQdgNatjDmLmwSC6Kj09Xmwl6ZznZcoWMMXyjyi1b6M=;
	b=o6IZNlY5udiaMCJePxL4hdtaXJh8OJQhTV+jGk8JMeTHMdgOj5/SbPV8SoeNWQjXLC
	YAVqWX1W47uJAKFrEn4Zl09mtiypURFBkEwAPtGFGC2uO593q1w5yV+4PHbBhAEjJ0h8
	eHqMZp2xr8YHnAhqgrP1GxQk973moqjdBiTbbLvVfvetbqnq43dUDbqC4SdIq05phWkL
	uewwAofi4N0M1k1P22Xiu1eJv022QzHB5By/e3sXs0Pe2O5KG/N9DpbRP5IQsWq9u3z1
	aLWub7fJ2mtx6j7QSlK9ScfM7kSnXbmSYuFcTRgb6TQyHclVXg19BpZ/O8sdtyjVDxlo
	vhqg==
X-Received: by 10.15.94.201 with SMTP id bb49mr17331228eeb.23.1383923253841;
	Fri, 08 Nov 2013 07:07:33 -0800 (PST)
Received: from localhost.localdomain (77-57-96-182.dclient.hispeed.ch.
	[77.57.96.182])
	by mx.google.com with ESMTPSA id 8sm23799362eem.15.2013.11.08.07.07.32
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 08 Nov 2013 07:07:33 -0800 (PST)
From: Eric Keller <keller.eric@gmail.com>
To: poky@yoctoproject.org
Date: Fri,  8 Nov 2013 16:07:22 +0100
Message-Id: <1383923243-6328-1-git-send-email-eric.keller.ek1@roche.com>
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
X-List-Received-Date: Fri, 08 Nov 2013 15:07:36 -0000

create linux-yocto-rt_3.10.bbappend in order to support genericx86(-64) rt kernel

Eric Keller (1):
  add linux-yocto-rt_3.10.bbappend recipe for genericx86 and
    genericx86-64

 .../recipes-kernel/linux/linux-yocto-rt_3.10.bbappend    |   14 ++++++++++++++
 1 file changed, 14 insertions(+)
 create mode 100644 meta-yocto-bsp/recipes-kernel/linux/linux-yocto-rt_3.10.bbappend

-- 
1.7.10.4


