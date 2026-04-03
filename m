Return-Path: <paul@pbarker.dev>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9899BE7E357
	for <webhook@archiver.kernel.org>; Fri,  3 Apr 2026 09:12:12 +0000 (UTC)
Received: from fout-b4-smtp.messagingengine.com (fout-b4-smtp.messagingengine.com [202.12.124.147])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.7977.1775207529483305092
 for <poky@lists.yoctoproject.org>;
 Fri, 03 Apr 2026 02:12:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@pbarker.dev header.s=fm3 header.b=AGFPgOKB;
 dkim=pass header.i=@messagingengine.com header.s=fm2 header.b=uUfCKGaN;
 spf=pass (domain: pbarker.dev, ip: 202.12.124.147, mailfrom: paul@pbarker.dev)
Received: from phl-compute-03.internal (phl-compute-03.internal [10.202.2.43])
	by mailfout.stl.internal (Postfix) with ESMTP id 07DF61D00067;
	Fri,  3 Apr 2026 05:12:09 -0400 (EDT)
Received: from phl-frontend-04 ([10.202.2.163])
  by phl-compute-03.internal (MEProxy); Fri, 03 Apr 2026 05:12:09 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pbarker.dev; h=
	cc:cc:content-transfer-encoding:content-type:content-type:date
	:date:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm3; t=1775207528;
	 x=1775293928; bh=Q/V05O+VD+F6NxFc9AbawH2sYUz/JUBO5qm9JBwGhD8=; b=
	AGFPgOKBbFnAt+MSeCuwHuJcmSinWdgGF0D9plo7z+A5wE2DR4F6fHxWkegHD2Hp
	tpy6zdJPkI35rIBKtnJ3+0rEN/LptdZ5R9M8HEEgZpbCR5721oW4R4ze63J159fe
	hlTrW7O6jDQT9t+YjwtAuwtR4yW/xZOivKEMLNb4+oXt3VvGt9+E3zi0b9T7l3Mb
	JpEG+rBLtAoQAMFbrpdLd8ofO/qP/gx2H16UR1qRhDmG6E9E5IhAV5NSUUbe5RPY
	kJZTs++srp73PbB39uUDEvN01ZF+qkp7xjncj5r5O943QZ6KqcoUcUnM5Xt7omtG
	ELm4BXeUX8g9DvDrVl+bGQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=1775207528; x=
	1775293928; bh=Q/V05O+VD+F6NxFc9AbawH2sYUz/JUBO5qm9JBwGhD8=; b=u
	UfCKGaNev2nEReHzP4sUKd/Ail5tvGEa5jLr1rVxjYlX2XWGaPOihzXE+D1ykvTZ
	pNDiUx6TD71+a7HgB7E5E5oPbYXIWRMVgOtYFNKGLNTnOhEtZVbndMaK8TR7qIVA
	X/P03W5YvoCB4ZpItzjuFzJyBSv1/R5F6Pogohkv3052zLnQWM14Nz5e7K8gkByv
	yBpQjAn7XNiGtmi0SAzZ2K9H8F/NXJ7bWVrWvTdUuJrwDxm33xbqPXAF5alZQ1Sb
	Lzy3cFfYhAfozS1uuwk5czUHUAianSmmnsa/lY60VQBdj/ZLyBhQ5K63OcaKRgds
	j1hrw5xPh0y7SgN+RtWIQ==
X-ME-Sender: <xms:aITPaR7uPCFkI5mrZWVDOdjL6RnO5eU9DVgTsgiyDwYsMBuw83r1IA>
    <xme:aITPaU72G0WZrRzcq8F2Yp2E0qKMNe4T3vYNqGdNfdnlwFoJDm6vXjuyKhmpczyU4
    3t6SG5hDE1qNXxe3uG9H4ONVZTOrQKQ3pGjLhKeT_ncfBdsuMqnhvaR>
