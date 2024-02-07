Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 89AB9C4828F
	for <webhook@archiver.kernel.org>; Wed,  7 Feb 2024 14:51:32 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web11.22024.1707317491012052382
 for <poky@lists.yoctoproject.org>;
 Wed, 07 Feb 2024 06:51:31 -0800
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: ross.burton@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B94141FB
	for <poky@lists.yoctoproject.org>; Wed,  7 Feb 2024 06:52:12 -0800 (PST)
Received: from oss-tx204.lab.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id F1CFD3F762
	for <poky@lists.yoctoproject.org>; Wed,  7 Feb 2024 06:51:29 -0800 (PST)
From: ross.burton@arm.com
To: poky@lists.yoctoproject.org
Subject: [PATCH] base-files: add usage warning to motd
Date: Wed,  7 Feb 2024 14:51:25 +0000
Message-Id: <20240207145125.2317134-1-ross.burton@arm.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 07 Feb 2024 14:51:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13250

From: Ross Burton <ross.burton@arm.com>

The Poky distro is explicitly a _reference_ distribution for _testing_
and _development_ purposes.  It enables most hardware and software
features so that they can be tested, but this also means that
from a security point of view the attack surface is very large.

We encourage anyone using OpenEmbedded for production use to create their
own distribution and not use Poky.  To encourage this behaviour further,
add a warning to /etc/motd when Poky is used so the developer will see it
when they log in.

Signed-off-by: Ross Burton <ross.burton@arm.com>
---
 meta-poky/recipes-core/base-files/base-files_%.bbappend | 1 +
 meta-poky/recipes-core/base-files/files/poky/motd       | 5 +++++
 2 files changed, 6 insertions(+)
 create mode 100644 meta-poky/recipes-core/base-files/base-files_%.bbappe=
nd
 create mode 100644 meta-poky/recipes-core/base-files/files/poky/motd

diff --git a/meta-poky/recipes-core/base-files/base-files_%.bbappend b/me=
ta-poky/recipes-core/base-files/base-files_%.bbappend
new file mode 100644
index 00000000000..8802adbb46b
--- /dev/null
+++ b/meta-poky/recipes-core/base-files/base-files_%.bbappend
@@ -0,0 +1 @@
+FILESEXTRAPATHS:prepend :=3D "${THISDIR}/files:"
diff --git a/meta-poky/recipes-core/base-files/files/poky/motd b/meta-pok=
y/recipes-core/base-files/files/poky/motd
new file mode 100644
index 00000000000..bffb7fadf1d
--- /dev/null
+++ b/meta-poky/recipes-core/base-files/files/poky/motd
@@ -0,0 +1,5 @@
+
+WARNING: Poky is a reference Yocto Project distribution that should be u=
sed for
+testing and development purposes only. It is recommended that you create=
 your
+own distribution.
+
--=20
2.34.1


