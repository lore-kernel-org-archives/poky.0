Return-Path: <paul@pbarker.dev>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C5EBE7E353
	for <webhook@archiver.kernel.org>; Fri,  3 Apr 2026 09:12:12 +0000 (UTC)
Received: from fout-b4-smtp.messagingengine.com (fout-b4-smtp.messagingengine.com [202.12.124.147])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.7975.1775207527191150326
 for <poky@lists.yoctoproject.org>;
 Fri, 03 Apr 2026 02:12:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@pbarker.dev header.s=fm3 header.b=m3piiJmW;
 dkim=pass header.i=@messagingengine.com header.s=fm2 header.b=DWCsxi8L;
 spf=pass (domain: pbarker.dev, ip: 202.12.124.147, mailfrom: paul@pbarker.dev)
Received: from phl-compute-06.internal (phl-compute-06.internal [10.202.2.46])
	by mailfout.stl.internal (Postfix) with ESMTP id 633D31D001BA;
	Fri,  3 Apr 2026 05:12:06 -0400 (EDT)
Received: from phl-frontend-04 ([10.202.2.163])
  by phl-compute-06.internal (MEProxy); Fri, 03 Apr 2026 05:12:06 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pbarker.dev; h=
	cc:cc:content-transfer-encoding:content-type:content-type:date
	:date:from:from:in-reply-to:message-id:mime-version:reply-to
	:subject:subject:to:to; s=fm3; t=1775207525; x=1775293925; bh=QO
	y8+FLby76SnN0QtyoMYC5AZiCZ3kYNbt1MWm/kYkA=; b=m3piiJmWRdHMNV8TOG
	37R4nzUNeM2CG4H+YPX0KB2rDDZg7dBlwi1brAs94ugcnMJiJSARt4NEC79TAzMK
	0g2ZWS1N6cQzoTE3/lamW3+ItnhaXbpB8WrT566XZNRSIdGd3ysmwKwQ0TYz9kKp
	RbxvDzq4FH0hWniD8xKqqlwSlpbnMGGNGE9muRC9yabaQVl68CMjNcdkILGHHySF
	HbB6QAYfiUC20URqoDr/C1S8lw9iMO6ye4WXxXjVYuLyNI0MKlPBdfGfvtVSdEz1
	ou00URaV69Pwl2d8KRXjWpWaaagJFpfXa4fdq2uAcazT6dEnX5usINU7w6LJKoL4
	XbCQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:message-id:mime-version:reply-to:subject
	:subject:to:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm2; t=1775207525; x=1775293925; bh=QOy8+FLby76SnN0QtyoMYC5AZiCZ
	3kYNbt1MWm/kYkA=; b=DWCsxi8Ljb14xbY0K9fUJeaBXbKoP+OnBnEjoGS9RiB7
	twqkDSRNMngYnV63A4xdkOVESMZ7PRlevT12IEUcMhhsE/atfnTSB7K9qysXimwM
	oX7XjHlATfuxSbU+QqFPnI0F55LLgqu0BS+oxZb8q8+JFREnbEOqZizLIlI260OY
	HOGWPZoW0U6k/opHI1bzaJv8NzP3fD8KRqsZS9DfrX0kBB2Jjw6n6JbM6uEMG//b
	lK9HM+g9ZAQ/t/fqUB2kw+MfnZsGg/ZK8utwf1C5yru7O3ik5nUx7rL4PJpld0oD
	VRjMNLd68UvA+TBSIEnA0rmFwOITgpJXJTFXfYLJcA==
X-ME-Sender: <xms:ZYTPaXtePxGuMcqdyv8_Cb61rSLo6FWLUH2tZ_U_9fbvfh12cAkr1w>
    <xme:ZYTPaedb1eLd_mZMRSi3Z671V0jw8Sf1Dl5nblexeEeP-GlFsL9r5sUhbHcCuU9cd
    nQK2lwm3f2R4P5Lr_nznPRA6YC942_5ZJGDc5reYwrGA-pb5aGUPw>
