Return-Path: <aladyshev22@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1AAF1C54E4A
	for <webhook@archiver.kernel.org>; Fri, 23 Feb 2024 10:39:06 +0000 (UTC)
Received: from mail-ua1-f46.google.com (mail-ua1-f46.google.com [209.85.222.46])
 by mx.groups.io with SMTP id smtpd.web11.7928.1708684738733189688
 for <poky@lists.yoctoproject.org>;
 Fri, 23 Feb 2024 02:38:58 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=fBcOT4l3;
 spf=pass (domain: gmail.com, ip: 209.85.222.46, mailfrom: aladyshev22@gmail.com)
Received: by mail-ua1-f46.google.com with SMTP id a1e0cc1a2514c-7d2e15193bbso453949241.0
        for <poky@lists.yoctoproject.org>; Fri, 23 Feb 2024 02:38:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708684737; x=1709289537; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=V1o49HMxNpOsta3VLS71Xfw672zeK4F9veOMpyiCwVU=;
        b=fBcOT4l3NXp8LBbLnVLsMRhQSY5GSZowbT54psE95Y2pjIm/UUcYHkJfPv9MTlM1Lz
         BZhbwRICutebDpJr19D1pS0epoU6sjKTbPm9ARZ7HshhZf1SX4eVYg5cxeGseKBfsp1Z
         Cri3hwzERk6B/uy3rEB41YOrAhXzLm1OrYvwUJbK3pKXihEdGcv73lCfdiJgrDE29ycl
         KHFH9+ezEZ19qjEaVswKO1cxiYIaLFBgpkKzMZF3cLVGtJ3COgDUb9YVRk3//aibBhUu
         cYSYLeyBn3W5yaYmIAKrEY1KSp6nefhlmOwuy4Rr/akgj77Rbb1tGrtYVeJZhRYIwrmG
         oDVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708684737; x=1709289537;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=V1o49HMxNpOsta3VLS71Xfw672zeK4F9veOMpyiCwVU=;
        b=KI7qDLKWN71m/R32MdCp6tyRFZRcw4lD2wPG/oUU/1U53lqhhHEQlJk7K6uF4LCgx1
         yhEiE9sdkU8JSAQW4Q2zTM1srQQmtqDH44FWPJf4+rmYfsnZ2b5wc6BRhi7x5qjsafrE
         4S5OGCifLhw+ZJLX5cRwwYlhz4Bvss06yB1gp1RWv2zp7WBwbCP7GQs7lZAaPMfFt0pi
         fFwwKD9A7sdDwfJ3j08aeThxDckjpFsxPzomVQbqNaL8xTk7eW/GWuWUs69vmDP357yt
         KRNhZtqx+/rRGgYV0uAcOvewmG6Zw11w3ArMn7biE7LvT0H0zVA83YYMNQ3caffzTLeG
         fsDA==
X-Gm-Message-State: AOJu0YwI0JrTlbfj07w5rYVZ4nMElNx0WPs/pyKHYqaimgBHQ7n+3icz
	2/irL3r0+hJR8avLIuR0SFyztgpUUuXLe21RI0tHxTAC66HZVRFCywDTeepor6kdmbyDHgIKmPZ
	laUh6ETrR9eHzSZZg6xaMNwaPDr/peIBR5K8CeZ5w
X-Google-Smtp-Source: AGHT+IGnnXS9xo6xVX8hFYqOB+Kx/OoQ6/XupOUHLXIezI7NUvG3dPzQKJA22kRikyN5ucQxq+MxzBzjEke7CWsHXRI=
X-Received: by 2002:a05:6102:d93:b0:471:c3f5:45d5 with SMTP id
 d19-20020a0561020d9300b00471c3f545d5mr1885424vst.25.1708684737599; Fri, 23
 Feb 2024 02:38:57 -0800 (PST)
MIME-Version: 1.0
From: Konstantin Aladyshev <aladyshev22@gmail.com>
Date: Fri, 23 Feb 2024 13:38:45 +0300
Message-ID: <CACSj6VUzJzrXGeJFedHSxPoSsG6AoqQereE82jPWyMj_rpyaLQ@mail.gmail.com>
Subject: 'yocto-kernel-tools' requires git version much greater than general
 Yocto requirement
To: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 23 Feb 2024 10:39:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13269

Hello!
I was investigating some problems with the `devtool modify linux`
command and have discovered that part of the problems is generated
from the commit
https://git.yoctoproject.org/yocto-kernel-tools/commit/?id=923a9de418b3ca8592c3fd0a0d0b1e4b29533891
This commit is very simple and just adds the `--no-verify` flag to the
`git am` command. The problem is that this flag was added pretty
recently  (Jan 5 2023 -
https://github.com/git/git/commit/566902f2db3bdad9be7fb083c713f0d21acf111e)
and my host git doesn't have it.
Is it normal that yocto relies on such modern git? Because the yocto
documentation just says `Git 1.8.3.1 or greater`
(https://docs.yoctoproject.org/brief-yoctoprojectqs/index.html#compatible-linux-distribution).
And `git am --no-verify` works from something like `v2.31.6`
apparently.

Best regards,
Konstantin Aladyshev

