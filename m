Return-Path: <madhu1313b@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 302C7E00CCA; Mon, 11 Feb 2019 22:41:17 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (madhu1313b[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.172 listed in list.dnswl.org]
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com
	[209.85.160.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 88282E00C50
	for <poky@yoctoproject.org>; Mon, 11 Feb 2019 22:41:16 -0800 (PST)
Received: by mail-qt1-f172.google.com with SMTP id w4so1789176qtc.1
	for <poky@yoctoproject.org>; Mon, 11 Feb 2019 22:41:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=U2SkdeB0qt9s9ygm/3ju6pzah27X+p0F9WTGO4BKc3Y=;
	b=DnZY/V9Dar24LC964hIdDiK6mZ7cuyF/MdkzTfs4TSuKuZTEVwMZ/RjEm/SykDQFWn
	0EB6xBCwVOuqIul37P+Wi2akKo1WzrO2qNoEoTOu6lH8Sph3is0CEjPZpgyblHZ+CrIF
	7Y0wNMQIwPAD0yvfM576oukLJDdgmm1iza/B9PLrOxHPhg1e94aoGSpjOIXTBYX8xmza
	tIpDqlol6vHlDzBhGAHIORXj5D1GpYa6E3QdOXPt1ZzswUaHYHbe9iyNKTfq9luZ9VBq
	Mlwa6kGLTFmoQTeuNbBQa8jxCtcPoi5dH/2xdwtRQhn6b0BXyZy8olZGeFetoZD+lfxH
	7sYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=U2SkdeB0qt9s9ygm/3ju6pzah27X+p0F9WTGO4BKc3Y=;
	b=DdQe+PHDe84ADAcx/UJCaLxX11j2ArspzeuEr8fac3U5me2VddC7GT73/p5N7kPEbR
	nO60P/uJve6RlNqn4YozyeZ8Wl5DNn3dqBrIcdG/UCU804rGQ9/wC6xp4HSSd+lcxAn8
	zf0HnkuXu6ZavLBZFaBKZVO3bDGhsuSjK3YiFez33M+FimKMaKzuky2SDu4EyIeQ63g4
	tg2KOoqCn8wWGuVBn98Ml5ytshAr/op1U9bg/Xoi6Ha1lFXEMvOEuykQDlBE1CbpfQRk
	2jCSnzxb2/LUixeFJGFqDxmrE3sv2sJSb4ev2asGju584CFyQqNpfEiYPmDXCceDSAgt
	o8og==
X-Gm-Message-State: AHQUAuaLfjPeHHS7I/lehXI3Db1sb9XN+c8J0XZAyBzqHZ+MHoTQ+gzN
	5bIYgP61uTu9X8nJlzCcVkP3snEkheAJvxsFBm1uNVVA
X-Google-Smtp-Source: AHgI3IY33pKpc/p//EpfbKQppTB57dKSvGXLaCohp/b7rolQjg7zC9S4CEJX0hMhhdZcqQFOOqaHE1i3EmK+iO3xn40=
X-Received: by 2002:a0c:b8ac:: with SMTP id y44mr1546341qvf.76.1549953675783; 
	Mon, 11 Feb 2019 22:41:15 -0800 (PST)
MIME-Version: 1.0
From: Madhu B <madhu1313b@gmail.com>
Date: Tue, 12 Feb 2019 12:11:02 +0530
Message-ID: <CAH5YvUtMEkHQCGZvrnviknkmwQBc_gVNC3cd2f7qb=kCCfk3Kw@mail.gmail.com>
To: poky@yoctoproject.org
Subject: Getting an syntax error with 'sed' in systemd-serialgetty.bb
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
X-List-Received-Date: Tue, 12 Feb 2019 06:41:17 -0000
Content-Type: multipart/alternative; boundary="0000000000004374520581acb6cb"

--0000000000004374520581acb6cb
Content-Type: text/plain; charset="UTF-8"

Hello everyone,
                       While trying to build the AGL image, I am getting an
syntax error lik e "sed: -e expression #1, char 19: unterminated `s'
command".

With the below patch, I resolved that syntax error.
diff --git a/meta/recipes-core/systemd/systemd-serialgetty.bb
b/meta/recipes-core/systemd/systemd-serialgetty.bb
index d934716..78b07c2 100644
--- a/meta/recipes-core/systemd/systemd-serialgetty.bb
+++ b/meta/recipes-core/systemd/systemd-serialgetty.bb
@@ -17,7 +17,7 @@ do_install() {
                install -d ${D}${systemd_unitdir}/system/
                install -d
${D}${sysconfdir}/systemd/system/getty.target.wants/
                install -m 0644 ${WORKDIR}/serial-getty@.service
${D}${systemd_unitdir}/system/
-               sed -i -e s/\@BAUDRATE\@/$default_baudrate/g
${D}${systemd_unitdir}/system/serial-getty@.service
+               sed -i -e 's/\@BAUDRATE\@/$default_baudrate/g'
${D}${systemd_unitdir}/system/serial-getty@.service

                tmp="${SERIAL_CONSOLES}"
                for entry in $tmp ; do

Is it really missed or am I missing anything?

Regards,
-Madhu.

--0000000000004374520581acb6cb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div>Hello everyone,</di=
v><div>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 While tr=
ying to build the AGL image, I am getting an syntax error lik e &quot;sed: =
-e expression #1, char 19: unterminated `s&#39; command&quot;.</div><div><b=
r></div><div>With the below patch, I resolved that syntax error.</div><div>=
diff --git a/meta/recipes-core/systemd/<a href=3D"http://systemd-serialgett=
y.bb">systemd-serialgetty.bb</a> b/meta/recipes-core/systemd/<a href=3D"htt=
p://systemd-serialgetty.bb">systemd-serialgetty.bb</a><br>index d934716..78=
b07c2 100644<br>--- a/meta/recipes-core/systemd/<a href=3D"http://systemd-s=
erialgetty.bb">systemd-serialgetty.bb</a><br>+++ b/meta/recipes-core/system=
d/<a href=3D"http://systemd-serialgetty.bb">systemd-serialgetty.bb</a><br>@=
@ -17,7 +17,7 @@ do_install() {<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 install -d ${D}${system=
d_unitdir}/system/<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 install -d ${D}${sysconfdir}/system=
d/system/getty.target.wants/<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 install -m 0644 ${WORKDIR}=
/serial-getty@.service ${D}${systemd_unitdir}/system/<br>-=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 sed -=
i -e s/\@BAUDRATE\@/$default_baudrate/g ${D}${systemd_unitdir}/system/seria=
l-getty@.service<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 sed -i -e &#39;s/\@BAUDRATE\@/$default_baudr=
ate/g&#39; ${D}${systemd_unitdir}/system/serial-getty@.service<br>=C2=A0<br=
>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 tmp=3D&quot;${SERIAL_CONSOLES}&quot;<br>=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 for entry in $tmp ; do</div><div><br></div><div>Is it really missed or am =
I missing anything?</div><div><br></div><div>Regards,</div><div>-Madhu.<br>=
</div><div><br></div></div></div></div>

--0000000000004374520581acb6cb--