X-ME-Received: <xmr:ZYTPaYahpoRBEXVFHxwGIDcGECzd87f47k0jDWv7w8RxUw2W_yHy0ju4mRf9hdF25P0Q5Y3aBJuU-ja5hKMwayr-cZMT5C4>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefhedrtddtgdekheehucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceurghi
    lhhouhhtmecufedttdenucenucfjughrpefhufffkfggtgfgvfevofesthejredtredtje
    enucfhrhhomheprfgruhhluceurghrkhgvrhcuoehprghulhesphgsrghrkhgvrhdruggv
    vheqnecuggftrfgrthhtvghrnhepieeljefgleetudfgtddvteeifeevkeetudeghffgvd
    ejkeduffffffekgfehledvnecuffhomhgrihhnpehkvghrnhgvlhdrohhrghenucevlhhu
    shhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehprghulhesphgsrg
    hrkhgvrhdruggvvhdpnhgspghrtghpthhtohepvddpmhhouggvpehsmhhtphhouhhtpdhr
    tghpthhtohepphgruhhlsehpsggrrhhkvghrrdguvghvpdhrtghpthhtohepphhokhihse
    hlihhsthhsrdihohgtthhophhrohhjvggtthdrohhrgh
X-ME-Proxy: <xmx:ZYTPaRVzc3P-7SSmhc7QC_tL40BChV2YmpoH5LFAMIcduv9lB5XZCw>
    <xmx:ZYTPaahbrxgJQtJE1UBIT-qT7eofo0_AFd6qyA0jXNg0P1Cw64kfGQ>
    <xmx:ZYTPafXhets2wcZTCypAjNJUm2mw1JYGwxbisidzFX-H1IK06jLQ2g>
    <xmx:ZYTPaRMGxXntz0aWK_yM5JV8lLeFnfuyUPTDRARY8GwwN1AemgPdqw>
    <xmx:ZYTPafSXJK-G3ZrBTBKt2igDwnLnx_CrlqJ2m91Xh4IapminW-jsoKyN>
Feedback-ID: i51494658:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 3 Apr 2026 05:12:05 -0400 (EDT)
From: Paul Barker <paul@pbarker.dev>
Subject: [PATCH 0/4] Adapt poky & poky-tiny for default distro features
 changes
Date: Fri, 03 Apr 2026 10:12:01 +0100
Message-Id: <20260403-default-features-2-v1-0-6e12ee3fbe44@pbarker.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAGGEz2kC/yXMQQrCMBBG4auUWTuQxtSiVxEXafrHjkiVTCJC6
 d2N7fJbvLeQIgmULs1CCR9Rec0V7aGhMPn5DpaxmqyxJ+PMkUdEX56ZI3wuCcqWW4Q4uLN1Xdd
 TDd8JUb7b9HrbrWV4IOT/idb1B6QdgvZ2AAAA
X-Change-ID: 20260403-default-features-2-1ecfb4924557
To: poky@lists.yoctoproject.org
Cc: Paul Barker <paul@pbarker.dev>
X-Mailer: b4 0.15.1
X-Developer-Signature: v=1; a=openpgp-sha256; l=849; i=paul@pbarker.dev;
 h=from:subject:message-id; bh=m2qY6o60gOrkU9J6ynpJt6h5OBCQOxZ9TmFzYsOtZOM=;
 b=owGbwMvMwCW2OjnkzdxdX/IYT6slMWSeb0nxncZ2ctaK426/4q58W3NZ8rR2WaFw2EVz58Ko4
 3qWESI6HaUsDGJcDLJiiiybe77ef9rryJsRcksBZg4rE8gQBi5OAZhI7TJGhskTtDZc7pN10tfo
 VT/9jzui50/EfuYl2r2zHZba3Z1jVM/IcF/jzUIvxtyCExl/ft1jU9nAcjkl4gL7p9znUXfmKv2
 W4QAA
X-Developer-Key: i=paul@pbarker.dev; a=openpgp;
 fpr=98B2AAC100AC3F82BB5D546774975C81B7E66BAC
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 03 Apr 2026 09:12:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13874

These patches follow up the conversion of default DISTRO_FEATURES
handling in oe-core. They require the patch to support opting out of all
default features [1] to be applied in oe-core first.

[1]: https://lore.kernel.org/openembedded-core/20260403-default-features-2-v1-2-cba2a1e6224c@pbarker.dev/

---
Paul Barker (4):
      poky: Drop use of DISTRO_FEATURES_DEFAULT
      poky-tiny: Drop use of DISTRO_FEATURES_DEFAULT
      poky-tiny: Opt out of all default distro features
      poky-tiny: Simplify distro features

 meta-poky/conf/distro/poky-tiny.conf | 22 ++++++----------------
 meta-poky/conf/distro/poky.conf      |  2 +-
 2 files changed, 7 insertions(+), 17 deletions(-)
---
base-commit: ac300baea7314ea3c80f2330b2a993f729f32150
change-id: 20260403-default-features-2-1ecfb4924557

Best regards,
--  
Paul Barker


