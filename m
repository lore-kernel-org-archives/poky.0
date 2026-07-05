Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD7BCC44500
	for <webhook@archiver.kernel.org>; Sun,  5 Jul 2026 22:48:30 +0000 (UTC)
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.139311.1783291707134058983
 for <poky@lists.yoctoproject.org>;
 Sun, 05 Jul 2026 15:48:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile.fr header.s=google header.b=wv413mVe;
 spf=pass (domain: smile.fr, ip: 209.85.221.42, mailfrom: yoann.congal@smile.fr)
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-4799b3f7c83so1564128f8f.2
        for <poky@lists.yoctoproject.org>; Sun, 05 Jul 2026 15:48:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google; t=1783291705; x=1783896505; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=jrBMKbDD7fO0bjgcKsN3fTwmeXpvS9L+ITsRtY7apOs=;
        b=wv413mVez/+fW7GC0fNwncPGLxsFw39Q7zhi1A7Jjw1mGgHGB1EmlGsa/mJ5lDDGTw
         cwd0zEAHTx79JRxw0aeAQQ/kAZNZi8O9TlydboGo+zJCtqgbWl5/R3Ul/gCSsJ++ZHTx
         v/EPAaAVSbOv63854RBDCkyh4zOSlmzE6uugI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783291705; x=1783896505;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jrBMKbDD7fO0bjgcKsN3fTwmeXpvS9L+ITsRtY7apOs=;
        b=IjNWZDByStz3aGih3165EOE8hnuapE1oEnuyzImgi164PAAmSEsxosIbDuMTBlhzQx
         63FTAeZbPVG301VYef5vS7nLtlApQNQfQzb0GqBbo2ftgbeT6Bix/6bLkuTcONwcAQt6
         hdZBzzJH6HIVAp3M3N3YrKxGK1rtLiScmZiwTfc4kHp/I6BSkjiyFzOssTMVmQ12JlMB
         Z6uyAHeSIogMfk72dqGX7NKmp1Ag01SUSneFGELfLZ3bH/XaIsk3dYAokjY/C+EdCfq2
         BIEpZ4o+CKfp4V6zKPQzb78EULXAG38zqA4RO6M9q1d2+y4KEoJOne2mV1no+TngW7Bs
         iiLw==
X-Gm-Message-State: AOJu0Yz5YZ2N0+qd5A8dOoHLQ9YVmX8ZzIdvgRdn+CJulTCOB6Mt/WYf
	pQt10gD6Gub/UXJluz+enXI7fGtffsWUIo7Fvy+1J70nZTGcEYSpcrGZiwaa8Wa9s7aTDkicxge
	zHcDAhnI=
X-Gm-Gg: AfdE7cmBJz3zaqzdxALxNu4wxVUHSdpLSiJt08txGK6TTdb1L+gZUDysKP57TRZg6Fv
	XSYYZe6TUZNXKF8Thd1m3SgvkRJg7l1kfC8lQOdcxfSD5z5w1A/VbPEgnSRl1ddyXB3FkO4TcjB
	1THebn0+qRSYpqhX1GA+mdV9484yq+OLCARofjfwJnoHFD6f7IXvh2eOFxFjNQtCryb++xr8G5h
	efypP2oyEwlWwYQitnwZgTN4YJN5GEIvAvMy3A3rLVUKsbwmc7jgM5l8emgjQu2laxw7xyhzswk
	ryMG8eNhvfEQeTHjg4db+6KBYF/4eIf8Y3kB5PQXu+86eOqwNlODkzWbFXE+C2zXORl4F+fsjtc
	qo1qpr0IrLF4kv456Cx0+DlBgxT6MlUD3h0rQPfGACR9e0rLhgls5/p/lBPCQszf7q2Whxitm9Q
	4qGzKbGPPi882YwfRpwRE0+6j3uA==
X-Received: by 2002:a5d:5b8a:0:b0:474:cd60:1154 with SMTP id ffacd0b85a97d-47aac301897mr6746846f8f.41.1783291704948;
        Sun, 05 Jul 2026 15:48:24 -0700 (PDT)
Received: from FRSMI25-LASER.lan ([2001:861:8010:5750:6d3a:72ff:5857:d2a8])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47a9de1d905sm19346073f8f.2.2026.07.05.15.48.24
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Jul 2026 15:48:24 -0700 (PDT)
From: Yoann Congal <yoann.congal@smile.fr>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][wrynose 0/7] Patch review
Date: Mon,  6 Jul 2026 00:48:10 +0200
Message-ID: <cover.1783291504.git.yoann.congal@smile.fr>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Sun, 05 Jul 2026 22:48:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13929

Please review this set of changes for wrynose and have comments back by
end of day Tuesday, July 7.
This series is linked to this one from OE-Core :
https://lore.kernel.org/all/cover.1783289522.git.yoann.congal@smile.fr/
> Since this is a relatively big series, if you plan to review it but need
> more time to do so, ping me and I'll delay the pull-request.
> 
> Notable changes:
> * kernel upgrade -> v6.18.35 cherry-picked from master
> * clang/llvm upgrade -> 22.1.18 (following master)
> * Licensing fixes
> 
> A previous version of the series, with 4 more patches that I removed and
> should not change test outcome, passed a-full on autobuilder:
> https://autobuilder.yoctoproject.org/valkyrie/#/builders/29/builds/4151
> * oe-selftest-armhost failed with Bug 16236 - AB-INT: test_list_pkg_files: ResourceWarning: unclosed transport
>   retried as https://autobuilder.yoctoproject.org/valkyrie/#/builders/23/builds/4280
> 
> I've started a new build with this version of the series:
> https://autobuilder.yoctoproject.org/valkyrie/?#/builders/29/builds/4156

The following changes since commit 24c24cef5d1523fefe43a3e3d34667b37ae551f3:

  poky.conf: Bump version for 6.0.2 release (2026-06-24 14:12:57 +0100)

are available in the Git repository at:

  https://git.yoctoproject.org/meta-yocto-contrib stable/wrynose-nut
  https://git.yoctoproject.org/meta-yocto-contrib/log/?h=stable/wrynose-nut

for you to fetch changes up to 824795b885b25e074a2880fbcd54e1a6c875d47d:

  yocto-bsps: update to v6.18.35 (2026-06-30 19:19:52 +0200)

----------------------------------------------------------------

Bruce Ashfield (7):
  yocto-bsps: update to v6.18.25
  yocto-bsps: update to v6.18.26
  yocto-bsps: update to v6.18.28
  yocto-bsps: update to v6.18.31
  yocto-bsps: update to v6.18.33
  yocto-bsps: update to v6.18.34
  yocto-bsps: update to v6.18.35

 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.18.bbappend | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)


