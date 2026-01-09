Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD72FD26D64
	for <webhook@archiver.kernel.org>; Fri,  9 Jan 2026 15:08:49 +0000 (UTC)
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.12078.1767971320210480690
 for <poky@lists.yoctoproject.org>;
 Fri, 09 Jan 2026 07:08:40 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile.fr header.s=google header.b=2zDfE5MW;
 spf=pass (domain: smile.fr, ip: 209.85.128.47, mailfrom: yoann.congal@smile.fr)
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-47775fb6c56so41234635e9.1
        for <poky@lists.yoctoproject.org>; Fri, 09 Jan 2026 07:08:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google; t=1767971318; x=1768576118; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=4mmF+wl/xzxTXmfgnFD3rByOtPXy8/ZoXeom73kOq/8=;
        b=2zDfE5MWdM3j5x7h6SM1OklnEFB7pF7As1KDPMC/fa5fvG/GOOlx9QnIW9eaSlE8v7
         cP4Knqneagj6GnT7MnMleICJAB4kmXDJDEbh0J5lLhCZYdGo6sneVUmuehH+QygJpg1n
         H6RA8zI4ULr+sJOB2b2cFMXxPNVFNuYj4SnZg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767971318; x=1768576118;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4mmF+wl/xzxTXmfgnFD3rByOtPXy8/ZoXeom73kOq/8=;
        b=KcHG297mQSMWiwX25SKkk3Hl7q6XHsnkusPBbixUgwsVWUBU4pJdoF5DVxn6Mhq+mj
         4/42Jb+IBFxbZ1CsPcC8d6KdjPpCZ4sbl2MRBHnIkMww1sNKDSz/uqMplqepQ2AhSapW
         KxhM3wqmxm1N/cYmjPUwPgU7OwV7Z40aha7zlbjntP2Xq931OeRr/8QaJralbSuEWuoG
         3VoLk60b2D69byJFR4sGYqZzYKkA1wTe1fm4lVekQI6HTBWQDIiVVo8gNmEHr1dcc2pu
         HA5vSu0XHJRo0XWywxAjtVFFvEzRatzqbtU/mn3dHhLo1/34zjFqZbmu7m1CH+4SSx3s
         LrRA==
X-Gm-Message-State: AOJu0YxWsPa+Shtf2THXeqay188Ch/Dtk4GksFVUFYwh6lOZRn1iM0wm
	bjKFl9G8MaXHM67SgAs1ZykIVoXUyQkC5rJcK3tkM+mAPhMLICxPkGLd4YXO7D/RooaxMDd+JM6
	6LIkW
X-Gm-Gg: AY/fxX4GROxMoZp41zz7PLqnvpWhbFTR+KgjKjh5hCkUijFz50ChfwxuKM8TVWWpo5a
	hUsmpmNm6lTwFHZ70Bl/BkFVir7CTHT3gdEouR/U68axbEx+5rze/PUJwi5qrrQqR9iTzaj0Id9
	Y0oBl9+2eCzl8UjY008UI9TULWQzYIGt0+7jKQ6KggG+pmVss7i27IG6kTHEA0i8EMX+zcZeokR
	+PIaDcT/+TQcqcj7rAmlWMwZhC2GIu8l6HzGNp7OBXREGAAJdKMVRVQHGd9am3kNM0TAzVwQ2/N
	chVdlWS/3LMxgMvmBE5ZdnS/Tn/815ZPAD7PGLVbmhNLDk11XWcrpFy1mPzs61vdDg+urRishGX
	xWJ7q7d62u+YdqDJowidKEOaKH8YjQ+1q9tV641bheuNoMFptboexzUlg7yICpXbrB0hiWQW/wu
	fgCxiV3TydCtooXcJJesvdnKYNVY5W7Wc96jolguQO5ecz42nVAsoFly2Dh5gNe6fev7LddCN4R
	5NQ8OG8oOERp54I
X-Google-Smtp-Source: AGHT+IE6t63GwBJdsj1DCPxSXROWjX+pej1L3mRKZdMRuSCBhCHdayBX0thkrVkht7DJqdoY252oWA==
X-Received: by 2002:a05:600c:4709:b0:479:1348:c614 with SMTP id 5b1f17b1804b1-47d84b41b2dmr114041435e9.26.1767971318334;
        Fri, 09 Jan 2026 07:08:38 -0800 (PST)
Received: from FRSMI25-LASER.home (2a01cb001331aa00280df0dfad12f819.ipv6.abo.wanadoo.fr. [2a01:cb00:1331:aa00:280d:f0df:ad12:f819])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47d87166d0csm67451185e9.6.2026.01.09.07.08.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Jan 2026 07:08:37 -0800 (PST)
From: Yoann Congal <yoann.congal@smile.fr>
To: poky@lists.yoctoproject.org
Cc: Yoann Congal <yoann.congal@smile.fr>
Subject: [meta-yocto][whinlatter 0/1] Pull request (cover letter only)
Date: Fri,  9 Jan 2026 16:08:22 +0100
Message-ID: <cover.1767971061.git.yoann.congal@smile.fr>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 09 Jan 2026 15:08:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13821

This is the poky version bump for the upcoming 5.3.1 whinlatter release.

(You can notice that this bump was missed for the 5.3 release)

The following changes since commit d02d3faaf4d6075ea03e9eb47654ec7639f929a0:

  linux-yocto: Drop 6.17 bbappend (2025-11-25 15:24:29 +0000)

are available in the Git repository at:

  https://git.yoctoproject.org/meta-yocto contrib/whinlatter-next
  https://git.yoctoproject.org/meta-yocto/log/?h=contrib/whinlatter-next

for you to fetch changes up to 1805fbe4fd060471d8a1f6d7f534e0b5f7ab77ac:

  poky.conf: bump version for 5.3.1 (2026-01-09 15:58:25 +0100)

----------------------------------------------------------------

Yoann Congal (1):
  poky.conf: bump version for 5.3.1

 meta-poky/conf/distro/poky.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)


