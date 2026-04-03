Return-Path: <paul@pbarker.dev>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7818DE7E355
	for <webhook@archiver.kernel.org>; Fri,  3 Apr 2026 09:12:12 +0000 (UTC)
Received: from fout-b4-smtp.messagingengine.com (fout-b4-smtp.messagingengine.com [202.12.124.147])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.7976.1775207528580794869
 for <poky@lists.yoctoproject.org>;
 Fri, 03 Apr 2026 02:12:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@pbarker.dev header.s=fm3 header.b=D7UOLzR5;
 dkim=pass header.i=@messagingengine.com header.s=fm2 header.b=gRk74rm2;
 spf=pass (domain: pbarker.dev, ip: 202.12.124.147, mailfrom: paul@pbarker.dev)
Received: from phl-compute-06.internal (phl-compute-06.internal [10.202.2.46])
	by mailfout.stl.internal (Postfix) with ESMTP id 1F70A1D00067;
	Fri,  3 Apr 2026 05:12:08 -0400 (EDT)
Received: from phl-frontend-04 ([10.202.2.163])
  by phl-compute-06.internal (MEProxy); Fri, 03 Apr 2026 05:12:08 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pbarker.dev; h=
	cc:cc:content-transfer-encoding:content-type:content-type:date
	:date:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm3; t=1775207527;
	 x=1775293927; bh=e/PwFBd5Q+9zKePAa4bOC+NXf+05XGDJkdIC1p/dmtU=; b=
	D7UOLzR5LHmHwOHJUVkaTwSXib7TUaOV6g2BCT4F1ydSlj/IQnOL5ev6t285K06Z
	qnaVvVeajrLES/w4up7aGIyUhfAheo8MU29c3obn9T2+d29BFEGx6QwSDhinImnk
	Zef13tJNp6XmJSnBfRQpjQerTm248HZvIv73jrw33/6SXGVg9U9mj+leuNma9F5V
	j91qocVuzCYafWoVdeVydROveaD+ZBMMr84VOOOt0Ywvz6rqm4kQ7QFZ4Ve7KZtJ
	WdVAFDyuGGFdaC0rC4AOqVAV5M1JbuiHEN9hWxtVI2nglUdVSCMxdyliz8GVGXlm
	DxU/OPZuqiux6k7NHdTZRA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=1775207527; x=
	1775293927; bh=e/PwFBd5Q+9zKePAa4bOC+NXf+05XGDJkdIC1p/dmtU=; b=g
	Rk74rm2M85yboTh51xXq68f21pIPMi7dVUCpF2GP4Aeo8a71w3s7ynqw805uadmE
	rGQ0zwVRPYSuXIbk3DSslq2fENzasQ5GLtv++R1L/jahWMezW/swHWQK1xgaWe2Q
	h16c7EiXIwcGGhXxKfeCLn6mC+n2iU+YpVg0VmXpovARrEgbVQMqYKYis34d0clk
	6ZQKwmDKDupIvwi2KrlqeoahG9xvCx/Ado4EhMU9EFpFg3f4SsnUTWAa3JEtUnww
	4b/fXP/WDwjMSjhoiW5xME8EdyHHtq7UxIgmGt7goc63GXkON+Rd4py5PhP3BXhu
	7mCvIpAyOilR4Cn7eCmow==
X-ME-Sender: <xms:Z4TPaWUg5R1KVHUfKUCA4a2VmXFGqMN7cX3Eu9SdxSj1pD21ynfhCQ>
    <xme:Z4TPaYkoWeE1lQU-ym_jRQFgy807BRmyATctzdOXSqsaFMFOqe6Jqavtl8DUSbId4
    _XUnZYvLhE8QJYYCQADooRonRy6dN0E7XphhGQm3tnOAqoYQahzLc0>
X-ME-Received: <xmr:Z4TPaYBO9m2SzKR692ErpMHQCTc2QcHB904ONLcTcxbWoiqj0IY062veZeKaRTFSyaXcJahwoj-DYy4LoMxtifjkjF875v4>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefhedrtddtgdekheehucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceurghi
    lhhouhhtmecufedttdenucenucfjughrpefhfffugggtgffkfhgjvfevofesthejredtre
    dtjeenucfhrhhomheprfgruhhluceurghrkhgvrhcuoehprghulhesphgsrghrkhgvrhdr
    uggvvheqnecuggftrfgrthhtvghrnheptdffvdffjeevhfelieegudfgieefleefueefff
    elvdehfeeviedtieeukefhleeknecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghm
    pehmrghilhhfrhhomhepphgruhhlsehpsggrrhhkvghrrdguvghvpdhnsggprhgtphhtth
    hopedvpdhmohguvgepshhmthhpohhuthdprhgtphhtthhopehprghulhesphgsrghrkhgv
    rhdruggvvhdprhgtphhtthhopehpohhkhieslhhishhtshdrhihotghtohhprhhojhgvtg
    htrdhorhhg
