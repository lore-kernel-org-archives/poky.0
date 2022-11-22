Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com [209.85.216.46])
 by mx.groups.io with SMTP id smtpd.web10.6797.1669158786924173798
 for <poky@lists.yoctoproject.org>;
 Tue, 22 Nov 2022 15:13:07 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112 header.b=D/W+PQgi;
 spf=softfail (domain: sakoman.com, ip: 209.85.216.46, mailfrom: steve@sakoman.com)
Received: by mail-pj1-f46.google.com with SMTP id k5so14463858pjo.5
        for <poky@lists.yoctoproject.org>; Tue, 22 Nov 2022 15:13:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=HAT90LrFOsJgnAUaUw8qLyJ0EJJ08zVzwQpuwY/+dkU=;
        b=D/W+PQgiyeWcxz/jFYq2XD5+nNnLGzAeMbB22urUUVZrEBPwGPpLCxxoBNjQBqCyO+
         ESbOX26+GZR4lZK82yBEXXX+UpSX1oxBUdkMGVMnY1HmMO0SXxFLQyjBlBHbfSRwnz9x
         Uj9LCDwLpcsyBrIkKqV+Wn+IBF1Yh51o9trLuH15oHaJPzf+FTeCkq/r8QRRGFC8n+Yt
         5L/7TOT2E124POs2nCQfagFyNRZSYkE938kCoXmueNc5CjrEvMJwm0z6UnyggIHHwQnD
         VZd/4nZROfD2x5wydDbIatfKLJTpiGAcIvdm5peZWXKl6G/qu4ZEvg8wWP97Ui2ew31Q
         33vQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HAT90LrFOsJgnAUaUw8qLyJ0EJJ08zVzwQpuwY/+dkU=;
        b=P5QCpE6fJhhHBFTQDvkfvj2MLbPEUd33qc8pquMPUjDoFtZEe91V0XFOF2XMDjOvBf
         2sKMK8WpQZL97zGpoJ5WdPwXv72IwFoaI6ZGopMhSANwZRpFRK/WoHqhqp1zYb4PACap
         JOgaB/8nzRfxJ2SL5QRJwLwxKjeo2Dc3rsWE9OxH3/gS10foYHA0dxWfNuGDte4mAapn
         NXIm8O2sIQCwQMWTpQ5WoH7kHokRa3QbLRJSmvtp/CKxFbjmQKX7TAmoOX/l5EHa/HsB
         Bo7/AdgcUQ+9e7AvY3GwRFDz+GH+6KL6QM6qAIe1Dm7UMKWVSsDIKfJQEvLF28aJmMLv
         XuMQ==
X-Gm-Message-State: ANoB5plwXLBaT09XYGLBUH80JiG2c/Kjm+8UerVRqRysBXQi/LPCL834
	xmggRDg2aRxnkV3bbmy92tX1vdcFObdSqbXqTow=
X-Google-Smtp-Source: AA0mqf6o0gF/Yh8qbUf8be2Xlapfia97RTdErecuS8H/bX8UTDxDGGe+vQ3ViSJXFAtMPng7SQxVAw==
X-Received: by 2002:a17:90a:f82:b0:218:a672:79b9 with SMTP id 2-20020a17090a0f8200b00218a67279b9mr14730359pjz.175.1669158785867;
        Tue, 22 Nov 2022 15:13:05 -0800 (PST)
Return-Path: <steve@sakoman.com>
Received: from hexa.router0800d9.com (dhcp-72-253-6-214.hawaiiantel.net. [72.253.6.214])
        by smtp.gmail.com with ESMTPSA id b29-20020aa7951d000000b00561382a5a25sm11263586pfp.26.2022.11.22.15.13.04
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Nov 2022 15:13:05 -0800 (PST)
From: "Steve Sakoman" <steve@sakoman.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][dunfell 0/1] Pull request (cover letter only)
Date: Tue, 22 Nov 2022 13:13:01 -1000
Message-Id: <cover.1669158724.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The following changes since commit 56e2baf3d5d51a0491fb295b8a0bcacacdd1e2f9:

  poky.conf: bump version for 3.1.20 release (2022-10-05 08:39:50 +0100)

are available in the Git repository at:

  https://git.yoctoproject.org/meta-yocto contrib/dunfell-next
  http://git.yoctoproject.org/cgit.cgi/meta-yocto/log/?h=contrib/dunfell-next

Steve Sakoman (1):
  poky.conf: bump version for 3.1.21

 meta-poky/conf/distro/poky.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

-- 
2.25.1

