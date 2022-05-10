Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
 by mx.groups.io with SMTP id smtpd.web08.698.1652206257410794705
 for <poky@lists.yoctoproject.org>;
 Tue, 10 May 2022 11:10:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112 header.b=TfH461KD;
 spf=softfail (domain: sakoman.com, ip: 209.85.214.172, mailfrom: steve@sakoman.com)
Received: by mail-pl1-f172.google.com with SMTP id d22so17422107plr.9
        for <poky@lists.yoctoproject.org>; Tue, 10 May 2022 11:10:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=WBjnVSZvgntawHAs2RkRvlNzpgbO26dWlkNXwRhtpUQ=;
        b=TfH461KDWSn9dceBRpvkT6+XAQ1U97Mge1CUWvTN+BUuc+MhhxFFo8mWyuipt3FCoW
         PsZ6YhSy+H4/csIZgfURf2WtXP0RZkcNYZccgRQh2AKDwnypg3djkV/yHKtNBFiShqu3
         SS0XEXkFUobTjPXxAhlkNwAHbP6th7TqEHihv2Db9tv39EMkQ5D3AGpi5klIYEiVdtw6
         sWx13dmxXZm5d2e7Wm4XXwbC3Xa1ybmhcb11s15a3SoCSTydXN2Lvc/z3ntujb4YeVNf
         kjHhbNZD0v9GV9CNtSSQXFKVr2ElRXtlgj6mZYCf7obK6jazBM8FnmdtZHuPdrN0txKR
         NR2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=WBjnVSZvgntawHAs2RkRvlNzpgbO26dWlkNXwRhtpUQ=;
        b=daySja1cRzkeUUEewsxRU5BLt5DrZIe8GyNHeUXL5sseVH2x3pT5cp5TIS+76fOwN2
         EUd2+vzp1aEKdNSDQlrqOpkURV7xqGLHGkf/gjc6xfbXpjb/Ym+ppvQXXzqmimheCdOj
         LnIJEAdzEGlDVUjiLzenmdw+kWOwF3Kkbn6wsxTKuulv4zIwYIIPr9IVlcKai53sw8gr
         XaJQOdhpPdV2gp7+GtrDzrBYBaUKNhfWIXJuKLPUQzsl85a1V+xYc4IXjc6DMjrPDxuA
         uuxImGt+fv1Ig7rEAMPg4JcdGrL8AGUydl/R23UIP9NKX5g//wbYtsZQtl0vAcmrCRfA
         fvrA==
X-Gm-Message-State: AOAM531L/amuOTR2qYQKwVPoQ6o4gM+M2AatKC3kXsu92TcualFgBbN5
	RwjwitBIIcUilxZBJeNEIiWG2zv97KyTKW35
X-Google-Smtp-Source: ABdhPJynMebFLQVPOYwzDk7sNNUvzG6TvIhEr0tgCrjYIEOtqXxaacoc0D5iSNLGhJgeecm2hlX04Q==
X-Received: by 2002:a17:902:70cb:b0:158:424e:a657 with SMTP id l11-20020a17090270cb00b00158424ea657mr21641014plt.6.1652206256179;
        Tue, 10 May 2022 11:10:56 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from hexa.router0800d9.com (dhcp-72-253-6-214.hawaiiantel.net. [72.253.6.214])
        by smtp.gmail.com with ESMTPSA id g20-20020a170902869400b0015e8d4eb2c2sm2338508plo.268.2022.05.10.11.10.54
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 May 2022 11:10:55 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][kirkstone 0/2] Patch review
Date: Tue, 10 May 2022 08:10:42 -1000
Message-Id: <cover.1652206108.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Please review this set of patches for kirkstone and have comments back by
end of day Thursday.

Passed a-full on autobuilder:

https://autobuilder.yoctoproject.org/typhoon/#/builders/83/builds/3642

except for a known intermittent issue on the qemumips-alt test, which
passed on subsequent retest:

https://autobuilder.yoctoproject.org/typhoon/#/builders/102/builds/3028

The following changes since commit fa0884372892d43e76c4d3b4486f1851e39edac3:

  local.conf.sample: Update for 4.0 in sstate url (2022-04-13 21:22:15 +0100)

are available in the Git repository at:

  git://git.yoctoproject.org/meta-yocto contrib/kirkstone-next
  http://git.yoctoproject.org/cgit.cgi/meta-yocto/log/?h=contrib/kirkstone-next

Bruce Ashfield (1):
  yocto-bsps: update to v5.15.36

Steve Sakoman (1):
  poky.conf: bump version for 4.0.1 release

 meta-poky/conf/distro/poky.conf                  |  2 +-
 .../linux/linux-yocto_5.15.bbappend              | 16 ++++++++--------
 2 files changed, 9 insertions(+), 9 deletions(-)

-- 
2.25.1

