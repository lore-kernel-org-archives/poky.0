Return-Path: <paul@pbarker.dev>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E2FFE7E37E
	for <webhook@archiver.kernel.org>; Fri,  3 Apr 2026 12:00:11 +0000 (UTC)
Received: from fout-b6-smtp.messagingengine.com (fout-b6-smtp.messagingengine.com [202.12.124.149])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.10207.1775217603034236064
 for <poky@lists.yoctoproject.org>;
 Fri, 03 Apr 2026 05:00:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@pbarker.dev header.s=fm3 header.b=q2e1SXpN;
 dkim=pass header.i=@messagingengine.com header.s=fm2 header.b=Hq8mKGdl;
 spf=pass (domain: pbarker.dev, ip: 202.12.124.149, mailfrom: paul@pbarker.dev)
Received: from phl-compute-01.internal (phl-compute-01.internal [10.202.2.41])
	by mailfout.stl.internal (Postfix) with ESMTP id 2641D1D0022E;
	Fri,  3 Apr 2026 08:00:02 -0400 (EDT)
Received: from phl-frontend-03 ([10.202.2.162])
  by phl-compute-01.internal (MEProxy); Fri, 03 Apr 2026 08:00:02 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pbarker.dev; h=
	cc:cc:content-transfer-encoding:content-type:content-type:date
	:date:from:from:in-reply-to:message-id:mime-version:reply-to
	:subject:subject:to:to; s=fm3; t=1775217601; x=1775304001; bh=Fh
	iNtG8Y4CcW4IX42RRUpJmGZUJFO7QyQWQ6EhhIHbc=; b=q2e1SXpNFlzPSDA+0S
	ag98k1Gq5gGp0eZbQFti96iHuMU0uA1WUdmmRlZwYehp5PBGcMVHfw2CqTxt213y
	eawbfvsrnfX0XfKMiKUK4EM3xPHy4vRN/pt2oqfvSz/dTHvE1LjjLu6ftBv1yH0/
	8xflJ+7lXIRFRuw4ZZuXHIKTE8sKxsFOpqdHWk3DxXKR4Jz8nfiRksbix/gkpmMH
	7uY3dMDNE9Y69u3CGDZPurng5keO4UhxWNRtRMvKB8A53ufhU0Hy140gRxtptfnF
	cBYzmcdpQHJlnqION/3PAaBo5o1GzIHWt6Z7kSZu8Z+x90sl7t2k98gh85cZEJXE
	6P2w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:message-id:mime-version:reply-to:subject
	:subject:to:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm2; t=1775217601; x=1775304001; bh=FhiNtG8Y4CcW4IX42RRUpJmGZUJF
	O7QyQWQ6EhhIHbc=; b=Hq8mKGdltSpFcAAD75F0gZsbRWNDfPa1XgS4POWjrAoc
	ciN2DKUA/sn9hFJhKxhNEfRr4uNGHkHybgKP1pkC0M6BhjoneV9QQDDbVph6v2J/
	AlWyF+h04D7HpQhPbUG8suQcHmiZ+c9gvNRplmJf7Jh18pqUAqut5KsECXFMKEyw
	UnvA3z0d0aszYcWN2VLRR5tR6TMzIWOsMYnhNVFgMmdQoW+riUl+GrPr0uM3l+do
	o+5Rp18suDY8TwpOkcRnmALOTvjFbeTDf3yu4XgqZf2p4BXrETHPd7VVAsfkbu1N
	6nWk6na7Ifr75LJcPBp0IxD2phzJCM/yLzJh2bLJFg==
X-ME-Sender: <xms:wavPaQCkmgi6pIfmQn6AILoPtKElfYCd1AwxEbPv2hnYwckg0TNFiA>
    <xme:wavPaYhzw6EHVjrRy7ye1S9jQWNS--uMt9CDWR8pzsZxCTKQkyYGMXRzr7Z6t0LJO
    LJg7Zp52z7HeknQX_Awhs_EFxv4QFGzpGB_pOM0_E7cAK7XgUeDyzo>