X-ME-Received: <xmr:aITPaWHpYnQNW-DnRBAT_kfTJPsxrT9MIw2A9im6d9AUK-2Mn6Se8Mm0IChhkZUyJn5J_SxXj2EAZPLRvLbzh-NbgiLlkK4>
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
X-ME-Proxy: <xmx:aITPaVTNENdWlF34MzSjDEdDYcxnptgNM5m7BGd9bOgUJpvKuCQafg>
    <xmx:aITPaXti17XSW6pFE_V1r1V0hnD2zXfoIGxtbWUbct2uDWf1lJyZhA>
    <xmx:aITPacxbKwDp0wVqTdVSpiv6IKBeFtRvo9xz6HDqA9LNOTlUxv9-dQ>
    <xmx:aITPaZ4QlGpsJMgujs4-AkPuTbD2hxyrZPHYgEJa7wU1dKgYYZuRAw>
    <xmx:aITPaVQX8GZfPJxUXJo_wl4CakZszuNd_VDeLU65aDYVsp5GDKlHO503>
Feedback-ID: i51494658:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 3 Apr 2026 05:12:08 -0400 (EDT)
From: Paul Barker <paul@pbarker.dev>
Date: Fri, 03 Apr 2026 10:12:04 +0100
Subject: [PATCH 3/4] poky-tiny: Opt out of all default distro features
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260403-default-features-2-v1-3-6e12ee3fbe44@pbarker.dev>
References: <20260403-default-features-2-v1-0-6e12ee3fbe44@pbarker.dev>
In-Reply-To: <20260403-default-features-2-v1-0-6e12ee3fbe44@pbarker.dev>
To: poky@lists.yoctoproject.org
Cc: Paul Barker <paul@pbarker.dev>
X-Mailer: b4 0.15.1
X-Developer-Signature: v=1; a=openpgp-sha256; l=1612; i=paul@pbarker.dev;
 h=from:subject:message-id; bh=Fb95BI4dX4YW8h+kyQd3lsB/Y1v90paXfg4dCm4wCOk=;
 b=owGbwMvMwCW2OjnkzdxdX/IYT6slMWSeb0lpO38jK2S2vU2np4pp1qZ5t9oaqpbGnmrlMJQ98
 fzPqpl/OkpZGMS4GGTFFFk293y9/7TXkTcj5JYCzBxWJpAhDFycAjARy3sM/3OWXbsWr1IXmavO
 feWWR96FhKIFZtVH5WMmWJ5dttG2uo6RYWmP+BVL28//GV+Ksm896vr3IltgoEZ2/VKx1loRdvY
 UBgA=
X-Developer-Key: i=paul@pbarker.dev; a=openpgp;
 fpr=98B2AAC100AC3F82BB5D546774975C81B7E66BAC
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 03 Apr 2026 09:12:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13877

For poky-tiny, we want to directly control the list of DISTRO_FEATURES,
with nothing added by default.

The previous list of backfilled distro features (before conversion to
DISTRO_FEATURES_DEFAULTS & DISTRO_FEATURES_OPTED_OUT in oe-core) was:

    pulseaudio gobject-introspection-data ldconfig opengl ptest multiarch wayland vulkan

Of these, we want to keep:

    ldconfig - for ldconfig & ld.so.conf on target.
    multiarch - for multiple architecture support.
    ptest - for building tests (as they aren't installed by default).

The others can go to keep poky-tiny as tiny as possible.

Signed-off-by: Paul Barker <paul@pbarker.dev>
---
 meta-poky/conf/distro/poky-tiny.conf | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/meta-poky/conf/distro/poky-tiny.conf b/meta-poky/conf/distro/poky-tiny.conf
index 3be3b786510e..be28940dd90e 100644
--- a/meta-poky/conf/distro/poky-tiny.conf
+++ b/meta-poky/conf/distro/poky-tiny.conf
@@ -63,12 +63,13 @@ IMAGE_LINGUAS = ""
 # Comment out any of the lines below to disable them in the build
 # DISTRO_FEATURES options:
 # alsa bluetooth ext2 pcmcia usbgadget usbhost wifi nfs zeroconf pci
-DISTRO_FEATURES_TINY = "pci"
+DISTRO_FEATURES_TINY = "pci ldconfig ptest multiarch"
 DISTRO_FEATURES_NET = "ipv4 ipv6"
 DISTRO_FEATURES_USB = "usbhost"
 #DISTRO_FEATURES_USBGADGET = "usbgadget"
 #DISTRO_FEATURES_WIFI = "wifi"
 
+DISTRO_FEATURES_OPTED_OUT = "*"
 DISTRO_FEATURES = "${DISTRO_FEATURES_TINY} \
                    ${DISTRO_FEATURES_NET} \
                    ${DISTRO_FEATURES_USB} \

-- 
2.43.0


