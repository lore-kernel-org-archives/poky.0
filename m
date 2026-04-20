Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C699F588F7
	for <webhook@archiver.kernel.org>; Mon, 20 Apr 2026 16:33:58 +0000 (UTC)
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.23706.1776702837851989672
 for <poky@lists.yoctoproject.org>;
 Mon, 20 Apr 2026 09:33:58 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile.fr header.s=google header.b=B6z527/I;
 spf=pass (domain: smile.fr, ip: 209.85.128.49, mailfrom: yoann.congal@smile.fr)
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-483487335c2so33143965e9.2
        for <poky@lists.yoctoproject.org>; Mon, 20 Apr 2026 09:33:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google; t=1776702836; x=1777307636; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=xRLqrKlFy//YIv0clg59GMZEPNwovSTq4yRpJ2o9dVM=;
        b=B6z527/I46l5oSRW6jy5hWnVA+KDe6W8PLVq8vcyG8MlzaatkTnU+KTJCFvw2jcos6
         qwcg71Wmbay7Jc1UWfXI56tkGEZ+SJlQJhrXbvsP2IF6Rycyp33g7QD1sniGOHWUZLfL
         4Wah46d6r3q6Usid3KepndnYAONALu0v0UNf8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776702836; x=1777307636;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xRLqrKlFy//YIv0clg59GMZEPNwovSTq4yRpJ2o9dVM=;
        b=mHG2dJO7i2Ll0mgiVLk3E2g+n8pgh9WUhpu9cT9GWvsVxk2GK52dAWgvD/7D+PCX7t
         PpqQUYHGhUspYxy/rVYSb7zzqBibm7DLwEoPpZD7eSXYbilaKSjP18WvGeO2jGNPH1gC
         F7HJ4C8bO2GUR1mFKDsMApdkkx4MDAC5Tk9wiPeRWU+KqtZFSuiRlrOGlwJMEuGpTyUV
         5yPZEp8BP8hbWiWZIP2oVaBVymxm1hgIoJ8KERMowrbVC2njmlrk68Ao4SiDVxN9eLq8
         WEbuuBBfP9PM5ICmWf+g2XuK5hAz1NfcUb7RylbSqW3AlHUrLkKCFRqlx9y+WU5xbs4S
         treQ==
X-Gm-Message-State: AOJu0YykF+YuGrim+ikBg6NMzHMGzAGzxKdqb/gF6m11UKU3iR989syE
	Slf0NinGCrd18q9/Nm52eUWpjsVBFaHOpQxNZcmdZLzdx3EKUv9DlLu4JCPwj2E1Ik2hfRHv3OJ
	WzyColYM=
X-Gm-Gg: AeBDietBGZd6VgIjnU+j1OI+h6ReFievVYbbIgXgCXMJ+64ySa0jH6PBg8EkZImyoxU
	C90FL3kZxT+eaz6m4e6ynyajEHDHsxjwxEEOQJ5ub20m4KoLtK5uQmjUrdHQHY9LTVYctBbhpGC
	fvg7jzP094xPJCCJBcICFJkdv8tqNkKP3dPVrFuPWyCS0Nbhgzcbzx3rPofhh0frWC98JXfE3SO
	0eDDS0+pBd/ZVBd1vb0nXeD4PAZ89mT21FJmqXeUFAL7xRrCRnCj4wb+9KIrH8pFDXkJe6v7Mh6
	7lWVhKtHkLpfM361dNMstotxJV/LuCYnl0HyavZBCiLGQ9hFplgF111LMnEno4Wk2EEs5JvGxW1
	qYfb36XTWEAtDxLVGUsjg3p6vHSB3eFR0VfgZ+8NWVYjqbXVNbJCzc1GP/XEOdysCVQ6YMbDjHY
	CH7FIDSt8zOlrMqo4khCFCiRx4cNY0tKFM1xaXlqgHo3/huvYae7Q9u2A2u3yip9A6jYFRQ8JwE
	iEjpfV21N1V2pzwj9Q5dZCrfzVPt17YuP5YpaxCrmPuRnGvo3rdU94=
X-Received: by 2002:a05:600c:c167:b0:488:be21:54b9 with SMTP id 5b1f17b1804b1-488fb747f8cmr207809075e9.8.1776702835929;
        Mon, 20 Apr 2026 09:33:55 -0700 (PDT)
Received: from FRSMI25-LASER.idf.intranet (static-css-ccs-204145.business.bouyguestelecom.com. [176.157.204.145])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4891c320084sm145453065e9.2.2026.04.20.09.33.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Apr 2026 09:33:55 -0700 (PDT)
From: Yoann Congal <yoann.congal@smile.fr>
To: poky@lists.yoctoproject.org
Cc: Paul Barker <paul@pbarker.dev>
Subject: [meta-yocto][whinlatter 0/1] Pull request (cover letter only)
Date: Mon, 20 Apr 2026 18:33:45 +0200
Message-ID: <cover.1776702689.git.yoann.congal@smile.fr>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Mon, 20 Apr 2026 16:33:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13910

Those are the patches from the last patch review:
https://lore.kernel.org/poky/cover.1776322970.git.yoann.congal@smile.fr/T/#t

Passed a-full on autobuilder:
https://autobuilder.yoctoproject.org/valkyrie/?#/builders/29/builds/3678
* qemuarm64-ptest failed with #16150 - AB-INT: oe-selftest-armhost: Failed to start QEMU (hangs with drm)
  https://autobuilder.yoctoproject.org/valkyrie/?#/builders/61/builds/3503
  * ... but was sucessfully retried as:
    https://autobuilder.yoctoproject.org/valkyrie/?#/builders/61/builds/3505

The following changes since commit 9b98ec5e6cfb6c9dc74d3c2e6304eeb274f7c487:

  poky.conf: Bump version for 5.3.3 release (2026-03-16 11:04:02 +0000)

are available in the Git repository at:

  https://git.yoctoproject.org/meta-yocto-contrib stable/whinlatter-next
  https://git.yoctoproject.org/meta-yocto-contrib/log/?h=stable/whinlatter-next

for you to fetch changes up to 612d2774ce53cedf828db4bfd35bd5772e520dd0:

  poky: Fix CentOS Stream 9 distro name (2026-04-14 10:08:31 +0200)

----------------------------------------------------------------

Paul Barker (1):
  poky: Fix CentOS Stream 9 distro name

 meta-poky/conf/distro/poky.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)


