Return-Path: <paul@pbarker.dev>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2AF6810F3DDB
	for <webhook@archiver.kernel.org>; Sat, 28 Mar 2026 09:47:11 +0000 (UTC)
Received: from fout-a3-smtp.messagingengine.com (fout-a3-smtp.messagingengine.com [103.168.172.146])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.8077.1774691222679734725
 for <poky@lists.yoctoproject.org>;
 Sat, 28 Mar 2026 02:47:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@pbarker.dev header.s=fm3 header.b=T+BvUXZg;
 dkim=pass header.i=@messagingengine.com header.s=fm1 header.b=p8JoqJ9X;
 spf=pass (domain: pbarker.dev, ip: 103.168.172.146, mailfrom: paul@pbarker.dev)
Received: from phl-compute-04.internal (phl-compute-04.internal [10.202.2.44])
	by mailfout.phl.internal (Postfix) with ESMTP id C3DF4EC0224;
	Sat, 28 Mar 2026 05:47:01 -0400 (EDT)
Received: from phl-frontend-04 ([10.202.2.163])
  by phl-compute-04.internal (MEProxy); Sat, 28 Mar 2026 05:47:01 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pbarker.dev; h=
	cc:cc:content-transfer-encoding:content-type:content-type:date
	:date:from:from:in-reply-to:message-id:mime-version:reply-to
	:subject:subject:to:to; s=fm3; t=1774691221; x=1774777621; bh=pE
	eXSixDCdhgLjl7f2ypc4zOGP50q1h+RSeNrK9Wd9U=; b=T+BvUXZgcVad7j6lgJ
	QL8LYZ4n3yciwZ9XsDKDDUiQaBIBdlgJ3HQ3Oeoes7QNDqyMi9CK8kER7Wl4soMu
	0E3jsjaatj4GoouqCPbrzA9OasZmN9/YhDrokVsL2gmW0u3rEtxyhHyTEn420lH7
	NTbnoxVirHRysN4cirBTvvukXAW2sJ9VXRBg3E5OuwHT5JHCjIKtSC+vndTIuPUz
	zky77U1WTQ4iswU2j3+qT7aJzBNam5ydxRE7LTDXPzNcgguNXLyzCbH7vpTX7pkK
	OQNoN4j2JPRj8QpAcUotcjcY269as0rFK7z1f8+3EJienxyT28RA4THaV1r8yBUV
	H/NQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:message-id:mime-version:reply-to:subject
	:subject:to:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm1; t=1774691221; x=1774777621; bh=pEeXSixDCdhgLjl7f2ypc4zOGP50
	q1h+RSeNrK9Wd9U=; b=p8JoqJ9XbkGX0qr8fhJ01Lmkc+9X1IUAoIcqxDBhox8O
	KG4chJXwoFGz9zOsk/T0iYxjVjm5yuy2YoQRIWnkezyr9ImTihOB8z/3n72BaIjq
	n2NkP0UOeGV8uMbjae1wGQiNa+cUL17W6f88/rJG59lnfDyTYDPCxaaTzRI50c/F
	4uK0IxxqZD0g+2D+iDfm1AUDvZyQTF/TC4zn+d/w4IEQyGCxUHipARKKoH1lc+Pp
	J00hb7QThxPVH2lLpmuAS6Ok6n8R04wpfdWr3n20omdh84sUNxjk0FhYeeNSQOQ3
	QCarypXYimhDdNeaAlSR+wgAUr54mdhXjRe3mFD++Q==
X-ME-Sender: <xms:laPHaZ8wcDZ3ltnBD-VGd7q_RyDcsGI4H-ppzvIukTfImqJZPsmYkA>
    <xme:laPHaTstm4ZRvpaTPA6rGmdOHIRj8lbian8za0oJZuh56kJgMeyjK0kNmFKylYGZZ
    Qagqv1k0ZYIFOQrqf8540lqITB0u3QuZxeyP2Hmw47BKCq8l0izpg>
