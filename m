Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com [209.85.216.51])
 by mx.groups.io with SMTP id smtpd.web10.359.1660080312809478298
 for <poky@lists.yoctoproject.org>;
 Tue, 09 Aug 2022 14:25:12 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112 header.b=dx6GbDgW;
 spf=softfail (domain: sakoman.com, ip: 209.85.216.51, mailfrom: steve@sakoman.com)
Received: by mail-pj1-f51.google.com with SMTP id e8-20020a17090a280800b001f2fef7886eso184041pjd.3
        for <poky@lists.yoctoproject.org>; Tue, 09 Aug 2022 14:25:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=IvmdjygNVM9EqKufakociN83ZFzldPqfGo7TVjrbNic=;
        b=dx6GbDgWG7BS1RM4p9htEdtVfbsGWf4SVfPJnMrOo9XjPtoYfKo6UmXQpNBbfo9xl1
         tZ/6ulsT0K/wNeGdhbxTXbiZKFcy2slWUL3pX5+PQLyxx8xXMXTmRKzg/RndaGBMKl8Y
         fd8+q9gYPVacl6Sa0zcJ9xvF9hJw/h6khKfUr/9EszJYQ+OAbDa2xZd0TSex6LcPF7M9
         NfyrEDVR0+AAaHkfF5BQS0jhS2g5FeZ+y78D8zMB3esuqp8SPiGxFSYpy8Za4I/vB23b
         nck5FB7cc97y4StmHoltAsV4FGEAJc5jiSzF5C4Rfhw8LrzcSnaKhFyy29xD/oQURWRg
         rKxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=IvmdjygNVM9EqKufakociN83ZFzldPqfGo7TVjrbNic=;
        b=1bTuO0B7oUgFguKAUrctBUoCNtQgqek9Bpr3ak4Q7vBh7JtjZcEgz0+ByL81aZ984f
         vyVlGV9yohMxkg2HnwBidgh5h3dYKGg1/xNwsCTvdLoEJapDp09vfGDIV0J6FKzWtZXj
         yUS5l0lprUwm/vkRIVxGLcPmf0dRlrVT2y45JNCaxWNbBdndUzuoZi0aklgjcjnAyq4w
         BATNeQMPLEbJY80qbDhPPVje/DbugGLlTeic7v7meZE1Z+StlwH7UceaIYnSou2cFLSG
         JjF52YH4imiWcmnnxgUID9+aPszlFdu8Il6KqEHsngp4Ade+9G3t4hRcLEx/Db0lko2N
         P5KA==
X-Gm-Message-State: ACgBeo2ZLYdI0qCnjf24Pt++TXz8nzdxUQbuLi1F1wReOuEziLY7Eoij
	rML2op3WotUXLIebdlZI7D2ZGA2CzVOPE+nJ
X-Google-Smtp-Source: AA6agR5Za0guglkFFVypTKMylaN6YhMySsQUtn4jGE4s4K/vgGr0EVTxDyYemOmuJWGTpl549vaKfw==
X-Received: by 2002:a17:902:7845:b0:16e:ea31:3354 with SMTP id e5-20020a170902784500b0016eea313354mr24537493pln.17.1660080311784;
        Tue, 09 Aug 2022 14:25:11 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from hexa.router0800d9.com (dhcp-72-253-6-214.hawaiiantel.net. [72.253.6.214])
        by smtp.gmail.com with ESMTPSA id l12-20020a170903120c00b0017128185043sm1811214plh.191.2022.08.09.14.25.10
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Aug 2022 14:25:11 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][kirkstone 10/10] poky.conf: bump version for 4.0.3
Date: Tue,  9 Aug 2022 11:24:32 -1000
Message-Id: <e95bbf710c397bf643c66a6454d57628d2c723e5.1660080128.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1660080128.git.steve@sakoman.com>
References: <cover.1660080128.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 meta-poky/conf/distro/poky.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index 0cea4ce..50ce6ec 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -1,7 +1,7 @@
 DISTRO = "poky"
 DISTRO_NAME = "Poky (Yocto Project Reference Distro)"
 #DISTRO_VERSION = "3.4+snapshot-${METADATA_REVISION}"
-DISTRO_VERSION = "4.0.2"
+DISTRO_VERSION = "4.0.3"
 DISTRO_CODENAME = "kirkstone"
 SDK_VENDOR = "-pokysdk"
 SDK_VERSION = "${@d.getVar('DISTRO_VERSION').replace('snapshot-${METADATA_REVISION}', 'snapshot')}"
-- 
2.25.1

