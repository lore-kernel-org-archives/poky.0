Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.3808.1793405954301126595
 for <poky@lists.yoctoproject.org>;
 Fri, 30 Oct 2026 17:19:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile.fr header.s=google2 header.b=dP3yQxI/;
 spf=pass (domain: smile.fr, ip: 209.85.221.44, mailfrom: yoann.congal@smile.fr)
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-48df0fa43c5so744353f8f.0
        for <poky@lists.yoctoproject.org>; Fri, 30 Oct 2026 17:19:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google2; t=1793405952; x=1794010752; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=3aWhgq5f7uYXnwEfpo8BCH3580gveReJCGjKTwQlEYQ=;
        b=dP3yQxI/UnD5w+PlVU66T3pNFErOLu51T+hN1VljNqaOkgBLS5LcGVs3A/gOj0Jxrh
         Xv+Bw7JOJzd6qUgohjXvEtxRYsBgGV0tcDgmDImeQK1NDbzvyJrHmN5LmrwGpcCSvrWo
         6XxWNvYmL2fhHqyIPcdNLvYQuXm86psahAYzlpPdl6uCihhK7twMFOOpFTCdbWqm2ybw
         jKs85MVIum97+2aSqF3f0U8Cq76tFHVCoTP0caancPssKXep7h9KtMoyrGHRmYokm2HW
         INCVVbszK8In4cKTOh3+UPfwcOoBIZS5cB35upcDK/VPRjEDjNWdGVZNoRT0aWz1b/EH
         vSMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793405952; x=1794010752;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=3aWhgq5f7uYXnwEfpo8BCH3580gveReJCGjKTwQlEYQ=;
        b=K7L1QTE3PWZiUf1bTXmqz2jb3fVbbKZm4GBQyCTuFmDbWObTUvSntiXL3//stWNLs6
         +/vUcvOU1trYg7SY/QuoPcosm7DXpIudUV9KWswdpUW+01s1JcwQ3x9tYyRg/k1a+d8I
         d/zKBohMyMGlWNtnGruAnQU+kmfeoerTv032U5QFEfE8Z5n9Q9/nPS9L2CZ0cG0V24N+
         GWkh6hTBdDSCiWAHJXv+f+o4CQ2cT/SppV+mXm0+4+sdC4O6mOsDcyZF3npKjVLp9ECp
         llz5GpWZn9LeQUciAoE6F8eiyE0oATZfN2xzpRMqFXIDkPrTlS6qADXBFn7bMVEVsukL
         GyhA==
X-Gm-Message-State: AFq9FYIV1ZixmEr1G0NflpSuZENhsnur0vfV+4r1JHXQ2x9AGRFV5Hho
	pFJTjyUVfrLmbP2sZN8+pCo03KC79xs4Cf+gtH6R2JWOo/V2ul8AxbGbfD4MTAojJqUwYPjK91E
	GXmuc1bk=
X-Gm-Gg: AYBFou3IvL7nGVZaaD8cur9YggbnqVR6J5/GqU3lpzWmbDfYl95qBmZE293+2n1/4UP
	e/7mM9b0yTfmNv4MBZIjKoWJgfgUOBzXTT95vAnrhbS4O6LXDrivBKVjdgW46sSgi4BxY3OdVMG
	Olvp7Khwm44Im57peoM5vcCUmKUczj9sj/1Rmyh6vtlX5w2PjSAdW5K8VKYtsWVGqHFcBrQfuSB
	i22PwbBnRxkRRmYMHfvZkMwb0kMM5iQnjEzbARbI+f0AJ6cprZbE1CLXjCXjwvvMCuW3r9cnJM+
	IE4qZeaqzje8mkeylLjkP+sNGcH3Q5p8xG5lCBufQfaku2w+CaNES68uDBPdL+qOSB3/cPJJP3I
	igf8Ht/SW2NYYQl5X1a5cHH0kF0DDWzBDMBF5BhBndaYVBI6udcBWb7DPlzfEmSCGk5kfalkUEQ
	tQ+bJI+zzM/RKoRqb2Cn3JNQiruH6p251xK07dpSRQGZJBpt0Am72CcvIYXSTO2iWqOjQOHo+sK
	syiAavIJuhkqlmkHxhFANVhFqNLR2ZUCnDopC94LoVVopBCxV4QEdtnZ21Z8NBwoGx1J2FWjngO
	TjduJ00rRVk/rRxARz02Oewe4ZT8VMENX5T+fd7aAgKSuw4v/hNUrovSFzzdOcPzEg6pYqtyukh
	GnOfEeKcpzLQOSsWgZwgV3s4WmuYj
