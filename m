Return-Path: <frederikbraendstrup@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 961F4C282EC
	for <webhook@archiver.kernel.org>; Fri, 14 Mar 2025 14:46:15 +0000 (UTC)
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
 by mx.groups.io with SMTP id smtpd.web10.16385.1741963566998504653
 for <poky@lists.yoctoproject.org>;
 Fri, 14 Mar 2025 07:46:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=KBdS9jgD;
 spf=pass (domain: gmail.com, ip: 209.85.218.47, mailfrom: frederikbraendstrup@gmail.com)
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-ac298c8fa50so409828266b.1
        for <poky@lists.yoctoproject.org>; Fri, 14 Mar 2025 07:46:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1741963565; x=1742568365; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=xkNRMbEL1aMJs6zPIBTatH0rDadBFTSGBQPdmB1c8vM=;
        b=KBdS9jgDirAzQgN4pNli2pUjpaUwRfmHbADtwqiY9dWcJoc8zgCC3x6xrTS1cy1dYp
         KrhEJsXtRAhkIK2x96JBzG3CMn7d12OALVa8rRO1MDlc2kvhfnSR3MOSdy23p2cztqYu
         zyyAd7kR/597ubsRKg5uK7JfXJQ2/ER+K5Y1jxqIXm045Z/9hvnDykwfWqHWXc90CSSc
         sm8UFCOeuekeKtuheAToeBmsV5yK891wLLiHLxkEuI8+U8PgaAI6TMP3MKg+C0ob4vjE
         HqxOFV3OXIR2E0W6UTCJvFD2iwrk3JhisMJSkf1AXqFpPPqxPFftcrNKfvKV0rx/aZCZ
         s86A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741963565; x=1742568365;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xkNRMbEL1aMJs6zPIBTatH0rDadBFTSGBQPdmB1c8vM=;
        b=EQZlCz8ced/9zkMVBFmgfwvWFRRamJK8pfZBDFl4oVhKhmbhmLaMm8TRuJP/k4Tagh
         1wWN5FdJdWRm8blUE4kWswKG+jqe0VaSmv2YFWIdi0OI1d+LtgQbIIBKhLDTFza27ye2
         NVEF0Y2ED5tt3EoEGa5+SWA6A3Vnvmst9SMXxSF4QkhUDrggg6EdqcMA0YqpcuOQVMr/
         nLV4dxGQXIa2kXXciw7AzarNo7HFNB0Y7fpwBQ6jfL8nC/GtM9j06eE/NynzwYDZ2BDL
         DhmFjjjYmMUPuovmDUa9EKez1A89yoBdj0P6ghoKl/LvPuavtzEDcS4uAcY+oIYgFOBZ
         MzeA==
X-Gm-Message-State: AOJu0YxdBRNPcWpfXDDj/9rfp4f06YLn6BYr05v4bIQ8aVvb24i4H86X
	Al9zKhs+Q+q6RZLa2ERRtyB5L6DJ05kGzzSKBEd/MO3xiAKPSLjPRU6OCgJe
X-Gm-Gg: ASbGncuPzEjbuBgrsdnswc8OdJ818Gp86Gw25er/1GaD7RQ131DfqRFVQ82k8TKDBqc
	gulWTWrI+IYiCIC1Z5siGQZY3dQYeVSQTmOaZeEu1AGvDqrda9ChNaMSSDdGe1RdlmT0JO4xmzQ
	PxdRuh4V82I8FYBxrQF5z28cszp90DjawrK8Ir82EPDR2vSaYIk4PB7vzbQgpx8R1t5E1WZQATA
	WfrGQ0rSBnFHazFmOSxZkwhf4fEmQSI5Bn//9qSMS8TWZsbH8IHGngShXeFBx9bQgX/2dK84AWE
	R2+RqVXaP5MVxvoHRX9UBSW9J7ZIyrj4x1Tf55tdOQgjQVYgv8UkGhOJBsxSomL0wuM7
X-Google-Smtp-Source: AGHT+IHgVJjRWLy8q8PlhKxOXRR2o3yoTg+DWBaUpMxoqFh0bMjUaH9jsmkbw4naMpZy05WBcwz6KQ==
X-Received: by 2002:a17:907:9713:b0:abf:5f3c:58e7 with SMTP id a640c23a62f3a-ac3301e0b4cmr327715666b.3.1741963565130;
        Fri, 14 Mar 2025 07:46:05 -0700 (PDT)
Received: from ws.taila4487.ts.net ([212.98.121.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac3146af05esm236256466b.16.2025.03.14.07.46.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Mar 2025 07:46:04 -0700 (PDT)
From: Frede Braendstrup <frederikbraendstrup@gmail.com>
To: poky@lists.yoctoproject.org
Cc: Frede Braendstrup <frederikbraendstrup@gmail.com>
Subject: [PATCH] Check if version is actually a file
Date: Fri, 14 Mar 2025 15:45:35 +0100
Message-ID: <20250314144539.2885974-1-frederikbraendstrup@gmail.com>
X-Mailer: git-send-email 2.47.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 14 Mar 2025 14:46:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13567

Recipetool incorrectly made the assumption that version is always a
file, but when it's a directory, the call to open fails

Signed-off-by: Frede Braendstrup <frederikbraendstrup@gmail.com>
---
 scripts/lib/recipetool/create_buildsys.py | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/scripts/lib/recipetool/create_buildsys.py b/scripts/lib/recipetool/create_buildsys.py
index ec9d510e23..0a08fc64ca 100644
--- a/scripts/lib/recipetool/create_buildsys.py
+++ b/scripts/lib/recipetool/create_buildsys.py
@@ -808,6 +808,8 @@ class VersionFileRecipeHandler(RecipeHandler):
             version = None
             for fileitem in filelist:
                 linecount = 0
+                if not os.path.isfile(fileitem):
+                    continue
                 with open(fileitem, 'r', errors='surrogateescape') as f:
                     for line in f:
                         line = line.rstrip().strip('"\'')
-- 
2.47.2


