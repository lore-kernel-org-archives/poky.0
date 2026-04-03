Return-Path: <paul@pbarker.dev>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9C4FE7E358
	for <webhook@archiver.kernel.org>; Fri,  3 Apr 2026 09:12:12 +0000 (UTC)
Received: from fout-b4-smtp.messagingengine.com (fout-b4-smtp.messagingengine.com [202.12.124.147])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.8098.1775207530416942885
 for <poky@lists.yoctoproject.org>;
 Fri, 03 Apr 2026 02:12:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@pbarker.dev header.s=fm3 header.b=ttGnAdzb;
 dkim=pass header.i=@messagingengine.com header.s=fm2 header.b=fBKxEqHd;
 spf=pass (domain: pbarker.dev, ip: 202.12.124.147, mailfrom: paul@pbarker.dev)
Received: from phl-compute-06.internal (phl-compute-06.internal [10.202.2.46])
	by mailfout.stl.internal (Postfix) with ESMTP id CF2341D00067;
	Fri,  3 Apr 2026 05:12:09 -0400 (EDT)
Received: from phl-frontend-04 ([10.202.2.163])
  by phl-compute-06.internal (MEProxy); Fri, 03 Apr 2026 05:12:09 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pbarker.dev; h=
	cc:cc:content-transfer-encoding:content-type:content-type:date
	:date:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm3; t=1775207529;
	 x=1775293929; bh=01oMxT5E1zACDlBVV30Wf76uXqMYpJmE7+TdD9374Zk=; b=
	ttGnAdzbq82y5zV3+TD7Xhxb7mpHwWUFYfSI0uwrVv7QdU4CB21yXuc0n5L6rP05
	nPwAY214zUZJVD4Qs2MTvdczqxxympcYTZbZHl8oXZRfgLBpRtJWCJ9bFJ9gSwJH
	TCbvpONlQxZ9DUKlN3inGRllmXjl8K/OfeDA/oLZwPlFouOjFL7PM15lTXi8wG+7
	L4vuo4PGtY/52PqYE8p6dKtkqcFi3L6/CDlucFDArbuuHN5qW355fovyj/mfXOEN
	zWQJlgRP10xjPFkUFArgdF2J8qT136oFH6NGrGB5niVMM6n44BawoHK6vxYo1+f3
	H53K2d3gOn4+WWFYzdJebQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=1775207529; x=
	1775293929; bh=01oMxT5E1zACDlBVV30Wf76uXqMYpJmE7+TdD9374Zk=; b=f
	BKxEqHd6BOCaqQRZFgY7l0G1SFWzrAAVGduoRFpUV38Ag17sQyTAC4QZcpx/D3UA
	THRJe8oGTkB0uWfs3bR8LHfXs/A4wQ8d3Gpy/lEmo80kbyr7u04CqbPnnOd1F3z+
	Z0xfCRJBCKEWKzehTqJGJAsybIwoP1IfPhsgNvH9rUplhEGYiIzGS1WagOeECL9K
	cbzNBrz6o2GUzsw5iKGYK078J9zeKsvjtgN4l6nf1UI1hfGPcDtNkcUxLNM25iSd
	twwE8urVmVI3IoWLuYlVdENlPBbZbfrtuZF07N3CP4gJd1yAPCJMPe5PJEOrVGHi
	l+f8V8bKcAczOkBprXVkQ==
X-ME-Sender: <xms:aYTPaT7qgK8g3pncnrDozAGwdTertEN8OU2MC0p5HRrDFM4z6KRHFA>
    <xme:aYTPae4PExrcpB7f8io1JUd7h-Hl6wdd9MDnqJlTU2JGYliVJFGnSKAqJZ7hS6qbJ
    weonAdw885JuW3xg1gx3PmshSV0MOzbSwlneulnWTQliHfZh8AMeg>
X-ME-Received: <xmr:aYTPaYGSHoKJt9KwJ-h_ep_RpinCwCS-xE7dXwG2E1rrgxvGYvpfOLmdanWNu5LyRqqf4f37bePin3_d9JGNAtA0USRKYxI>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefhedrtddtgdekheehucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceurghi
    lhhouhhtmecufedttdenucenucfjughrpefhfffugggtgffkfhgjvfevofesthejredtre
    dtjeenucfhrhhomheprfgruhhluceurghrkhgvrhcuoehprghulhesphgsrghrkhgvrhdr
    uggvvheqnecuggftrfgrthhtvghrnheptdffvdffjeevhfelieegudfgieefleefueefff
    elvdehfeeviedtieeukefhleeknecuvehluhhsthgvrhfuihiivgepudenucfrrghrrghm
    pehmrghilhhfrhhomhepphgruhhlsehpsggrrhhkvghrrdguvghvpdhnsggprhgtphhtth
    hopedvpdhmohguvgepshhmthhpohhuthdprhgtphhtthhopehprghulhesphgsrghrkhgv
    rhdruggvvhdprhgtphhtthhopehpohhkhieslhhishhtshdrhihotghtohhprhhojhgvtg
    htrdhorhhg