X-Received: by 2002:a05:6000:178f:b0:48e:60a7:e0bd with SMTP id ffacd0b85a97d-48e6e2db3c0mr9405959f8f.17.1793405952524;
        Fri, 30 Oct 2026 17:19:12 -0700 (PDT)
Return-Path: <yoann.congal@smile.fr>
Received: from FRSMI25-LASER.home (2a01cb001331aa00a2e4fb7b0d887544.ipv6.abo.wanadoo.fr. [2a01:cb00:1331:aa00:a2e4:fb7b:d88:7544])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48e71ba4ac6sm6140824f8f.52.2026.10.30.17.19.12
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Oct 2026 17:19:12 -0700 (PDT)
From: Yoann Congal <yoann.congal@smile.fr>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][scarthgap 2/3] yocto-bsps: update to v6.6.159
Date: Sat, 31 Oct 2026 01:19:08 +0100
Message-ID: <9ee0b60eb9beec89a5339f08ba49961970ffeb59.1793405889.git.yoann.congal@smile.fr>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <cover.1793405889.git.yoann.congal@smile.fr>
References: <cover.1793405889.git.yoann.congal@smile.fr>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by lin-tor-korg-lkml-alma10-1 with HTTPS for <poky@lists.yoctoproject.org>; Sat, 31 Oct 2026 00:19:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13983
Content-Type: text/plain; charset="utf-8"

From: Bruce Ashfield <bruce.ashfield@gmail.com>

Updating linux-yocto/6.6 to the latest korg -stable release that comprises
the following commits:

    cecd39af8a1ab Linux 6.6.159
    742f73df544e0 ipv4: free inet_opt and ireq_opt after an RCU grace period
    a65f69e0f38ff ipv4: validate checksum_start before completing checksum
    33aa3b7f4afbd netfilter: nfnetlink_queue: unbreak SCTP traffic

Signed-off-by: Bruce Ashfield <bruce.ashfield@gmail.com>
Signed-off-by: Yoann Congal <yoann.congal@smile.fr>
[YC: The upgrade is 6.6.21 -> 6.6.159 (!): ~23k commits]
---
 .../recipes-kernel/linux/linux-yocto_6.6.bbappend    | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.6.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.6.bbappend
index 3f33ec99..7196df5e 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.6.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.6.bbappend
@@ -12,10 +12,10 @@ KMACHINE:genericx86 ?= "common-pc"
 KMACHINE:genericx86-64 ?= "common-pc-64"
 KMACHINE:beaglebone-yocto ?= "beaglebone"
 
-SRCREV_machine:genericx86 ?= "06644f0d7193d7ec39d7fe41939a21953e7a0c65"
-SRCREV_machine:genericx86-64 ?= "06644f0d7193d7ec39d7fe41939a21953e7a0c65"
-SRCREV_machine:beaglebone-yocto ?= "06644f0d7193d7ec39d7fe41939a21953e7a0c65"
+SRCREV_machine:genericx86 ?= "f175bcee52358aef9b53e1ddc5300e65735226ac"
+SRCREV_machine:genericx86-64 ?= "f175bcee52358aef9b53e1ddc5300e65735226ac"
+SRCREV_machine:beaglebone-yocto ?= "297689603c5961261abe13480351a125365ab025"
 
-LINUX_VERSION:genericx86 = "6.6.21"
-LINUX_VERSION:genericx86-64 = "6.6.21"
-LINUX_VERSION:beaglebone-yocto = "6.6.21"
+LINUX_VERSION:genericx86 = "6.6.159"
+LINUX_VERSION:genericx86-64 = "6.6.159"
+LINUX_VERSION:beaglebone-yocto = "6.6.159"
