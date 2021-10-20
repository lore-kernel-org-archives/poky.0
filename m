Received: from mail-pj1-f52.google.com (mail-pj1-f52.google.com [209.85.216.52])
 by mx.groups.io with SMTP id smtpd.web08.9851.1634744745595560772
 for <poky@lists.yoctoproject.org>;
 Wed, 20 Oct 2021 08:45:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112 header.b=r7Tj26v+;
 spf=softfail (domain: sakoman.com, ip: 209.85.216.52, mailfrom: steve@sakoman.com)
Received: by mail-pj1-f52.google.com with SMTP id pi19-20020a17090b1e5300b0019fdd3557d3so2724248pjb.5
        for <poky@lists.yoctoproject.org>; Wed, 20 Oct 2021 08:45:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=JPT4NAQ5/rX+HsI0c80cc3JNnr+DMIuxFeTH/Bd8j04=;
        b=r7Tj26v+KMJVT07T5IYUDF+ncEiscADU6rZI0RkIgG/fSjBVWY0HmsFCFIZbJe1Qdr
         HN54+PUZAT/5cDoBj35YDkSwimeOBr71cVcKTS1JPqiPwwcZmlWx/Ib+CLYuQrj5VgrX
         PrYmn6t9+Nwiag0OtxIu2fW3XjFlXRBlbbxmSKVYByi5hx9bWM+mvR5cde788b/vxYgm
         au4qCK4CUXxFtLCKZa6NqE7lGuzfSFEKdqQ7TwLNqr+PtqVUp4qlF0Oyc4M68nMuIZfn
         wGoknco5UH8UTd8jcFdaEqw9lJkA0Cwg1Wax3BKUEW7JnDBBdodnBelHq8H2YwQZMdPx
         DyKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=JPT4NAQ5/rX+HsI0c80cc3JNnr+DMIuxFeTH/Bd8j04=;
        b=MyWJWjiympeQ02UDD9sVpBC+qZVqyTX5I8FgW/VhPdhg5B6UB2jDNffWsWaqHIfUTl
         pgQPmAJX7QoSCDzPFurYb+KR/pBihTFvXckmyN4sjiq8hFheLpe4pCJBWZPT5yL6xncv
         1n1fWwsG7gbhveekBO8EdPpaBcn+MiEDeQaoRxPBgqtQZMnD3/PnexnLujJQ0G4AA5N8
         LyBaoLgAzOBGvXxK0QiHXWYz94GMdM5nMgFCtQuXGgbvsPdfnZ6+dgjqkbVnqpfeFqDi
         jOWUTlZmTE2gpw0xcJ80CVMjXNB4s6rtXheC6yllqjLLiHkL1XC8Ude/a6nwtCE+RlTd
         HjwQ==
X-Gm-Message-State: AOAM530F+UpobBDhi3Kcc2TfwjitS77tD8DTpS8095oVXmM4YLkxVHPs
	OFeZ9lQioC9XXqMPL+7+C9/tN7vma31vVE829VQ=
X-Google-Smtp-Source: ABdhPJy14LhBjuO/PAbT0NDxjSAepLIMp6LeEtdN/G1d5Pb/9JUc8fuCpSPDK3k9FfRN8hVbilM4OQ==
X-Received: by 2002:a17:90a:7bc8:: with SMTP id d8mr8173014pjl.128.1634744744289;
        Wed, 20 Oct 2021 08:45:44 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from hexa.router0800d9.com (rrcs-66-91-142-162.west.biz.rr.com. [66.91.142.162])
        by smtp.gmail.com with ESMTPSA id o72sm2840179pjo.50.2021.10.20.08.45.43
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Oct 2021 08:45:43 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][dunfell 0/2] Patch review
Date: Wed, 20 Oct 2021 05:45:29 -1000
Message-Id: <cover.1634744401.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Please review this set of patches for dunfell and have comments back by end of
day Friday.

Passed Fedora 34 testing on autobuilder:

https://autobuilder.yoctoproject.org/typhoon/#/builders/56/builds/1629
https://autobuilder.yoctoproject.org/typhoon/#/builders/117/builds/261

Passed Debian 11 testing on autobuilder:

https://autobuilder.yoctoproject.org/typhoon/#/builders/56/builds/1630
https://autobuilder.yoctoproject.org/typhoon/#/builders/117/builds/262

The following changes since commit 7eac76587428202db781f269439ad9d719017289:

  poky: Use SDKPATHINSTALL instead of SDKPATH (2021-09-15 18:34:01 +0100)

are available in the Git repository at:

  git://git.yoctoproject.org/meta-yocto contrib/dunfell-next
  http://git.yoctoproject.org/cgit.cgi/meta-yocto/log/?h=contrib/dunfell-next

Steve Sakoman (2):
  poky.conf: Add fedora 34 as a supported distro
  poky.conf: Add debian 11 as a supported distro

 meta-poky/conf/distro/poky.conf | 2 ++
 1 file changed, 2 insertions(+)

-- 
2.25.1

