Return-Path: <chiachiwu@google.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DAC76C7EE29
	for <webhook@archiver.kernel.org>; Tue, 13 Jun 2023 12:56:26 +0000 (UTC)
Received: from mail-yw1-f202.google.com (mail-yw1-f202.google.com [209.85.128.202])
 by mx.groups.io with SMTP id smtpd.web10.12272.1686660979365253345
 for <poky@lists.yoctoproject.org>;
 Tue, 13 Jun 2023 05:56:19 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@google.com header.s=20221208 header.b=t8hrARj5;
 spf=pass (domain: flex--chiachiwu.bounces.google.com, ip: 209.85.128.202, mailfrom: 3cmeizakkbi0tyzrtyzdbx55x2v.t53651f2z9a9.f5ta56850vta.58x@flex--chiachiwu.bounces.google.com)
Received: by mail-yw1-f202.google.com with SMTP id 00721157ae682-5695f6ebd85so79085837b3.3
        for <poky@lists.yoctoproject.org>; Tue, 13 Jun 2023 05:56:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20221208; t=1686660978; x=1689252978;
        h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=+4/HRxKUwujyUYa3nGEHJVjvG3EuYo/Pr0Drz6Dunmg=;
        b=t8hrARj5yLsJZgFwOz8benp528cVHhBo5Q7HjH+t6hixt9kVJZc+Mgc4tlqfS+W0vy
         wJBVnqmZvwm7dE8FjQeGT4K7JdUtk9DcEgJJ1+ZcltSHBhBhdsCgUg/nyXvjfi6PoYzo
         XkDa24FS8dUxX+GQUuREMePdmMxEpg0J0TILLs4CJeYxi3hTFzZTHzAjbvVLY6YO0e3G
         iA2jv3+cR6dGZ+c76HjlpDtSwNkf9kuo3C2K/Bi5UPlIUD9D7uL1TRHI8F6Wt9kmNmZn
         Kjg4AGA3FZkWaOr80FlJbt3liAkJmG8COO+00VXbjxsy37XEzQ3VWrFO6/6aVpKVM+EM
         gBwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686660978; x=1689252978;
        h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+4/HRxKUwujyUYa3nGEHJVjvG3EuYo/Pr0Drz6Dunmg=;
        b=JBFyEOnDwPmfD7Yj8+OZEFDVj2hW0pxZSrYDaMjpgC9XtpORA5nWzG4QQj4NJG9K99
         2ifUx6eA3D/sVlSifD6aSgnTnTLh6NxcfEvPA95wLJ1Ztm9JWuyg6Fu/03Pe1XCrUgw4
         G/Rn6YMPP0LTW+7vJ089/CY6mxB0i8PCusrc92QtVII5WMQgZrEsQzbQL3+FoA4APAoX
         X099ZONXZcJ0w/WWvYc7uLuZV7QniHnL5VnXAq4+Ez9KmgfrnnhtHVrlyuRaUMlbn5tr
         rg+LfmjMPMJZthZ+2mHRu+Luf4PMHQaBFJerk23DnHUGZGH68mo6i2G0XR5mmK1O0OSA
         EC7Q==
X-Gm-Message-State: AC+VfDyN6n87jQCJykqIlRvnLL08/ZIsmoo1h9Kq9cGJygg3b3tukYbd
	WeiypTSNwoeJESRBR5ryeqv6Iayb0qxg0EsOye/kMiyoCKU8OLydSDtvzh4hVjFEjUT6w+MdSyL
	jP+H8pvPer1ErtHmY5sOsCHPEc4nUAgN6hzvYMZ42Zt2iUmuVeks03D1t8YgRx8xw8/VpVhXeqd
	/Q
X-Google-Smtp-Source: ACHHUZ7LRja1nvSYQA7nKG+SYZET1MUAApig+cw8armqgD2CJGwuC3/MF6FOdLDAe0G93ao+/z/6UO8GyDe1Chc=
X-Received: from ovssbuild.c.googlers.com ([fda3:e722:ac3:cc00:3:22c1:c0a8:13e4])
 (user=chiachiwu job=sendgmr) by 2002:a05:6902:1682:b0:ba8:4ff5:3217 with SMTP
 id bx2-20020a056902168200b00ba84ff53217mr337233ybb.3.1686660978595; Tue, 13
 Jun 2023 05:56:18 -0700 (PDT)
Date: Tue, 13 Jun 2023 12:56:01 +0000
Mime-Version: 1.0
X-Mailer: git-send-email 2.41.0.162.gfafddb0af9-goog
Message-ID: <cover.1686657637.git.chiachiwu@google.com>
Subject: [PULL][PATCH 0/1] devtool: Fix the wrong variable in srcuri_entry
From: Charlie Wu <chiachiwu@google.com>
To: poky@lists.yoctoproject.org
Cc: Charlie Wu <chiachiwu@google.com>, ryanoleary@google.com
Content-Type: text/plain; charset="UTF-8"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 13 Jun 2023 12:56:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13082

devtool crashes when running "update-recipe" and append changes on the
recipe. It seems like the wrong variable name cause this problem.

The following changes since commit a776dd26677452154384aca7469c396f1978b1c0:

  linux-yocto/6.1: update genericx86* machines to v6.1.30 (2023-06-09 13:55:38 +0100)

are available in the Git repository at:

  https://git.yoctoproject.org/poky-contrib chiachiwu/setuid-before-git-op
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=chiachiwu/setuid-before-git-op

Charlie Wu (1):
  devtool: Fix the wrong variable in srcuri_entry

 scripts/lib/devtool/standard.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

-- 
2.41.0.162.gfafddb0af9-goog


