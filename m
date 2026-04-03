Return-Path: <paul@pbarker.dev>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5534E7E359
	for <webhook@archiver.kernel.org>; Fri,  3 Apr 2026 09:12:12 +0000 (UTC)
Received: from fhigh-b3-smtp.messagingengine.com (fhigh-b3-smtp.messagingengine.com [202.12.124.154])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.8096.1775207527853756659
 for <poky@lists.yoctoproject.org>;
 Fri, 03 Apr 2026 02:12:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@pbarker.dev header.s=fm3 header.b=BYq1kZh0;
 dkim=pass header.i=@messagingengine.com header.s=fm2 header.b=BodghrX6;
 spf=pass (domain: pbarker.dev, ip: 202.12.124.154, mailfrom: paul@pbarker.dev)
Received: from phl-compute-05.internal (phl-compute-05.internal [10.202.2.45])
	by mailfhigh.stl.internal (Postfix) with ESMTP id 4CDCF7A016F;
	Fri,  3 Apr 2026 05:12:07 -0400 (EDT)
Received: from phl-frontend-04 ([10.202.2.163])
  by phl-compute-05.internal (MEProxy); Fri, 03 Apr 2026 05:12:07 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pbarker.dev; h=
	cc:cc:content-transfer-encoding:content-type:content-type:date
	:date:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm3; t=1775207527;
	 x=1775293927; bh=NrKoEApf70eLzRV8zpLL/7dO82sVniuQw0HZ6Z+g0kI=; b=
	BYq1kZh0dVPOAVumoGuwQey/R7T/wnEndmurBctutp1dZ5Ar7wwbEZx9SmXCYL51
	JocmGOyPiBx7LmqGX2F3so5n6ZsWJOfaZvum7mt0RYdU0StGr2vB6tHfYDxgqoY0
	jCVBQ3g/nsFVZND5haseVgHLbtfc5btPPZwclV5d8FdVcDBZbjFzmUxgpPNba5cH
	626A4NXESppqun5mv/GaTCUInN2yV//EUSQ8Q4Sc8zu0t9CgIQMzRCFepTRd/Z3p
	wpYvH4+8eCXceJ77asnC2tSOI3xpkNJNbFq+fRLIQ8tBdI/+VZdU5MYn8cS6JiYO
	QXlT+iDJ8+s2tq1SgxtEwg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=1775207527; x=
	1775293927; bh=NrKoEApf70eLzRV8zpLL/7dO82sVniuQw0HZ6Z+g0kI=; b=B
	odghrX62iJ7JNkNvIGwAv+Rfe0CWjRxkkydCh1X4VYwf7dO+Xafmoc+7444RDTCb
	PhzamdHil2e6gPjyfpPcTFytzC2u8dk4UujLperjAdE+mf0wOnO0k/6t7sitS1SB
	2TkCtWwsT9MzXUGZlQeQ2NIfX9PNSrlEZLqwLWd1wyEW03zbsD60njT/sXiahXhF
	rnLvvJ9wIbnoBDrLabf8TXb2cr9vRGYMRROC8Oc0Ii+Dya5ZhUrlwbg4W5s3XUiY
	qxMGo8i0W2+21S3EdeAIn5l0Jzwqn1VZFPp/Bk5cwAWAHSHtBKNQpFmPawrjSSqy
	rBDrUlfjSVwqIbJZzxc7Q==
X-ME-Sender: <xms:Z4TPaU4X1CnqU6J7GIJIkHxyH9l5Zl7Tpz7LE13h4KURh-CQlsENSg>
    <xme:Z4TPab6fuVTJXmkJmCZZTNEU9lf_0j_bLQB-5U9YY3T2_7iNIC-gVI3plBrVBLJIL
    WYdgra0mOr83oPlOxqHEn_o0fibkSxV7EbX4zZ9vRG9d-KPDKNnslo>
