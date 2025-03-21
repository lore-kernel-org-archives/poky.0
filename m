Return-Path: <paulg@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8092DC36000
	for <webhook@archiver.kernel.org>; Fri, 21 Mar 2025 19:26:27 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by mx.groups.io with SMTP id smtpd.web11.2063.1742585177500663376
 for <poky@lists.yoctoproject.org>;
 Fri, 21 Mar 2025 12:26:17 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: body hash did not verify" header.i=@kernel.org header.s=k20201202 header.b=g6EVKPQ0;
 spf=pass (domain: kernel.org, ip: 172.105.4.254, mailfrom: paulg@kernel.org)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 4DCB160008
	for <poky@lists.yoctoproject.org>; Fri, 21 Mar 2025 19:26:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 227F6C4CEE3
	for <poky@lists.yoctoproject.org>; Fri, 21 Mar 2025 19:26:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742585176;
	bh=PR6BgaF0ZICwF8WGr2DvcSDPokwCs2byGoebt59C9Dw=;
	h=From:To:Subject:Date:From;
	b=g6EVKPQ0mth1he3zX7llEtU739MowFREz6GmfR1Kz/hYU58MPQZ+O9yHXiHCh3sN4
	 Lv9SZ/vmQaqUaWfyumTWlJWXaAVkc1dFKjfmJ85HcBQa+j6VtkTBBYoMarEnk+ZIv9
	 fizJE8DvWt632j4famJ/iDpgorvq0GmQAYDSDZjnUUEN7ysdDIoCcHEjsaeVO7s5Rz
	 Juxp2ntRRY5TJ2Tvzmrfgy2EZ1ffmn5KMWpBnSJwqDUTBhK5gkpXjHoVeWF9SArZ9e
	 b+WtyjaOHMTw+EDdf4MK/klUfkRMQxsYx8wvOJetHFnpvN1t7GUM67WsGP6ap3JB2+
	 hBNVTQzxPa1MQ==
From: paulg@kernel.org
To: poky@lists.yoctoproject.org
Subject: [PATCH] poky: remove Ubu-20.04 from SANITY_TESTED_DISTROS due to python
Date: Fri, 21 Mar 2025 15:26:15 -0400
Message-Id: <20250321192615.3061383-1-paulg@kernel.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 21 Mar 2025 19:26:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13576

From: Paul Gortmaker <paul.gortmaker@kernel.org>

Bitbake commit 0d2e682d00df ("bitbake: lib/bb: Bump minimum python
version requirement to 3.9" -- local commit 67566c7410e1) means that
Ubuntu 20.04 is no longer supported out-of-the-box as detailed further
in the respective commit log.

While it is true that it can still be used with buildtools, that can
also be said for nearly every other unsupported distro out there,
including Ubuntu 18.04 that we listed as unsupported some years ago.
Hence continuing to list it as supported with the new python requirement
in place does not make sense.

Signed-off-by: Paul Gortmaker <paulg@kernel.org>
---
 meta-poky/conf/distro/poky.conf | 1 -
 1 file changed, 1 deletion(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky=
.conf
index eeaacd7b88fb..bcbd2c17fbaa 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -33,7 +33,6 @@ PACKAGE_CLASSES ?=3D "package_rpm"
 SANITY_TESTED_DISTROS ?=3D " \
             poky-5.0 \n \
             poky-5.1 \n \
-            ubuntu-20.04 \n \
             ubuntu-22.04 \n \
             ubuntu-24.04 \n \
             ubuntu-24.10 \n \
--=20
2.25.1


