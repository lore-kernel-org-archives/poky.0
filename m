Return-Path: <yumx@amazon.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0547FCF8864
	for <webhook@archiver.kernel.org>; Sat,  5 Oct 2024 00:16:34 +0000 (UTC)
Received: from smtp-fw-52005.amazon.com (smtp-fw-52005.amazon.com [52.119.213.156])
 by mx.groups.io with SMTP id smtpd.web10.2709.1728087387504935498
 for <poky@lists.yoctoproject.org>;
 Fri, 04 Oct 2024 17:16:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@amazon.com header.s=amazon201209 header.b=uyQ+Ym9G;
 spf=pass (domain: amazon.com, ip: 52.119.213.156, mailfrom: prvs=00128c0f3=yumx@amazon.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
  t=1728087387; x=1759623387;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=Z/cGnU0h7A5g34BZ5yOesAIlXXGpSLzloiEL+u+PBEo=;
  b=uyQ+Ym9G+Uf7tIWPG+jSBTTbx7c0zy7Uj5nR1vzrqCG61DOG6ZEHW/5P
   w/ePRlVosGjYZ18ez/UC4FQ9HeaEEp3U3rmf5kumX3iiKYpZsdmnXr+PF
   1LSrl194Kt2NFgZLshMXccveDq/YSgSRAkFR9dn6TjEgH7rjFYjPgSM0C
   Y=;
X-IronPort-AV: E=Sophos;i="6.11,178,1725321600"; 
   d="scan'208";a="685248590"
Received: from iad12-co-svc-p1-lb1-vlan3.amazon.com (HELO smtpout.prod.us-west-2.prod.farcaster.email.amazon.dev) ([10.43.8.6])
  by smtp-border-fw-52005.iad7.amazon.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Oct 2024 00:16:26 +0000
Received: from EX19MTAUWC002.ant.amazon.com [10.0.21.151:22411]
 by smtpin.naws.us-west-2.prod.farcaster.email.amazon.dev [10.0.25.223:2525] with esmtp (Farcaster)
 id 001ec43f-7276-4516-9311-ac4a6c8c28d1; Sat, 5 Oct 2024 00:16:10 +0000 (UTC)
X-Farcaster-Flow-ID: 001ec43f-7276-4516-9311-ac4a6c8c28d1
Received: from EX19D007UWB001.ant.amazon.com (10.13.138.75) by
 EX19MTAUWC002.ant.amazon.com (10.250.64.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.1258.34;
 Sat, 5 Oct 2024 00:16:09 +0000
Received: from EX19MTAUEC002.ant.amazon.com (10.252.135.146) by
 EX19D007UWB001.ant.amazon.com (10.13.138.75) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.1258.34;
 Sat, 5 Oct 2024 00:16:09 +0000
Received: from email-imr-corp-prod-iad-all-1b-af42e9ba.us-east-1.amazon.com
 (10.43.8.6) by mail-relay.amazon.com (10.252.135.146) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id
 15.2.1258.34 via Frontend Transport; Sat, 5 Oct 2024 00:16:09 +0000
Received: from dev-dsk-yumx-2c-7f1f3a17.us-west-2.amazon.com (dev-dsk-yumx-2c-7f1f3a17.us-west-2.amazon.com [10.189.232.106])
	by email-imr-corp-prod-iad-all-1b-af42e9ba.us-east-1.amazon.com (Postfix) with ESMTP id 130CC4074E;
	Sat,  5 Oct 2024 00:16:09 +0000 (UTC)
Received: by dev-dsk-yumx-2c-7f1f3a17.us-west-2.amazon.com (Postfix, from userid 22995351)
	id CCEFE6A4D; Sat,  5 Oct 2024 00:16:08 +0000 (UTC)
From: Max Yu <yumx@amazon.com>
To: <poky@lists.yoctoproject.org>
CC: Max Yu <yumx@amazon.com>, Przemyslaw Sobon <psobon@amazon.com>
Subject: [PATCH] sstate: remove corrupted artifacts from local mirror
Date: Sat, 5 Oct 2024 00:16:06 +0000
Message-ID: <20241005001606.51818-1-yumx@amazon.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Sat, 05 Oct 2024 00:16:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13449

We observe sstate cache corruptions sometimes which cause rebuilds. That is not
a fatal error as the package has to be rebuilt and updated artifact needs to be
pushed to remote sstate cache mirror. Currently, Yocto does not handle
corruptions properly, where the corrupted artifact is not deleted or
renamed. Later, after the package is built the same corrupted artifact is pushed
to remote mirror and the same procedure is circled again and again.

This change verifies the outcome of the unpacking action and renames the
artifact if a fatal error occurred ("tar" tool returns error 2). In such case we
rename the artifact what causes that a proper one is created and uploaded
overwriting the exisiting one - the corrupted one - in the remote mirror. That
way we break the loop of uploading corrupted file again and again.

Suggested-by: Przemyslaw Sobon <psobon@amazon.com>
Signed-off-by: Max Yu <yumx@amazon.com>
---
 meta/classes-global/sstate.bbclass | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/meta/classes-global/sstate.bbclass b/meta/classes-global/sstate.bbclass
index 11bb892a42..5a7ce35341 100644
--- a/meta/classes-global/sstate.bbclass
+++ b/meta/classes-global/sstate.bbclass
@@ -937,7 +937,12 @@ sstate_unpack_package () {
 		ZSTD="pzstd -p ${ZSTD_THREADS}"
 	fi
 
-	tar -I "$ZSTD" -xvpf ${SSTATE_PKG}
+	if ! tar -I "$ZSTD" -xvpf ${SSTATE_PKG}; then
+		echo "Fatal error extracting sstate cache artifacts, file might be corrupted or truncated, renaming"
+		mv ${SSTATE_PKG} ${SSTATE_PKG}.unpack_error
+		exit 2
+	fi
+
 	# update .siginfo atime on local/NFS mirror if it is a symbolic link
 	[ ! -h ${SSTATE_PKG}.siginfo ] || [ ! -e ${SSTATE_PKG}.siginfo ] || touch -a ${SSTATE_PKG}.siginfo 2>/dev/null || true
 	# update each symbolic link instead of any referenced file
-- 
2.40.1