X-ME-Received: <xmr:laPHaUo6YssoFve4VHR2cjv4ZAKGjTq5PdnXgNvZecYCZB0ZMvuuKz97JzabuCwUwqEFG3mhtQ-WMBtoGPCjcEiuEZAMcks>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgdeffedvkeehucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
    rghilhhouhhtmecufedttdenucenucfjughrpefhufffkfggtgfgvfevofesthejredtre
    dtjeenucfhrhhomheprfgruhhluceurghrkhgvrhcuoehprghulhesphgsrghrkhgvrhdr
    uggvvheqnecuggftrfgrthhtvghrnhepjeduueevffdtudejgeeiffduhfefgfdvheehtd
    duiefgjeelleelvddtkeeuhfejnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghm
    pehmrghilhhfrhhomhepphgruhhlsehpsggrrhhkvghrrdguvghvpdhnsggprhgtphhtth
    hopedvpdhmohguvgepshhmthhpohhuthdprhgtphhtthhopehprghulhesphgsrghrkhgv
    rhdruggvvhdprhgtphhtthhopehpohhkhieslhhishhtshdrhihotghtohhprhhojhgvtg
    htrdhorhhg
X-ME-Proxy: <xmx:laPHaYmWQ-kt_esE8vSjTcVze3_xdO9-ih97GrKaYZ9ZaAKNOtn1qg>
    <xmx:laPHaQysGIkCH8O0GyJgeNbo78K7BpRdvxYFNGV5wm3-d-05klvJEA>
    <xmx:laPHaYn0uypfN9lxzOG5KTggg1E3TfmnByczPbXTWasQ7XXBEDv7Kg>
    <xmx:laPHaRfnmifo_Y2jCGG_qBMnRsMsz26RKtZzYlqYV0OHFGGemx_Nyg>
    <xmx:laPHaVjqEeP0ogkIYNKLw7XQlZSkjtfVA7YfqbQ7MJDu0CqDC14zqH5i>
Feedback-ID: i51494658:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 28 Mar 2026 05:47:01 -0400 (EDT)
From: Paul Barker <paul@pbarker.dev>
Subject: [PATCH 0/3] Adapt to new default feature handling
Date: Sat, 28 Mar 2026 09:46:51 +0000
Message-Id: <20260328-default-features-v1-0-549331ccfab0@pbarker.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAIujx2kC/yXMyw6CMBBG4Vchs7YJtnh9FeNiaP/qGIOm0xISw
 rtTcfktzplJkQRK12amhFFUPkPFfteQf/LwgJFQTba1x9bZswmIXN7ZRHAuCWrg/IkP3cXFwFS
 zb0KUaVve7n9r6V/w+fehZVkBZNZAY3QAAAA=
X-Change-ID: 20260328-default-features-e3c7a5493fda
To: poky@lists.yoctoproject.org
Cc: Paul Barker <paul@pbarker.dev>
X-Mailer: b4 0.15.1
X-Developer-Signature: v=1; a=openpgp-sha256; l=859; i=paul@pbarker.dev;
 h=from:subject:message-id; bh=2f7KPIf97SzxjYCepTtFQLbHvllwxshNuX/ac7K19Cs=;
 b=owGbwMvMwCW2OjnkzdxdX/IYT6slMWQeXzzhhvjed5p7/v+SzGXpT/v8Q6DkiCoDd5OslP+qv
 s9zNyxY01HKwiDGxSArpsiyuefr/ae9jrwZIbcUYOawMoEMYeDiFICJ+P5kZLieF5+98vGeGovO
 WXujb+XcVngsYi/4sz4+mP2iQifbqbuMDI0fg29aTPH7l2gqZXZ1zqVpnNsq38SlTGPP4J42NWZ
 qGisA
X-Developer-Key: i=paul@pbarker.dev; a=openpgp;
 fpr=98B2AAC100AC3F82BB5D546774975C81B7E66BAC
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Sat, 28 Mar 2026 09:47:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13869

These changes adapt meta-yocto-bsp to the upcoming changes in how
default distro and machine features are set. The intention is that this
series is applied to meta-yocto *before* changes to openembeded-core,
and the changes should be safe to apply in that order.

---
Paul Barker (3):
      genericx86-common: Use append with MACHINE_FEATURES
      genericarm64: Use MACHINE_FEATURES_DEFAULT
      beaglebone-yocto: Use MACHINE_FEATURES_DEFAULT

 meta-yocto-bsp/conf/machine/beaglebone-yocto.conf         | 2 +-
 meta-yocto-bsp/conf/machine/genericarm64.conf             | 5 ++++-
 meta-yocto-bsp/conf/machine/include/genericx86-common.inc | 2 +-
 3 files changed, 6 insertions(+), 3 deletions(-)
---
base-commit: ac300baea7314ea3c80f2330b2a993f729f32150
change-id: 20260328-default-features-e3c7a5493fda

Best regards,
--  
Paul Barker


