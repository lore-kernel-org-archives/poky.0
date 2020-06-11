Received: from mx.kolabnow.com (mx.kolabnow.com [95.128.36.41])
 by mx.groups.io with SMTP id smtpd.web11.8449.1591885251912611725
 for <poky@lists.yoctoproject.org>;
 Thu, 11 Jun 2020 07:20:52 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@kolabnow.com header.s=dkim20160331 header.b=h6FYce6i;
 spf=pass (domain: kolabnow.com, ip: 95.128.36.41, mailfrom: hubert.chaumette@kolabnow.com)
Received: from localhost (unknown [127.0.0.1])
	by ext-mx-out003.mykolab.com (Postfix) with ESMTP id 6EE8740B55
	for <poky@lists.yoctoproject.org>; Thu, 11 Jun 2020 16:20:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kolabnow.com; h=
	content-transfer-encoding:mime-version:message-id:date:date
	:subject:subject:from:from:received:received:received; s=
	dkim20160331; t=1591885250; x=1593699651; bh=AuLtlHt7gQwEBJ3BLr0
	9N9BV7viLgyD1/xZZKAjZfzA=; b=h6FYce6iAgGbReVp1MCCTsVRaXA3gjHLeNu
	wSszwYc1ZlODoc/CsPDUvVrSsMC93KC7k782kYrDGTBrX90fX5JrN3YePnVg+aww
	6J9ijZxcrzg12c3ZmBU1Bik8d0iSSlxIQSg+Kx4LbQulCh9P/tCU9QvC2v0u+qxh
	qs6AF7ROiopWtMTFVQ9vpdDVUuFQQltwRnZYwN0kHTYn/YR+aVtCQNm2yMEsr4KV
	HjGez+XJherQ+kcfbXz98SAHmn7d8A5xxPEUEl/8Vfl1KKrFhSJPes5NYwk0feSu
	B1b2siQoc6IvsHkee3WwxdO8H08uATuM5FFfw0RXAZefoJehvwHM5KyEwwBLFPCS
	J3h3geV8Vru5X7lqzA5GnyeRX91Rg/vue1hA6/HSijKi5zcbJUnJ3Om348bKabWS
	UYZlCa1O7wdsqznX8KsrHKKzkc0QKZWBKccNpL8UOU4ZCWd0T3/I3sReQ24cqbu/
	SA7fhvmgpHJj7C13N2IsLbZ/fJLgcFeryKX6t/MkcBD90/UNc4BTyvXBUiZOn1A+
	YXBk5A1YRyFEIb70HpSwwJO6OGRpaymCO65xsneCLuUzMAX6PS0TgKRkhPPni1wD
	5Jg2kwTJUy0/ufPMmy6KjhZMv/4tgMwM7Z6etUIOmfZrQFSNV28Nyu4M7or5pYre
	d9zaiwu0=
X-Virus-Scanned: amavisd-new at mykolab.com
X-Spam-Flag: NO
X-Spam-Score: -1.899
X-Spam-Level: 
X-Spam-Status: No, score=-1.899 tagged_above=-10 required=5
	tests=[BAYES_00=-1.9, URIBL_BLOCKED=0.001]
	autolearn=ham autolearn_force=no
Received: from mx.kolabnow.com ([127.0.0.1])
	by localhost (ext-mx-out003.mykolab.com [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qr0LlY8IK8Ll for <poky@lists.yoctoproject.org>;
	Thu, 11 Jun 2020 16:20:50 +0200 (CEST)
Received: from int-mx001.mykolab.com (unknown [10.9.13.1])
	by ext-mx-out003.mykolab.com (Postfix) with ESMTPS id D14FD404EE
	for <poky@lists.yoctoproject.org>; Thu, 11 Jun 2020 16:20:49 +0200 (CEST)
Received: from ext-subm003.mykolab.com (unknown [10.9.6.3])
	by int-mx001.mykolab.com (Postfix) with ESMTPS id 5CB34626;
	Thu, 11 Jun 2020 16:20:49 +0200 (CEST)
From: hubert.chaumette@kolabnow.com
To: poky@lists.yoctoproject.org
Cc: Hubert CHAUMETTE <hubert.chaumette@kolabnow.com>
Subject: [RFC PATCH 0/1] module.bbclass: manage include files like Module.symvers
Date: Thu, 11 Jun 2020 16:20:40 +0200
Message-Id: <cover.1591881869.git.hubert.chaumette@kolabnow.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

Currently external kernel module.bbclass doesn't handle shared headers, b=
ut
Module.symvers is.
This patch copies the way Module.symvers is managed and installs shared h=
eaders
in ${D}${includedir}/${BPN}/ and adds this path to EXTRA_CFLAGS for depen=
dant
modules.
Includes also an exemple use with a "master" and a "slave" module.

Please review the following changes for suitability for inclusion. If you=
 have
any objections or suggestions for improvement, please respond to the patc=
hes. If
you agree with the changes, please provide your Acked-by.

The following changes since commit c3271dca21b2f6fa9b54b00a64a176e9d87e8f=
eb:

  bitbake: bitbake: cache: Fix error when cache is rebuilt (2020-06-10 12=
:30:01 +0100)

are available in the Git repository at:

  git://push.yoctoproject.org/poky-contrib hchaumette/ext-module-dep

Hubert CHAUMETTE (1):
  module.bbclass: manage include files like Module.symvers

 .../kernel-module-master/files/COPYING        | 340 ++++++++++++++++++
 .../kernel-module-master/files/Makefile       |  14 +
 .../files/include/master.h                    |  25 ++
 .../kernel-module-master/files/master.c       | 154 ++++++++
 .../kernel-module-master.bb                   |  20 ++
 .../kernel-module-slave/files/COPYING         | 340 ++++++++++++++++++
 .../kernel-module-slave/files/Makefile        |  14 +
 .../kernel-module-slave/files/slave.c         |  53 +++
 .../kernel-module-slave.bb                    |  17 +
 meta/classes/module.bbclass                   |  30 +-
 10 files changed, 1002 insertions(+), 5 deletions(-)
 create mode 100644 meta-skeleton/recipes-kernel/kernel-module-master/fil=
es/COPYING
 create mode 100644 meta-skeleton/recipes-kernel/kernel-module-master/fil=
es/Makefile
 create mode 100644 meta-skeleton/recipes-kernel/kernel-module-master/fil=
es/include/master.h
 create mode 100644 meta-skeleton/recipes-kernel/kernel-module-master/fil=
es/master.c
 create mode 100644 meta-skeleton/recipes-kernel/kernel-module-master/ker=
nel-module-master.bb
 create mode 100644 meta-skeleton/recipes-kernel/kernel-module-slave/file=
s/COPYING
 create mode 100644 meta-skeleton/recipes-kernel/kernel-module-slave/file=
s/Makefile
 create mode 100644 meta-skeleton/recipes-kernel/kernel-module-slave/file=
s/slave.c
 create mode 100644 meta-skeleton/recipes-kernel/kernel-module-slave/kern=
el-module-slave.bb

--=20
2.27.0

