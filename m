Received: from mail-yb1-f202.google.com (mail-yb1-f202.google.com [209.85.219.202])
 by mx.groups.io with SMTP id smtpd.web09.6471.1652436232892007186
 for <poky@lists.yoctoproject.org>;
 Fri, 13 May 2022 03:03:53 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@google.com header.s=20210112 header.b=SrsEyRnp;
 spf=pass (domain: flex--jackwa.bounces.google.com, ip: 209.85.219.202, mailfrom: 3cc1-ygykbhuctvdptzhhzex.vhfihdreblml.rhvmhikhcxvm.hkz@flex--jackwa.bounces.google.com)
Received: by mail-yb1-f202.google.com with SMTP id b94-20020a25a267000000b0064ba19b0dedso674696ybi.0
        for <poky@lists.yoctoproject.org>; Fri, 13 May 2022 03:03:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=date:message-id:mime-version:subject:from:to:cc;
        bh=mqTZcfON+p9SIfaTzlr5gVPEfXyqA1L5UvNMLlM6Tus=;
        b=SrsEyRnp5aL3ydW6YrQdlHP6KAXHrtKED4kX7PqtoDfy9AjXnB7Eq1A+ah4pZvNvui
         tQL/IpxMXpygEIG8uVVYIOKHYPwsG7qYcHIR460M6B8Z+in5OeMRdrqGXPyplJX/8tZ8
         +cgmLZG9DYWRJnHIuftETuT7mS/X0ik3Cs2X0aGIyCio9yH549PM7j2YNfkoHlEKqlrw
         t8cKB6XgodsILA1DUNtoprknufGx4A7hSXcZpuVssQLijeuN5HlraD7uKrg5hUFfqJOn
         4xtnHapk7QDiocqL/vkmE+YTl/XkXnm7P237gj1dslj5ztIR5VcVQVKnjj0/nxKcCvdO
         rn5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
        bh=mqTZcfON+p9SIfaTzlr5gVPEfXyqA1L5UvNMLlM6Tus=;
        b=0apz54ESQW4h+8lm1/VMaffsK8dmgb/iy0bp3tb09R/Csncu5fGg+IoWNbDgI9Kqw8
         QUKhITO/piFl/2T0mpgzslu4hDSkYIaAKxOHLmnT3pBKdoiWUx14jWBjTTOoAr6cMkVT
         bma0iAipzXled+UTOqSa2P1ftzb75lY4XodRXJpL39nK23XVHl0CLHMeVQLDf9u/ySnK
         c6Vz2gRBEi7n9L4zeY0PdRdSLvEtgQNkMCuy9gzrLGF2vIl1Sx9/Hu5mwBkfeY/Seh5L
         kV1VWeNyyUhBYqpWiL7MBQr6yZzIfhPdxjxpCXI0mygNMAUCWv5g3H4o1OtOmke+VcVq
         Nu7Q==
X-Gm-Message-State: AOAM531hjVEBTypFHLj2wMnOzVhOAoCa6w3DlNHSHPixH8khLj3Fh3+d
	rIj9x9T0gQWnF9IMu0g81YChkahsNtZO1Qj77gshYjd/THYSc56eRiUsB8SQ5TjrOvYBAW2Y8nn
	/s+x/vSi42jP8CkhYODFe9uC5WFe9xIRI4WrXosJMi0tSM9w2yEI5OnPl3Njg1uZxE9z1
X-Google-Smtp-Source: ABdhPJynhlfWXG/jsO4xBdphxPZRtgACKyn8BaiCpknVihtLsWASlGlzhlIYcpQ9zm+tMe1IIU4gtOpSVoE=
X-Received: from jackwa-linuxtop2.c.googlers.com ([fda3:e722:ac3:cc00:3:22c1:c0a8:1517])
 (user=jackwa job=sendgmr) by 2002:a25:618f:0:b0:64b:a448:4ae9 with SMTP id
 v137-20020a25618f000000b0064ba4484ae9mr1097310ybb.263.1652436232025; Fri, 13
 May 2022 03:03:52 -0700 (PDT)
Date: Fri, 13 May 2022 10:03:44 +0000
Message-Id: <cover.1652432972.git.jackwa@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.36.0.550.gb090851708-goog
Subject: [PULL][PATCH 0/1] Do setuid before git operations
From: "Jack (Szu-Chieh) Wang" <jackwa@google.com>
To: poky@lists.yoctoproject.org
Cc: Jack Wang <jackwa@google.com>, ryanoleary@google.com
Content-Type: text/plain; charset="UTF-8"

From: "Jack (Szu-Chieh) Wang" <jackwa@google.com>

/etc/build information missing is because the new git thinks it's
unsafe to do git operations if the directory has a different uid from
the executing process'. However, there are still cases that we are
building the image with a different uid, making git reporting false
alarms. This patch identifies the cases by attempting to setuid to the
owner of the git directory and if this works, it should be the
expected git repo thus safe to do git operations.

The following changes since commit 7b48f329aedc7fcb277302ba6ff167f22e5b1f22:

  scripts/autobuilder-worker-prereq-tests: add additional limit testing (2022-05-11 19:59:44 +0100)

are available in the Git repository at:

  git://git.yoctoproject.org/poky-contrib jackwang/setuid-before-git-op
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=jackwang/setuid-before-git-op

Jack Wang (1):
  Do setuid before git operations

 meta/classes/metadata_scm.bbclass | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

-- 
2.36.0.550.gb090851708-goog

