Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.3803.1793405953799498553
 for <poky@lists.yoctoproject.org>;
 Fri, 30 Oct 2026 17:19:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile.fr header.s=google2 header.b=jvM5bl28;
 spf=pass (domain: smile.fr, ip: 209.85.221.51, mailfrom: yoann.congal@smile.fr)
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-48c4649b35bso1230105f8f.3
        for <poky@lists.yoctoproject.org>; Fri, 30 Oct 2026 17:19:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google2; t=1793405952; x=1794010752; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:content-type:mime-version:message-id:date
         :subject:to:from:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=gW7EMoJfzOHn9CmFitx1Y73KhrdWm3OgZaJG+3Em4Lo=;
        b=jvM5bl28oIrTfWQUObumOL9ZLzFJX8Zos/EZnpezz6H3ZMcggqLyTjjQRj8oL1aObg
         ZvGBL5AQPCde/eC96xPOrLZNqFNI45mK2FPll+ljB5ebzVwMUozQSs9WNyVurZS+bgy/
         Ke1yIp4kgH4Rrjw5y+TISveB2jt/gx7+NaDZtRfKg311BTOmyDlt0El8VmdgdZ6W35/g
         zCuMOrRektUI70nNjcdXI5Zk4Gmhz+ElH10iMWAOPt8TZqjWgrq6u3lMZo3UNAjXPnMe
         T/i8j5O0FwrKy9YY78x1Ct5CXYnDQCgfMyl2vD0bFgflISnU1R9eVsSRlxXbeurDUYWy
         Te4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793405952; x=1794010752;
        h=content-transfer-encoding:content-type:mime-version:message-id:date
         :subject:to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=gW7EMoJfzOHn9CmFitx1Y73KhrdWm3OgZaJG+3Em4Lo=;
        b=2fOfV7TRoXcqRvTeb8DtNWW5pzuPQpTkaGbfJML2wX2qnhFLrHrkPoQ4mdqVRVpXZ7
         6Qt9aiEamkgkyVzrs4VyZSLZV7IwnLv9vFSlKiPTq3Gn6Fdp8GuwAcTUvCPD8MWqiHV9
         sR+vepsYuDp2Chv1L2897GXBokEen//lOsAhi2VYzCQ5WKBQkbOPq0vkPTd6BVE4uQbG
         ScbLXe1bQlCJbTznRCSKCgRTv0JC72UIiiMMTpBWnO32KGvTRTAoqaAiGzfOys3OPrb+
         wBsTlLj2WHHfM1qWgbsZ2oZNURZtiaz0er1BiKu8DNcbG6WeWztZ4sZtev5abhsk/Bhl
         DeQw==
X-Gm-Message-State: AFq9FYK+vvUTPN7Rb8XCXIwwL/0y2lAtSvpsip2H7H5PBO22yA9pzJWv
	s7d3AkAEW3GsRbo5eKTbCqF+CRf+9HIPCTAPilzG1ayellGHjMKmFHmWguemyq4+gubG03zO5l5
	1dLEDeqc=
X-Gm-Gg: AYBFou3UJkhIsmdFV1gLZtrdtKox0yCPajGD7PF2oXodtY4lVNsqwzUc1E4bjjUa5ML
	iAGavXeibDOxam7zv+73K9sc4xvWd5z4blnEGxk8yuw8GkFofnMS2YpsG8onFdJ27GDlGz88WvN
	3dkmbHDzZj6SH1LvCc+dWdDzS8Q40zXiIztFK8dkwdzRJGpoFELzP1s7aqUHWxY2fyvvQPthAk1
	6mv32GAebyiQjVeujrtycA7V2Of5Y3g936jA/cU3MP5TLX1BLsCgk3w18KD8nUuC83YWsXnWOZ1
	I11otR/0SUZOpjbMaHgjPvwpcRgZS07LLJtfXEKhZLuy1AMOpic97UcNuX3qM1fhE9B5SHNNBjV
	utCh44PF+kjNzB7Z21Ca8JOGUC1BXpu626IAtW5OJfk0iz1v7sA7rp1nT3tqvRNP7d7IkwCczho
	bQdEQSym22v8eC9W68CLgByfod+xhlfOmIxQOyXwdeyJURrAQirRcRpRLUCr/Ol8n9B+H0PRaAg
	7OSoDD/H/3Q+I1naloyWbyMYsHhFc+RUKIi58Nz+eD7Wv6WTTpcvI4K+CJNt/4jLas5t1o/Qdag
	kDbF71RMo8Opp55xsryUGJ/WPH36NH3pkhAgo6KiGrv8VkJU/w9054ddCTPn8pGsGWVeePuezvW
	aOtos+KY/BwNIXv0xDXO46XkQiSEz
X-Received: by 2002:a05:6000:1603:b0:48d:f36e:ccc0 with SMTP id ffacd0b85a97d-48e6e262c42mr6496619f8f.0.1793405951628;
        Fri, 30 Oct 2026 17:19:11 -0700 (PDT)
Return-Path: <yoann.congal@smile.fr>
Received: from FRSMI25-LASER.home (2a01cb001331aa00a2e4fb7b0d887544.ipv6.abo.wanadoo.fr. [2a01:cb00:1331:aa00:a2e4:fb7b:d88:7544])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48e71ba4ac6sm6140824f8f.52.2026.10.30.17.19.11
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Oct 2026 17:19:11 -0700 (PDT)
From: Yoann Congal <yoann.congal@smile.fr>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][scarthgap 0/3] Patch review
Date: Sat, 31 Oct 2026 01:19:06 +0100
Message-ID: <cover.1793405889.git.yoann.congal@smile.fr>
X-Mailer: git-send-email 2.55.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by lin-tor-korg-lkml-alma10-1 with HTTPS for <poky@lists.yoctoproject.org>; Sat, 31 Oct 2026 00:19:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13981
Content-Type: text/plain; charset="utf-8"

Please review this set of changes for scarthgap and have comments back by
end of day Tuesday, November 3.

Passed a-full on autobuilder:
https://autobuilder.yoctoproject.org/valkyrie/?#/builders/29/builds/5029
* qemuarm64-ptest failed with 16267 – [scarthgap] AB-INT PTEST: python3 failure (test_wrong_cert_tls13)
  retried in https://autobuilder.yoctoproject.org/valkyrie/?#/builders/61/builds/4818

The following changes since commit 8183b55783d45dd45691983bc0b407752a3449f4:

  poky.conf: Bump version for 5.0.21 release (2026-10-07 16:04:08 +0100)

are available in the Git repository at:

  https://git.yoctoproject.org/meta-yocto-contrib stable/scarthgap-review
  https://git.yoctoproject.org/meta-yocto-contrib/log/?h=stable/scarthgap-review

for you to fetch changes up to 34e15a437a792db6778fe1bf62617b307c7f9945:

  yocto-bsps: update to v6.6.160 (2026-10-29 10:01:25 +0100)

----------------------------------------------------------------

Bruce Ashfield (2):
  yocto-bsps: update to v6.6.159
  yocto-bsps: update to v6.6.160

Yoann Congal (1):
  README.hardware.md: Add scarthgap subject-prefix to git-send-email
    suggestion

 meta-yocto-bsp/README.hardware.md                    |  2 +-
 .../recipes-kernel/linux/linux-yocto_6.6.bbappend    | 12 ++++++------
 2 files changed, 7 insertions(+), 7 deletions(-)