X-ME-Proxy: <xmx:aYTPafSPavNwl6gKsY5J3JLEKzeMr82jigr4cjWFlh65OiiYuW6Jnw>
    <xmx:aYTPaZsAa5hxSkF4DYgKX8Axna2_YixdgEZtDCHKNZVoV3Vz5AwLTg>
    <xmx:aYTPaWxvlp4QhkhJk0JiNIgBZgTNlbBWY2o_skU9RylLCZi_gkb3KQ>
    <xmx:aYTPab4rTekCEtR6NrgbQoMafi1acrRVJ50UuvNeMoI42oJI6RuVVg>
    <xmx:aYTPaWeyjCi0CjQ5DhabxBwkK2Tk8Jr4r-hHUtYGszXWsg_evhyTP7N5>
Feedback-ID: i51494658:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 3 Apr 2026 05:12:09 -0400 (EDT)
From: Paul Barker <paul@pbarker.dev>
Date: Fri, 03 Apr 2026 10:12:05 +0100
Subject: [PATCH 4/4] poky-tiny: Simplify distro features
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260403-default-features-2-v1-4-6e12ee3fbe44@pbarker.dev>
References: <20260403-default-features-2-v1-0-6e12ee3fbe44@pbarker.dev>
In-Reply-To: <20260403-default-features-2-v1-0-6e12ee3fbe44@pbarker.dev>
To: poky@lists.yoctoproject.org
Cc: Paul Barker <paul@pbarker.dev>
X-Mailer: b4 0.15.1
X-Developer-Signature: v=1; a=openpgp-sha256; l=1685; i=paul@pbarker.dev;
 h=from:subject:message-id; bh=AZE/0K2IvI2rK3pJT8ve/QZskZmoTsLBgeMQo/5YPDc=;
 b=owGbwMvMwCW2OjnkzdxdX/IYT6slMWSeb0nNKqh6lHHr68c3182mWqQtcL/+xU/1TJajVO0Wr
 fepm34Ed5SyMIhxMciKKbJs7vl6/2mvI29GyC0FmDmsTCBDGLg4BWAixzIZ/teU7N1m9mJ/1h6e
 dwYGM1fqyMq+TW5///Gsr3vORyUz8zBGhmtB665LSURe49n3aspSjzLuKawXyz937LG743D1yik
 OLkYA
X-Developer-Key: i=paul@pbarker.dev; a=openpgp;
 fpr=98B2AAC100AC3F82BB5D546774975C81B7E66BAC
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 03 Apr 2026 09:12:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13878

We can just set DISTRO_FEATURES directly for poky-tiny, it's easy for
users to append to this as needed.

This change also removes "\${DISTRO_FEATURES_USBGADGET}" and
"\${DISTRO_FEATURES_WIFI}" from the distro features, which were present
accidentally as those variables were unset.

Signed-off-by: Paul Barker <paul@pbarker.dev>
---
 meta-poky/conf/distro/poky-tiny.conf | 17 +++--------------
 1 file changed, 3 insertions(+), 14 deletions(-)

diff --git a/meta-poky/conf/distro/poky-tiny.conf b/meta-poky/conf/distro/poky-tiny.conf
index be28940dd90e..0d8b570ede46 100644
--- a/meta-poky/conf/distro/poky-tiny.conf
+++ b/meta-poky/conf/distro/poky-tiny.conf
@@ -60,21 +60,10 @@ USE_NLS = "no"
 # As we don't have native language support, don't install locales into images
 IMAGE_LINGUAS = ""
 
-# Comment out any of the lines below to disable them in the build
-# DISTRO_FEATURES options:
-# alsa bluetooth ext2 pcmcia usbgadget usbhost wifi nfs zeroconf pci
-DISTRO_FEATURES_TINY = "pci ldconfig ptest multiarch"
-DISTRO_FEATURES_NET = "ipv4 ipv6"
-DISTRO_FEATURES_USB = "usbhost"
-#DISTRO_FEATURES_USBGADGET = "usbgadget"
-#DISTRO_FEATURES_WIFI = "wifi"
-
 DISTRO_FEATURES_OPTED_OUT = "*"
-DISTRO_FEATURES = "${DISTRO_FEATURES_TINY} \
-                   ${DISTRO_FEATURES_NET} \
-                   ${DISTRO_FEATURES_USB} \
-                   ${DISTRO_FEATURES_USBGADGET} \
-                   ${DISTRO_FEATURES_WIFI} \
+DISTRO_FEATURES = "pci ldconfig ptest multiarch \
+                   ipv4 ipv6 \
+                   usbhost \
                   "
 
 DISTRO_FEATURES:class-native = "${POKY_DEFAULT_DISTRO_FEATURES}"

-- 
2.43.0


