Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 12548C48260
	for <webhook@archiver.kernel.org>; Fri, 16 Feb 2024 11:52:30 +0000 (UTC)
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
 by mx.groups.io with SMTP id smtpd.web11.16958.1708084339734850712
 for <poky@lists.yoctoproject.org>;
 Fri, 16 Feb 2024 03:52:20 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=c1nxzAoH;
 spf=pass (domain: gmail.com, ip: 209.85.208.49, mailfrom: alex.kanavin@gmail.com)
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-56399fb02b3so2487859a12.1
        for <poky@lists.yoctoproject.org>; Fri, 16 Feb 2024 03:52:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708084338; x=1708689138; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3jNCdhj6ojzsbcZPE1WrSGJ0oEfnxtXzb9hPrGJOJSk=;
        b=c1nxzAoHsqu4n5lrLMXyFQtqglnuOkgO5eZUjGDM17epYz+fhfnxRsqEdpJNX7v/b8
         kwgduLkZ8XSaoK4GfhtLDVYE3ggeaSS3Vrl08Ap6bq1iNW/g0s+kBXOky7HHsWeQbnU5
         39bOL5sUHI2mwVhhaCWAlGI9kFfEWqzy9+WqU8BNe9knX2qvw3JGQupps0QYYuquMMjd
         tVYpSChuI8TcCwGhDbiX4o3cts0aUkDXhEOyB4aEo76TY6OtoZeMDvvAefvqx5BBCsrv
         eWUmYlUVZdRHFF7UyCd5LeYi54nFkh8r+B6Y/gt0+L/6PikxVhg8A5mq+N9xWmtCxgRh
         +R/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708084338; x=1708689138;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3jNCdhj6ojzsbcZPE1WrSGJ0oEfnxtXzb9hPrGJOJSk=;
        b=soqcU0UtCDBG+zvV+ZN7YDSdB3PbQJYdy8hjXDwgzRs5IKGDHsY89TxjG1y32BK/LS
         BuUD17AZShzFXpKzPPcS1x8Xl+h8DEZakxofe24n4iqJWdKfrLuh/9/HL/75n8bzZuc1
         iz+O5GyML89v2/KNAkFRQKnAsImlAqo2mJQuQtNGqkPvF72nnos3Jln72W75TQ25j2x7
         U/73yfDPCchgeEIJIEBM2kxFTthDiee3VgbBd9pJvyymc1yKaVpcAdshQSFHyhx6Ygjo
         hiXrSRj0KS0rzdkgNwvvHVbQyu9lEdDZYeVInqIrzI56t7Qd87hyYGc5WZETAACCeJGy
         +DTg==
X-Gm-Message-State: AOJu0YxWdZLC90wkeSVe+2E12RujWSHaQYLt83g7O1fQyBHStBDMUdxy
	GS+ylRQFMzkzKQqw/uY81LyNXI9OmQreUQO2qSijRLHCVDBoNyXkH/klsz+4
X-Google-Smtp-Source: AGHT+IGiio2iuxRpB4QY1K1vBPhU2dHxUp1HlkI8UfDC/+XPwDVPM90JuRHsc5imv3MuiAWV1McMkg==
X-Received: by 2002:a17:906:46d1:b0:a3d:300d:4f0b with SMTP id k17-20020a17090646d100b00a3d300d4f0bmr3382388ejs.32.1708084338051;
        Fri, 16 Feb 2024 03:52:18 -0800 (PST)
Received: from Zen2.lab.linutronix.de. (drugstore.linutronix.de. [80.153.143.164])
        by smtp.gmail.com with ESMTPSA id e25-20020a170906081900b00a3d197339dcsm1476369ejd.106.2024.02.16.03.52.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Feb 2024 03:52:17 -0800 (PST)
From: Alexander Kanavin <alex.kanavin@gmail.com>
X-Google-Original-From: Alexander Kanavin <alex@linutronix.de>
To: poky@lists.yoctoproject.org
Cc: Alexander Kanavin <alex@linutronix.de>
Subject: [PATCH 2/2] meta-poky/conf/templates/default/conf-summary.txt: add a template summary
Date: Fri, 16 Feb 2024 12:51:53 +0100
Message-Id: <20240216115153.3342614-2-alex@linutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240216115153.3342614-1-alex@linutronix.de>
References: <20240216115153.3342614-1-alex@linutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 16 Feb 2024 11:52:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13256

Existing conf-notes.txt is not adequate in situations where the user
needs to select a config template from several, or get an overview of them and
is interested only in a brief explanation of what the template is for,
but not extended multi-paragraph instructions for how to use it.

Such summaries can be provided via conf-summary.txt and
this patch adds such a summary for the poky default template.

Updates to the tools and a tool for selecting templates which
will make specific use of the summary will follow.

Signed-off-by: Alexander Kanavin <alex@linutronix.de>
---
 meta-poky/conf/templates/default/conf-summary.txt | 1 +
 1 file changed, 1 insertion(+)
 create mode 100644 meta-poky/conf/templates/default/conf-summary.txt

diff --git a/meta-poky/conf/templates/default/conf-summary.txt b/meta-poky/conf/templates/default/conf-summary.txt
new file mode 100644
index 00000000000..8fc03030c7f
--- /dev/null
+++ b/meta-poky/conf/templates/default/conf-summary.txt
@@ -0,0 +1 @@
+This is the default build configuration for the Poky reference distribution.
-- 
2.39.2


