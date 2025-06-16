Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 38AA4C71135
	for <webhook@archiver.kernel.org>; Mon, 16 Jun 2025 09:51:14 +0000 (UTC)
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
 by mx.groups.io with SMTP id smtpd.web10.26751.1750067464164418768
 for <poky@lists.yoctoproject.org>;
 Mon, 16 Jun 2025 02:51:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=YbzvMCh4;
 spf=pass (domain: gmail.com, ip: 209.85.128.48, mailfrom: alex.kanavin@gmail.com)
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-451d6ade159so34803595e9.1
        for <poky@lists.yoctoproject.org>; Mon, 16 Jun 2025 02:51:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750067462; x=1750672262; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ZnH4zZQwW2QNBWAtOphtNnUvHHv3reR+JddgOX+GSfE=;
        b=YbzvMCh4D/uaMeqpGnU2AC1ak1Zy4q5oggCgc8RGqaTSTHu/NN4YfVI3yfh2La5CPv
         J8gNrUGqFuaZxLZ9lVoSzhOE+5rxoeod6IpXmHUPNMOwg1xdbsKhnpOg7evDtsnemF5a
         KN08RnZwn6ZTMelMjdJ3/sKGDFtyUp/4Ty4izUjiIWaq1CPdGWUomrRmqNawLFKza2U0
         5TdmYWWcd0aT8q7HJD7CdEctPNmuIoBp4WeFHnxPiOMC5C5grQ7w7sz7XypR60C98pEx
         DsmqpH68WpmsdowQXI4Ql0HuC8WkQ2Sx0b9C6kv5zZufOQURvbW9OQ7RKfOq+WWQl+vj
         lcDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750067462; x=1750672262;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZnH4zZQwW2QNBWAtOphtNnUvHHv3reR+JddgOX+GSfE=;
        b=UdKrJefFJptf1BPYiyWuRtY1B+IHMTyDPH+I5v68GSZukVvKjY7CzHuSdAsmtS27PD
         Dq6v8dilfj59UodqcQkzZuzLi9MvNYNhLGDuqwGjjZKThVCj7IKewPn9WGnwWUa0G9lA
         zkBEXjzOzux5A1qK/8GD3mk6IKMG/YNsT8T3FSsTRAWiS4v9znPn6R22LHPcUwMXqSOk
         He9YfeUBESbWtY/FzZQ4uzwSzckvnI1tnTR2VDKelVcUOBQ43CHnjVy3ZntkBpJ1XLEN
         9+eN+PRDBh3+dOtsM/R32kblEvumEYCjPkm8rdszBcWacT1hs26xvWs7nqY/HLQgfrb8
         Pv4A==
X-Gm-Message-State: AOJu0YwPS42nAx1uVHiZslgAoJer/36jNnIY3xVb/IgUEdTqncHOHQIP
	XZv8xHtaP5nV45N8ZH5wrL+lFDrytRLMThbGHPM7LBsKkSwdf5q/rmZhp+6qXw==
X-Gm-Gg: ASbGncsHiCtbz77TuIEzSMZCsxnA77K4jOOCH/sUrwic+ddDbNKGCtkdPBp/5qH/Q/8
	CdXlX2nM0vzjXf4K9SEBDQZGnHbJCAiuuRUp0P4cOrssbz+jVQRaNBA4pkymtsUofYAZ7K88/i7
	q5xadW1fvKh8y31iFIBMOycTRIN9zr0CGSqVOnJAcJBS+g7bvJ5LUCj2JkEEckmOeYi1A6uQvQH
	EJk+bG7a4rhZPD69zdb1lMn9cePC6ELGkEORvCVDeWXO+93DXZp1KqwUAGxJ+F1VCQLEPpDX+lp
	6qe/RQbgwjDezbfJsZiTja5yFPNMuOk8NMpMF29jNNsRHZf/FWG2hV4blF/Da47It1P8MjfkGTo
	prCyzKvtndbHwZZZ6J02Zx+123QDQcth6NQ==
X-Google-Smtp-Source: AGHT+IEpXo+NnCdn0LfwtxEHyJk7XwrnzDis0OzzwY4g9V140lQyJY7ivu59XDjoiQ9E1Ie79bBshA==
X-Received: by 2002:a05:600c:8509:b0:450:cf46:5510 with SMTP id 5b1f17b1804b1-4533cb53b27mr74030095e9.29.1750067462407;
        Mon, 16 Jun 2025 02:51:02 -0700 (PDT)
Received: from Zen2.lab.linutronix.de. (drugstore.linutronix.de. [80.153.143.164])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4532e253f64sm138478505e9.27.2025.06.16.02.51.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Jun 2025 02:51:02 -0700 (PDT)
From: Alexander Kanavin <alex.kanavin@gmail.com>
To: poky@lists.yoctoproject.org
Cc: Alexander Kanavin <alex@linutronix.de>
Subject: [PATCH] meta-poky: set S from UNPACKDIR in recipes that use only local files
Date: Mon, 16 Jun 2025 11:50:59 +0200
Message-Id: <20250616095059.2919634-1-alex.kanavin@gmail.com>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Mon, 16 Jun 2025 09:51:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13648

From: Alexander Kanavin <alex@linutronix.de>

There is no need to have two assignments; also setting S from
UNPACKDIR (and not vice versa) is more logical as unpack
task comes first, and tasks that come after unpack use S to access
unpack results.

Signed-off-by: Alexander Kanavin <alex@linutronix.de>
---
 meta-poky/recipes-core/tiny-init/tiny-init.bb | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/meta-poky/recipes-core/tiny-init/tiny-init.bb b/meta-poky/recipes-core/tiny-init/tiny-init.bb
index 586596259b8..3a774fecc41 100644
--- a/meta-poky/recipes-core/tiny-init/tiny-init.bb
+++ b/meta-poky/recipes-core/tiny-init/tiny-init.bb
@@ -11,8 +11,7 @@ SRC_URI = "file://init \
 	   file://rc.local.sample \
 	  "
 
-S = "${WORKDIR}/sources"
-UNPACKDIR = "${S}"
+S = "${UNPACKDIR}"
 
 do_configure() {
 	:
-- 
2.39.5


