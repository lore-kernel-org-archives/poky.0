Return-Path: <foss@0leil.net>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6E05C0218B
	for <webhook@archiver.kernel.org>; Thu, 23 Jan 2025 15:44:21 +0000 (UTC)
Received: from smtp-42ac.mail.infomaniak.ch (smtp-42ac.mail.infomaniak.ch [84.16.66.172])
 by mx.groups.io with SMTP id smtpd.web10.13358.1737647055831263898
 for <poky@lists.yoctoproject.org>;
 Thu, 23 Jan 2025 07:44:16 -0800
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: 0leil.net, ip: 84.16.66.172, mailfrom: foss+yocto@0leil.net)
Received: from smtp-3-0001.mail.infomaniak.ch (smtp-3-0001.mail.infomaniak.ch [10.4.36.108])
	by smtp-3-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4Yf4xV0CzRz1CxV;
	Thu, 23 Jan 2025 16:44:14 +0100 (CET)
Received: from unknown by smtp-3-0001.mail.infomaniak.ch (Postfix) with ESMTPA id 4Yf4xT3V8XzFpF;
	Thu, 23 Jan 2025 16:44:13 +0100 (CET)
From: Quentin Schulz <foss+yocto@0leil.net>
Date: Thu, 23 Jan 2025 16:44:00 +0100
Subject: [PATCH RFC] add basic support for b4 contribution workflow
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250123-b4-support-v1-1-4841f52eccbb@cherry.de>
X-B4-Tracking: v=1; b=H4sIAL9jkmcC/22NwQrCMBBEf6Xs2ZVsTQx6EgQ/wKv0EJPV5NKGT
 S2W0n839OzxzTBvFigsiQucmwWEp1TS0FegXQM+uv7NmEJlaFVrFJHFp8byyXmQEVl776wLB1J
 HqIMs/ErfTfaA++0KXQ1jKuMg83Yw0Vb9c02EhMooz4aD1fZ08ZFF5n1g6NZ1/QESz0Z5qQAAA
 A==
X-Change-ID: 20250117-b4-support-e4cca7ad3106
To: poky@lists.yoctoproject.org
Cc: Quentin Schulz <quentin.schulz@cherry.de>
X-Mailer: b4 0.14.2
X-Infomaniak-Routing: alpha
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 23 Jan 2025 15:44:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13512

From: Quentin Schulz <quentin.schulz@cherry.de>

b4[1] is a very nice tool for mail-based contribution. A config[2] file
exists to set up a few defaults. We can use it to set the Cc recipients
to always add, in our case the mailing list.

This also adds a wrapper script that is called by b4 to check that each
patch in the series is only for one project. Indeed, poky is actually
a "collection" of multiple repositories, namely BitBake,
OpenEmbedded-Core and the Yocto Docs. One patch should therefore not
make changes in multiple of those projects otherwise it cannot be
merged.
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
This is marked as RFC because I believe there's some additional plumbing
required to make this work reliably.

Indeed, OE-Core will also get its own .b4-config,
c.f. https://lore.kernel.org/openembedded-core/20250117-b4-support-v1-1-fe74a5f50eb6@cherry.de/T/#u

So the same file will exist in both OE-Core and poky, at the same
location. The one from poky should always be this one (or with changes
contributed via the poky mailing list) and not overridden during a merge
by an update from the one in OE-Core. Not sure how to handle that yet
though, does anyone know how this merging of trees is done in poky and
what can be done to make this safe?

There's also a decision that was made to not allow patches to different
projects in a series, but maybe that's not desired.

Finally, I'm not sure about the appropriate copyright holder for the
patch and the license, I personally don't care, so up to you.
---
 .b4-config    |   3 ++
 b4-wrapper.py | 162 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 165 insertions(+)

