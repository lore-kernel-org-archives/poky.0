Return-Path: <d1ma5ad@gmail.com>
Received: from mail-qe0-f49.google.com (mail-qe0-f49.google.com
	[209.85.128.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0010EE01525
	for <poky@yoctoproject.org>; Sat,  1 Jun 2013 09:53:59 -0700 (PDT)
Received: by mail-qe0-f49.google.com with SMTP id a11so1541371qen.22
	for <poky@yoctoproject.org>; Sat, 01 Jun 2013 09:53:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:date:x-google-sender-auth:message-id:subject
	:from:to:content-type;
	bh=WLC0s61IqT8VNHQWkKH1paMAuZIIB3j6uieUss0LHuA=;
	b=mcPZcBq3/zIoXXNzBtBhyhUkN15bpUwWyCbVe2/ZrEqZOr2f5CotmOY3QeQAhL6yr4
	dUDQXCGNxj+Pb5fDW6fCDhqgeI30joc5H5L0QLBMAXYwuvpS9b2vUpFUnJ+8SSqAFJfS
	tof4W5wkjPSGXAf/XTu0r5C1ZNWtVakTMYI2GDrWG4Rh8/WKLxmhU5mwT0fsACV5d7Ov
	HbY+r92gXtCxZ2sYglwTy1SyVmrrotqPYOEBIsWwLvYBscSnmI1zxJjI/AejIwZ5o6Eu
	FTNUGPmXZj+r5Jv843EZ+i+1ALp+ND+Wa1oagMRNszu/FaYlqX/hldp+pkjo+wDb7H5c
	6jng==
MIME-Version: 1.0
X-Received: by 10.49.85.131 with SMTP id h3mr14207075qez.42.1370105639216;
	Sat, 01 Jun 2013 09:53:59 -0700 (PDT)
Sender: d1ma5ad@gmail.com
Received: by 10.49.94.73 with HTTP; Sat, 1 Jun 2013 09:53:59 -0700 (PDT)
Date: Sat, 1 Jun 2013 13:53:59 -0300
X-Google-Sender-Auth: z6yfhjFLtLMq1Wgg0MzOG45gZZk
Message-ID: <CACzB8VG4BxHBPZDL_Zsf2Y5uO2QbkjoakON7t8kFEivwOi5=6g@mail.gmail.com>
From: Dimas Abreu Dutra <dimasadutra@gmail.com>
To: Poky Mailing list <poky@yoctoproject.org>
Subject: [danny] [PATCH] site/common: deactivate a python cross-compilation runtime check, fixes bug #4557
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 01 Jun 2013 16:54:00 -0000
Content-Type: text/plain; charset=ISO-8859-1

In configure there is a runtime check to determine buggy getaddrinfo and as we
are cross-compiling this check goes wrong. If ipv6 is enabled in python, the
failed test is reported as fatal error with the message
Fatal: You must get working getaddrinfo() function.

Setting ac_cv_buggy_getaddrinfo=no deactivates the runtime check and allows to
compile python with ipv6 enabled.

This commit was cherry-picked from commit
66db85262bef08802af30964b415bff349cfba69
into the danny branch. The original commit was in turn derived from the commit
700b75e7661062aa93cf81205b78c8bf7609922d in the Classic OpenEmbedded Development
Tree.

Fixes: bug #4557

Signed-off-by: Lukas Bulwahn <lukas.bulwahn@oss.bmw-carit.de>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
Signed-off-by: Dimas Abreu Dutra <dimasadutra@gmail.com>
---
 meta/site/common |    2 ++
 1 file changed, 2 insertions(+)

diff --git a/meta/site/common b/meta/site/common
index 5da3ff4..1214a13 100644
--- a/meta/site/common
+++ b/meta/site/common
@@ -15,3 +15,5 @@ shadow_cv_utmpdir=${localstatedir}/run
 shadow_cv_logdir=${localstatedir}/log
 shadow_cv_passwd_dir=${bindir}

+# python: deactivate a runtime check for ipv6-support in python
>=2.7.1 that fails when cross-compiling
+ac_cv_buggy_getaddrinfo=no
--
1.7.10.4

