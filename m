Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web08.4765.1610769539992375690
 for <poky@lists.yoctoproject.org>;
 Fri, 15 Jan 2021 19:59:00 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@gmail.com header.s=20161025 header.b=F4BiFzpQ;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: bruce.ashfield@gmail.com)
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com [209.85.160.182])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 85F7938C06D4
	for <poky@yoctoproject.org>; Sat, 16 Jan 2021 03:58:59 +0000 (UTC)
Received: by mail-qt1-f182.google.com with SMTP id b9so7620088qtr.2
        for <poky@yoctoproject.org>; Fri, 15 Jan 2021 19:58:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=hsquJyxV5thpZVqH9hjUQYWCf9MMbxIhhuRJU/kFNFA=;
        b=F4BiFzpQfMlrcnwq6cebYYwAUc7el+i6GCNxVC6E4joqS9f1qRbxNZucMtrWSjhNJ+
         eQ5iZmP8m13DYNLYeCaDFm6+8qtdSLcpa/q2PbMxCJUzs4vt31ULLERd1ldxklFCSmQI
         p/5yEBOnl1Q5f8uwQcWpX0M4e90oK1/C8NrX5kLmZawHzh63rZEz0WkfYn1eC5m6x7/p
         buu4NV7EESy0lRX5CKkR2L+WZPKfu3vLawT9wSNXtPBJ98O21vUNx9puvnDRUeSOENsR
         i5ZfqymPqGxcR6Ai14TE84LEueMTaLHk5c+vN3TSwPRDGgICe7yWcTVZUHy3JlEJpkez
         3l6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=hsquJyxV5thpZVqH9hjUQYWCf9MMbxIhhuRJU/kFNFA=;
        b=ZXnfQp1C7gYZexxsaHV6GbMqFDQk+FyZV4l2EuUdcYVLzF5H6yVc56BkLGyJyN9bCm
         VhDXKeO7kNsps6CYi5IADDIM1473FG8+ISIPl46eCCQ/QuHcqjNEHu5H24fJp/h2DsbU
         smvSHx2MvEwvX8/JQhVvVwaPLHvSjc3tm6LuEMjlNkFlV5hzAItwTJmWLhaK9rrcOVWa
         Ks1XStaMLnBjcLldVQEm7toaIs0blKRBp5KYkJrmKGRL1nv9KjVN7/2qa984tkmZFGra
         y7YLOYw3S6b+STXvsOGC9NNhbz3EgXvde7hbaLhVoi0z2nnNRlRacqH+HnEwbdEH12YA
         NNYg==
X-Gm-Message-State: AOAM533WBGTatgubGcPjBwgJchjDr+W0QxOBOBg8YhQcPG9I39ZGJHgb
	xVWgYAhjjAgbDRqgpBOUmo4=
X-Google-Smtp-Source: ABdhPJwygu+ju70H6xCsaLwQa+tN7VXcAFXENXI+bavL4qToZey0C/SVLk6Yuj5lzfn+Wv85VraDVg==
X-Received: by 2002:ac8:7606:: with SMTP id t6mr14370446qtq.214.1610769538523;
        Fri, 15 Jan 2021 19:58:58 -0800 (PST)
Received: from localhost.localdomain (cpe04d4c4975b80-cm64777d5e8820.cpe.net.cable.rogers.com. [174.112.159.151])
        by smtp.gmail.com with ESMTPSA id y26sm6283126qth.53.2021.01.15.19.58.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Jan 2021 19:58:58 -0800 (PST)
From: "Bruce Ashfield" <bruce.ashfield@gmail.com>
To: richard.purdie@linuxfoundation.org
Cc: poky@yoctoproject.org
Subject: [PATCH] yocto-bsp: drop 5.8 bbappend
Date: Fri, 15 Jan 2021 22:58:56 -0500
Message-Id: <20210116035856.23399-1-bruce.ashfield@gmail.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

From: Bruce Ashfield <bruce.ashfield@gmail.com>

The 5.8 kernel is EOL upstream, oe-core has the replacement
5.10 kernel available, 5.8 will be removed and we've moved
all preferred versions to either 5.4 or 5.10.

Signed-off-by: Bruce Ashfield <bruce.ashfield@gmail.com>
---
 .../linux/linux-yocto_5.8.bbappend            | 23 -------------------
 1 file changed, 23 deletions(-)
 delete mode 100644 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.8.b=
bappend

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.8.bbappend=
 b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.8.bbappend
deleted file mode 100644
index a04f332cfa..0000000000
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.8.bbappend
+++ /dev/null
@@ -1,23 +0,0 @@
-KBRANCH_genericx86  =3D "v5.8/standard/base"
-KBRANCH_genericx86-64  =3D "v5.8/standard/base"
-KBRANCH_edgerouter =3D "v5.8/standard/edgerouter"
-KBRANCH_beaglebone-yocto =3D "v5.8/standard/beaglebone"
-
-KMACHINE_genericx86 ?=3D "common-pc"
-KMACHINE_genericx86-64 ?=3D "common-pc-64"
-KMACHINE_beaglebone-yocto ?=3D "beaglebone"
-
-SRCREV_machine_genericx86 ?=3D "5981001bf03f0d0c1cf641a2287ab6368baf628a=
"
-SRCREV_machine_genericx86-64 ?=3D "5981001bf03f0d0c1cf641a2287ab6368baf6=
28a"
-SRCREV_machine_edgerouter ?=3D "912adf166eb0688e011154048f5fa0e5863249c3=
"
-SRCREV_machine_beaglebone-yocto ?=3D "912adf166eb0688e011154048f5fa0e586=
3249c3"
-
-COMPATIBLE_MACHINE_genericx86 =3D "genericx86"
-COMPATIBLE_MACHINE_genericx86-64 =3D "genericx86-64"
-COMPATIBLE_MACHINE_edgerouter =3D "edgerouter"
-COMPATIBLE_MACHINE_beaglebone-yocto =3D "beaglebone-yocto"
-
-LINUX_VERSION_genericx86 =3D "5.8.13"
-LINUX_VERSION_genericx86-64 =3D "5.8.13"
-LINUX_VERSION_edgerouter =3D "5.8.2"
-LINUX_VERSION_beaglebone-yocto =3D "5.8.2"
--=20
2.19.1

