Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com [209.85.128.65])
 by mx.groups.io with SMTP id smtpd.web12.1684.1574444387478504870
 for <poky@lists.yoctoproject.org>;
 Fri, 22 Nov 2019 09:39:47 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=cWexpG5U;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.65, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f65.google.com with SMTP id n188so6613647wme.1
        for <poky@lists.yoctoproject.org>; Fri, 22 Nov 2019 09:39:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=61RZUs/2dlMGQpYH7iSJ/2oqrlGwbn4Ab70J3JQYbSc=;
        b=cWexpG5UfnRj6UJuxnJ7yVxi3db/4dpQK/HhxdFWfvoqrebpc8Ki52goef/bkXLOiF
         hYp5uE4XLNihi9mzywUwdHTOMxvUasAjqiI3zAyjv75tZvqKtMHu96Nbnv9DGSOUpiTq
         kjFMuoQpsa4wGYDrfpYLjhPz1Jlz3I3G8moJE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=61RZUs/2dlMGQpYH7iSJ/2oqrlGwbn4Ab70J3JQYbSc=;
        b=VR14S6cPokUCOAj1lmlfV/Bxkp26ytL38F8ZFkM/HHdNreu0k+g5U8JjAKiwuWkZ7Y
         540YOs14o1f2veLUO0kv4GJTX1sVFVFD5raVCV+wnCSFs7KozoJI8PVwmX/OQzegyO1s
         oFn/8D8U1UivpS2B9EEFuyHtFYPMBvGEu4OTAJ/VtB4IGPnp+rX0WpZdrIoeJfaqWMhl
         gwp2wWPT4VrCjH/8MhI/t256OfmTzgGpOCpPjTJar1QVNt16msf7WYSpj65FunCjMxLF
         lBmpoGsfVEY05e6TB2foC8Ay+UpH2+27QlyCR0yum25touWTDz5dvD4KfI2TnbKsGUKw
         qMkg==
X-Gm-Message-State: APjAAAXielupu3ZEiOsBLrS4gx7RD1GzO942yXeTMfOjrugbmOWWSF21
	J42QJlM5TdIYopzFvOxTVR+A/H1PaBI=
X-Google-Smtp-Source: APXvYqyUh27dkMnAVXUALZr7JdohY+ZdYmVCWoVJyTbnK5rdThUPtktdKZxA/IhRJcRqkzomw9bdVw==
X-Received: by 2002:a7b:cf05:: with SMTP id l5mr18473381wmg.44.1574444385376;
        Fri, 22 Nov 2019 09:39:45 -0800 (PST)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (5751f4a1.skybroadband.com. [87.81.244.161])
        by smtp.gmail.com with ESMTPSA id s11sm8238303wrr.43.2019.11.22.09.39.44
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Nov 2019 09:39:44 -0800 (PST)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: poky@lists.yoctoproject.org
Subject: [PATCH] poky: Default to reproducible builds
Date: Fri, 22 Nov 2019 17:39:42 +0000
Message-Id: <20191122173942.5161-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This is essential for sensible use of hash equivalence which we also plan
to enable by default in the next release.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 meta-poky/conf/distro/poky.conf | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index 619414295b2..82b20642818 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -87,3 +87,5 @@ require conf/distro/include/no-static-libs.inc
 require conf/distro/include/yocto-uninative.inc
 require conf/distro/include/security_flags.inc
 INHERIT += "uninative"
+
+INHERIT += "reproducible_build"
-- 
2.20.1

