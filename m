Return-Path: <ross.burton@intel.com>
Received: from mail-wg0-f54.google.com (mail-wg0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4D5C6E01363
	for <poky@yoctoproject.org>; Thu, 25 Jul 2013 09:42:00 -0700 (PDT)
Received: by mail-wg0-f54.google.com with SMTP id n12so1847715wgh.21
	for <poky@yoctoproject.org>; Thu, 25 Jul 2013 09:41:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=from:to:subject:date:message-id:x-mailer:x-gm-message-state;
	bh=HJyR9lS0DlpAJxJ60y6UaRK1eRIxMMCADMsw73u1OOw=;
	b=TQ/QHtDvGXDbLsfWY9unwi6yBSG84WFkrB4GTeUiwr2+BMwKqAjmQyedUEIMFHX6pg
	+3rgDnY7ihJpDKFv2xAjjVcmDWnxZP8EOreupDv5nMhPFn7D9L8o9cbofRgueTyldKiW
	SCiY+uEc4xJ8kf1LEH8Q+jHu5nLh3UWFt0o/qX5lwZMUrwLfB19K4LSZ3MCtvRdsLZZg
	5ciQsS0yWZZ6HyrJMIzFWRg6HwlWmpKGrwnX2M8pc8lXSZpjrQhqugoQ0drG3+XAV14Z
	DCFgSuJmRTDMlGBCMCSV3LyIEZAhZ49sPsnehnQ4+Mlk2ZjQgnPsRl3X9t3HS1HEIwAh
	sYaA==
X-Received: by 10.180.183.180 with SMTP id en20mr2670422wic.58.1374770519228; 
	Thu, 25 Jul 2013 09:41:59 -0700 (PDT)
Received: from melchett.burtonini.com (35.106.2.81.in-addr.arpa. [81.2.106.35])
	by mx.google.com with ESMTPSA id l2sm4909463wif.8.2013.07.25.09.41.57
	for <poky@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 25 Jul 2013 09:41:58 -0700 (PDT)
From: Ross Burton <ross.burton@intel.com>
To: poky@yoctoproject.org
Date: Thu, 25 Jul 2013 17:37:59 +0100
Message-Id: <1374770285-22235-1-git-send-email-ross.burton@intel.com>
X-Mailer: git-send-email 1.7.10.4
X-Gm-Message-State: ALoCoQnFCzghFfh8DfshOPKV2qnou7hwkisJJ3ZO62xoZhFbirPEG2wwcBMJ3GU9f0llo1gasa3T
Subject: [RFC] New x86 Super BSP
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
X-List-Received-Date: Thu, 25 Jul 2013 16:42:01 -0000

Hi,

This is a RFC and not for merging just yet.  The goal is a BSP in meta-yocto-bsp
to replace atom-pc that supports "most" comtempory x86 hardware.  It starts off
as atom-pc but adds more X drivers, more firmware, and more framebuffer kernel
drivers.  Next up, more network drivers, more open X drivers and [handwaves]
stuff.  The precise set of hardware that this is expected to mostly work on
isn't settled on yet so feedback and boot testing is welcome.

Ross


