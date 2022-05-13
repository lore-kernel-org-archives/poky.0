Received: from mail-yw1-f201.google.com (mail-yw1-f201.google.com [209.85.128.201])
 by mx.groups.io with SMTP id smtpd.web11.6513.1652436250461938405
 for <poky@lists.yoctoproject.org>;
 Fri, 13 May 2022 03:04:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@google.com header.s=20210112 header.b=j45qj6Au;
 spf=pass (domain: flex--jackwa.bounces.google.com, ip: 209.85.128.201, mailfrom: 3gs1-ygykbiytkmu6kqyyqvo.mywzyu8vs232.8ym3yz1ytom3.y1q@flex--jackwa.bounces.google.com)
Received: by mail-yw1-f201.google.com with SMTP id 00721157ae682-2f7dbceab08so67715617b3.10
        for <poky@lists.yoctoproject.org>; Fri, 13 May 2022 03:04:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc;
        bh=xCyiukRtGyXWbi3HB2osd8qsoFQhs7r1KFB5D54mwGk=;
        b=j45qj6AutXuqzK0qc61J7ytQoNry72CZ9YcKJ3CaI+6+igv2wRyRPSt9Ohd8c6SAln
         aRl8YhKqlKb4P4LDsut+DE3NXVHA+sIguHcnEcfbsBcXHS33H5gdAyIsRCCY2reJ8mzE
         P0dQ68XWr5FN5iR82sqfQUpTxUPipXcKkhzAskXiII3J6zi3UiKmKyG17o48ajk6PhyD
         rS1zwqjYdlvu1f50BA/yYhekM6UPUkblUNy7lnhfbrN6f8yC5YKC8983TnQeUToHyW81
         Q2dNLqN8LHbgD6CK9suo+oWnsoM/dGi4veUyBXxzdhrdPJvj9NfbEBlp/izfU+zwWQ39
         dOJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=xCyiukRtGyXWbi3HB2osd8qsoFQhs7r1KFB5D54mwGk=;
        b=Dw7WLA63+6YQ2N2kZ/qcyFLYP/x0BHDmt4YU/pxlt/t/URwTummrQUxqmGpOM4i+bb
         P5CMTes/kVwq4xs6t46ZWKiThhLDc5DogJVVJu5SddHyxPumPYBcLqXxMbZEi7+S/Y5i
         tw6M0Rzn/YYfW0VODtijcekQAZQrkXkcjLNtn06V0HwWOKPq7yp4LqrbL07qU65FjGu6
         Eb9q33QAlER4jEl5jkRN3y5Y/5qTkByqb9T0khhCgRgB8L52tHBtzJqornceriO5K4/d
         iIgpoHihaQeblhj1283t2HXjtAckVqO2MHLKYwNqaryVzQkCFA/V9ZN7ItmMwV+dqPys
         9EjA==
X-Gm-Message-State: AOAM532yRxuG5GvRBQkuaoaide8pF+LKWo6868c6v0cLGgs3WJZxOQCy
	FoMectZTYMI9lOrgkDb6X+bGbGU/0NupEGj5LmmAlGgxUFAAx2OeKKHIjkC5PfEm7d8EmyyBdPR
	9doZht3urjTs3vXvCB97d2llzcQDbc47q54zcy7rclVmOOPY1lkYnOd6dPfWM0VRTorNc
X-Google-Smtp-Source: ABdhPJwsUpOxTPXiyf1tNyWT8NOc3iTB1tib9+W65ZFdYCZAsYvmU3oUPF/89I20kIQaVOFmuoq/gcB6D48=
X-Received: from jackwa-linuxtop2.c.googlers.com ([fda3:e722:ac3:cc00:3:22c1:c0a8:1517])
 (user=jackwa job=sendgmr) by 2002:a81:ff05:0:b0:2eb:4478:a5a3 with SMTP id
 k5-20020a81ff05000000b002eb4478a5a3mr4528445ywn.477.1652436249547; Fri, 13
 May 2022 03:04:09 -0700 (PDT)
Date: Fri, 13 May 2022 10:04:02 +0000
In-Reply-To: <cover.1652432972.git.jackwa@google.com>
Message-Id: <cd3eab51e6e36e3c7f029878907c8f45227516dd.1652432972.git.jackwa@google.com>
Mime-Version: 1.0
References: <cover.1652432972.git.jackwa@google.com>
X-Mailer: git-send-email 2.36.0.550.gb090851708-goog
Subject: [PATCH 1/1] Do setuid before git operations
From: "Jack (Szu-Chieh) Wang" <jackwa@google.com>
To: poky@lists.yoctoproject.org
Cc: ryanoleary@google.com, Jack Wang <jackwa@google.com>
Content-Type: text/plain; charset="UTF-8"

After 2.35.2, git operations aren't considered safe when running in
directories owned by other users.
This patch attempts to setuid to the uid of the directory owner before
doing the git operations.

Signed-off-by: Jack (Szu-Chieh) Wang <jackwa@google.com>
---
 meta/classes/metadata_scm.bbclass | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/meta/classes/metadata_scm.bbclass b/meta/classes/metadata_scm.bbclass
index 47cb969b8d..bb2f494533 100644
--- a/meta/classes/metadata_scm.bbclass
+++ b/meta/classes/metadata_scm.bbclass
@@ -22,18 +22,22 @@ def base_get_metadata_svn_revision(path, d):
 
 def base_get_metadata_git_branch(path, d):
     import bb.process
+    import os
+    stat_info = os.stat(path)
 
     try:
-        rev, _ = bb.process.run('git rev-parse --abbrev-ref HEAD', cwd=path)
+        rev, _ = bb.process.run('git rev-parse --abbrev-ref HEAD', cwd=path, preexec_fn=lambda : os.setuid(stat_info.st_uid))
     except bb.process.ExecutionError:
         rev = '<unknown>'
     return rev.strip()
 
 def base_get_metadata_git_revision(path, d):
     import bb.process
+    import os
+    stat_info = os.stat(path)
 
     try:
-        rev, _ = bb.process.run('git rev-parse HEAD', cwd=path)
+        rev, _ = bb.process.run('git rev-parse HEAD', cwd=path, preexec_fn=lambda : os.setuid(stat_info.st_uid))
     except bb.process.ExecutionError:
         rev = '<unknown>'
     return rev.strip()
-- 
2.36.0.550.gb090851708-goog

