Return-Path: <foss@0leil.net>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1342EC02192
	for <webhook@archiver.kernel.org>; Mon,  3 Feb 2025 15:21:40 +0000 (UTC)
Received: from smtp-42af.mail.infomaniak.ch (smtp-42af.mail.infomaniak.ch [84.16.66.175])
 by mx.groups.io with SMTP id smtpd.web11.90101.1738596096727649227
 for <poky@lists.yoctoproject.org>;
 Mon, 03 Feb 2025 07:21:37 -0800
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: 0leil.net, ip: 84.16.66.175, mailfrom: foss+yocto@0leil.net)
Received: from smtp-4-0001.mail.infomaniak.ch (smtp-4-0001.mail.infomaniak.ch [10.7.10.108])
	by smtp-4-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4YmqwH1yVGztKV;
	Mon,  3 Feb 2025 16:21:35 +0100 (CET)
Received: from unknown by smtp-4-0001.mail.infomaniak.ch (Postfix) with ESMTPA id 4YmqwG2x1GzVfM;
	Mon,  3 Feb 2025 16:21:34 +0100 (CET)
From: Quentin Schulz <foss+yocto@0leil.net>
Date: Mon, 03 Feb 2025 16:21:23 +0100
Subject: [PATCH RFC v2] add basic support for b4 contribution workflow
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250203-b4-support-v2-1-cf1194bf3aad@cherry.de>
X-B4-Tracking: v=1; b=H4sIAPLeoGcC/22NwQ6CMBBEf4Xs2Zpuaa16MjHxA7waDtAu0guQL
 RIJ4d+teDHR48zkvZkhEgeKcMxmYBpDDF2bgtpk4JqyvZMIPmVQUhmJaEWlRXz0fceDIO1caUu
 fo9xBAnqmOjxX2Q2ulzMUqWxCHDqe1oMR1+mfa0SBQhrpyJC32h5OriHmaevprf4gKv9B9F5jb
 RQ5V1VfSLEsywsV20Pm3AAAAA==
X-Change-ID: 20250117-b4-support-e4cca7ad3106
To: poky@lists.yoctoproject.org
Cc: Quentin Schulz <quentin.schulz@cherry.de>
X-Mailer: b4 0.14.2
X-Infomaniak-Routing: alpha
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Mon, 03 Feb 2025 15:21:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13519

From: Quentin Schulz <quentin.schulz@cherry.de>

b4[1] is a very nice tool for mail-based contribution. A config[2] file
exists to set up a few defaults. We can use it to set the Cc recipients
to always add, in our case the mailing list.

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
to both the bitbake and yocto-docs mailing list, this wrapper handles
that. A limitation of the script (lsdiff actually) is that it doesn't
know how to handle empty files, but those should be of rather rare
occurrences.

Note that this script requires hardcoding of paths that are handled by
different projects to map files to projects. Anything not mapped is
assumed part of OE-Core.

[1] https://pypi.org/project/b4/
[2] https://b4.docs.kernel.org/en/latest/config.html

Signed-off-by: Quentin Schulz <quentin.schulz@cherry.de>
---
This is marked as RFC for two reasons:
- this depends on the following patch series for OE-Core:
  https://lore.kernel.org/openembedded-core/20250203-b4-support-v2-0-848008ad29ea@cherry.de/T/#m24b6594da5d57d0715e16636ad2936b1478f08ae
- this depends on the script used to merge OE-Core into poky to NOT
  overwrite .b4-config from poky added in this patch series with the one
  from OE-Core,

Note that b4 will not work for modifications made to .b4-config for poky
as it'll detect that as being for OE-Core. Since the file will
eventually exist in both repos, I have no clue how to handle that.
---
Changes in v2:
- moved script to OE-Core repo (in another patch series now)
- updated path to reflect new location in OE-Core (scripts/) and name
  (b4-wrapper-poky.py instead of b4-wrapper.py),
- Link to v1: https://lore.kernel.org/r/20250123-b4-support-v1-1-4841f52eccbb@cherry.de
---
 .b4-config | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/.b4-config b/.b4-config
new file mode 100644
index 0000000000000000000000000000000000000000..bdcdff0ca21fa9197be34fc910d3b9200da63905
--- /dev/null
+++ b/.b4-config
@@ -0,0 +1,3 @@
+[b4]
+  prep-perpatch-check-cmd = ./scripts/b4-wrapper-poky.py prep-perpatch-check-cmd
+  send-auto-cc-cmd = ./scripts/b4-wrapper-poky.py send-auto-cc-cmd

---
base-commit: 66f6a6f59b2f0b282376b2752fa86f03d0e848e2
change-id: 20250117-b4-support-e4cca7ad3106

Best regards,
-- 
Quentin Schulz <quentin.schulz@cherry.de>


