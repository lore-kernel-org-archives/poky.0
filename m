Return-Path: <dpfrey@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A184EE00C9F; Thu, 27 Dec 2018 07:43:05 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (dpfrey[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.179 listed in list.dnswl.org]
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com
	[209.85.214.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 810FDE00C6D
	for <poky@yoctoproject.org>; Thu, 27 Dec 2018 07:43:04 -0800 (PST)
Received: by mail-pl1-f179.google.com with SMTP id e11so8894447plt.11
	for <poky@yoctoproject.org>; Thu, 27 Dec 2018 07:43:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=352VlvEOlHh3LrqvhhakgnEfaj9ntyE7UQLCcCRfKpc=;
	b=AODc/+3EY96cVAVkFLRMEL/UdSAMV/OyfDXC2BizX6qjmpLDO7eUk1t5svcSWdzws/
	T2aEldm4cc7eLHOdIWYodVeYS45eGi/ziOe8oJ9PMSWgFmXwJ3pxcDdK5ctIcz2ZYgHz
	GzVjm/zUcPUWkds5PBiRXHQInpfwZG1Pt6CCEb1j6u6qO4d6lgHVJ+vB2F3Nin3k0qrb
	bEyW8O9RtavkctZtTIjp2fimgkti7gCLA2uRifaRBwiz8N0CFmQNkhtt3DjNy3qwDWep
	DcohY8kMDioZg/dZ4gao8TEd9sdqisSRNWYpBxyciMDbdMUdgP/k2NhsKRWytX5DShFZ
	cpbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=352VlvEOlHh3LrqvhhakgnEfaj9ntyE7UQLCcCRfKpc=;
	b=IWl3nJa9J8BMSgn1MzaoHiiRp/U+LwEf7djBCJ3f4C/+fCGC1Kti9PsZz+iEJlWA3y
	JtVOYd8WJWzxfwrL0EbIabH74WY5JshsjQ919Ifh21msobGZya3Wy/ZSxv3RcFOnYEhu
	DXuezgKxruM69XompqXbsdN/BcbgIK3MpPDrCGqv23LONn21flTb95nsZrhqpuIj4NPZ
	ojWaxOHS61PHLCi6z1CXVa5P+OnsDr8iE8PVA+GYMDtpsrYJPQST7cQL8GfPN/1TRqJA
	JFJZfRo9ZibuUJ5VG5i1HjwQsLqmz+y4srZy8HEgPoLt546eORvUr3AFy5b+IS8mtCqa
	eoyQ==
X-Gm-Message-State: AJcUukfzvT4EPJXXJXPjg3iglmcdG4c2bChUHJEtr3J2qYdW4eqTQ/j/
	IOrd8FAqD2bnlNU4e1jpFazcHmwJ
X-Google-Smtp-Source: ALg8bN55Q5+FLS8KgS1YMI0iROJ0OgOfT1RnRdSFHbLGK/iGEfcbSalZP9lR9KDd2VXYh2Gl+XEwSg==
X-Received: by 2002:a17:902:82c2:: with SMTP id
	u2mr24121825plz.110.1545925383560; 
	Thu, 27 Dec 2018 07:43:03 -0800 (PST)
Received: from dfrey-debian-linux.sierrawireless.local
	(carmd-fwm01.sierrawireless.com. [208.81.120.1])
	by smtp.gmail.com with ESMTPSA id
	c72sm61429260pfb.107.2018.12.27.07.43.02
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 27 Dec 2018 07:43:02 -0800 (PST)
From: David Frey <dpfrey@gmail.com>
To: poky@yoctoproject.org
Date: Thu, 27 Dec 2018 07:47:59 -0800
Message-Id: <20181227154759.32610-1-dpfrey@gmail.com>
X-Mailer: git-send-email 2.11.0
Subject: [PATCH] bluez5: Fix status subcommand of init script
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
X-List-Received-Date: Thu, 27 Dec 2018 15:43:05 -0000

Update the bluez5 init script to resolve an issue where the status
subcommand would exit without printing any message if bluez was not
running. The early exit was caused by the fact that the init script has
"set -e". When "pidof ${DAEMON} >/dev/null" is executed, the script
terminates immediately if bluez isn't running because pidof returns a
non-zero result. The fixed version does not suffer from this issue and
makes use of the "status" function from the functions library.

Signed-off-by: David Frey <dpfrey@gmail.com>
---
 meta/recipes-connectivity/bluez5/bluez5/init | 12 ++++--------
 1 file changed, 4 insertions(+), 8 deletions(-)

diff --git a/meta/recipes-connectivity/bluez5/bluez5/init b/meta/recipes-connectivity/bluez5/bluez5/init
index d7972f2d95..ca9fa18549 100644
--- a/meta/recipes-connectivity/bluez5/bluez5/init
+++ b/meta/recipes-connectivity/bluez5/bluez5/init
@@ -1,5 +1,8 @@
 #!/bin/sh
 
+# Source function library
+. /etc/init.d/functions
+
 PATH=/sbin:/bin:/usr/sbin:/usr/bin
 DESC=bluetooth
 
@@ -44,14 +47,7 @@ case $1 in
 	$0 start
   ;;
   status)
-	 pidof ${DAEMON} >/dev/null
-	 status=$?
-        if [ $status -eq 0 ]; then
-                 echo "bluetooth is running."
-        else
-                echo "bluetooth is not running"
-        fi
-        exit $status
+	status ${DAEMON} || exit $?
    ;;
    *)
 	N=/etc/init.d/bluetooth
-- 
2.11.0


