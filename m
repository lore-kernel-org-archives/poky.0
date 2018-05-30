Return-Path: <nick83ola@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6C924E00C50; Wed, 30 May 2018 06:24:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (nick83ola[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ot0-f174.google.com (mail-ot0-f174.google.com
	[74.125.82.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 43469E00BAA
	for <poky@yoctoproject.org>; Wed, 30 May 2018 06:24:29 -0700 (PDT)
Received: by mail-ot0-f174.google.com with SMTP id h6-v6so2018198otj.0
	for <poky@yoctoproject.org>; Wed, 30 May 2018 06:24:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=18LQFNYm1RQXpjGkGdhmG+iYxrqEHbuQWPwCUpPbSlo=;
	b=hWBbUo0RkAAVySB4snBcV+T1aPkAFI9gW78NflP0TB9NwjvRq2xGzt1IUDZFu8lhyQ
	o8AohKCqF2fpk2NH0tD17PovgLogGCeQyoaix11kyT4ru7PacoSodi47o/DwPTgXEiF0
	ncEEkhfNKHxOmY5XvKWgeKIssSlGC0wYgnLrahuW/L6Z+Stnyo1tMfCTEYFqJjAmW5x8
	dQpMKAtRi8MSDJDZz79pb6hlaPzu1nvoBIJeV5GoHc/kbG4CoHnM8qHNBn0u7i0J0p5J
	Cnbbvp3x//uVzEqJX+W8UQKJkvmIZYgBg/S3NbKB9YGwTFIcTDioxTObFtqN6qEEfdAn
	h/Bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=18LQFNYm1RQXpjGkGdhmG+iYxrqEHbuQWPwCUpPbSlo=;
	b=LzVdExVYcnxXDGh/zraEtCgriR3EUYWvtpQZstKMg0Y0OcyjE0RNgHIOclNyhUhXrQ
	54vzhUq0Os7QbOlWTy0/GbLi5JerZ/3tr7JTh9QJ7aVdJfZnbBugxIMxv3MeUAXqvs3Y
	bjEYJE7Je11AIzDeKGV8mT2PCfVfnMgdsgeMhF63CTNUJgkNcRRIi/w5cKthxmJ2L44N
	MNsekc0GmB8l1i/PWf95YHlb9W8+e2jH/kGkW+cO+1qUPuvAPFwm7Ds4CNxizoa0PVA/
	I57LU3cqSEAcRoBmibQjzOWyvv5r84yE71EJ20hnToNBsih8thtuWWa3i7cfGnzW4Det
	Z7jA==
X-Gm-Message-State: ALKqPwedY6ZemUt5gQ6MU5Xd7yH9oL+/iEg3XnJ2rrW4MJl1uD8N/HTx
	CbbxWZZEsaxFtwfzf+SdHIyBo0Mdc+sq9NWYAjAaTA==
X-Google-Smtp-Source: ADUXVKLytKPx9y67xeAuJfElpqs1SR9NOzSAgK8gMhaZlivbQtHrJuY3MKmAvmrjlBG27Fv75wRn34ctr9nZ0gdRXe8=
X-Received: by 2002:a9d:2c7:: with SMTP id 65-v6mr1868601otl.71.1527686668338; 
	Wed, 30 May 2018 06:24:28 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a9d:2927:0:0:0:0:0 with HTTP; Wed, 30 May 2018 06:24:07
	-0700 (PDT)
From: nick83ola <nick83ola@gmail.com>
Date: Wed, 30 May 2018 14:24:07 +0100
Message-ID: <CABPh3UMsooqLDJ+Aq1DiObxoi12a2Oj68nO51ALjgBet2SwkAw@mail.gmail.com>
To: poky@yoctoproject.org
Subject: [PATCH] systemd: resolved linked even if the option is disabled
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
X-List-Received-Date: Wed, 30 May 2018 13:24:30 -0000
Content-Type: multipart/alternative; boundary="00000000000031ca97056d6c459c"

--00000000000031ca97056d6c459c
Content-Type: text/plain; charset="UTF-8"

systemd: resolved linked even if the option is disabled

in the do_install function in systemd recipe the condition to check
if the resolved option is selected is reversed (wrong !).
This is for example true if we compile systemd with musl instead of
glibc (every poky-image-minimal recipe).

Also no link should be created if the option is not selected
nor an ALTERNATIVE set.

Signed-off-by: Nicola Lunghi <nick83ola@gmail.com>
---
 meta/recipes-core/systemd/systemd_237.bb | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/meta/recipes-core/systemd/systemd_237.bb
b/meta/recipes-core/systemd/systemd_237.bb
index 2e6558ded1..2eea6af508 100644
--- a/meta/recipes-core/systemd/systemd_237.bb
+++ b/meta/recipes-core/systemd/systemd_237.bb
@@ -256,14 +256,11 @@ do_install() {
     if [ -s ${D}${exec_prefix}/lib/tmpfiles.d/systemd.conf ]; then
         ${@bb.utils.contains('PACKAGECONFIG', 'networkd', ':', 'sed -i -e
"\$ad /run/systemd/netif/links 0755 root root -"
${D}${exec_prefix}/lib/tmpfiles.d/systemd.conf', d)}
     fi
-    if ! ${@bb.utils.contains('PACKAGECONFIG', 'resolved', 'true',
'false', d)}; then
+    if ${@bb.utils.contains('PACKAGECONFIG', 'resolved', 'true', 'false',
d)}; then
         echo 'L! ${sysconfdir}/resolv.conf - - - -
../run/systemd/resolve/resolv.conf'
>>${D}${exec_prefix}/lib/tmpfiles.d/etc.conf
         echo 'd /run/systemd/resolve 0755 root root -'
>>${D}${exec_prefix}/lib/tmpfiles.d/systemd.conf
         echo 'f /run/systemd/resolve/resolv.conf 0644 root root'
>>${D}${exec_prefix}/lib/tmpfiles.d/systemd.conf
         ln -s ../run/systemd/resolve/resolv.conf
${D}${sysconfdir}/resolv-conf.systemd
-    else
-        sed -i -e "s%^L! /etc/resolv.conf.*$%L! /etc/resolv.conf - - - -
../run/systemd/resolve/resolv.conf%g"
${D}${exec_prefix}/lib/tmpfiles.d/etc.conf
-        ln -s ../run/systemd/resolve/resolv.conf
${D}${sysconfdir}/resolv-conf.systemd
     fi
     install -Dm 0755 ${S}/src/systemctl/systemd-sysv-install.SKELETON
${D}${systemd_unitdir}/systemd-sysv-install

@@ -537,7 +534,7 @@ python __anonymous() {
 # TODO:
 # u-a for runlevel and telinit

-ALTERNATIVE_${PN} = "init halt reboot shutdown poweroff runlevel
resolv-conf"
+ALTERNATIVE_${PN} = "init halt reboot shutdown poweroff runlevel"

 ALTERNATIVE_TARGET[init] = "${rootlibexecdir}/systemd/systemd"
 ALTERNATIVE_LINK_NAME[init] = "${base_sbindir}/init"
@@ -563,6 +560,7 @@ ALTERNATIVE_TARGET[runlevel] =
"${base_bindir}/systemctl"
 ALTERNATIVE_LINK_NAME[runlevel] = "${base_sbindir}/runlevel"
 ALTERNATIVE_PRIORITY[runlevel] ?= "300"

+ALTERNATIVE_${PN} += "${@bb.utils.contains('PACKAGECONFIG', 'resolved',
'resolv-conf', '', d)}"
 ALTERNATIVE_TARGET[resolv-conf] = "${sysconfdir}/resolv-conf.systemd"
 ALTERNATIVE_LINK_NAME[resolv-conf] = "${sysconfdir}/resolv.conf"
 ALTERNATIVE_PRIORITY[resolv-conf] ?= "50"
-- 
2.17.0

--00000000000031ca97056d6c459c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>systemd: resolved linked even if the option is disabl=
ed</div><div><br></div><div>in the do_install function in systemd recipe th=
e condition to check</div>if the resolved option is selected is reversed (w=
rong !).<br>This is for example true if we compile systemd with musl instea=
d of<br>glibc (every poky-image-minimal recipe).<br><br>Also no link should=
 be created if the option is not selected<br>nor an ALTERNATIVE set.<br><br=
>Signed-off-by: Nicola Lunghi &lt;<a href=3D"mailto:nick83ola@gmail.com">ni=
ck83ola@gmail.com</a>&gt;<br><div>---<br>=C2=A0meta/recipes-core/systemd/<a=
 href=3D"http://systemd_237.bb">systemd_237.bb</a> | 8 +++-----<br>=C2=A01 =
file changed, 3 insertions(+), 5 deletions(-)<br><br>diff --git a/meta/reci=
pes-core/systemd/<a href=3D"http://systemd_237.bb">systemd_237.bb</a> b/met=
a/recipes-core/systemd/<a href=3D"http://systemd_237.bb">systemd_237.bb</a>=
<br>index 2e6558ded1..2eea6af508 100644<br>--- a/meta/recipes-core/systemd/=
<a href=3D"http://systemd_237.bb">systemd_237.bb</a><br>+++ b/meta/recipes-=
core/systemd/<a href=3D"http://systemd_237.bb">systemd_237.bb</a><br>@@ -25=
6,14 +256,11 @@ do_install() {<br>=C2=A0=C2=A0=C2=A0=C2=A0 if [ -s ${D}${ex=
ec_prefix}/lib/tmpfiles.d/systemd.conf ]; then<br>=C2=A0=C2=A0=C2=A0=C2=A0 =
=C2=A0=C2=A0=C2=A0 ${@bb.utils.contains(&#39;PACKAGECONFIG&#39;, &#39;netwo=
rkd&#39;, &#39;:&#39;, &#39;sed -i -e &quot;\$ad /run/systemd/netif/links 0=
755 root root -&quot; ${D}${exec_prefix}/lib/tmpfiles.d/systemd.conf&#39;, =
d)}<br>=C2=A0=C2=A0=C2=A0=C2=A0 fi<br>-=C2=A0=C2=A0=C2=A0 if ! ${@bb.utils.=
contains(&#39;PACKAGECONFIG&#39;, &#39;resolved&#39;, &#39;true&#39;, &#39;=
false&#39;, d)}; then<br>+=C2=A0=C2=A0=C2=A0 if ${@bb.utils.contains(&#39;P=
ACKAGECONFIG&#39;, &#39;resolved&#39;, &#39;true&#39;, &#39;false&#39;, d)}=
; then<br>=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 echo &#39;L! ${syscon=
fdir}/resolv.conf - - - - ../run/systemd/resolve/resolv.conf&#39; &gt;&gt;$=
{D}${exec_prefix}/lib/tmpfiles.d/etc.conf<br>=C2=A0=C2=A0=C2=A0=C2=A0 =C2=
=A0=C2=A0=C2=A0 echo &#39;d /run/systemd/resolve 0755 root root -&#39; &gt;=
&gt;${D}${exec_prefix}/lib/tmpfiles.d/systemd.conf<br>=C2=A0=C2=A0=C2=A0=C2=
=A0 =C2=A0=C2=A0=C2=A0 echo &#39;f /run/systemd/resolve/resolv.conf 0644 ro=
ot root&#39; &gt;&gt;${D}${exec_prefix}/lib/tmpfiles.d/systemd.conf<br>=C2=
=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 ln -s ../run/systemd/resolve/resol=
v.conf ${D}${sysconfdir}/resolv-conf.systemd<br>-=C2=A0=C2=A0=C2=A0 else<br=
>-=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 sed -i -e &quot;s%^L! /etc/resolv.c=
onf.*$%L! /etc/resolv.conf - - - - ../run/systemd/resolve/resolv.conf%g&quo=
t; ${D}${exec_prefix}/lib/tmpfiles.d/etc.conf<br>-=C2=A0=C2=A0=C2=A0 =C2=A0=
=C2=A0=C2=A0 ln -s ../run/systemd/resolve/resolv.conf ${D}${sysconfdir}/res=
olv-conf.systemd<br>=C2=A0=C2=A0=C2=A0=C2=A0 fi<br>=C2=A0=C2=A0=C2=A0=C2=A0=
 install -Dm 0755 ${S}/src/systemctl/systemd-sysv-install.SKELETON ${D}${sy=
stemd_unitdir}/systemd-sysv-install<br>=C2=A0<br>@@ -537,7 +534,7 @@ python=
 __anonymous() {<br>=C2=A0# TODO:<br>=C2=A0# u-a for runlevel and telinit<b=
r>=C2=A0<br>-ALTERNATIVE_${PN} =3D &quot;init halt reboot shutdown poweroff=
 runlevel resolv-conf&quot;<br>+ALTERNATIVE_${PN} =3D &quot;init halt reboo=
t shutdown poweroff runlevel&quot;<br>=C2=A0<br>=C2=A0ALTERNATIVE_TARGET[in=
it] =3D &quot;${rootlibexecdir}/systemd/systemd&quot;<br>=C2=A0ALTERNATIVE_=
LINK_NAME[init] =3D &quot;${base_sbindir}/init&quot;<br>@@ -563,6 +560,7 @@=
 ALTERNATIVE_TARGET[runlevel] =3D &quot;${base_bindir}/systemctl&quot;<br>=
=C2=A0ALTERNATIVE_LINK_NAME[runlevel] =3D &quot;${base_sbindir}/runlevel&qu=
ot;<br>=C2=A0ALTERNATIVE_PRIORITY[runlevel] ?=3D &quot;300&quot;<br>=C2=A0<=
br>+ALTERNATIVE_${PN} +=3D &quot;${@bb.utils.contains(&#39;PACKAGECONFIG&#3=
9;, &#39;resolved&#39;, &#39;resolv-conf&#39;, &#39;&#39;, d)}&quot;<br>=C2=
=A0ALTERNATIVE_TARGET[resolv-conf] =3D &quot;${sysconfdir}/resolv-conf.syst=
emd&quot;<br>=C2=A0ALTERNATIVE_LINK_NAME[resolv-conf] =3D &quot;${sysconfdi=
r}/resolv.conf&quot;<br>=C2=A0ALTERNATIVE_PRIORITY[resolv-conf] ?=3D &quot;=
50&quot;<br>-- <br>2.17.0<br><br></div><div><br></div></div>

--00000000000031ca97056d6c459c--
