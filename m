Received: from mail-oa1-f53.google.com (mail-oa1-f53.google.com [209.85.160.53])
 by mx.groups.io with SMTP id smtpd.web10.32673.1665946882897557494
 for <poky@lists.yoctoproject.org>;
 Sun, 16 Oct 2022 12:01:23 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=lTdPAic5;
 spf=pass (domain: gmail.com, ip: 209.85.160.53, mailfrom: festevam@gmail.com)
Received: by mail-oa1-f53.google.com with SMTP id 586e51a60fabf-1322d768ba7so11324169fac.5
        for <poky@lists.yoctoproject.org>; Sun, 16 Oct 2022 12:01:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=T2MouWZowhJMhnY2lXwiLJJ73z8gy7Wf5SRlLuPJng0=;
        b=lTdPAic5ot9xtEEgMG8ZxMuLpK3sEIUVk+noUvNa+UvquRWqc5OFdtKSXP8Cp/qRcf
         K1i+NKXCkvMTbAwflpTa02frY9in5GY/CiHSZeZdv250MhULfFU8egDnXd5gto3h3eV1
         xrW6BVJ87pJf6sBCuS6lxIo75BzkCAV3aOtcdMz1y2Dli3Fbx2Rtpv4pcbWtuGZDyHpR
         GgFZiGUvjvobbiEO5DtKposaAT6+yo0cvabCAIEtv82GPIJex7dQRU3+L/8ZlB0d2654
         rq8P3N2oFAl03+TJo56rRR+zB+c0jwFjV5S2B6oBPz/PGtsKIFnEr88k8ygDXkGt4xlm
         b1SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=T2MouWZowhJMhnY2lXwiLJJ73z8gy7Wf5SRlLuPJng0=;
        b=tL59DkR2xi5vGFCA1LInvZrz5TxGuAr/jfL7+vtsLEEqpHmV4SgmYwMSQU019q+QiL
         9RcFOh5Nc7DhNG/W1Xyr9A8i6YOBOvepx9WABDOoA35UM2CFCYv5V5eWqK525ibbPMnc
         gGEf3b2fLVOZCy4LUqYuQ7gKVjZbq+TwClcZC2I3tx0YPZSRZdsT79RZ9pL44R67/X0x
         /RUGyUttRalKC0PjkeLovJ+wiEunaqFoItu7R+FfIx7NidS/BsU2dBeE3LFyZz8pMVS5
         zn2ENX1eojDC0GpBykF7syh00KQRtSTwdBBgWkJOCqC7nfT/+SyWLrf5LxznLdkX+u/U
         dDIQ==
X-Gm-Message-State: ACrzQf20tcK+2EZ5YoJdwwn0RSZ3HeGuW8SOqZlsKdpy7ed5NYyO27I5
	bSEsWyA3P3QC7csBJTMAaJQq+RKKQ7Q=
X-Google-Smtp-Source: AMsMyM4nxMYCnRwpczqB3a2czoIrxes8w1TiIMqRuVock75b87uA7UfFp4Vr58Yma7l5BhbCQTDxGg==
X-Received: by 2002:a05:6870:524b:b0:132:fe86:4be9 with SMTP id o11-20020a056870524b00b00132fe864be9mr4053645oai.102.1665946881898;
        Sun, 16 Oct 2022 12:01:21 -0700 (PDT)
Return-Path: <festevam@gmail.com>
Received: from localhost.localdomain ([2804:14c:485:4b69:df5b:95c7:e46e:6f46])
        by smtp.gmail.com with ESMTPSA id 88-20020a9d02e1000000b00661c43eec5dsm3903720otl.30.2022.10.16.12.01.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 16 Oct 2022 12:01:21 -0700 (PDT)
From: "Fabio Estevam" <festevam@gmail.com>
To: poky@lists.yoctoproject.org
Cc: Fabio Estevam <festevam@gmail.com>
Subject: [poky][PATCH] go-mod.bbclass: Remove repeated word
Date: Sun, 16 Oct 2022 16:01:16 -0300
Message-Id: <20221016190116.3238532-1-festevam@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The word 'the' appears repeatedly. Remove one occurrence.

Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
 meta/classes-recipe/go-mod.bbclass | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta/classes-recipe/go-mod.bbclass b/meta/classes-recipe/go-mod.bbclass
index 927746a338be..61571596bcfa 100644
--- a/meta/classes-recipe/go-mod.bbclass
+++ b/meta/classes-recipe/go-mod.bbclass
@@ -6,7 +6,7 @@
 
 # Handle Go Modules support
 #
-# When using Go Modules, the the current working directory MUST be at or below
+# When using Go Modules, the current working directory MUST be at or below
 # the location of the 'go.mod' file when the go tool is used, and there is no
 # way to tell it to look elsewhere.  It will automatically look upwards for the
 # file, but not downwards.
-- 
2.25.1

