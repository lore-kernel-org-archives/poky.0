Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EA00EF01819
	for <webhook@archiver.kernel.org>; Fri,  6 Mar 2026 09:33:41 +0000 (UTC)
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.65820.1772789620155079186
 for <poky@lists.yoctoproject.org>;
 Fri, 06 Mar 2026 01:33:40 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=G1+1kzs4;
 spf=pass (domain: linaro.org, ip: 209.85.208.176, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-386b553c70eso136791371fa.0
        for <poky@lists.yoctoproject.org>; Fri, 06 Mar 2026 01:33:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772789618; x=1773394418; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=h4gkFvazLaNymDp3vBbYBUpTPelEwNif7K7fsnWTCV4=;
        b=G1+1kzs4Ausw/ISoavUMLP1JLDLdGCf16K+KlTp6gdRTzYTtJyoCzr+iDKawh3Q7VN
         8WKdAnKrp/lk9M0VBCu+GlrQLssfSblzMrI7pK56+ztRaMCopiQw5oE1xjRFB4w4VhSd
         MoyWirKGSxTzpit9xDvkPILpSxkBmIxJV/IcGp3aMwJHVYZdiRVdWiMgZ9OApyi6BuZ0
         YT4xIjE4bJ8iFU6L6OD0kRuHDzfn+5WzMNSSP5SuVQS9fvhQ1GBATopBJq/czfibfsry
         9t3Wmjx3BEM/mpXr06U3JDIYZdnJMjwH6F+LU7B3opYboSn1+TDcTAMoEPAgrCBAPbB3
         1nrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772789618; x=1773394418;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=h4gkFvazLaNymDp3vBbYBUpTPelEwNif7K7fsnWTCV4=;
        b=RHblnImjOH5NS69l8MgcCOrIY4t0bqNVlxYv0t6VrCKYyaCm9biaU0d9V5mZN03JrH
         KuMfSXr5bQHOft0AGbPlIdxr6ez99+WeDTRZ/yWUS4q3AZeG1+O+dsj4+Nb0qGhBLUrx
         toTUDUu5YiBxUN9stBUK9+aZdWGl8oYdsGlurfsdrYWnVEz5+WndzL5RX27W93O2Ac40
         XEr2jw6tonxOOib4mgSMyqVDvCv6McL4cVIQZLeXYJLy+UF74W+k/BueXT6iX9ZicQXC
         mJP0jbom9+W8g71gn1gH9qd2Ap0p5uCSLmuxNqhl9t+88AUcIog2+NGMf2baRBrx8FE1
         1XBQ==
X-Gm-Message-State: AOJu0YzJqXY2vftqEboHCzv0Svmp5ZH+XypvAmQWGfsM0ExHcCxSnCRg
	NfBwgZG7S4dvJ3sAtm/Zh0Xb8QrWwtzazHfAtArpgF2n42s+uts8cp1b3VliGLZiQNBH9wEzBIZ
	lKgjOYCk=
X-Gm-Gg: ATEYQzyPLx/SF6bQ7bNdR41XiCK9/9oo+sTuyAgWyhcOJNKlWXfMa7dmds1MqMDKB29
	0YnlEY1X3MrUkR8vyjgKuFo40WACaN++EQPgeI/yLI8/1hit7twKEUNcdYz0NWhLyP9vWi9fLZI
	OuFpiURMEGcUWd4TIO5txksWL2epEzs+eG18noa4jE3d57JHDg2DcM/UJ7KU3uZ/a5q2VeZ7q2v
	3wd5+XRQ7oplqm+w5LJVswsOSDs8K4FDa9Q958l1Wc1C6n2RDQY2w0s4zy0vacFg+yEG2OhYcxX
	1yc2UTmVy/OjiNsGYUMC000X1HpSDfJGigur9myxQBZvRrUMbuUSIBd3JmM7kLjfGbR+ne7NdY9
	4Vnp75NikY7Uuwd++hDJufF7XPr4Pd0+RlzNW3EWvQw97PltTbPK0UWtW9P3qaNw59p5Faz3CHB
	k8wbRHGYnjONK0dcpBUgvogiCcFRypGBe6Bbu/qZP+A3Yb0GYz82NfSgmf
X-Received: by 2002:a05:651c:f13:b0:38a:2719:60ca with SMTP id 38308e7fff4ca-38a40b55522mr5018381fa.14.1772789618161;
        Fri, 06 Mar 2026 01:33:38 -0800 (PST)
Received: from nuoska (87-100-249-247.bb.dnainternet.fi. [87.100.249.247])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-38a4205a993sm1110821fa.41.2026.03.06.01.33.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Mar 2026 01:33:37 -0800 (PST)
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: poky@lists.yoctoproject.org
Cc: Mikko Rapeli <mikko.rapeli@linaro.org>
Subject: [PATCH v2 2/2] oeqa runtime parselogs: ignore KV260 USB error on genericarm64
Date: Fri,  6 Mar 2026 11:33:16 +0200
Message-ID: <20260306093316.7018-3-mikko.rapeli@linaro.org>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260306093316.7018-1-mikko.rapeli@linaro.org>
References: <20260306093316.7018-1-mikko.rapeli@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 06 Mar 2026 09:33:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13850

On AMD KV260 the USB 1-1 driver sometimes throws this new warning at boot but
continues and USB stack works so ignore the error:

usb 1-1: device descriptor read/64, error -71
hub 1-1:1.0: USB hub found
hub 1-1:1.0: 5 ports detected
usb 2-1: new SuperSpeed USB device number 2 using xhci-hcd
hub 2-1:1.0: USB hub found
hub 2-1:1.0: 4 ports detected

https://lists.yoctoproject.org/g/automated-testing/message/1525

Signed-off-by: Mikko Rapeli <mikko.rapeli@linaro.org>
---
 .../lib/oeqa/runtime/cases/parselogs-ignores-genericarm64.txt   | 2 ++
 1 file changed, 2 insertions(+)

v2: no changes

v1: https://lists.yoctoproject.org/g/poky/message/13836

diff --git a/meta-yocto-bsp/lib/oeqa/runtime/cases/parselogs-ignores-genericarm64.txt b/meta-yocto-bsp/lib/oeqa/runtime/cases/parselogs-ignores-genericarm64.txt
index 2bff23b1bcb6..623af74b0857 100644
--- a/meta-yocto-bsp/lib/oeqa/runtime/cases/parselogs-ignores-genericarm64.txt
+++ b/meta-yocto-bsp/lib/oeqa/runtime/cases/parselogs-ignores-genericarm64.txt
@@ -10,6 +10,8 @@ Error applying setting, reverse things back
 Can't lookup blockdev
 # X11 fails to start without connected display
 modeset(0): failed to set mode: Invalid argument
+# minor USB setup issue
+device descriptor read/64, error
 
 # Rockpi4b with u-boot 2025.10rc2 based firmware
 memory-controller: probe with driver rk3399-dmc-freq failed with error
-- 
2.34.1