diff --git a/.b4-config b/.b4-config
new file mode 100644
index 0000000000000000000000000000000000000000..26c0dd54e8b1f96bf6d1bf65520c7ec5d72edaa2
--- /dev/null
+++ b/.b4-config
@@ -0,0 +1,3 @@
+[b4]
+  prep-perpatch-check-cmd = ./b4-wrapper.py prep-perpatch-check-cmd
+  send-auto-cc-cmd = ./b4-wrapper.py send-auto-cc-cmd
diff --git a/b4-wrapper.py b/b4-wrapper.py
new file mode 100755
index 0000000000000000000000000000000000000000..d64754cb02309a443eb9b7748877e62731b3ecfb
--- /dev/null
+++ b/b4-wrapper.py
@@ -0,0 +1,162 @@
+#!/usr/bin/env python3
+#
+# Copyright OpenEmbedded Contributors
+#
+# SPDX-License-Identifier: MIT
+#
+# This script is to be called by b4:
+# - through the b4.prep-perpatch-check-cmd with "prep-perpatch-check-cmd" as
+#   first argument,
+# - through b4.send-auto-cc-cmd with "send-auto-cc-cmd" as first argument,
+#
+# When prep-perpatch-check-cmd is passsed:
+#
+#  This checks that a patch makes changes to at most one project in the poky
+#  combo repo (that is, out of yocto-docs, bitbake, openembedded-core combined
+#  into poky and the poky-specific files).
+#
+#  Printing something to stdout in this file will result in b4 prep --check fail
+#  for the currently parsed patch.
+#
+#  It checks that all patches in the series make changes to at most one project.
+#
+# When send-auto-cc-cmd is passed:
+#
+#  This returns the list of Cc recipients for a patch.
+#
+# This script takes as stdin a patch.
+
+import pathlib
+import re
+import subprocess
+import sys
+
+cmd = sys.argv[1]
+
+patch = sys.stdin.readlines()
+
+# Subject field is used to identify the last patch as this script is called for
+# each patch. We edit the same file in a series by using the References field
+# unique identifier to check which projects are modified by earlier patches in
+# the series. To avoid cluttering the disk, the last patch in the list removes
+# that shared file.
+re_subject = re.compile(r'^Subject:.*\[.*PATCH.*\s(\d+)/\1')
+re_ref = re.compile(r'^References: <(.*)>$')
+
+subject = None
+ref = None
+
+if subprocess.call(["which", "lsdiff"], stdout=subprocess.DEVNULL) != 0:
+    print("lsdiff missing from host, please install patchutils")
+    sys.exit(-1)
+
+try:
+    one_patch_series = False
+    for line in patch:
+        subject = re_subject.match(line)
+        if subject:
+            # Handle [PATCH 1/1]
+            if subject.group(1) == 1:
+                one_patch_series = True
+            break
+        if re.match(r'^Subject: .*\[.*PATCH[^/]*\]', line):
+            # Single patch is named [PATCH] but if there are prefix, it could be
+            # [PATCH prefix], so handle everything that doesn't have a /
+            # character which is used as separator between current patch number
+            # and total patch number
+            one_patch_series = True
+            break
+
+    if cmd == "prep-perpatch-check-cmd" and not one_patch_series:
+        for line in patch:
+            ref = re_ref.match(line)
+            if ref:
+                break
+
+        if not ref:
+            print("Failed to find ref to cover letter (References:)...")
+            sys.exit(-2)
+
+        ref = ref.group(1)
+        series_check = pathlib.Path(f".tmp-{ref}")
+
+    patch = "".join(patch)
+
+    project_paths = {
+            "bitbake": ["bitbake/*"],
+            "yocto-docs": ["documentation/*"],
+            "poky": [
+                "meta-poky/*",
+                "meta-yocto-bsp/*",
+                "README.hardware.md",
+                "README.poky.md",
+                ".b4-config",
+                "b4-wrapper.py",
+                ],
+    }
+
+    if cmd == "send-auto-cc-cmd":
+        # Patches to BitBake documentation should also go to yocto-docs mailing list
+        project_paths["yocto-docs"] += ["bitbake/doc/*"]
+
+    # List of projects touched by this patch
+    projs = []
+
+    for proj, proj_paths in project_paths.items():
+        lsdiff_args = [f"--include={path}" for path in proj_paths]
+        files = subprocess.check_output(["lsdiff", "--strip-match=1", "--strip=1"] + lsdiff_args,
+                                        input=patch, text=True)
+        if len(files):
+            projs.append(proj)
+            continue
+
+        # Handle patches made with --no-prefix
+        files = subprocess.check_output(["lsdiff"] + lsdiff_args,
+                                        input=patch, text=True)
+        if len(files):
+            projs.append(proj)
+
+    if len(projs) == 0:
+        # Catch-all for everything not poky-specific or in bitbake/yocto-docs
+        projs.append("openembedded-core")
+
+    if cmd == "prep-perpatch-check-cmd":
+        if len(projs) > 1:
+            print(f"Diff spans more than one project ({projs}), split into multiple commits...")
+            sys.exit(-3)
+
+        # No need to check other patches in the series as there aren't any
+        if one_patch_series:
+            sys.exit(0)
+
+        # This should be replaced once b4 supports prep-perseries-check-cmd (or something similar)
+
+        if series_check.exists():
+            # NOT race-free if b4 decides to parallelize prep-perpatch-check-cmd
+            series_projs = series_check.read_text().split('\n')
+        else:
+            series_projs = []
+
+        series_projs += projs
+        uniq_series_projs = set(series_projs)
+        # NOT race-free, if b4 decides to parallelize prep-perpatch-check-cmd
+        series_check.write_text('\n'.join(uniq_series_projs))
+
+        if len(uniq_series_projs) > 1:
+            print(f"Series spans more than one project ({', '.join(sorted(uniq_series_projs))}), split into multiple series...")
+            sys.exit(-4)
+    else:  # send-auto-cc-cmd
+        ml_projs = {
+            "bitbake": "bitbake-devel@lists.openembedded.org",
+            "yocto-docs": "docs@lists.yoctoproject.org",
+            "poky": "poky@lists.yoctoproject.org",
+            "openembedded-core": "openembedded-core@lists.openembedded.org",
+        }
+
+        print("\n".join([ml_projs[ml] for ml in projs]))
+
+    sys.exit(0)
+finally:
+    # Last patch in the series, cleanup tmp file
+    if subject and ref and series_check.exists():
+        series_check.unlink()

---
base-commit: e59da05be4365c4922e880e07a81549927cd92be
change-id: 20250117-b4-support-e4cca7ad3106

Best regards,
-- 
Quentin Schulz <quentin.schulz@cherry.de>


