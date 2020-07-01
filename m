Received: from mx.kolabnow.com (mx.kolabnow.com [95.128.36.42])
 by mx.groups.io with SMTP id smtpd.web10.22369.1593611681742752547
 for <poky@lists.yoctoproject.org>;
 Wed, 01 Jul 2020 06:54:42 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@kolabnow.com header.s=dkim20160331 header.b=uEpIY5Qa;
 spf=pass (domain: kolabnow.com, ip: 95.128.36.42, mailfrom: hubert.chaumette@kolabnow.com)
Received: from localhost (unknown [127.0.0.1])
	by ext-mx-out001.mykolab.com (Postfix) with ESMTP id CEB2FB12;
	Wed,  1 Jul 2020 15:54:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kolabnow.com; h=
	content-transfer-encoding:mime-version:message-id:date:date
	:subject:subject:from:from:received:received:received; s=
	dkim20160331; t=1593611678; x=1595426079; bh=qBEFr3YBFY3C5k2BgYc
	wU5sbQ3NKH1qFgzFczxFu86Q=; b=uEpIY5QaGM6sRJzRxM5h7nBsmZ4rEneLycG
	Nff+hBnmlPr5O6OnjNWbSDgbSBIx0SDuMe/gcgufdubCCgP6MaMOqkkGeu7YTwLz
	yS93/6n+54422Z0NH+zillVmtexjanRRpbCdFJk3TLsX0Hw95oujBImfuRWiDiPU
	sO8xB4B2koFWXa61hfVclTeiOEK9yFrdDMnnKB3mYLDZfXgfYfS82GOwfXxQ7bE8
	k1TB1AlhGjNcNlalrnhegOdaiDtiWna/gPorIz8vQaufF9IaoHK9fgqsaukDPr5O
	xGLbEtntQhCuMwbJBL+W24dDOpA7oRfsOPmlIZ2Zu0TKOk3u4+hZO52OJV4VBbXW
	Ob4BFiTxxhclnhTP/o7MJW249RrkHTJ4T04y7fBqE2HPHFRutpkT5keFMixpo3X1
	Qs8VRcuwdAyVr4PMs+UNVh52ocK+nCPcOZ+ZuHvsqtHss1R0E5D4IYM3KXWoH40i
	v4LbodRzaLG0dG5OJBIGuXoyZeJ0sj0tm+UZuxW7PPgVLQYn8SWMKuYfmhWjK/wU
	dVIIyFa5yN+PFdc/N1LcPJ7RCzXzK38VUiRiD5lYIfjXUMS61vWMAuh5YchYmiQL
	Eez/97o+j8rHnwKlnd3B1QdHi2dVPujkOuUo0Y3ipO/l11sAzmq9q9AjJtpgFzp4
	OX7jl9J4=
X-Virus-Scanned: amavisd-new at mykolab.com
X-Spam-Flag: NO
X-Spam-Score: -1.899
X-Spam-Level: 
X-Spam-Status: No, score=-1.899 tagged_above=-10 required=5
	tests=[BAYES_00=-1.9, URIBL_BLOCKED=0.001]
	autolearn=ham autolearn_force=no
Received: from mx.kolabnow.com ([127.0.0.1])
	by localhost (ext-mx-out001.mykolab.com [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ux40z8BFeVVu; Wed,  1 Jul 2020 15:54:38 +0200 (CEST)
Received: from int-mx003.mykolab.com (unknown [10.9.13.3])
	by ext-mx-out001.mykolab.com (Postfix) with ESMTPS id 2426B5CB;
	Wed,  1 Jul 2020 15:54:37 +0200 (CEST)
Received: from ext-subm003.mykolab.com (unknown [10.9.6.3])
	by int-mx003.mykolab.com (Postfix) with ESMTPS id BC5CEA6C;
	Wed,  1 Jul 2020 15:54:37 +0200 (CEST)
From: "Hubert CHAUMETTE" <hubert.chaumette@kolabnow.com>
To: poky@lists.yoctoproject.org,
	bruce.ashfield@gmail.com
Cc: Hubert CHAUMETTE <hubert.chaumette@kolabnow.com>
Subject: [RFC PATCH 0/2] Add example recipes for ext kernel module dependency
Date: Wed,  1 Jul 2020 15:52:38 +0200
Message-Id: <cover.1593601516.git.hubert.chaumette@kolabnow.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

Add example recipes (master an slave) for external kernel module dependen=
cy.
The master recipe installs shared headers in ${D}${includedir}/${BPN}/ an=
d the
slave one accesses them with ccflags-y in its Makefile.

Please review the following changes for suitability for inclusion. If you=
 have
any objections or suggestions for improvement, please respond to the patc=
hes. If
you agree with the changes, please provide your Acked-by.

The following changes since commit 259d2e35e7ba3cbd496d6383e58cfdc22b267f=
0e:

  python3-setuptools: upgrade 47.1.1 -> 47.3.1 (2020-06-30 23:03:02 +0100=
)

are available in the Git repository at:

  git://push.yoctoproject.org/poky-contrib hchaumette/ext-module-dep

Hubert CHAUMETTE (2):
  Example for ext kernel modules dependency, master module
  Example for ext kernel module dependency, slave module

 .../kernel-module-master/files/COPYING        |  15 ++
 .../kernel-module-master/files/Makefile       |  14 ++
 .../files/include/master.h                    |  25 +++
 .../kernel-module-master/files/master.c       | 154 ++++++++++++++++++
 .../kernel-module-master.bb                   |  20 +++
 .../kernel-module-slave/files/COPYING         |  15 ++
 .../kernel-module-slave/files/Makefile        |  16 ++
 .../kernel-module-slave/files/slave.c         |  52 ++++++
 .../kernel-module-slave.bb                    |  17 ++
 9 files changed, 328 insertions(+)
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

