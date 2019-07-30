Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E6947E00D77; Tue, 30 Jul 2019 07:00:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (alex.kanavin[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.221.65 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
	[209.85.221.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 81AA5E00D4E
	for <poky@yoctoproject.org>; Tue, 30 Jul 2019 07:00:07 -0700 (PDT)
Received: by mail-wr1-f65.google.com with SMTP id g17so65912149wrr.5
	for <poky@yoctoproject.org>; Tue, 30 Jul 2019 07:00:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=6sZFi1wxlC/XEEt06jKx+6PmnhWKr2Euz4HIs1FvLMU=;
	b=CXmou4Q8vUOqpTzDV5TcjKULqlvsCMyEocDdPNxMoaCfJCv3ratee95wPB/CN176Fg
	D+uHczhQ3IZNxpIFbuAZVtVadDa8GXVjIULWyLG+gz8U2JPOm8yDgZL7W8/QGcKWdI0h
	mCyMfe/jiE5S9pY7XtvqYzorZNmaGYoevSnErvuhim7ABvwp8KDxQkyyRY+oql9bek/d
	p48B5+VfIU42qXg6B+qDNsf4keyFiVK5T8eZxm+g9/k3RitFH+um5P88cmpaefRiRgFn
	TmF4qERkpKZ1hdlsRw66EWEdtE0U9HEpxniy6lDXcWGF7r7ZsIqGfxo/TuAKv8/ixzRm
	3KHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=6sZFi1wxlC/XEEt06jKx+6PmnhWKr2Euz4HIs1FvLMU=;
	b=ciJAcJHbc6PwOoEJQexU8VWqLdem+KYNW04UF/Wmb4h/sIDIGugANyQHMkmQ3Oo2K0
	BZQ5vjuEKF73wJlwZO/uS5lr/0HnSF0NNa4IcN16Du66YzefO1XccuhAkiYVEdBxJpkc
	5G5ltLV/34HUIwGz43ExGqq8rE9JqOfBQBMr3dIQf0HsxEXvnkuvxGV//PQRl6OTjIrs
	gXYMJ4JxZQsrZKrQQOkgUOTDNlQoYrpMEBRAw6OsYgyexsvKtNzJRgoNgJ9Ky0232Kct
	Vo2FiYqhwGMmvXFDzTHfr2Pq2iLn5Qk66nnpGTYW+Uh3cnH6g7R73iIa/dRfMa3/Hd2o
	Xv6Q==
X-Gm-Message-State: APjAAAXU/+kAD3shyNdrrd+XW573rWFZleesfWq1nciVdi+RjthV5yg8
	l6gzeeWv49inAGSZkXloWGchEWcbW10=
X-Google-Smtp-Source: APXvYqzlu8aKHwZTSO6ueNXh1iR1nPWREXmXNL4x3p4OmbvBsPIEUp4fIIgth2vsk/35nN6DHjlRBA==
X-Received: by 2002:a5d:6408:: with SMTP id z8mr111297053wru.246.1564495206415;
	Tue, 30 Jul 2019 07:00:06 -0700 (PDT)
Received: from akanavin-lnx.luxoft.com ([141.113.65.72])
	by smtp.gmail.com with ESMTPSA id
	v204sm68642879wma.20.2019.07.30.07.00.05
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Tue, 30 Jul 2019 07:00:05 -0700 (PDT)
From: Alexander Kanavin <alex.kanavin@gmail.com>
To: poky@yoctoproject.org
Date: Tue, 30 Jul 2019 15:59:58 +0200
Message-Id: <20190730135958.19215-1-alex.kanavin@gmail.com>
X-Mailer: git-send-email 2.17.1
Subject: [PATCH] local.conf.sample: do not add sdl to nativesdk qemu config
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
X-List-Received-Date: Tue, 30 Jul 2019 14:00:09 -0000

This is unnecessary as the recipe itself already does it:
http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/recipes-devtools/qemu/qemu_4.0.0.bb?id=1a4e4fb6b0a9d54641bd4193e95311d1f822a9ca#n21

Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
---
 meta-poky/conf/local.conf.sample | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/meta-poky/conf/local.conf.sample b/meta-poky/conf/local.conf.sample
index 59b4d9561d5..b36530dd8c4 100644
--- a/meta-poky/conf/local.conf.sample
+++ b/meta-poky/conf/local.conf.sample
@@ -237,12 +237,11 @@ BB_DISKMON_DIRS ??= "\
 #
 # Qemu configuration
 #
-# By default qemu will build with a builtin VNC server where graphical output can be
-# seen. The two lines below enable the SDL backend too. By default libsdl2-native will
+# By default native qemu will build with a builtin VNC server where graphical output can be
+# seen. The line below enable the SDL backend too. By default libsdl2-native will
 # be built, if you want to use your host's libSDL instead of the minimal libsdl built
 # by libsdl2-native then uncomment the ASSUME_PROVIDED line below.
 PACKAGECONFIG_append_pn-qemu-system-native = " sdl"
-PACKAGECONFIG_append_pn-nativesdk-qemu = " sdl"
 #ASSUME_PROVIDED += "libsdl2-native"
 
 # CONF_VERSION is increased each time build/conf/ changes incompatibly and is used to
-- 
2.17.1


