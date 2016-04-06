Return-Path: <michael.g.wood@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9A446E006C7; Wed,  6 Apr 2016 10:04:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.49 listed in list.dnswl.org]
Received: from mail-wm0-f49.google.com (mail-wm0-f49.google.com [74.125.82.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 47EE1E006C7
	for <poky@yoctoproject.org>; Wed,  6 Apr 2016 10:04:12 -0700 (PDT)
Received: by mail-wm0-f49.google.com with SMTP id v188so30086098wme.1
	for <poky@yoctoproject.org>; Wed, 06 Apr 2016 10:04:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id;
	bh=qZTqSiEnFGhUJOJZ5aM8b1FzSA7VQB/A/hjiqPMrySg=;
	b=oUwcuy8Y6mbWBMwlZX5Tl7s6UziCDe8n5w3jha/J1gXlOCZ4sliXil/Kual2LkbhhO
	HzRsAjbb7/WcTYEihkgRyGwSpF9rgCRd39ygw1a8SPWCZPX5Ih6/XExhTcM3O6JT15sf
	y2tr1ZOQWBKTbUsWIoYpfXRw5EvY4QvN390Z5oYiPcwoXIM6QjMhSHiEV2lM48wDX7oO
	G9kFARL7S5CpKUR7DqFibZasgCnJ9ieEsGJ74W3I1VkMWGRi3Jtf6I924jB0ZNvHbdsT
	U5FSFDdiwAU4iSu9umlpO1uzTRMZ68D9TnV50trtkhSQ3twQbwcbvxWRTfz+Y5mNVzaf
	YQjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=qZTqSiEnFGhUJOJZ5aM8b1FzSA7VQB/A/hjiqPMrySg=;
	b=iEIAk59T/86Ks8adBjb6XabRi0maBJ/yelebteK9kTuU170Feuhyk1Ku5oePXTAiai
	bHYyEaTTGb+akiZCZVu3oJqyBlf7BwFZQjM3rO/+pbZP0YiqtlEf8X3Weif0zTcJFaFZ
	Ku+L8PwgxA4UHA8JgwktacAr3xV+4LGPuNsGGUNNV178/EX2OVKD0WFv15MQMmUzNlSY
	mzCTakvfIJk2t7ogY5GHyLiYCQa7ZrDt2zug2uf7V0GS3tsGasofW5ngh1yPUx2T03Rh
	lbvHI3dnSX6x2iU91IY/EEL7iQraCdNWB/daLd9N+ABwXGYQFITGDCy9xpOLBW4sa8ch
	ErQw==
X-Gm-Message-State: AD7BkJLxs85C0GbUAFvm88boX5IScWWd5hJ00vvVJ/T0sjiTTdZxFGVdC7veo63k61NyE/eF
X-Received: by 10.28.211.1 with SMTP id k1mr26224507wmg.93.1459962251556;
	Wed, 06 Apr 2016 10:04:11 -0700 (PDT)
Received: from draco.icx.intel.com ([83.217.123.106])
	by smtp.gmail.com with ESMTPSA id
	c190sm4630304wmd.10.2016.04.06.10.04.10
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 06 Apr 2016 10:04:10 -0700 (PDT)
From: Michael Wood <michael.g.wood@intel.com>
To: poky@yoctoproject.org
Date: Wed,  6 Apr 2016 18:04:07 +0100
Message-Id: <1459962248-30718-1-git-send-email-michael.g.wood@intel.com>
X-Mailer: git-send-email 2.1.4
Cc: Michael Wood <michael.g.wood@intel.com>
Subject: [PATCH] Add DL_DIR and SSTATE_DIR to toasterconf
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
X-List-Received-Date: Wed, 06 Apr 2016 17:04:19 -0000

Add the DL_DIR and SSTATE_DIR to the toasterconf with defaults set

We now support per project sharing of the DL_DIR and SSTATE_DIR
in toaster.

Sujith H (1):
  toaster: add DL_DIR and SSTATE_DIR to poky toasterconf

 meta-poky/conf/toasterconf.json | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

-- 
2.1.4


