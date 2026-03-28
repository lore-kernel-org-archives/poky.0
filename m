Return-Path: <paul@pbarker.dev>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7D4E10F3DD7
	for <webhook@archiver.kernel.org>; Sat, 28 Mar 2026 09:47:09 +0000 (UTC)
Received: from fhigh-a7-smtp.messagingengine.com (fhigh-a7-smtp.messagingengine.com [103.168.172.158])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.8229.1774691223428009342
 for <poky@lists.yoctoproject.org>;
 Sat, 28 Mar 2026 02:47:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@pbarker.dev header.s=fm3 header.b=Ifk4U6Bc;
 dkim=pass header.i=@messagingengine.com header.s=fm1 header.b=DW7AXVX/;
 spf=pass (domain: pbarker.dev, ip: 103.168.172.158, mailfrom: paul@pbarker.dev)
Received: from phl-compute-08.internal (phl-compute-08.internal [10.202.2.48])
	by mailfhigh.phl.internal (Postfix) with ESMTP id 8BC0914001B4;
	Sat, 28 Mar 2026 05:47:02 -0400 (EDT)
Received: from phl-frontend-04 ([10.202.2.163])
  by phl-compute-08.internal (MEProxy); Sat, 28 Mar 2026 05:47:02 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pbarker.dev; h=
	cc:cc:content-transfer-encoding:content-type:content-type:date
	:date:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm3; t=1774691222;
	 x=1774777622; bh=aEQLM0NCBmjaaNI/ucE8cuq7ZilJ+j7p2SxDn2+uux0=; b=
	Ifk4U6BcfOsUXjKr/rQlRp9D0BQMTLQmQWmitYQSAij/w3XcvB5MWKQUxtLqoC13
	72JUszNutho2z7THlaJC7RU5ncIYP6tWtDPwgjW448TFPbyARxlX7JC309Sj4xSM
	7Cqt+sd0CByeDDOLp/OdK4ZXnDgkBrSqyDtzHBw/E1TS47F3cCDf4YtN9N4OL8iT
	XDNr2eh8KoEplxqbZyZBNqvzNKkoF6R3QwrjXEAU8I6IhDkeVPb3WCNyJTiNJTF9
	JSG0PNQdJrtbZ13kN/v6p32C26kKOFpn9x14hCYM2p598+6nTxkmcszTAeADM05X
	RN+9AII4/fZFMMnoq05Big==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1774691222; x=
	1774777622; bh=aEQLM0NCBmjaaNI/ucE8cuq7ZilJ+j7p2SxDn2+uux0=; b=D
	W7AXVX/jcm9+2EnYF47ic9LCPPhrpwaWS+MifWGzym/DyK3RaQlQCAp2ScNlTFuV
	mDfHn3bF4i0K7epargtc0CnRSa1q/C37zVRjiX0uSL8aQu8f7B09kI73Ruk1qjUY
	Gc3ncy5Y0kOmR06L/j+5qV+P0NVnWbi6XKZP259q936ie7O2XhYwMH42ACQoA3FQ
	aNCYFy3zsVe3eQuNfgZLuMtW5lNbYbm6OdimrviSQN/PQtIZ3lC0cRZnXlM0rgfQ
	CSXF1F53Zyki8eZJKBzRlWjW9BpHAkkoFocniMc0yCblVDQCiB8EckZUJhdPjaMe
	5STSqCdW+FEzrmrL5H2xA==
X-ME-Sender: <xms:lqPHacj9seLZNyK0r2Xfju3kwHp8kIM6S-JWL3TJYtx5Vv6KbH5wnQ>
    <xme:lqPHabBdvqzfZIspajMU2rBScpP3jfPHCFHOPTjtcHgvMKdSlKWQGFLR8yR-_FDOD
    5NTYFq77UEFJjznUz4N4mA_Mv4RHK_M97fnHzKn0l0XwIGP4PXPGaeS>
