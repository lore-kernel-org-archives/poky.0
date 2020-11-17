Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by mx.groups.io with SMTP id smtpd.web11.2790.1605581161792931096
 for <poky@lists.yoctoproject.org>;
 Mon, 16 Nov 2020 18:46:01 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kernel.org header.s=default header.b=REpJuQxy;
 spf=pass (domain: kernel.org, ip: 198.145.29.99, mailfrom: okaya@kernel.org)
Received: from sinanubuntu.ckuic5o5zete5ommc4uz5anrqg.bx.internal.cloudapp.net (unknown [23.96.20.205])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id B34AB246A4;
	Tue, 17 Nov 2020 02:46:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1605581161;
	bh=QLUuz2+t7EcOE6Rt0yh21/pSC/jiHL2mAM97uvb6W0I=;
	h=From:To:Cc:Subject:Date:From;
	b=REpJuQxy9MpH7KvuwdN57YPxdHzK3BylpO0t1biFbvXwdOzVxcKrDJSMC7+muUTVz
	 DZphtec2W4rT8zCaZvuuZX0PgepFtwjdZaOZhVdxv0Y+nKaRTrjX8UZqkYtxH7Lcw0
	 AMdugZWBc6wO8iVDw1Q7ODbBrRMXbalIQJ4OzYzE=
From: "Sinan Kaya" <okaya@kernel.org>
To: poky@lists.yoctoproject.org
Cc: Sinan Kaya <okaya@kernel.org>
Subject: [PATCH] poky-tiny: prefer thumb mode by default
Date: Tue, 17 Nov 2020 02:45:55 +0000
Message-Id: <20201117024555.7716-1-okaya@kernel.org>
X-Mailer: git-send-email 2.17.1

We can use ARM_INSTRUCTION_SET to select the default instruction
mode for userspace.

Signed-off-by: Sinan Kaya <okaya@kernel.org>
---
 meta-poky/conf/distro/poky-tiny.conf | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/meta-poky/conf/distro/poky-tiny.conf b/meta-poky/conf/distro/poky-tiny.conf
index c6d4b88f83d..87ee0970b93 100644
--- a/meta-poky/conf/distro/poky-tiny.conf
+++ b/meta-poky/conf/distro/poky-tiny.conf
@@ -122,3 +122,6 @@ PNBLACKLIST[core-image-weston] = "not buildable with poky-tiny"
 
 # Disable python usage in opkg-utils since it won't build with tiny config
 PACKAGECONFIG_remove_pn-opkg-utils = "python"
+
+# prefer thumb mode by default for userspace
+ARM_INSTRUCTION_SET = "thumb"
-- 
2.17.1

