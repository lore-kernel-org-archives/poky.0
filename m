Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
 by mx.groups.io with SMTP id smtpd.web09.12791.1664468924754405206
 for <poky@lists.yoctoproject.org>;
 Thu, 29 Sep 2022 09:28:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=CwZa7s80;
 spf=pass (domain: gmail.com, ip: 209.85.221.48, mailfrom: alex.kanavin@gmail.com)
Received: by mail-wr1-f48.google.com with SMTP id x18so3026247wrm.7
        for <poky@lists.yoctoproject.org>; Thu, 29 Sep 2022 09:28:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=eWzk3i/+CgY2OLD9U6kRGVeYv2fqBD9IvUXJmtKM0A8=;
        b=CwZa7s802zLjdMOLpNpkrbRjJOW6TJKsh7O1icRaoOIzmDiAYfgsbk7Jd+d12F+Yrn
         V+k2nOyW8qsXl579u4gwLyNb5Udy7r+qDBPV14e7wXdFgc9Oc+ZJiwnnxm7Tw/jpZmoS
         eCX7Ppm0F6+DbpDP0kbvZGUNfvuk9TIpcq47II7h72KPQUxSt9ABYFHai8faYP67ciE8
         ynJ0DlNd8igYRrfOvfVyzy5gGvWPTnesuOGYgwBsmp9Ajj/2gnPUF6UkboaQDmiASKi5
         9bJYQTP+UNG64w19Qov2pTa3CFt8Qk6lDENc3S5rTNHw6RcB8ChoeuZXiaC6sJxw5P+s
         9wgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=eWzk3i/+CgY2OLD9U6kRGVeYv2fqBD9IvUXJmtKM0A8=;
        b=2Q6aLlajFcW+nVNvPG1Z1vqIsx31bz4YJ/hgzSB7XUAWG4vrGKmy7qcpiPCra8GsD9
         HuZaAQiBwrP6SOuKpm7QgY/PZWw98SLbDvD+C1DhzXvtb6S8adj18VJB/CfU9XrMthte
         eA+39+Im/KIvpzQSdd5YtjqWGH3IIpfS8MODhfqgnxyi+5fH7kpTpqYks7hzRT4JmKmB
         q2pJw81KSTQAGvbigWbisqq/x7jTUUR5d/bxCiM7yUXt4ivZmDzs1C03fqXbnIZcXhSY
         5Wu7JcOrvbgIyS6ohujtHw2bG/09yciAVHJQ/+ycAuOJDQriSFYL6pdoY6ROCMeAp34e
         wpFg==
X-Gm-Message-State: ACrzQf36F7/aQdZ+MA+eheaF8bUQJefYvbYpjekXPNhKbJ3TuEudjfwn
	IPXf2/oGsqCcuSAIBf8wEOwBvZtraRg=
X-Google-Smtp-Source: AMsMyM7VpVgXDeYWTqHVPGHTruElM7R4SUx+z2+BAGHYzK9iav1O3tiDJ+EXJAOaAV+0BT60ytSXSg==
X-Received: by 2002:a05:6000:1a8e:b0:22a:f55a:94d6 with SMTP id f14-20020a0560001a8e00b0022af55a94d6mr2901609wry.606.1664468923087;
        Thu, 29 Sep 2022 09:28:43 -0700 (PDT)
Return-Path: <alex.kanavin@gmail.com>
Received: from Zen2.lab.linutronix.de. (drugstore.linutronix.de. [80.153.143.164])
        by smtp.gmail.com with ESMTPSA id q6-20020adff506000000b0022a839d053csm6997149wro.98.2022.09.29.09.28.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Sep 2022 09:28:42 -0700 (PDT)
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
X-Google-Original-From: Alexander Kanavin <alex@linutronix.de>
To: poky@lists.yoctoproject.org
Cc: Alexander Kanavin <alex.kanavin@gmail.com>,
	Alexander Kanavin <alex@linutronix.de>,
	Richard Purdie <richard.purdie@linuxfoundation.org>
Subject: [kirkstone][PATCH] local.conf.sample: correct the location of public hashserv
Date: Thu, 29 Sep 2022 18:28:32 +0200
Message-Id: <20220929162832.2291580-1-alex@linutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Alexander Kanavin <alex.kanavin@gmail.com>

Signed-off-by: Alexander Kanavin <alex@linutronix.de>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 meta-poky/conf/local.conf.sample | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-poky/conf/local.conf.sample b/meta-poky/conf/local.conf.sample
index ae9c87f4b2..ef491d43bf 100644
--- a/meta-poky/conf/local.conf.sample
+++ b/meta-poky/conf/local.conf.sample
@@ -229,7 +229,7 @@ BB_DISKMON_DIRS ??= "\
 # which will depend on your network.
 # Note: For this to work you also need hash-equivalence passthrough to the matching server
 #
-#BB_HASHSERVE_UPSTREAM = "typhoon.yocto.io:8687"
+#BB_HASHSERVE_UPSTREAM = "hashserv.yocto.io:8687"
 #SSTATE_MIRRORS ?= "file://.* http://sstate.yoctoproject.org/all/PATH;downloadfilename=PATH"
 
 #
-- 
2.30.2