X-ME-Proxy: <xmx:Z4TPaYe1QKJZHgnDy8s_JLIZTnDzVeVIbDEaoIRfqKlKxL0QkN7ewQ>
    <xmx:Z4TPaTIS34ycrIXiwl0HLSb1CeHmFo3v0TkHaDufxJFlj-OEQSXoHQ>
    <xmx:Z4TPabeWAyW5tnHiKgaiUw2IWIAzpuvA_5_80ZkrT_5TcgLyRGzvow>
    <xmx:Z4TPaa1IOHrWTxp3tUqMbdiGXuVKXAK-9_v0nHApzv-IWhR1LTDpkA>
    <xmx:Z4TPab8jD9Zyd5BN8f6M07uRQIpuRVa_ulxX8XZC57Mfz4LwWsAAs862>
Feedback-ID: i51494658:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 3 Apr 2026 05:12:07 -0400 (EDT)
From: Paul Barker <paul@pbarker.dev>
Date: Fri, 03 Apr 2026 10:12:03 +0100
Subject: [PATCH 2/4] poky-tiny: Drop use of DISTRO_FEATURES_DEFAULT
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260403-default-features-2-v1-2-6e12ee3fbe44@pbarker.dev>
References: <20260403-default-features-2-v1-0-6e12ee3fbe44@pbarker.dev>
In-Reply-To: <20260403-default-features-2-v1-0-6e12ee3fbe44@pbarker.dev>
To: poky@lists.yoctoproject.org
Cc: Paul Barker <paul@pbarker.dev>
X-Mailer: b4 0.15.1
X-Developer-Signature: v=1; a=openpgp-sha256; l=1120; i=paul@pbarker.dev;
 h=from:subject:message-id; bh=0kLJ76XL7fxP7mIMeTCazReu/sdlmsoqi7Kl4Evaxxc=;
 b=owGbwMvMwCW2OjnkzdxdX/IYT6slMWSeb0m5vjW/0vJkt37AmSWbrkTn3ophkO2+fvjOOVVFp
 f72WSbdHaUsDGJcDLJiiiybe77ef9rryJsRcksBZg4rE8gQBi5OAZgIhxrDX/k12pKx2tr/pM4y
 PA7gk/nMc9xg/n12011u12QWVfVJuDP8U1yg+z7P/EOKy7U5c7+tUTzdd/f07LU2Va41h3+J/W3
 bwAYA
X-Developer-Key: i=paul@pbarker.dev; a=openpgp;
 fpr=98B2AAC100AC3F82BB5D546774975C81B7E66BAC
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 03 Apr 2026 09:12:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13876

DISTRO_FEATURES_DEFAULT is now obsolete, default features will be
appended to DISTRO_FEATURES automatically and you can now use
DISTRO_FEATURES_OPTED_OUT to opt out of any features.

Signed-off-by: Paul Barker <paul@pbarker.dev>
---
 meta-poky/conf/distro/poky-tiny.conf | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-poky/conf/distro/poky-tiny.conf b/meta-poky/conf/distro/poky-tiny.conf
index 43c9baeba7b3..3be3b786510e 100644
--- a/meta-poky/conf/distro/poky-tiny.conf
+++ b/meta-poky/conf/distro/poky-tiny.conf
@@ -76,8 +76,8 @@ DISTRO_FEATURES = "${DISTRO_FEATURES_TINY} \
                    ${DISTRO_FEATURES_WIFI} \
                   "
 
-DISTRO_FEATURES:class-native = "${DISTRO_FEATURES_DEFAULT} ${POKY_DEFAULT_DISTRO_FEATURES}"
-DISTRO_FEATURES:class-nativesdk = "${DISTRO_FEATURES_DEFAULT} ${POKY_DEFAULT_DISTRO_FEATURES}"
+DISTRO_FEATURES:class-native = "${POKY_DEFAULT_DISTRO_FEATURES}"
+DISTRO_FEATURES:class-nativesdk = "${POKY_DEFAULT_DISTRO_FEATURES}"
 
 # enable mdev/busybox for init
 POKY_INIT_MANAGER:poky-tiny = "mdev-busybox"

-- 
2.43.0


