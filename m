Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com [209.85.221.65])
 by mx.groups.io with SMTP id smtpd.web10.3102.1575461403265078476
 for <poky@lists.yoctoproject.org>;
 Wed, 04 Dec 2019 04:10:03 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=ikd5rJEd;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.65, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f65.google.com with SMTP id y11so8289449wrt.6
        for <poky@lists.yoctoproject.org>; Wed, 04 Dec 2019 04:10:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=yOjKeUHff1diUwakH6ARpB3iOwGEzNz17cbajc4D/ag=;
        b=ikd5rJEdVooZFFx5EPH4/mrVW8VbZgm33DIJkvzLs3/cKwz+vZ9z7AOtlQ3waVMJfV
         WO7Z9fYV4H6/KIGWdbDOsdAcK5mfvAQviQbSg20gEUY5FiPCAW3brjafhIclelYfNy3A
         nt83+6wjanNZoSntSvWlx059E5R2+FD+DJwp4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=yOjKeUHff1diUwakH6ARpB3iOwGEzNz17cbajc4D/ag=;
        b=H2xOVntbo3r6IpwfS39yjFzuj/pOz4QBIEPfFz2IdY/fqsu+w7h8M1oWyG0wqDDu7c
         fCcPIUGb5uAcEL+5vTzaajc9/Rd+BtPFZUbycBqq7kryJrxOw0aNsObaY6AcCEKGO8J2
         Tb3H0We1In+hPputi0tUJmpBoR8JNZX2Cz/EdSAIK2/u8ANCwk+iN58sxfozVatZVoAl
         kQ0jjfnpc3Y/ozLEBWOGsVwqcxWlko4NnyBmQd0+xKJ08T7O4Gpf4d1biUh/ODzrK7Qp
         AIU2fGWOYFmnBYJXArtORk0aZJvM7m6sFLq7Gzdto4GCqilmqs30zxy2y8VGcxV/t+Xv
         tgaA==
X-Gm-Message-State: APjAAAWmrsvnz0K/InBpDbP9FOR+T0HzCLxrotX7FU/URL37HgALpCSz
	RwSsvGEL/uwrFmyTmJlIIfJmsdh6lMU=
X-Google-Smtp-Source: APXvYqxwJ/loQDVET+m7GM31/60ScLEclpx3x0P/W8gToBzJoFHkhPmpNUIL2maCOrMAvzdxharLKA==
X-Received: by 2002:adf:806e:: with SMTP id 101mr3859502wrk.300.1575461401413;
        Wed, 04 Dec 2019 04:10:01 -0800 (PST)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (5751f4a1.skybroadband.com. [87.81.244.161])
        by smtp.gmail.com with ESMTPSA id p10sm6167753wmi.15.2019.12.04.04.10.00
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Dec 2019 04:10:00 -0800 (PST)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: poky@lists.yoctoproject.org
Subject: [PATCH] poky: Default to enabling a local hash equivalence server
Date: Wed,  4 Dec 2019 12:09:59 +0000
Message-Id: <20191204120959.25639-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This doesn't particularly change performance but allows users to have
build speedup doing rebuilds during local development so should be
useful and enabled by default.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 meta-poky/conf/distro/poky.conf | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index 82b20642818..abfeb063b49 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -89,3 +89,6 @@ require conf/distro/include/security_flags.inc
 INHERIT += "uninative"
 
 INHERIT += "reproducible_build"
+
+BB_SIGNATURE_HANDLER ?= "OEEquivHash"
+BB_HASHSERVE = "auto"
-- 
2.20.1

