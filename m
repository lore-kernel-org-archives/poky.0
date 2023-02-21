Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com [209.85.215.173])
 by mx.groups.io with SMTP id smtpd.web10.55378.1677016048041313248
 for <poky@lists.yoctoproject.org>;
 Tue, 21 Feb 2023 13:47:28 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112 header.b=QI4yEU+3;
 spf=softfail (domain: sakoman.com, ip: 209.85.215.173, mailfrom: steve@sakoman.com)
Received: by mail-pg1-f173.google.com with SMTP id y19so3196791pgk.5
        for <poky@lists.yoctoproject.org>; Tue, 21 Feb 2023 13:47:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mO4Dh5W8iA1RvouSKKADiWJpTsN5IVpNG7E86Z7XyZo=;
        b=QI4yEU+31+imkES8buExApFe3lGH1pQkg5Co7ioQ93DvZpW30OsvfPt2KU7o/c+9R9
         uyiemRmsmdXqilUg5dR6Df5m+G5qmPQKZi8XIn4bBC7X2+n5Vzvl/AoR9+3XtcpXL3Oz
         i4aZjPjHHN7it4mprfFTeDpT2AiCFnXNbtB99HrNN8lW+PrBh0Xyz3E705uhY309oJec
         HB9zdJIVLvagUHO17cq0JY1AtRIN+blq47NaIgTEUOBOFp/dspfaVRjX1aVs1kfWermK
         sDHOZIvzkqJs/szI4YZ3FynnhtZckLJ8gqrGg+r9beZrwAGvEfWkCSPk8aJgBTxYkH8U
         GJow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mO4Dh5W8iA1RvouSKKADiWJpTsN5IVpNG7E86Z7XyZo=;
        b=U4oTTTmWrZYC3aHc2wTgbmzdfNhNNFIjHzGNB/Vkh4zk2bGNqtUrTi2WjICx7+YcPR
         b8rloCq16dvmAn6GslXgadxyz6mvQdCsoDHPNt1L4iMZE+4N2fh8mOl2nkgyCOHiKEEg
         jsrNo0q0sE0usVt5FCH+qUKuGoD1Sx/KYEuLnO9SfZl9DRuTX+61fj/m4V8s3Pv/Uq1P
         3J+G/0YNzATvjHl3f5UAozEXsgmDNLH3i6rThixEoceoYQGG5KPPW9fL37QduE/xvd+p
         JyQ3WtoqLMTVvCY3szso0wZq49X1fGyRB/062XQ5tarnKy+l/P0j4dxbHrM7G0INt5uq
         7Vzw==
X-Gm-Message-State: AO0yUKXuYaP5SWD8PsVsg71+PjwBtpLJg3QoP+p3CnCbrrdnIHS3r4cV
	0fDRaEExzxJaWrOj8E/w/RL3jPb9nhz7ejt79Zw=
X-Google-Smtp-Source: AK7set/Vy65cM+1dA0+2vDYLw3b9+iJJvp+h6k/I5nk7JP4ZsdPD4clGzbIpRzTU/kLXhI++ZwEZFg==
X-Received: by 2002:aa7:96b4:0:b0:5d2:248d:7ec3 with SMTP id g20-20020aa796b4000000b005d2248d7ec3mr1558300pfk.8.1677016047112;
        Tue, 21 Feb 2023 13:47:27 -0800 (PST)
Return-Path: <steve@sakoman.com>
Received: from hexa.router0800d9.com (dhcp-72-253-4-112.hawaiiantel.net. [72.253.4.112])
        by smtp.gmail.com with ESMTPSA id z8-20020aa791c8000000b005a8a4665d3bsm3986531pfa.116.2023.02.21.13.47.26
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Feb 2023 13:47:26 -0800 (PST)
From: "Steve Sakoman" <steve@sakoman.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][dunfell] poky.conf: Update SANITY_TESTED_DISTROS to match autobuilder
Date: Tue, 21 Feb 2023 11:47:19 -1000
Message-Id: <032aed804fd4a2f2dfb676b472516d682303ba04.1677015949.git.steve@sakoman.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1677015949.git.steve@sakoman.com>
References: <cover.1677015949.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The autobuilder workers change over time, update the sanity testing list
to match the current autobuilder workers OS list.

Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 meta-poky/conf/distro/poky.conf | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index 5be5042..64712bb 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -47,12 +47,14 @@ SANITY_TESTED_DISTROS ?= " \
             ubuntu-18.04 \n \
             ubuntu-19.04 \n \
             ubuntu-20.04 \n \
+            ubuntu-22.04 \n \
             fedora-30 \n \
             fedora-31 \n \
             fedora-32 \n \
             fedora-33 \n \
             fedora-34 \n \
             fedora-35 \n \
+            fedora-36 \n \
             centos-7 \n \
             centos-8 \n \
             debian-8 \n \
@@ -63,6 +65,7 @@ SANITY_TESTED_DISTROS ?= " \
             opensuseleap-15.2 \n \
             opensuseleap-15.3 \n \
             almalinux-8.5 \n \
+            almalinux-8.7 \n \
             "
 # add poky sanity bbclass
 INHERIT += "poky-sanity"
-- 
2.34.1

