Received: from smtp1.axis.com (smtp1.axis.com [195.60.68.17])
 by mx.groups.io with SMTP id smtpd.web08.1510.1643423237251561315
 for <poky@lists.yoctoproject.org>;
 Fri, 28 Jan 2022 18:27:17 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@axis.com header.s=axis-central1 header.b=dFb4zG0u;
 spf=pass (domain: axis.com, ip: 195.60.68.17, mailfrom: peter.kjellerstedt@axis.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=axis.com; q=dns/txt; s=axis-central1; t=1643423237;
  x=1674959237;
  h=from:to:subject:date:message-id:in-reply-to:references:
   mime-version:content-transfer-encoding;
  bh=iQ2zAncXbLgaNwSa9aJA5qEI7xWRD6N+nlv5tZOSFfI=;
  b=dFb4zG0u1N7h3UC2QcmDo5bFwLzaE4UWOVxnFyreJXHFxEjSr6LVBzC6
   z7Ct1pZxHl7P1cpT4yne+nv1EsmniOMmha5U678dmKFEJpSFHVhpiYFqw
   0La+h79/VFZtFIETeVSlReTCthytp0FH/+/dnz7glyWv2UpY7slWkBzWz
   anmckWVqPlqHmi02kSWy0fj3zd/lZRkXzmuiwt3pcJPaDLeqaV9UgyDRk
   nDpT77dHwWwWSB5R+61hTUnikXHJUsNEN9oeeiLdPTvavKm/5n5OIcqbC
   R1SuXSgU7Pt6N5QdYcXjBsBEBZE2GbIwb3/4ma7NaYMs+oy+8tb3sSb7A
   w==;
From: "Peter Kjellerstedt" <peter.kjellerstedt@axis.com>
To: <poky@lists.yoctoproject.org>
Subject: [PATCH 2/2] local.conf.sample: Remove unnecessary \n from the SSTATE_MIRRORS example
Date: Sat, 29 Jan 2022 03:27:12 +0100
Message-ID: <20220129022712.18184-2-pkj@axis.com>
X-Mailer: git-send-email 2.21.3
In-Reply-To: <20220129022712.18184-1-pkj@axis.com>
References: <20220129022712.18184-1-pkj@axis.com>
MIME-Version: 1.0
Return-Path: peter.kjellerstedt@axis.com
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

Since commit 044fb04d in bitbake (fetch2: Allow whitespace only mirror
entries) there is no need to separate the entries in SSTATE_MIRRORS
with "\n".

Signed-off-by: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
---
 meta-poky/conf/local.conf.sample | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-poky/conf/local.conf.sample b/meta-poky/conf/local.conf.sample
index 7bdbba06b1..dc7891988f 100644
--- a/meta-poky/conf/local.conf.sample
+++ b/meta-poky/conf/local.conf.sample
@@ -214,7 +214,7 @@ BB_DISKMON_DIRS ??= "\
 # at the end as shown in the examples below. This will be substituted with the
 # correct path within the directory structure.
 #SSTATE_MIRRORS ?= "\
-#file://.* http://someserver.tld/share/sstate/PATH;downloadfilename=PATH \n \
+#file://.* http://someserver.tld/share/sstate/PATH;downloadfilename=PATH \
 #file://.* file:///some/local/dir/sstate/PATH"
 
 #
