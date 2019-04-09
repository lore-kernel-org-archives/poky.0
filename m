Return-Path: <bruce.ashfield@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 74771E00C14; Tue,  9 Apr 2019 08:39:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (bruce.ashfield[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.66 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f66.google.com (mail-io1-f66.google.com
	[209.85.166.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5F68FE0097C;
	Tue,  9 Apr 2019 08:39:27 -0700 (PDT)
Received: by mail-io1-f66.google.com with SMTP id b6so14722122iog.0;
	Tue, 09 Apr 2019 08:39:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=eallYdgc06ivhCph2DWSWxdMQsZ9+i5WLB6bNTv+52M=;
	b=IRtV5A8SWiVY2ptGslnp6UUGT9YM+cTe3wpUTt8uRoxo9wVqIX1byMjCqGCE/DrDtN
	3Zbjq6QuoTd9GJsBOkcndhKSr9zlwJpRwhuHRdexr37vCI0nmSWQ14rjIAtBrNMzi9N6
	0TE4EjCD1jy/nUGFzmqxy+FuVwTmOLWvv6EwmTvIMtV+zydQ6ReYhPIrN3ZQGhovWl7q
	kN/D+penPSoQFYGwafMlgKhSswA7igMh+L+ywlY/ZtodB8qt8r0OPdNW2niyg+PCz/Rn
	EQwBwpejDCOSz7zOYGbebtQDJoMQ+dst3xy0CPzmcLAAK60gzD9vhdl18tHa5iPoHG4f
	AqRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=eallYdgc06ivhCph2DWSWxdMQsZ9+i5WLB6bNTv+52M=;
	b=HSDe7LbMVV8hFs1yCog3hlsw82ATRfCzK56QOzxD3ml900eIu8DTqDvvABXJeOiRVp
	jZTKuavcxKC3Hk+s+6ZunpC0Y/ZIqIxBTurCrRkLrhD1y5erlIwjYmCkkliArGGBxnF/
	8GRPC6VqwqmpwJjsYK5Ycj8AXSVFtgq2S4jT8T2GHyze0TV6WkRwc1pxN5XXijdEC/aX
	3J+3nmKj4CeQ99maFYTsV5w952NE1PoQj8JEU8QQEOdvXNCLiSvYSKxRMt0gmvWwnxtv
	bFcrd45xkQ9lJ6+4mnbAN+Y0J08v7tTSmew5U+4FUj+k51jL52ojnL4Xd2VVzAhJoKFX
	SUHQ==
X-Gm-Message-State: APjAAAVPbzQ4ZrYvuN+iqo3aNeLfC3KMvXqqBqFFlUErZIKLSKIqxtyf
	uEcR891V+0opXnGp1oMhxs0=
X-Google-Smtp-Source: APXvYqwg7IFEsESHrEh0/1oTpZxTYPUpiwc2oDBFBFn8qVSufEV9Clqlx7rJ4cvInaRVA8qMku4DeQ==
X-Received: by 2002:a6b:5810:: with SMTP id m16mr3258353iob.274.1554824366719; 
	Tue, 09 Apr 2019 08:39:26 -0700 (PDT)
Received: from localhost.localdomain
	(CPEe8de27b71faa-CM64777d5e8820.cpe.net.cable.rogers.com.
	[174.112.251.208]) by smtp.gmail.com with ESMTPSA id
	c25sm12278272ioa.75.2019.04.09.08.39.25
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 09 Apr 2019 08:39:26 -0700 (PDT)
From: bruce.ashfield@gmail.com
To: richard.purdie@linuxfoundation.org
Date: Tue,  9 Apr 2019 11:39:24 -0400
Message-Id: <20190409153924.26811-1-bruce.ashfield@gmail.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Cc: yocto@yoctoproject.org, poky@yoctoproject.org
Subject: [PATCH] poky-tiny: set 5.0 as the preferred kernel
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
X-List-Received-Date: Tue, 09 Apr 2019 15:39:28 -0000
Content-Transfer-Encoding: 8bit

From: Bruce Ashfield <bruce.ashfield@gmail.com>

Updating poky-tiny to prefer 5.0 as the kernel version. Boot
tested against qemux86 and qemuarm. This removes the last user
of the 4.18 kernel, so we can queue it for removal from master.

Signed-off-by: Bruce Ashfield <bruce.ashfield@gmail.com>
---
 meta-poky/conf/distro/poky-tiny.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-poky/conf/distro/poky-tiny.conf b/meta-poky/conf/distro/poky-tiny.conf
index 690cb0d5c9..243d492918 100644
--- a/meta-poky/conf/distro/poky-tiny.conf
+++ b/meta-poky/conf/distro/poky-tiny.conf
@@ -38,7 +38,7 @@ TCLIBC = "musl"
 # Distro config is evaluated after the machine config, so we have to explicitly
 # set the kernel provider to override a machine config.
 PREFERRED_PROVIDER_virtual/kernel = "linux-yocto-tiny"
-PREFERRED_VERSION_linux-yocto-tiny ?= "4.18%"
+PREFERRED_VERSION_linux-yocto-tiny ?= "5.0%"
 
 # We can use packagegroup-core-boot, but in the future we may need a new packagegroup-core-tiny
 #POKY_DEFAULT_EXTRA_RDEPENDS += "packagegroup-core-boot"
-- 
2.19.1


