Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web09.4414.1660209056262052777
 for <poky@lists.yoctoproject.org>;
 Thu, 11 Aug 2022 02:10:56 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: bertrand.marquis@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 21624113E;
	Thu, 11 Aug 2022 02:10:56 -0700 (PDT)
Received: from e109506.cambridge.arm.com (e109506.cambridge.arm.com [10.1.199.62])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DFC813F70D;
	Thu, 11 Aug 2022 02:10:54 -0700 (PDT)
From: "Bertrand Marquis" <bertrand.marquis@arm.com>
To: poky@lists.yoctoproject.org
Cc: nd@arm.com
Subject: [PATCH] sysvinit-inittab/start_getty: Fix respawn too fast
Date: Thu, 11 Aug 2022 10:10:42 +0100
Message-Id: <9fd908d3afa5e01bb315fbba22a8ab490564923f.1660208982.git.bertrand.marquis@arm.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

When an entry in /dev does not exist, start_getty is returning directly.
As it is started from init in a respawn mode, it will loop infinitely.
In this case add a sleep inside start_getty to prevent the "Respawning
too fast" message popping up every 5 minutes.

This case is happening quite often when the system is started as an
hypervisor guest as the standard serial line is usually taken by it and
removed from the configuration.

This was triggered quite often running linux as dom0 on top of Xen on
arm as the serial line is taken by Xen and removed from the device tree.

Use the opportunity to replace one tab with spaces as the rest of the
file is using spaces.

Signed-off-by: Bertrand Marquis <bertrand.marquis@arm.com>
---
 meta/recipes-core/sysvinit/sysvinit-inittab/start_getty | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/meta/recipes-core/sysvinit/sysvinit-inittab/start_getty b/me=
ta/recipes-core/sysvinit/sysvinit-inittab/start_getty
index 699a1ead1a40..2bfe4310acad 100644
--- a/meta/recipes-core/sysvinit/sysvinit-inittab/start_getty
+++ b/meta/recipes-core/sysvinit/sysvinit-inittab/start_getty
@@ -13,5 +13,8 @@ case $(readlink -f "${getty}") in
 esac
=20
 if [ -e /sys/class/tty/$2 -a -c /dev/$2 ]; then
-	${setsid:-} ${getty} -L $1 $2 $3
+    ${setsid:-} ${getty} -L $1 $2 $3
+else
+    # Prevent respawning to fast error if /dev entry does not exist
+    sleep 1000
 fi
--=20
2.25.1