X-ME-Received: <xmr:lqPHaRv6wseoYtQRrM7BxrHm5BdrawVsqrDkd4ZkyRBQorAZkR6bok9c_zZyNr7hW6D5O5JKJaMJmFq90mdrjRBcW8rTYec>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgdeffedvkeegucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
    rghilhhouhhtmecufedttdenucenucfjughrpefhfffugggtgffkfhgjvfevofesthejre
    dtredtjeenucfhrhhomheprfgruhhluceurghrkhgvrhcuoehprghulhesphgsrghrkhgv
    rhdruggvvheqnecuggftrfgrthhtvghrnheptdffvdffjeevhfelieegudfgieefleefue
    efffelvdehfeeviedtieeukefhleeknecuvehluhhsthgvrhfuihiivgeptdenucfrrghr
    rghmpehmrghilhhfrhhomhepphgruhhlsehpsggrrhhkvghrrdguvghvpdhnsggprhgtph
    htthhopedvpdhmohguvgepshhmthhpohhuthdprhgtphhtthhopehprghulhesphgsrghr
    khgvrhdruggvvhdprhgtphhtthhopehpohhkhieslhhishhtshdrhihotghtohhprhhojh
    gvtghtrdhorhhg
X-ME-Proxy: <xmx:lqPHaYYId10qfTpnMs1smr2igjQPTkegrWi1YkL6XJ3fzQLSGuSXxw>
    <xmx:lqPHacWCpbZtulQ99BPziaYyxKCEs6q-2BAiuDo8L27F16QMxBLKag>
    <xmx:lqPHaU6XKXk80Bfxrs4axXhZXyWXXEw_bO6ZMozBypNy7oUg-WaHAQ>
    <xmx:lqPHafgyIvA8N-bsR4e-JSqQbJlhQNmwx18lYp7XMCdnqHrcMaUUTQ>
    <xmx:lqPHaZGRFZvUKYqlIq7zR8r2WBjLFhkdk-EL8eKBgqug0IMwEkElHlFu>
Feedback-ID: i51494658:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 28 Mar 2026 05:47:01 -0400 (EDT)
From: Paul Barker <paul@pbarker.dev>
Date: Sat, 28 Mar 2026 09:46:52 +0000
Subject: [PATCH 1/3] genericx86-common: Use append with MACHINE_FEATURES
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260328-default-features-v1-1-549331ccfab0@pbarker.dev>
References: <20260328-default-features-v1-0-549331ccfab0@pbarker.dev>
In-Reply-To: <20260328-default-features-v1-0-549331ccfab0@pbarker.dev>
To: poky@lists.yoctoproject.org
Cc: Paul Barker <paul@pbarker.dev>
X-Mailer: b4 0.15.1
X-Developer-Signature: v=1; a=openpgp-sha256; l=897; i=paul@pbarker.dev;
 h=from:subject:message-id; bh=nisUOCyhhowfBQUD2E/+bgAH+8mEiWht5eCgceYzAQo=;
 b=owGbwMvMwCW2OjnkzdxdX/IYT6slMWQeXzzlocOW/ALWePXaoxIe25P1b1ikp0Q4ViQccegJP
 3adpbKwo5SFQYyLQVZMkWVzz9f7T3sdeTNCbinAzGFlAhnCwMUpABM5t4bhn84nmzYxmf2ZFoyl
 L3etv53Kt/HQgX6vDSV/OO/miW8qfsnwh7+7n/1d0pkXWhe/fm66duzDtGWNb2KZeOQ8FHY0Xa/
 wYgQA
X-Developer-Key: i=paul@pbarker.dev; a=openpgp;
 fpr=98B2AAC100AC3F82BB5D546774975C81B7E66BAC
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Sat, 28 Mar 2026 09:47:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13870

We should modify MACHINE_FEATURES using :append instead of += to
preserve the weakly assigned defaults.

Signed-off-by: Paul Barker <paul@pbarker.dev>
---
 meta-yocto-bsp/conf/machine/include/genericx86-common.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-yocto-bsp/conf/machine/include/genericx86-common.inc b/meta-yocto-bsp/conf/machine/include/genericx86-common.inc
index 95d9e175fc4c..e10b69ca75cd 100644
--- a/meta-yocto-bsp/conf/machine/include/genericx86-common.inc
+++ b/meta-yocto-bsp/conf/machine/include/genericx86-common.inc
@@ -1,6 +1,6 @@
 include conf/machine/include/x86/x86-base.inc
 require conf/machine/include/x86/qemuboot-x86.inc
-MACHINE_FEATURES += "wifi efi pcbios"
+MACHINE_FEATURES:append = "wifi efi pcbios"
 
 PREFERRED_VERSION_linux-yocto ?= "6.18%"
 PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"

-- 
2.43.0


