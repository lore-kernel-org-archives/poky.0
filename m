Return-Path: <alexander.sowarka@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 049EBC7115A
	for <webhook@archiver.kernel.org>; Mon, 16 Jun 2025 18:46:23 +0000 (UTC)
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
 by mx.groups.io with SMTP id smtpd.web11.4884.1750099573456187459
 for <poky@lists.yoctoproject.org>;
 Mon, 16 Jun 2025 11:46:13 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=zdP9u/76;
 spf=pass (domain: linaro.org, ip: 209.85.214.174, mailfrom: alexander.sowarka@linaro.org)
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-236470b2dceso41399155ad.0
        for <poky@lists.yoctoproject.org>; Mon, 16 Jun 2025 11:46:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1750099572; x=1750704372; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=YVLCigcwqjmjxbSL3+b1BhMCGZCUFCP/tUCRjaKSZbM=;
        b=zdP9u/76a32lbEux51zaVTGGrOrsAJPouuTnnbTRNXGTf3RAKX8l7FgGruxCCIZcYY
         Mps2bg+EsmCxL7l2ar2BEnvKUyy6zk5MO+p1Tsd2jrpkAdYMJTg1m2XW9jtqqdWlbDKb
         C3S+4UVZj7vWw8nyyG3dgKYIjbwxXIwV6ZGgUlzNOJkyfdAmk9jtAwwkNqjPBkuuoCmO
         8WdPUp+7WZRjgWh+Cb8/bWV/kCacXmXnCrK7A2mXbihdHKvzdgdJG0CKrLUsY8JMhrMI
         cBPCZdE22dHFuQzgRlxZLX7z0V3ZoyRGcI+duOpLs99//TGWaRI9glvTUonzhpXGMGPL
         czwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750099572; x=1750704372;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YVLCigcwqjmjxbSL3+b1BhMCGZCUFCP/tUCRjaKSZbM=;
        b=Q+Q3wEJBzyl8skQ8Pob5d+vMaN3lm/RIbftqgzS9sV3xaWSucc/9gyOy/CSu2WVi+x
         NL/VMNNCN7tAftLK2zNlO1CLN2HQUWCWeaCHixp4CD8+xbxprbk/zITZHA0WzQDAuHqC
         lpYJnNH0dg4EbJdglXaXJhRdnsXoB9QRapmGwMtxutuhdUD32a8wSR+Jigrv0rbzQkNs
         duJ8Gdr1+erSEh2Sp/EXqeZLUONBOZ64ktw+0OR0jg/ygNkbq0HNWm18u3YMf5ipRzj0
         fl7U3LtfBcZTAAD4vvW6bO5XzihJFuMPGWv+hWY7LlIck6UngOjpvyJ2uQXppN0U5nOs
         uBpw==
X-Gm-Message-State: AOJu0Yzo6jm7qj0kJJFwh+D9q4QUcxHE852llRTwFbTIwlVdeNQ5fzkX
	xAwqeMBz0Qi4/oApl0MZR7t0tKAWKLcolMW1x0LIFVMHOkGfaOz4juvvKqCy3NnJDPvYAgg5qOm
	OvSUrdEA=
X-Gm-Gg: ASbGncvGLjltE37mU5Nf22jvUMpjxU10gTeGQ++kU1Sl7BTBJxFHlCYgKb2u7MW8WmK
	QfjFSC2bz/HIbdxnVTGHkbbRJ+1aNhD4kZ2HMd1y7M8z3YvVGO7Z161XRZEuSbzpjXIv0GJZNNK
	M6xOqmzHIr6Rn3G6BfhNos1oE/NZeuGmREzpTE9sxhXGxq7htkKBvZlFIm8HPlIgKPKWjIEdTeY
	Zt0+5j/OHdrwugWRAlIvOeU1Iqqx8RFDtaka8aNnydfM7wL4BEiTde7evyKBuWm7ujBkmkMxrkt
	m/f6kI6JAViPL9uz5YMfkDo9CYqN0lSYEGTToDT4ZsT9HAXiowyhGcHVgG81pCg=
X-Google-Smtp-Source: AGHT+IGnUXMUwc/Ic4uofk7HSVZ8RUprJoEG0D/dbuLYUvl8z2h3/42TNd8RGyH0o9peuYGMFWm7kQ==
X-Received: by 2002:a17:903:244c:b0:235:7c6:ebc2 with SMTP id d9443c01a7336-2366b316ad0mr170898645ad.4.1750099572521;
        Mon, 16 Jun 2025 11:46:12 -0700 (PDT)
Received: from fedora.. ([2804:14c:117:3195::1009])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2365d88c0b3sm65193175ad.37.2025.06.16.11.46.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Jun 2025 11:46:12 -0700 (PDT)
From: Alexander Sowarka <alexander.sowarka@linaro.org>
To: poky@lists.yoctoproject.org
Cc: Alexander Sowarka <alexander.sowarka@linaro.org>
Subject: [PATCH 0/1] Change genericarm64 machine to use the in-tree kernel config
Date: Mon, 16 Jun 2025 15:46:06 -0300
Message-ID: <20250616184607.92039-1-alexander.sowarka@linaro.org>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Mon, 16 Jun 2025 18:46:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13649

We are currently working on ARM SystemReady compliance and we are using
poky as a test Linux distro on multiple devices. But despite the claim that
the genericarm64 machine will work on most SystemReady devices, we realized
that the kernel lacks critical drivers. E.g. on a Raspberry PI with SystemReady
compatible firmware, the network will not come up.

The arm64 configuration in the mainline kernel repository is a lot
more generic and is also used by ARM in their own compliance test images.

As more and more platforms are adopting SystemReady, I think it will
be a lot easier to rely on the in-tree config then maintaining a completely
separate kernel configuration inside poky.

Currently it is mandatory to also set KCONFIG_MODE despite 'alldefconfig' being
the default according to the documentation. I submitted another patch to
openembedded-core to fix that behaviour.

Alexander Sowarka (1):
  linux-yocto: Use in-tree config for genericarm64

 meta-yocto-bsp/recipes-kernel/linux/linux-yocto-dev.bbappend | 2 ++
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.6.bbappend | 2 ++
 2 files changed, 4 insertions(+)


