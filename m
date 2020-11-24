Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com [209.85.128.67])
 by mx.groups.io with SMTP id smtpd.web08.53134.1606231106730767422
 for <poky@lists.yoctoproject.org>;
 Tue, 24 Nov 2020 07:18:27 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=NIcS1FNq;
 spf=pass (domain: konsulko.com, ip: 209.85.128.67, mailfrom: pbarker@konsulko.com)
Received: by mail-wm1-f67.google.com with SMTP id p22so2729855wmg.3
        for <poky@lists.yoctoproject.org>; Tue, 24 Nov 2020 07:18:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ZXMoKN7zo6r/FShXFiFaRd4LwHIgssVFfNFNUiaPRls=;
        b=NIcS1FNq5jdxwJYurAPO1UD2Scy4uIhYhWS57+28zSqUbpTboRIFA+a93qDqu5WDa+
         plLGB0Ca7Nncw6TxjWKgo36l59dr6BwM9CgiPjOKM6DbCIyt2NNo9D3+ZenjZ3iPX1AM
         Lqa65sSwG7fWZhgzqUihRroUE6dodWO0NmbEU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ZXMoKN7zo6r/FShXFiFaRd4LwHIgssVFfNFNUiaPRls=;
        b=XsLX/Wj/9GeGa99T7OXgR9MdkrCRZF1KpgAUjHe2buQR3VK2MIHUoe08QgWdnNipM8
         bzdSvBPc27tREcVRsQq1WEK+kzp+XykgF1dBHWFGk0Q6V0+FfXVGoy7bK0x07vgXt7WH
         irGX4SA8K77hb2IqhyznLLK+yWf93OG3ZPLi5NwpCOogflGXcPIxVgRXc+xVPahM1yIf
         RLGSFJqgMXO+gLXnVn1tIFUnpo42F7Z9Se7/yq5Kcksryt5BB7xYUwG3JJA2D9SSH1YS
         FMteIbErhc0wF+BlRxgLfVKVabnzEGam4/nYpf9TeaVjRHIo+wPLJnBchYCSB70/BhXE
         8fzA==
X-Gm-Message-State: AOAM5332S1aEAlgxbf2sSSGdywxeWVyRgXkVWQUQV09ERY/ouP0ZYoDi
	VdNKOTkX2cNu1azx5gOjHfrpMj8I3P/WVg==
X-Google-Smtp-Source: ABdhPJwWpiplQSpzj/9exgY9jY0BpOCZUfnMh9SrGZp4wGGYGq14cJ6ZYaIBwShbCYe09gmEzMJoSQ==
X-Received: by 2002:a05:600c:1497:: with SMTP id c23mr4952665wmh.86.1606231102001;
        Tue, 24 Nov 2020 07:18:22 -0800 (PST)
Return-Path: <pbarker@konsulko.com>
Received: from alpha.home.b5net.uk (cpc76148-clif11-2-0-cust524.12-4.cable.virginm.net. [82.1.54.13])
        by smtp.gmail.com with ESMTPSA id d8sm5743907wmb.11.2020.11.24.07.18.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Nov 2020 07:18:21 -0800 (PST)
From: "Paul Barker" <pbarker@konsulko.com>
To: poky@lists.yoctoproject.org
Cc: Paul Barker <pbarker@konsulko.com>
Subject: [PATCH 2/2] poky.conf: Drop fedora-30 from tested distros
Date: Tue, 24 Nov 2020 15:18:16 +0000
Message-Id: <20201124151816.5845-2-pbarker@konsulko.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201124151816.5845-1-pbarker@konsulko.com>
References: <20201124151816.5845-1-pbarker@konsulko.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The autobuilder no longer contains a worker for this distro.

Signed-off-by: Paul Barker <pbarker@konsulko.com>
---
 meta-poky/conf/distro/poky.conf | 1 -
 1 file changed, 1 deletion(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index bdf46f4038..35c9b1a27c 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -49,7 +49,6 @@ SANITY_TESTED_DISTROS ?= " \
             ubuntu-16.04 \n \
             ubuntu-18.04 \n \
             ubuntu-20.04 \n \
-            fedora-30 \n \
             fedora-31 \n \
             fedora-32 \n \
             fedora-33 \n \
-- 
2.26.2

