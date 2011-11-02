Return-Path: <redzhepoff@gmail.com>
Received: from mail-ey0-f176.google.com (mail-ey0-f176.google.com
	[209.85.215.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8C669E006B4
	for <poky@yoctoproject.org>; Wed,  2 Nov 2011 09:15:50 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by eyh5 with SMTP id 5so397774eyh.35
	for <poky@yoctoproject.org>; Wed, 02 Nov 2011 09:15:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:sender:date:x-google-sender-auth:message-id:subject
	:from:to:cc:content-type;
	bh=4Pvbw68QS4tftyN92KoeDpZl+utByMnMAAOZOlczz5k=;
	b=epSrio+ucaX1wx9Wlyg2Jy74qCMjMV8hzF0uZrFqRPvlTOyRg1Qdmj8rOz6F4okjE2
	HIodoM3VAm5XxOg2E/efsczc2HEjEhKfafl61CYmkaG0i+5L5ZOYZhL1857NENHC2IqN
	U5qPQlCp9idEopvbrjD3d41eX6HbfKTfJZGMQ=
MIME-Version: 1.0
Received: by 10.14.2.3 with SMTP id 3mr488969eee.82.1320250549043; Wed, 02 Nov
	2011 09:15:49 -0700 (PDT)
Sender: redzhepoff@gmail.com
Received: by 10.14.185.129 with HTTP; Wed, 2 Nov 2011 09:15:48 -0700 (PDT)
Date: Wed, 2 Nov 2011 19:15:48 +0300
X-Google-Sender-Auth: sq5mYZWUDHjZLe0qpreZCw2BpFQ
Message-ID: <CAK_2FrnaBEFNpDLbgH28zoXgmyO4qDSVkiAqQSC0RJFoErxziA@mail.gmail.com>
From: =?UTF-8?B?0JLQu9Cw0LTQuNC80LjRgCDQoNC10LTQttC10L/QvtCy?=
	<vladimir.redzhepoff@promwad.com>
To: poky@yoctoproject.org
Cc: Ivan.Kuten@promwad.com
Subject: [PATCH] Sdparm package added
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 02 Nov 2011 16:15:51 -0000
Content-Type: multipart/alternative; boundary=0016363ba55afd835d04b0c2c824

--0016363ba55afd835d04b0c2c824
Content-Type: text/plain; charset=ISO-8859-1

From 756f41347ac3cf53b76d43714d43f84bd6dba6e0 Mon Sep 17 00:00:00 2001
From: vladimir redzhepoff <vladimir.redzhepoff@promwad.com>
Date: Wed, 2 Nov 2011 18:44:18 +0300
Subject: [PATCH] Sdparm package added

---
 meta/recipes-devtools/sdparm/sdparm_1.06.bb |   12 ++++++++++++
 1 files changed, 12 insertions(+), 0 deletions(-)
 create mode 100644 meta/recipes-devtools/sdparm/sdparm_1.06.bb

diff --git a/meta/recipes-devtools/sdparm/sdparm_1.06.bbb/meta/recipes-devtools/sdparm/
sdparm_1.06.bb
new file mode 100644
index 0000000..b49a753
--- /dev/null
+++ b/meta/recipes-devtools/sdparm/sdparm_1.06.bb
@@ -0,0 +1,12 @@
+DESCRIPTION = "The sdparm utility accesses SCSI device parameters."
+HOMEPAGE = "http://sg.danny.cz/sg/sdparm.html#mozTocId166213"
+SECTION = "console/utils"
+LICENSE = "BSD"
+LIC_FILES_CHKSUM = "file://COPYING;md5=03299eb2d80659ec83507fcc511c5b42"
+PR = "r0"
+
+SRC_URI = "http://sg.danny.cz/sg/p/${PN}-${PV}.tgz"
+
+SRC_URI[md5sum] = "5e19913658bb4f9849ddd909e0f47cde"
+SRC_URI[sha256sum] =
"e011a7a9e87e4e24c9c115f456ac4916fdc314d36ae99167979175782ea2f6b4"
+inherit autotools
-- 
1.7.2.5

--0016363ba55afd835d04b0c2c824
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><br></div><div dir=3D"ltr"><div><div><div><div><div><=
div></div></div></div></div></div></div></div><div>From 756f41347ac3cf53b76=
d43714d43f84bd6dba6e0 Mon Sep 17 00:00:00 2001</div><div>From: vladimir red=
zhepoff &lt;<a href=3D"mailto:vladimir.redzhepoff@promwad.com">vladimir.red=
zhepoff@promwad.com</a>&gt;</div>
<div>Date: Wed, 2 Nov 2011 18:44:18 +0300</div><div>Subject: [PATCH] Sdparm=
 package added</div><div><br></div><div>---</div><div>=A0meta/recipes-devto=
ols/sdparm/<a href=3D"http://sdparm_1.06.bb">sdparm_1.06.bb</a> | =A0 12 ++=
++++++++++</div>
<div>=A01 files changed, 12 insertions(+), 0 deletions(-)</div><div>=A0crea=
te mode 100644 meta/recipes-devtools/sdparm/<a href=3D"http://sdparm_1.06.b=
b">sdparm_1.06.bb</a></div><div><br></div><div>diff --git a/meta/recipes-de=
vtools/sdparm/<a href=3D"http://sdparm_1.06.bb">sdparm_1.06.bb</a> b/meta/r=
ecipes-devtools/sdparm/<a href=3D"http://sdparm_1.06.bb">sdparm_1.06.bb</a>=
</div>
<div>new file mode 100644</div><div>index 0000000..b49a753</div><div>--- /d=
ev/null</div><div>+++ b/meta/recipes-devtools/sdparm/<a href=3D"http://sdpa=
rm_1.06.bb">sdparm_1.06.bb</a></div><div>@@ -0,0 +1,12 @@</div><div>+DESCRI=
PTION =3D &quot;The sdparm utility accesses SCSI device parameters.&quot;</=
div>
<div>+HOMEPAGE =3D &quot;<a href=3D"http://sg.danny.cz/sg/sdparm.html#mozTo=
cId166213">http://sg.danny.cz/sg/sdparm.html#mozTocId166213</a>&quot;</div>=
<div>+SECTION =3D &quot;console/utils&quot;</div><div>+LICENSE =3D &quot;BS=
D&quot;</div>
<div>+LIC_FILES_CHKSUM =3D &quot;file://COPYING;md5=3D03299eb2d80659ec83507=
fcc511c5b42&quot;</div><div>+PR =3D &quot;r0&quot;</div><div>+</div><div>+S=
RC_URI =3D &quot;<a href=3D"http://sg.danny.cz/sg/p/${PN}-${PV}.tgz">http:/=
/sg.danny.cz/sg/p/${PN}-${PV}.tgz</a>&quot;</div>
<div>+</div><div>+SRC_URI[md5sum] =3D &quot;5e19913658bb4f9849ddd909e0f47cd=
e&quot;</div><div>+SRC_URI[sha256sum] =3D &quot;e011a7a9e87e4e24c9c115f456a=
c4916fdc314d36ae99167979175782ea2f6b4&quot;</div><div>+inherit autotools</d=
iv>
<div>--=A0</div><div>1.7.2.5</div><div><br></div>
</div>

--0016363ba55afd835d04b0c2c824--