X-ME-Received: <xmr:Z4TPaRGu_hNH-0Z8ESsyG-Gaz8FbDG-qMu2vIwDjCCYJv1GWiQarX4CQJWWhINsV4sA8yf-KEpVJwpBpDSbBzus7PcpQPRI>
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
X-ME-Proxy: <xmx:Z4TPaUSsWbGzAMD7mEFIWB1sHgs5R2Ex7joUjr9y_9l92CnOSkvoWw>
    <xmx:Z4TPaavuacRODYkAPyl2B4Ji3GTYsrGl06mMDD14Gm_bDKS13NbjzQ>
    <xmx:Z4TPaTwsxLoP22MV9i3ow-ktTSBoiPE4wc_M4EFeLwnclc5ppyz2UA>
    <xmx:Z4TPaU5wKXC2Cu5CRlnXVyQA16cDcOBV6ainzLKAbDSMJly_kNgCLw>
    <xmx:Z4TPaXfoa0OXUvcbpDkX_IhVplRYfFE-mUlMFwQv_THYWrChJP0FSwHM>
Feedback-ID: i51494658:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 3 Apr 2026 05:12:06 -0400 (EDT)
From: Paul Barker <paul@pbarker.dev>
Date: Fri, 03 Apr 2026 10:12:02 +0100
Subject: [PATCH 1/4] poky: Drop use of DISTRO_FEATURES_DEFAULT
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260403-default-features-2-v1-1-6e12ee3fbe44@pbarker.dev>
References: <20260403-default-features-2-v1-0-6e12ee3fbe44@pbarker.dev>
In-Reply-To: <20260403-default-features-2-v1-0-6e12ee3fbe44@pbarker.dev>
To: poky@lists.yoctoproject.org
Cc: Paul Barker <paul@pbarker.dev>
X-Mailer: b4 0.15.1
X-Developer-Signature: v=1; a=openpgp-sha256; l=947; i=paul@pbarker.dev;
 h=from:subject:message-id; bh=BIbWfLMwk0eURwvVNqzQktvMqDksJA3NctBkJ916O7E=;
 b=owGbwMvMwCW2OjnkzdxdX/IYT6slMWSeb0k5a63/aVpgzc1tQiwTmX1aNn0+1vHfKFR2T+KUd
 N9Hod47OkpZGMS4GGTFFFk293y9/7TXkTcj5JYCzBxWJpAhDFycAjCR+fcY/kc9S5Oo6Lu6XiNJ
 4uG/+m+nTDIjzO7N5NxkJPhvUj6z2SuGfwpNHF35gqrTfzXP4tsoIV7G/uvUuatMr386m85wmPJ
 QgB8A
X-Developer-Key: i=paul@pbarker.dev; a=openpgp;
 fpr=98B2AAC100AC3F82BB5D546774975C81B7E66BAC
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 03 Apr 2026 09:12:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13875

DISTRO_FEATURES_DEFAULT is now obsolete, default features will be
appended to DISTRO_FEATURES automatically and you can now use
DISTRO_FEATURES_OPTED_OUT to opt out of any features.

Signed-off-by: Paul Barker <paul@pbarker.dev>
---
 meta-poky/conf/distro/poky.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index 5e1dc28c25fa..968dcb3cbfa7 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -17,7 +17,7 @@ POKY_DEFAULT_DISTRO_FEATURES = ""
 POKY_DEFAULT_EXTRA_RDEPENDS = "packagegroup-core-boot"
 POKY_DEFAULT_EXTRA_RRECOMMENDS = "kernel-module-af-packet"
 
-DISTRO_FEATURES ?= "${DISTRO_FEATURES_DEFAULT} ${POKY_DEFAULT_DISTRO_FEATURES}"
+DISTRO_FEATURES ?= "${POKY_DEFAULT_DISTRO_FEATURES}"
 
 PREFERRED_VERSION_linux-yocto ?= "6.18%"
 PREFERRED_VERSION_linux-yocto-rt ?= "6.18%"

-- 
2.43.0