X-ME-Received: <xmr:wavPaRNXrR9wTxR8_t2LiKNCzwxBv2hJhcgSh6_YV73ipzmeiBS-iEMhTWsGn3TyzSHJKoyug9-ZFNyaqJvzlK98Cq0blLk>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefhedrtddtgdekkeekucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceurghi
    lhhouhhtmecufedttdenucenucfjughrpefhfffugggtgffkvfevofesthejredtredtje
    enucfhrhhomheprfgruhhluceurghrkhgvrhcuoehprghulhesphgsrghrkhgvrhdruggv
    vheqnecuggftrfgrthhtvghrnhepjeelteefleetkeduueefteffgeeltdeguefgveette
    ekveetieektdfftedtkefhnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehm
    rghilhhfrhhomhepphgruhhlsehpsggrrhhkvghrrdguvghvpdhnsggprhgtphhtthhope
    dvpdhmohguvgepshhmthhpohhuthdprhgtphhtthhopehprghulhesphgsrghrkhgvrhdr
    uggvvhdprhgtphhtthhopehpohhkhieslhhishhtshdrhihotghtohhprhhojhgvtghtrd
    horhhg
X-ME-Proxy: <xmx:wavPaR5uZyBOqorAKHJnvLJdPVARWpy_D1MMGnJLMrbS4vEDjfU1IA>
    <xmx:wavPaX1UZypGtyLvRub6ccMwUDpCru_Fbmvp-06R2xZu_Yf-dWQ3kw>
    <xmx:wavPaaYyu8qqZuxFidKTuKiKftLDGY2hkCuVgmupXCc7cNywvS9mog>
    <xmx:wavPaXBn0gGXLfRUg-IY0oYvBq8O5eN68pXUjZaSxnOsOePIbRXW7Q>
    <xmx:wavPaUmfemtErFbR83Dn_BcYffgTpClrsIwrcsXNyELk4rb3EtZMW9Ok>
Feedback-ID: i51494658:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 3 Apr 2026 08:00:00 -0400 (EDT)
From: Paul Barker <paul@pbarker.dev>
Date: Fri, 03 Apr 2026 12:59:58 +0100
Subject: [PATCH] poky: Fix CentOS Stream 9 distro name
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260403-centos-9-v1-1-e5324bd74ea3@pbarker.dev>
X-B4-Tracking: v=1; b=H4sIAL2rz2kC/yXMyw5AMBCF4VeRWWtS9/AqYsGYMhYlnRKJeHfF8
 kv+cy4QckwCTXSBo4OFVxuQxBHg3NuJFI/BkOq01LnOFJL1q6haYWUy6s2ISTFAyDdHhs/vqu1
 +yz4shP7dw30/heF6NmwAAAA=
X-Change-ID: 20260403-centos-9-c7f3eafdc15b
To: poky@lists.yoctoproject.org
Cc: Paul Barker <paul@pbarker.dev>
X-Mailer: b4 0.15.1
X-Developer-Signature: v=1; a=openpgp-sha256; l=948; i=paul@pbarker.dev;
 h=from:subject:message-id; bh=exW/udgTzh9qCg9WirdGgLlDtUaZo+14TkXdqayh4Ls=;
 b=owGbwMvMwCW2OjnkzdxdX/IYT6slMWSeX33gJecbvb1fnad0zdJcMr/9b69k9b6LN1on3p675
 OJHsyVVjB2lLAxiXAyyYoosm3u+3n/a68ibEXJLAWYOKxPIEAYuTgGYSMpvRob2N50aarNEdJg+
 tiTVXTH5u9PXcutD89kHbCfG+n1t+9jM8JttEt/ZxuqlE80+2z9x8Ql5oe7UyiPqe9Bl/l8/n3u
 XD3ABAA==
X-Developer-Key: i=paul@pbarker.dev; a=openpgp;
 fpr=98B2AAC100AC3F82BB5D546774975C81B7E66BAC
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 03 Apr 2026 12:00:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13879

CentOS Stream 9 reports as `centos-9`, not `centosstream-9`.

On our stream9-vk-1 autobuilder worker:

    $ ( source /etc/os-release && echo $ID-$VERSION_ID )
    centos-9

Signed-off-by: Paul Barker <paul@pbarker.dev>
---
 meta-poky/conf/distro/poky.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index 5e1dc28c25fa..3c0b2c932e45 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -42,7 +42,7 @@ SANITY_TESTED_DISTROS ?= " \
             fedora-41 \n \
             fedora-42 \n \
             fedora-43 \n \
-            centosstream-9 \n \
+            centos-9 \n \
             debian-11 \n \
             debian-12 \n \
             debian-13 \n \

---
base-commit: ac300baea7314ea3c80f2330b2a993f729f32150
change-id: 20260403-centos-9-c7f3eafdc15b

Best regards,
--  
Paul Barker


