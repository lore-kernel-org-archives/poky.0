Return-Path: <peter.marko@siemens.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 06EFFC30653
	for <webhook@archiver.kernel.org>; Tue, 25 Jun 2024 19:40:25 +0000 (UTC)
Received: from mta-64-226.siemens.flowmailer.net (mta-64-226.siemens.flowmailer.net [185.136.64.226])
 by mx.groups.io with SMTP id smtpd.web11.6079.1719344424198578364
 for <poky@lists.yoctoproject.org>;
 Tue, 25 Jun 2024 12:40:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=peter.marko@siemens.com header.s=fm2 header.b=PjCYju3F;
 spf=pass (domain: rts-flowmailer.siemens.com, ip: 185.136.64.226, mailfrom: fm-256628-202406251940217a4f0e3f671e1f7aba-homogp@rts-flowmailer.siemens.com)
Received: by mta-64-226.siemens.flowmailer.net with ESMTPSA id 202406251940217a4f0e3f671e1f7aba
        for <poky@lists.yoctoproject.org>;
        Tue, 25 Jun 2024 21:40:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; s=fm2;
 d=siemens.com; i=peter.marko@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc;
 bh=UzWkzIXyuLfI/qhQWObAG7eLRM7y4dElvB+LH3T4ays=;
 b=PjCYju3Fndu9poBcJVMMqEwydubHljvQz5a8QTI/GajSCw7r6jJ8ZnkzruWE+x/IXl6txo
 m0HPDaC86RdGpKAYHFni4ug05wGB3GANnrK4QcmASDb+cswW0sBq1AEpw4Kk+3uRge1SzYaT
 XULt0lT8NcK8sIECYSAsOYG7hkJkg=;
From: Peter Marko <peter.marko@siemens.com>
To: poky@lists.yoctoproject.org
Cc: Peter Marko <peter.marko@siemens.com>
Subject: [master][scarthgap][PATCH] poky-sanity: remove True option to getVar calls
Date: Tue, 25 Jun 2024 21:39:33 +0200
Message-Id: <20240625193933.1799800-1-peter.marko@siemens.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Flowmailer-Platform: Siemens
Feedback-ID: 519:519-256628:519-21489:flowmailer
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 25 Jun 2024 19:40:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13395

From: Peter Marko <peter.marko@siemens.com>

Layer cleanup similar to
https://git.openembedded.org/openembedded-core/commit/?id=26c74fd10614582e177437608908eb43688ab510

Signed-off-by: Peter Marko <peter.marko@siemens.com>
---
 meta-poky/classes/poky-sanity.bbclass | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/meta-poky/classes/poky-sanity.bbclass b/meta-poky/classes/poky-sanity.bbclass
index 81cd2eb..a068c73 100644
--- a/meta-poky/classes/poky-sanity.bbclass
+++ b/meta-poky/classes/poky-sanity.bbclass
@@ -1,8 +1,8 @@
 # Provide some extensions to sanity.bbclass to handle poky-specific conf file upgrades
 
 python poky_update_bblayersconf() {
-    current_version = int(d.getVar('POKY_BBLAYERS_CONF_VERSION', True) or -1)
-    latest_version = int(d.getVar('REQUIRED_POKY_BBLAYERS_CONF_VERSION', True) or -1)
+    current_version = int(d.getVar('POKY_BBLAYERS_CONF_VERSION') or -1)
+    latest_version = int(d.getVar('REQUIRED_POKY_BBLAYERS_CONF_VERSION') or -1)
     if current_version == -1 or latest_version == -1:
         # one or the other missing => malformed configuration
         raise NotImplementedError("You need to update bblayers.conf manually for this version transition")
@@ -11,7 +11,7 @@ python poky_update_bblayersconf() {
 
     # check for out of date templateconf.cfg file
     lines = []
-    fn = os.path.join(d.getVar('TOPDIR', True), 'conf/templateconf.cfg')
+    fn = os.path.join(d.getVar('TOPDIR'), 'conf/templateconf.cfg')
 
     lines = sanity_conf_read(fn)
     index, meta_yocto_line = sanity_conf_find_line(r'^meta-yocto/', lines)
-- 
2.30.2


