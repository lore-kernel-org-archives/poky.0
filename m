Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com [209.85.216.49])
 by mx.groups.io with SMTP id smtpd.web10.55148.1677015460498945386
 for <poky@lists.yoctoproject.org>;
 Tue, 21 Feb 2023 13:37:40 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112 header.b=C7a3DwfW;
 spf=softfail (domain: sakoman.com, ip: 209.85.216.49, mailfrom: steve@sakoman.com)
Received: by mail-pj1-f49.google.com with SMTP id i1-20020a17090ad34100b00234463de251so6329760pjx.3
        for <poky@lists.yoctoproject.org>; Tue, 21 Feb 2023 13:37:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yNFIzd6mQhS3BDwTa2GTtzx+Y6+vqT77+biB2z74R1I=;
        b=C7a3DwfWaSXTgtrA0qMLvERSyKhRgiNDfOuSdudXDT2MQlDtFJ7U1xuqISsbWVf1eC
         CpM8DaUQxO8KhNpe4AvfHipRlyil6jcj+bU+97Y1Ay4sj7ek/G+Irkzrl9/2f82Pz1It
         e1YMWiyAjggQRZHAfxDjg/+Dn3ZQQiqoc8hpoCtzf1oc0plmm4+Mr4K1omPtgCwXpKRP
         GGozlMiQgQy2f0SqLu06Uic/MvOK+Tmkoe+6nSAolnYHo6oebqkLgp+KTs5n17pipQ6l
         CSp5KQonFTN0p1jjrm3SECcYw9hX8xM1xDFWVglyo2N+CqdsN1gdrOEtcJoE+PEgX5J2
         OeXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yNFIzd6mQhS3BDwTa2GTtzx+Y6+vqT77+biB2z74R1I=;
        b=CcBjG15YYnL8nld+RCpPToFfOz7we2CUTEhUVjVTCWzGu8hpOM1Cf2kCY+wkrRh82C
         ypQX1Z7yP9riMNYlx6fzsoi2RIdMmzYSxCFcnvZ0bu9YHf+oODVBS5x2lxZtpSc7t7yP
         4uOJNSFjnwJg204Y3GVmUoBOUQV6uBU07kH7mE5zAFJhsI6R7lhYuTzMYk88WPMmQUoY
         6NwR/nfuglL2gGkE5NRkET0M2X8ev/We//DPwmzt4DNhzEHTVdNcJZwizi7V7+kl9HOz
         F8nrFBQQkp31K4EuKKmQAfoKOG/85Ai9XLyi1LiEullgBvZFJoG6DF19Ky8eQRSbO04+
         t1oQ==
X-Gm-Message-State: AO0yUKVojYDNsZh7CEggPEcHcEPHY11Zk+YxaDfX8XfAHmiXEXCQZmL3
	JfeU4oKMvLdAC1vOZ2RY3D23eQ9ErnH5wuARxvQ=
X-Google-Smtp-Source: AK7set8cOCpTpI7/meQTSNEPauJELeKmTcy3PQ0axF92kuRNx851i2lXrmGUnSlN/oUt/iahbhm+IQ==
X-Received: by 2002:a17:902:dac7:b0:19c:163b:38c7 with SMTP id q7-20020a170902dac700b0019c163b38c7mr8218999plx.32.1677015459110;
        Tue, 21 Feb 2023 13:37:39 -0800 (PST)
Return-Path: <steve@sakoman.com>
Received: from hexa.router0800d9.com (dhcp-72-253-4-112.hawaiiantel.net. [72.253.4.112])
        by smtp.gmail.com with ESMTPSA id q22-20020a170902bd9600b001932a9e4f2csm2988412pls.255.2023.02.21.13.37.38
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Feb 2023 13:37:38 -0800 (PST)
From: "Steve Sakoman" <steve@sakoman.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][kirkstone] poky.conf: Update SANITY_TESTED_DISTROS to match autobuilder
Date: Tue, 21 Feb 2023 11:37:33 -1000
Message-Id: <32b3cab404e48ac31a367ca7188b0563f283a51a.1677015367.git.steve@sakoman.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1677015367.git.steve@sakoman.com>
References: <cover.1677015367.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The autobuilder workers change over time, update the sanity testing list
to match the current autobuilder workers OS list.

Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 meta-poky/conf/distro/poky.conf | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index 4876d74..e9804c6 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -41,6 +41,7 @@ SANITY_TESTED_DISTROS ?= " \
             ubuntu-22.04 \n \
             fedora-34 \n \
             fedora-35 \n \
+            fedora-36 \n \
             centos-7 \n \
             centos-8 \n \
             debian-9 \n \
@@ -48,6 +49,7 @@ SANITY_TESTED_DISTROS ?= " \
             debian-11 \n \
             opensuseleap-15.3 \n \
             almalinux-8.5 \n \
+            almalinux-8.7 \n \
             "
 # add poky sanity bbclass
 INHERIT += "poky-sanity"
-- 
2.34.1

