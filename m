Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8F8DBE00CB9; Mon, 24 Jun 2019 09:28:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.128.67 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
	[209.85.128.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F2FD9E00B1A
	for <poky@yoctoproject.org>; Mon, 24 Jun 2019 09:28:52 -0700 (PDT)
Received: by mail-wm1-f67.google.com with SMTP id g135so13396115wme.4
	for <poky@yoctoproject.org>; Mon, 24 Jun 2019 09:28:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:subject:date:message-id;
	bh=fFE4gep0MNa1XSYMVHYuJ6t8Dy8f1JcZuY+YBWtSiEw=;
	b=IyCvwNHknbr01xhubsH4ohcmYcl0hakEKR2Z2ETT+N5BiAsqw2MxZE55CA1SdqRQBO
	qXA6ICZcceKwYDAQjFYT1vumFcFRacpTDbNsYcHPRCut2n8/K34TiDL+cngPqmB313Vi
	3DcXRw0MmLdYLC2888mdriwL0ggb4+VAvPZK9k/cW+EPAEeOzcd21rcwXQKlGQ0SRSLE
	DTRmyo77lX9/zZuqMKRsePNHyEzNVuejLPpsW2Wxk1ht1yM/CJbVx4tDbP/uFMqpCOty
	2e2ANY3t3Az9auK4Tp4aWpmktkk9LWQBM6w+jhyvqRAuogmizQ4OnLrd08MSWbCN4jci
	fJcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=fFE4gep0MNa1XSYMVHYuJ6t8Dy8f1JcZuY+YBWtSiEw=;
	b=mpYRTDBS/nbZ+uuZL583BmvPwBYMV+VupI7eni3ERCuji4W8YY17HN48TYDM/AvIOs
	o1yOooabCxsw0tau3MCXK7O5QKZZMBcfIlIA7ycMeEZOWdP+EGWWcGgnwoA4Vb51sjwQ
	GcBqOpQGMbchj/0gs4W870PjuDa3qg89yW2a2B/qtONXqlZL47muf313pTEXlwEJb7wI
	TGMGK1N0Jwd7XasWTTy3sCgPDN87tekF9a4Q7y/7gZdXnPYeuEIle7QqDxFIzuY/qC8M
	DHp/ymn1gEYWwXbx8pLfUFs70N93vDizK9w8fWzRxdEDdbPbm2n5xAW9OdRPGSF+q12K
	SY7w==
X-Gm-Message-State: APjAAAU4wEgbedwT4Tkx6eQN6yvFilmwcd8F8X6UDqkZt/IqCV0uDJkx
	rY7MXnQnp4S0uVWRsiyM5JzPubtv9pI=
X-Google-Smtp-Source: APXvYqyj9P/vzSz+J5D2wfPrSPcx2cg3lQSUQFdMAlp4NaguDu4lvt/11R78NXP0/zs8MerlQNuwyQ==
X-Received: by 2002:a1c:96c7:: with SMTP id y190mr15275483wmd.87.1561393732058;
	Mon, 24 Jun 2019 09:28:52 -0700 (PDT)
Received: from flashheart.burtonini.com (35.106.2.81.in-addr.arpa.
	[81.2.106.35]) by smtp.gmail.com with ESMTPSA id
	m9sm13144241wrr.14.2019.06.24.09.28.51 for <poky@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 24 Jun 2019 09:28:51 -0700 (PDT)
From: Ross Burton <ross.burton@intel.com>
To: poky@yoctoproject.org
Date: Mon, 24 Jun 2019 17:28:46 +0100
Message-Id: <20190624162846.4234-1-ross.burton@intel.com>
X-Mailer: git-send-email 2.11.0
Subject: [PATCH] local.conf.sample.extended: remove redundant RUNTIMETARGET assignment
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
X-List-Received-Date: Mon, 24 Jun 2019 16:28:53 -0000

This has been fixed in the GCC recipe, so remove from
local.conf.sample.extended.

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 meta-poky/conf/local.conf.sample.extended | 1 -
 1 file changed, 1 deletion(-)

diff --git a/meta-poky/conf/local.conf.sample.extended b/meta-poky/conf/local.conf.sample.extended
index 26603debe62..77e8be26fab 100644
--- a/meta-poky/conf/local.conf.sample.extended
+++ b/meta-poky/conf/local.conf.sample.extended
@@ -321,7 +321,6 @@ DISTRO_FEATURES_remove = "x11"
 # show an example of how it can be done
 # You'll also need your fortran recipe to depend on libgfortran
 #FORTRAN_forcevariable = ",fortran"
-#RUNTIMETARGET_append_pn-gcc-runtime = " libquadmath"
 
 #
 # Kernel image features
-- 
2.11.0


