Return-Path: <foss@0leil.net>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 935D0C02194
	for <webhook@archiver.kernel.org>; Wed,  5 Feb 2025 15:13:18 +0000 (UTC)
Received: from smtp-8fa8.mail.infomaniak.ch (smtp-8fa8.mail.infomaniak.ch [83.166.143.168])
 by mx.groups.io with SMTP id smtpd.web11.14359.1738768390109361192
 for <poky@lists.yoctoproject.org>;
 Wed, 05 Feb 2025 07:13:10 -0800
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: 0leil.net, ip: 83.166.143.168, mailfrom: foss+yocto@0leil.net)
Received: from smtp-3-0001.mail.infomaniak.ch (unknown [IPv6:2001:1600:4:17::246c])
	by smtp-3-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4Yp3dc2r8bzrYN;
	Wed,  5 Feb 2025 16:13:08 +0100 (CET)
Received: from unknown by smtp-3-0001.mail.infomaniak.ch (Postfix) with ESMTPA id 4Yp3db5vh9zVgw;
	Wed,  5 Feb 2025 16:13:07 +0100 (CET)
From: Quentin Schulz <foss+yocto@0leil.net>
Date: Wed, 05 Feb 2025 16:12:56 +0100
Subject: [PATCH RFC v3] add basic support for b4 contribution workflow
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250205-b4-support-v3-1-014b37c462ff@cherry.de>
X-B4-Tracking: v=1; b=H4sIAPd/o2cC/23NQQ6CMBAF0KuQrq3ptMWKKxMTD+DWuCjtIN0Aa
 bGREO5uwYUYXf6ZvP9HEtA7DOSQjcRjdMG1TQpikxFT6+aO1NmUCWc8ZwCKlpKGR9e1vqcojdF
 KWwFsRxLoPFbuuZRdyeV8Ird0rF3oWz8sAxGW17+uCBQoy5nBHK2SqjiaGr0fthbn6jfh4ofIv
 YQq52hMWa7IvBz5Z42zb8oTNRVAIctKaG3XdJqmF/CGaOoXAQAA
X-Change-ID: 20250117-b4-support-e4cca7ad3106
To: poky@lists.yoctoproject.org
Cc: Quentin Schulz <quentin.schulz@cherry.de>
X-Mailer: b4 0.14.2
X-Infomaniak-Routing: alpha
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 05 Feb 2025 15:13:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13521

From: Quentin Schulz <quentin.schulz@cherry.de>

b4[1] is a very nice tool for mail-based contribution. A config[2] file
exists to set up a few defaults. We can use it to provide the Cc and To
recipient list for the series.

This uses the b4-wrapper-poky.py script for checking that each patch in
the series is only for one project. Indeed, poky is actually a
"collection" of multiple repositories, namely BitBake, OpenEmbedded-Core
and the Yocto Docs. One patch should therefore not make changes in
multiple of those projects otherwise it cannot be merged.

Additionally, a check is added to make sure that a series only touches
files from one project to avoid having to figure out which patch is to
be merged by which maintainer in which project repo.

Moreover, it is not uncommon to have people develop patches for those
projects from within poky. This wrapper figures out which mailing lists
to send patches to based on the files that are modified in the series.
Considering that patches to the bitbake/doc/ directory need to be sent
to both the bitbake and yocto-docs mailing list (To recipient for the
former, Cc recipient for the latter) this wrapper handles that.
A limitation of the script (lsdiff actually) is that it doesn't know how
to handle empty files, but those should be of rather rare occurrences.

Note that this script requires hardcoding of paths that are handled by
different projects to map files to projects. Anything not mapped is
assumed part of OE-Core.

[1] https://pypi.org/project/b4/
[2] https://b4.docs.kernel.org/en/latest/config.html

Signed-off-by: Quentin Schulz <quentin.schulz@cherry.de>
---
This is marked as RFC for two reasons:
- this depends on the following patch series for OE-Core:
  https://lore.kernel.org/openembedded-core/20250205-b4-support-v3-0-f8b1456ae1c2@cherry.de/T/#ma4eac2488b318119393ae76e71a7d597253dd874
- this depends on the script used to merge OE-Core into poky to NOT
  overwrite .b4-config from poky added in this patch series with the one
  from OE-Core,

Note that b4 will not work for modifications made to .b4-config for poky
as it'll detect that as being for OE-Core. Since the file will
eventually exist in both repos, I have no clue how to handle that.
---
Changes in v3:
- call the b4 wrapper script also for both Cc and To recipient lists, to
  handle the special case of yocto-docs in Cc for bitbake/doc patches,
  and also because we're supposed to use To recipient list for all other
  mailing lists,
- Link to v2: https://lore.kernel.org/r/20250203-b4-support-v2-1-cf1194bf3aad@cherry.de

Changes in v2:
- moved script to OE-Core repo (in another patch series now)
- updated path to reflect new location in OE-Core (scripts/) and name
  (b4-wrapper-poky.py instead of b4-wrapper.py),
- Link to v1: https://lore.kernel.org/r/20250123-b4-support-v1-1-4841f52eccbb@cherry.de
---
 .b4-config | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/.b4-config b/.b4-config
new file mode 100644
index 0000000000000000000000000000000000000000..683b816ffaa92163c6bb9da6368889dc20d0d1f3
--- /dev/null
+++ b/.b4-config
@@ -0,0 +1,4 @@
+[b4]
+  prep-perpatch-check-cmd = ./scripts/b4-wrapper-poky.py prep-perpatch-check-cmd
+  send-auto-cc-cmd = ./scripts/b4-wrapper-poky.py send-auto-cc-cmd
+  send-auto-to-cmd = ./scripts/b4-wrapper-poky.py send-auto-to-cmd

---
base-commit: 1d777d0fe4d0517a3b31207da7f92c3b72e388ee
change-id: 20250117-b4-support-e4cca7ad3106

Best regards,
-- 
Quentin Schulz <quentin.schulz@cherry.de>


