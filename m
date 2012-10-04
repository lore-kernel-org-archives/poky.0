Return-Path: <sgw@bigsur.com>
Received: from mail-da0-f48.google.com (mail-da0-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9E2A1E0049D
	for <poky@yoctoproject.org>; Thu,  4 Oct 2012 16:52:48 -0700 (PDT)
Received: by mail-da0-f48.google.com with SMTP id z8so621601dad.35
	for <poky@yoctoproject.org>; Thu, 04 Oct 2012 16:52:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=bigsur.com; s=bigsur.com;
	h=sender:from:to:subject:date:message-id:x-mailer;
	bh=1q1UyYd1Ol1DZH5of4U0cDeEuYPoaDuy6asd3i+Tp8s=;
	b=i9mslnGaT5ZPancKIY38ASpQnnCW9BD7HJ7ITGxHQDdyGA5B33gnBRiH0KuK+Iq/j+
	YiijyyG94afRqccpXxyaLf2txYWgbKjqXOGn4xmRCxaOlbW5BftGAP12dhe54Qk4xXtt
	kFWvmkdz6E7jCz+/oEDpw3p9+JqSvkdorn25w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=sender:from:to:subject:date:message-id:x-mailer:x-gm-message-state;
	bh=1q1UyYd1Ol1DZH5of4U0cDeEuYPoaDuy6asd3i+Tp8s=;
	b=KZj+X5h/XYw8PbN0NkTIrrQ1N2f3jV6FNH9tudMwzyb2K/zDtENF8dcoDclKCeFAOg
	iZA8hlcY0iisNbvtCGIcdnaBEoY5GQJXx4D3Da1wBbgE/m3ndDQ1vExgGpwdMa5n7Iin
	JGhxlhwlsXEBqvLQN0b977JNH5EehvDTb5yGBGSnXwdPv/MybaqIn0QlrziMoZSqVePQ
	7b7YncFL8R7b/eA4ouVyWYwWLnK0u8Eyn+aI+/GbzIHHdk4AF5WgKfYr51IHusU2d5ZV
	1D+Aiazf+9pIQIpvLEcj7trJy2DmynVGFeCcAZKX7uqqniYHJl695kvUPOlUNB+a29I8
	Y31g==
Received: by 10.68.226.100 with SMTP id rr4mr26028066pbc.143.1349394753989;
	Thu, 04 Oct 2012 16:52:33 -0700 (PDT)
Received: from localhost (c-71-193-189-117.hsd1.wa.comcast.net.
	[71.193.189.117])
	by mx.google.com with ESMTPS id nd6sm1493994pbc.68.2012.10.04.16.52.32
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 04 Oct 2012 16:52:33 -0700 (PDT)
Sender: Saul Wold <sgw@bigsur.com>
From: Saul Wold <sgw@linux.intel.com>
To: poky@yoctoproject.org
Date: Thu,  4 Oct 2012 16:52:31 -0700
Message-Id: <1349394751-28272-1-git-send-email-sgw@linux.intel.com>
X-Mailer: git-send-email 1.7.9.5
X-Gm-Message-State: ALoCoQlKI6MC2UXui1faYvJdO4FNk6X5S7IOLivTr6b7KZzMbDffCf3i0yj1V0g/MtpeEHC2nFyv
Subject: [PATCH] poky.conf: fix Poky release info to include release number
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 04 Oct 2012 23:52:48 -0000

Signed-off-by: Saul Wold <sgw@linux.intel.com>
---
 meta-yocto/conf/distro/poky.conf |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
index ad45f25..8e82496 100644
--- a/meta-yocto/conf/distro/poky.conf
+++ b/meta-yocto/conf/distro/poky.conf
@@ -71,8 +71,8 @@ CONNECTIVITY_CHECK_URIS ?= " \
 SANITY_TESTED_DISTROS ?= " \
             Yocto (Built by Poky 7.0) 1.2 \n \
             Yocto (Built by Poky 8.0) 1.3 \n \
-            Poky 7.0 (Yocto Project 1.2 Reference Distro) \n \
-            Poky 8.0 (Yocto Project 1.3 Reference Distro) \n \
+            Poky 7.0 (Yocto Project 1.2 Reference Distro) 1.2 \n \
+            Poky 8.0 (Yocto Project 1.3 Reference Distro) 1.3 \n \
             Ubuntu 10.04.4 LTS \n \
             Ubuntu 11.10 \n \
             Ubuntu 12.04 LTS \n \
-- 
1.7.9.5


