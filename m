Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com [209.85.128.68])
 by mx.groups.io with SMTP id smtpd.web11.13951.1595404606657705981
 for <poky@lists.yoctoproject.org>;
 Wed, 22 Jul 2020 00:56:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@boundarydevices-com.20150623.gappssmtp.com header.s=20150623 header.b=pzc5pGnG;
 spf=softfail (domain: boundarydevices.com, ip: 209.85.128.68, mailfrom: gary.bisson@boundarydevices.com)
Received: by mail-wm1-f68.google.com with SMTP id x5so456432wmi.2
        for <poky@lists.yoctoproject.org>; Wed, 22 Jul 2020 00:56:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=boundarydevices-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=fUz+QARsbhC6xSg3lrH6f+KFacJhC986xtpjjeROkaI=;
        b=pzc5pGnGKzQrCdKA5a8Ya3+wUYq/cnJFtPeVgxKOk4AB2b1k4xoeaJhWUUUj27OexN
         boXCOfFaF54r6EQK7Mxg7Sn5JiQPsT3b7AbXnaTZnkKQgAgycNB9b1ARFA5okIIqmNPn
         l4fjw8C2RbOrSS1EH7kAaKShcvTpUISa9VayYeKHnFPnhcq2nPkYKXKPZKmEHvVG01WR
         jtF7FSyskWlm8Zmm4BrUVWNszDveGVjPhc/iVMewUaaOzw3Nyu6Pvv5k1+8hn0otXtk4
         X9CMJHLbsQFtbJXs0p+muZUpLNdg7vaAbFrQ/utQUR5k9e7XB7deRjnq9ZCAvMkAuCzB
         oIQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=fUz+QARsbhC6xSg3lrH6f+KFacJhC986xtpjjeROkaI=;
        b=jxH3upDW/DcRIQpTp2MOptbTHPeqYcUW8iu9M39glcXdywnCgnqfYEWpV7XDbM0Zh5
         tp8BDTovAqExV4Vpq9wPfhe5e29V34n987MnsiQFV7LnH+VqIz5mzyS2H0T6MuGePDGK
         RXppIsMRzuJNxYCf+5XvXMSRdIuHL4a4rr6RpE5eCRh0PZXj1Cs9wcJ+lR2YDoiMpcdv
         azXxyryhv+YYqay5dGYIVmdKsrZxKB0pVFG/Fh+2vONaz7cp4+j9l3xws8z2rZUnDWCE
         W9qosBBvKDQYBsFK2x0WPI6n3YiYGotJO4JGGIatWDTp9EcBFIYLItWS9Ein83EvXd/P
         25yQ==
X-Gm-Message-State: AOAM533ommvNkm8c/TkzQPuQwzB8LHgErnkWB2ouOLsJwzMG3fI1yQZM
	bOhQhvN+yNGuxADSBHxk8joUvMDroJwU/A==
X-Google-Smtp-Source: ABdhPJxw5YbeNZRX62XEyT2/8GDddBc7K++3KA5I1/OE3cJeNaMC5Bx5CFFofkSHwe/doNHoTli6hg==
X-Received: by 2002:a1c:4143:: with SMTP id o64mr7683489wma.28.1595404604887;
        Wed, 22 Jul 2020 00:56:44 -0700 (PDT)
Return-Path: <gary.bisson@boundarydevices.com>
Received: from p1g2.home (2a01cb000f89b400dd7b776bdbba81b8.ipv6.abo.wanadoo.fr. [2a01:cb00:f89:b400:dd7b:776b:dbba:81b8])
        by smtp.gmail.com with ESMTPSA id v29sm16936162wrv.51.2020.07.22.00.56.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Jul 2020 00:56:44 -0700 (PDT)
From: "Gary Bisson" <gary.bisson@boundarydevices.com>
To: poky@lists.yoctoproject.org
Cc: Bruce Ashfield <bruce.ashfield@gmail.com>,
	Richard Purdie <richard.purdie@linuxfoundation.org>
Subject: [PATCH][poky][dunfell] kernel-yocto: account for extracted defconfig in elements check
Date: Wed, 22 Jul 2020 09:56:42 +0200
Message-Id: <20200722075642.1568425-1-gary.bisson@boundarydevices.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Bruce Ashfield <bruce.ashfield@gmail.com>

The test for whether or not scc should to invoked to generate a
config.queue was missing the newly created sccs_defconfig variable.
We need to test for that variable as well, or we may miss generating
the config.queue in some cases.

(From OE-Core rev: 3a95e171d3eaa6ab143d4f422c98a0ac7ad31761)

Signed-off-by: Bruce Ashfield <bruce.ashfield@gmail.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
Hi,

I believe this patch log should also say:
Fixes: 23dcff0d39 (kernel/yocto: ensure that defconfigs are processed first)

What I see on dunfell HEAD currently is that it's impossible to build my
kernel (that uses KBUILD_DEFCONFIG) as the configme step fails because
the config.queue in meta folder is not created.

Adding this patch on dunfell branch fixed the issue, hence this backport
request.

Let me know if you have any questions.

Regards,
Gary
---
 meta/classes/kernel-yocto.bbclass | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta/classes/kernel-yocto.bbclass b/meta/classes/kernel-yocto.bbclass
index 54a1a1627a..3311f6e84e 100644
--- a/meta/classes/kernel-yocto.bbclass
+++ b/meta/classes/kernel-yocto.bbclass
@@ -213,7 +213,7 @@ do_kernel_metadata() {
 	meta_dir=$(kgit --meta)
 
 	# run1: pull all the configuration fragments, no matter where they come from
-	elements="`echo -n ${bsp_definition} ${sccs} ${patches} ${KERNEL_FEATURES}`"
+	elements="`echo -n ${bsp_definition} $sccs_defconfig ${sccs} ${patches} ${KERNEL_FEATURES}`"
 	if [ -n "${elements}" ]; then
 		echo "${bsp_definition}" > ${S}/${meta_dir}/bsp_definition
 		scc --force -o ${S}/${meta_dir}:cfg,merge,meta ${includes} $sccs_defconfig $bsp_definition $sccs $patches ${KERNEL_FEATURES}
-- 
2.27.0

