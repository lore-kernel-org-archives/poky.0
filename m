Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
 by mx.groups.io with SMTP id smtpd.web10.26971.1671468196441863468
 for <poky@lists.yoctoproject.org>;
 Mon, 19 Dec 2022 08:43:16 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112 header.b=BBKUGLc5;
 spf=softfail (domain: sakoman.com, ip: 209.85.214.171, mailfrom: steve@sakoman.com)
Received: by mail-pl1-f171.google.com with SMTP id t2so9594732ply.2
        for <poky@lists.yoctoproject.org>; Mon, 19 Dec 2022 08:43:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=nHd274e5N6rQcO0Uv4frYmvZmzFTS0xigG1m2rXuKxI=;
        b=BBKUGLc5LjbJy6kTO2onXpwxrt4LUiLGBFpBSvKwga6AODo0EyMV3+iUwvsO4BcvKv
         8v6kdQ9ZNOZqHZsX5dNpP9pJeNQ0E3Tu9JMEr4FM9wWGFpZhH7ZJMvDvX8xqf/e56eHb
         xXfkSzkKNKr1JchI7Ov02Dtx9nqQGzOMEW0M+WkHOA/yBdg1+cHTLajadZYXShqzMvC/
         Az6KrPlCKRJDnzgGGkih8+jYIQdZC3iZKrUArvDK4+XHEfXGQYcwsgWfkCAXe/WEEXjr
         v6LAdRS0HOlWaooie8JDTQ4hMSUn1ym1ebHNgPJFyqnrEoylUTTUvsRFGq7Cgagh+v5s
         kfZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nHd274e5N6rQcO0Uv4frYmvZmzFTS0xigG1m2rXuKxI=;
        b=OOHST1qIpeObcYFSFVywOpnSV1JUgdChIfImtE9e39pZ2hbcobxRhllubHOCZcPCkL
         gBHPgZx5PdBxAatHiLscfkZj6kerJnBdmwlr3KbLsmwtctmIuh5OOoD+RUauExJu+VeJ
         27l7mxktAVe1CDUk4M96Tpgr4N5/iQIOSC/l9OA1doAlWhcxWHAPAkjnpFe2NxClb9cd
         Es0ydRQ/4V9yZYpMDpVUpe2winKmH1d8ZzvpzqvX1qv0g2/GzaXifhZlcFx1k/8U9p2C
         ntpMcftu0NIfUHHK62XEiv6KNBalzT1T93ZzaB+b3jk3aTBH7hGSSksZdYjUqkjqeDYy
         Bw8Q==
X-Gm-Message-State: AFqh2kqF5/uTav1SqKhNprTjZWaOdfkl76Q5EoYSQLHelr9X4j/zTfgY
	PgmSzeFecHWTj0QWcJCeU9aj6Npi4mQRb5Rb7iA=
X-Google-Smtp-Source: AMrXdXtPmAsWW2OIEnJ8DzP3LkDMhg3ft/dBBYnH+2beBkMNdMloB8xLj1+KomfFQ1xh8IO8IPtBwA==
X-Received: by 2002:a17:903:40cb:b0:189:bcf8:c1a0 with SMTP id t11-20020a17090340cb00b00189bcf8c1a0mr10464351pld.69.1671468195125;
        Mon, 19 Dec 2022 08:43:15 -0800 (PST)
Return-Path: <steve@sakoman.com>
Received: from hexa.router0800d9.com (dhcp-72-253-6-214.hawaiiantel.net. [72.253.6.214])
        by smtp.gmail.com with ESMTPSA id jf20-20020a170903269400b0018725c2fc46sm7339679plb.303.2022.12.19.08.43.14
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Dec 2022 08:43:14 -0800 (PST)
From: "Steve Sakoman" <steve@sakoman.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][langdale 0/2] Pull request (cover letter only)
Date: Mon, 19 Dec 2022 06:43:10 -1000
Message-Id: <cover.1671467509.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The following changes since commit e911b760d279774d8ab24529a2ffd82c02976feb:

  poky.conf: bump version for 4.1.1 (2022-11-09 17:42:53 +0000)

are available in the Git repository at:

  https://git.yoctoproject.org/meta-yocto contrib/langdale-next
  http://git.yoctoproject.org/cgit.cgi/meta-yocto/log/?h=contrib/langdale-next

Ravula Adhitya Siddartha (2):
  linux-yocto/5.15: update genericx86* machines to v5.15.72
  linux-yocto/5.19: update genericx86* machines to v5.19.14

 .../recipes-kernel/linux/linux-yocto_5.15.bbappend        | 8 ++++----
 .../recipes-kernel/linux/linux-yocto_5.19.bbappend        | 8 ++++----
 2 files changed, 8 insertions(+), 8 deletions(-)

-- 
2.25.1

