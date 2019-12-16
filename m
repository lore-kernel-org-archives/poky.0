Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com [209.85.210.195])
 by mx.groups.io with SMTP id smtpd.web10.3443.1576477281813171126
 for <poky@lists.yoctoproject.org>;
 Sun, 15 Dec 2019 22:21:21 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=oRJIgP1M;
 spf=pass (domain: gmail.com, ip: 209.85.210.195, mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f195.google.com with SMTP id d199so4999811pfd.11
        for <poky@lists.yoctoproject.org>; Sun, 15 Dec 2019 22:21:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id;
        bh=eO10m01L/tkpf/gw9Dadd8YXmFkiA2LNww5KnHLYk+Q=;
        b=oRJIgP1Mh3hNxSvmm8gllAdKupUcOZQ3kvIq579cQ0bpTTAJWWA+GTjIxpwtIhXqME
         /Egi4YXq+rJih4y2vOiV7HeWnlYCs1VBQUuolTjuwdfO5dje2MtUTx/PINHLgivpAy0M
         5vhEcadBVZunUf/bcsbX3QBNsDwKnqoD3w31ynpi6CHKWwqMQJdvXfOfnNL/h3lusczl
         zrYWZNXuaZOjA+8/+Ir3Tm9Av6NFixdsHa7mY7LMGjPdXFtX2MJBiJ53BRbs9CfVD/18
         vICwOUrqGBqHtBlFdRTfNJXVKA6lpL+YJzQfpdcMjP3AHcCDgrrGYiKhBWVmunZD+oFk
         stpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=eO10m01L/tkpf/gw9Dadd8YXmFkiA2LNww5KnHLYk+Q=;
        b=VDIc03gVZjjH4qCD4fGG0FEfBQf9HGlW1hRXNenYVghD5tvc7oGI/imhJ0zf6jist7
         LpKeHe1v4WvzgFj4OV4AyqQbtbvj9rgVw+vikxDtU9CZy/ywOrQG/q+G3ebjnFoHguGz
         ubuOoi0g9WvjWwX38qMLUPeQnOtwBx2gSDwM6EDYxdRvjEPrCTlhXHHwjnGNe8r7j8Nt
         Oz+RrmQYiTg5G44GSVIiy2MuBkntztzicIS5ibPYmP9wWbUZzFBRuV1Q5ZqJuTYgYfhx
         KH2eMkHvINIiQ11LcvBa5JVVKNE3x7ByymRGzjhTCchKzBr8ohfpyUkX0ai6uzAWXVW/
         gsWg==
X-Gm-Message-State: APjAAAX5sUsWHdJhO+cjhLNI1QyY3nsNkIIGfMErhFHvVi3I/KCmDcyr
	Ums72qBEVwBQ/cTWl3p0A3HCAjiHfbU=
X-Google-Smtp-Source: APXvYqxZWilo5bV1hXAxZW1NXs7bieFx9caAKyimnUBrxr/S4idprD3nn69HT3UEfTQ0fWL9uce/7g==
X-Received: by 2002:a63:d906:: with SMTP id r6mr16314483pgg.440.1576477281083;
        Sun, 15 Dec 2019 22:21:21 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:e5c5:31c9:a010:f145])
        by smtp.gmail.com with ESMTPSA id v4sm10742942pgo.63.2019.12.15.22.21.20
        for <poky@lists.yoctoproject.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 15 Dec 2019 22:21:20 -0800 (PST)
From: "Armpit" <akuster808@gmail.com>
To: poky@lists.yoctoproject.org
Subject: [thud][PATCH] linux-yocto/4.14: update Yocto Bsps to 4.14.154
Date: Sun, 15 Dec 2019 22:21:19 -0800
Message-Id: <1576477279-3349-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../recipes-kernel/linux/linux-yocto_4.14.bbappend   | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.14.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.14.bbappend
index 6449538..bbe6eae 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.14.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.14.bbappend
@@ -8,11 +8,11 @@ KMACHINE_genericx86 ?= "common-pc"
 KMACHINE_genericx86-64 ?= "common-pc-64"
 KMACHINE_beaglebone-yocto ?= "beaglebone"
 
-SRCREV_machine_genericx86    ?= "b53319c5302a195ae3c156dfa2dc1a6badc91d30"
-SRCREV_machine_genericx86-64 ?= "b53319c5302a195ae3c156dfa2dc1a6badc91d30"
-SRCREV_machine_edgerouter ?= "326e296f237347e965a38acb34f09e594430b0c6"
-SRCREV_machine_beaglebone-yocto ?= "1b8c86329c9dbb10b8fcaeb2dceb75680994cd84"
-SRCREV_machine_mpc8315e-rdb ?= "f26672ec1f164b0f2a15d629128a91093f971bdd"
+SRCREV_machine_genericx86 ?= "57278e88a6b0f7c6230f7429cab7e74229f2b7ce"
+SRCREV_machine_genericx86-64 ?= "57278e88a6b0f7c6230f7429cab7e74229f2b7ce"
+SRCREV_machine_edgerouter ?= "16d624ede7ca9f71331b626685435ffee022dd32"
+SRCREV_machine_beaglebone-yocto ?= "2e7b9777f352f70e2e9a82d8c403d3ea88d0bde3"
+SRCREV_machine_mpc8315e-rdb ?= "9ff346785bdf42767b4002c41f5692f0a98b7480"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
@@ -20,8 +20,8 @@ COMPATIBLE_MACHINE_edgerouter = "edgerouter"
 COMPATIBLE_MACHINE_beaglebone-yocto = "beaglebone-yocto"
 COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
-LINUX_VERSION_genericx86 = "4.14.143"
-LINUX_VERSION_genericx86-64 = "4.14.143"
-LINUX_VERSION_edgerouter = "4.14.143"
-LINUX_VERSION_beaglebone-yocto = "4.14.143"
-LINUX_VERSION_mpc8315e-rdb = "4.14.143"
+LINUX_VERSION_genericx86 = "4.14.154"
+LINUX_VERSION_genericx86-64 = "4.14.154"
+LINUX_VERSION_edgerouter = "4.14.154"
+LINUX_VERSION_beaglebone-yocto = "4.14.154"
+LINUX_VERSION_mpc8315e-rdb = "4.14.154"
-- 
2.7.4

