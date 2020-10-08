Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
 by mx.groups.io with SMTP id smtpd.web10.2371.1602176393296330575
 for <poky@lists.yoctoproject.org>;
 Thu, 08 Oct 2020 09:59:53 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@meraki.net header.s=google header.b=VMt239IK;
 spf=pass (domain: meraki.net, ip: 209.85.214.170, mailfrom: william.hauser@meraki.net)
Received: by mail-pl1-f170.google.com with SMTP id d23so3052360pll.7
        for <poky@lists.yoctoproject.org>; Thu, 08 Oct 2020 09:59:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=meraki.net; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=uyNfTWJa0Q7thtvW2Tj/yy3931+zu2O6D1MKMx915wo=;
        b=VMt239IKIF9BSDstteZOfchB2GLJgNE7DHyWFJRRli3e9K3fhmIHUaGbRNAPx5ixfp
         STc2rRPcd2u8Rs1mXd/X96aGVWVx+Zyp+IDafNZw8S1hHVqsyXkJqwKaqdHk1+bTRh01
         FuVxvj7tBPmrWm7uo9pdcwdEGli4Y1zGWdnOg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=uyNfTWJa0Q7thtvW2Tj/yy3931+zu2O6D1MKMx915wo=;
        b=kkov7FO9j+livgG4qGVnHKpp/Xz63bj0uuj8lrDLJmVd5cKnKBgVDEde0y8Yuyg70U
         D1asy1u2H1kI2KhLtT0PWfBJeIczwv8zv+9BrZpGzpnbRt/8YgBOoT45OfkfzXoa6yNg
         KVjGMJ8GxMe5/aEgH4knr/W4pjhHJQg2ur3Ia6GxVoJJw1907R+80DZhlUTpXq4juWjb
         SuH4XwM3nlwnfteqekro/CkDUfsZGwF3sivaEERWhSxfCEj9h484M8r1hIaga7Fur/CU
         2QdE87Mg2ZDWEjHJ06rUMDTyng5fPj0/l3xQmLjX2zTOjbWfctgU/M0jlrwj/Oq89NR6
         2EpQ==
X-Gm-Message-State: AOAM533cteWFyXh5SAydvDY+EsVq7pD5p8F7vuV+gOafT8LXaX9Pu0fe
	hzdbpAAram4rPmMv7Yc1OdYAuxlmel8vnA==
X-Google-Smtp-Source: ABdhPJxP3eMJYSUgKbytGFSGU5CNyVXWduuY/znpHLQ+Nh2Y2wKBYZ9Uq8WoeGcB5U/JI9uK1gbY/g==
X-Received: by 2002:a17:902:fe0e:b029:d3:d7fe:88eb with SMTP id g14-20020a170902fe0eb02900d3d7fe88ebmr8254054plj.58.1602176392478;
        Thu, 08 Oct 2020 09:59:52 -0700 (PDT)
Return-Path: <william.hauser@meraki.net>
Received: from localhost.localdomain (192-195-83-200.static.monkeybrains.net. [192.195.83.200])
        by smtp.gmail.com with ESMTPSA id v10sm7614254pjf.34.2020.10.08.09.59.51
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Oct 2020 09:59:51 -0700 (PDT)
From: "William Hauser" <william.hauser@meraki.net>
X-Google-Original-From: William Hauser <whauser@meraki.com>
To: poky@lists.yoctoproject.org
Cc: William Hauser <whauser@meraki.com>,
	William Hauser <william.hauser@meraki.com>
Subject: [PULL][PATCH 1/1] package.bbclass: fix image_debugfs symlinks
Date: Thu,  8 Oct 2020 09:59:40 -0700
Message-Id: <d29d662a45f8a5e845211c59eac3cdbcc779f1fe.1602083275.git.whauser@meraki.com>
X-Mailer: git-send-email 2.15.1
In-Reply-To: <cover.1602083275.git.whauser@meraki.com>
References: <cover.1602083275.git.whauser@meraki.com>

Allow symlinks to be made in the debugfs by removing an incorrect check that
would always prevent symlinks from being transferred over.

The comment in this code indicates that the code is meant to ensure symlinks
are only copied to the debugfs if their target has already been copied, but
instead checks for the existence of the symlink that has yet to be created.
As a result this check always fails.

This check is safe to get rid of since we will only attempt to copy a
symlink to the debugfs if it's original target exists and is an ELF. It
is, however, still possible for a dead symlink to end up in the debugfs
if its original target was stripped.

Signed-off-by: William Hauser <william.hauser@meraki.com>
---
 meta/classes/package.bbclass | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/meta/classes/package.bbclass b/meta/classes/package.bbclass
index e6236c0bb2..47f3df2e13 100644
--- a/meta/classes/package.bbclass
+++ b/meta/classes/package.bbclass
@@ -1258,14 +1258,6 @@ python split_and_strip_files () {
             src = file[len(dvar):]
             dest = debuglibdir + os.path.dirname(src) + debugdir + "/" + os.path.basename(src) + debugappend
             fpath = dvar + dest
-            # Skip it if the target doesn't exist
-            try:
-                s = os.stat(fpath)
-            except OSError as e:
-                (err, strerror) = e.args
-                if err != errno.ENOENT:
-                    raise
-                continue
 
             ltarget = symlinks[file]
             lpath = os.path.dirname(ltarget)
-- 
2.15.1

