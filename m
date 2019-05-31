Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B65AFE00B43; Fri, 31 May 2019 10:01:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.221.68 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
	[209.85.221.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 34E43E00A84
	for <poky@lists.yoctoproject.org>; Fri, 31 May 2019 10:01:38 -0700 (PDT)
Received: by mail-wr1-f68.google.com with SMTP id h1so6980989wro.4
	for <poky@lists.yoctoproject.org>; Fri, 31 May 2019 10:01:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=from:to:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=TZdskCX631NYqkT3I8DJhdbQCTZLuNueTDDVFWgfoG0=;
	b=RyIeya35Z+j7Eln55KuHhNjeM0/Ljya2iA59sOzC9wWCOMJn/xw1MEU13tB3ZOc1Lp
	a+g5UlXENfR5J7saficLL1lh+2MFcDZ8Mww8F1AiWfXMc3qJPYkS1kqqQ52enGVrplmh
	m8099c8pe9ckZ1JuUS1tXnH8bOByLM5pCdpbw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=TZdskCX631NYqkT3I8DJhdbQCTZLuNueTDDVFWgfoG0=;
	b=csjze0bNq9xTA/ALbRy+tX8Ibj5rgm2PVxhu+0rTSgNlztcDgI0HMUaVsSYDUGxjUk
	UnRPoyf85nptFF8VSOitkcYag+5Ch3bpYMtoEC0YvdCcqVUlHhJaJShaR1Wkl38s3E/e
	PcoEbAEY0RIT3ssTLI7sdbA1AQuZ9BImlhgGKPPnkOCXP2BRuzJTIMh5+rEveKl6GGVS
	vVtYjIASRycsPDimEORZRANgiNaaDemaK3m+H4PnZht+UsiAqCVHvo2DUYTIDncIMFAu
	l0S0z7KZOz5qedm9Xz3me9aEJzAB0Up/bOMzVYGLGtB928XpYx251E/LMq4zeEgzvc7/
	s8nA==
X-Gm-Message-State: APjAAAURlsQSqBEJh1EavAE41kSBaaQqWQ/8yBvEVpYN/5VC2ZQVFgKA
	tnnc0YG9xwsKG0gMpveCfHw0KivX86A=
X-Google-Smtp-Source: APXvYqxqnB8hkOhXtfnXGnixZvQy2YBy/pWHYShPh7neMwl9eo3Zh3bo90lHjlotsW1AKdkwx2EobQ==
X-Received: by 2002:adf:e691:: with SMTP id r17mr7543536wrm.67.1559322097923; 
	Fri, 31 May 2019 10:01:37 -0700 (PDT)
Received: from hex.int.rpsys.net (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id
	a3sm3804729wmb.35.2019.05.31.10.01.36
	for <poky@lists.yoctoproject.org>
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Fri, 31 May 2019 10:01:37 -0700 (PDT)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: poky@lists.yoctoproject.org
Date: Fri, 31 May 2019 18:01:36 +0100
Message-Id: <20190531170136.797-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [PATCH] beaglebone-yocto: Add missing wic image u-boot deploy dependency
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
X-List-Received-Date: Fri, 31 May 2019 17:01:39 -0000
Content-Transfer-Encoding: 8bit

The wic image built for beaglebone-yocto needs the u-boot deployed artefacts but
there is no direct dependency. Usually this happens to work but if the u-boot
build fails, the image built with -k exposes this race.

Add the missing dependnecy.

[YOCTO #13280]

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 meta-yocto-bsp/conf/machine/beaglebone-yocto.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
index bc18ee8c47e..35814cd8f1a 100644
--- a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
+++ b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
@@ -18,7 +18,7 @@ IMAGE_FSTYPES += "tar.bz2 jffs2 wic wic.bmap"
 EXTRA_IMAGECMD_jffs2 = "-lnp "
 WKS_FILE ?= "beaglebone-yocto.wks"
 IMAGE_INSTALL_append = " kernel-devicetree kernel-image-zimage"
-do_image_wic[depends] += "mtools-native:do_populate_sysroot dosfstools-native:do_populate_sysroot"
+do_image_wic[depends] += "mtools-native:do_populate_sysroot dosfstools-native:do_populate_sysroot u-boot:do_deploy"
 
 SERIAL_CONSOLES ?= "115200;ttyS0 115200;ttyO0"
 SERIAL_CONSOLES_CHECK = "${SERIAL_CONSOLES}"
-- 
2.20.1


