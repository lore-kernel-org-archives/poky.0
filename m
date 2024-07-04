Return-Path: <Tobias.Gassner.ext@karlstorz.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6EED1C30653
	for <webhook@archiver.kernel.org>; Thu,  4 Jul 2024 10:50:55 +0000 (UTC)
Subject: Re: execute pkg_postinst_ontarget when read-only-rootfs-delayed-postinsts is set for a read only rootfs
To: poky@lists.yoctoproject.org
From: "Gassner, Tobias.ext" <Tobias.Gassner.ext@karlstorz.com>
X-Originating-Location: CH (147.161.138.99)
X-Originating-Platform: Linux Chrome 126
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 04 Jul 2024 03:50:50 -0700
References: <CANNYZj8MvP3C8++HT03wUgNA9vkDtjUMGRqjhPAiJ7EA4PtxOw@mail.gmail.com>
In-Reply-To: <CANNYZj8MvP3C8++HT03wUgNA9vkDtjUMGRqjhPAiJ7EA4PtxOw@mail.gmail.com>
Message-ID: <31491.1720090250598985190@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="BTKcJ1b4c8Qb7iHEpiz2"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 04 Jul 2024 10:50:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13403

--BTKcJ1b4c8Qb7iHEpiz2
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Alex,

I moved the test to meta/lib/oeqa/selftest/cases/runtime_test.py, please re=
view the following patch:

From 69685cc1bf4fa97e1105ce336c08e30a09834c4c Mon Sep 17 00:00:00 2001
From: "Gassner, Tobias.ext" <tobias.gassner.ext@karlstorz.com>
Date: Thu, 4 Jul 2024 12:48:20 +0200
Subject: [PATCH] added test case to verify that post-installation on target
scripts are executed even if using read-only rootfs when
read-only-rootfs-delayed-postinsts is set

Signed-off-by: Gassner, Tobias.ext <tobias.gassner.ext@karlstorz.com>
---
.../recipes-test/postinst/postinst_1.0.bb =C2=A0 =C2=A0 | 18 ++++++++++-
meta/lib/oeqa/selftest/cases/runtime_test.py =C2=A0| 30 +++++++++++++++++++
2 files changed, 47 insertions(+), 1 deletion(-)

diff --git a/meta-selftest/recipes-test/postinst/postinst_1.0.bb b/meta-sel=
ftest/recipes-test/postinst/postinst_1.0.bb
index b936c4f44b..000ea24208 100644
--- a/meta-selftest/recipes-test/postinst/postinst_1.0.bb
+++ b/meta-selftest/recipes-test/postinst/postinst_1.0.bb
@@ -3,12 +3,13 @@ LICENSE =3D "MIT"

inherit allarch

-PACKAGES =3D "${PN}-rootfs ${PN}-delayed-a ${PN}-delayed-b ${PN}-rootfs-fa=
iling"
+PACKAGES =3D "${PN}-rootfs ${PN}-delayed-a ${PN}-delayed-b ${PN}-rootfs-fa=
iling ${PN}-tmp"

ALLOW_EMPTY:${PN}-rootfs =3D "1"
ALLOW_EMPTY:${PN}-delayed-a =3D "1"
ALLOW_EMPTY:${PN}-delayed-b =3D "1"
ALLOW_EMPTY:${PN}-rootfs-failing =3D "1"
+ALLOW_EMPTY:${PN}-tmp =3D "1"

RDEPENDS:${PN}-delayed-a =3D "${PN}-rootfs"
RDEPENDS:${PN}-delayed-b =3D "${PN}-delayed-a"
@@ -70,3 +71,18 @@ pkg_postinst:${PN}-rootfs-failing () {
# (oe-selftest checks for it).
touch $D${TESTDIR}/rootfs-after-failure
}
+
+# This scriptlet is used by a test that configures a read-only rootfs,
+# however, writing in /tmp is still possible.
+pkg_postinst_ontarget:${PN}-tmp () {
+ =C2=A0 =C2=A0set -e
+
+ =C2=A0 =C2=A0TESTFILE=3D'/tmp/postinst_tmp'
+
+ =C2=A0 =C2=A0if [ -e ${TESTFILE} ]; then
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0echo "${PN}-tmp: ${TESTFILE} does already exis=
t"
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0exit 1
+ =C2=A0 =C2=A0fi
+
+ =C2=A0 =C2=A0touch ${TESTFILE}
+}
\ No newline at end of file
diff --git a/meta/lib/oeqa/selftest/cases/runtime_test.py b/meta/lib/oeqa/s=
elftest/cases/runtime_test.py
index 12000aac16..5b097e5f92 100644
--- a/meta/lib/oeqa/selftest/cases/runtime_test.py
+++ b/meta/lib/oeqa/selftest/cases/runtime_test.py
@@ -407,6 +407,36 @@ class Postinst(OESelftestTestCase):
self.assertFalse(os.path.isfile(os.path.join(hosttestdir, "rootfs-after-fai=
lure")),
"rootfs-after-failure file was created")

+
+ =C2=A0 =C2=A0def test_postinst_on_target_for_read_only_rootfs(self):
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0"""
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0Summary: =C2=A0 =C2=A0 =C2=A0 =C2=A0The purpos=
e of this test case is to verify that post-installation
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0on target scripts are executed even if using read-only rootfs whe=
n
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0read-only-rootfs-delayed-postinsts is set
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0Expected: =C2=A0 =C2=A0 =C2=A0 The test file i=
n /tmp is created on first boot
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0Product: oe-core
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0"""
+
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0for classes in ("package_rpm", "package_deb", =
"package_ipk"):
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0with self.subTest(package_class=
=3Dclasses):
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0features =3D 'CORE=
_IMAGE_EXTRA_INSTALL =3D "postinst-tmp"\n'
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0features +=3D 'IMA=
GE_FEATURES +=3D "package-management empty-root-password"\n'
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0features +=3D 'PAC=
KAGE_CLASSES =3D "%s"\n' % classes
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0features +=3D 'INI=
T_MANAGER =3D "systemd"\n'
+
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0features +=3D 'IMA=
GE_FEATURES +=3D "read-only-rootfs"\n'
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0features +=3D 'IMA=
GE_FEATURES +=3D "read-only-rootfs-delayed-postinsts"\n'
+
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0self.write_config(=
features)
+
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bitbake('core-imag=
e-minimal')
+
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0with runqemu('core=
-image-minimal') as qemu:
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0test=
file =3D "/tmp/postinst_tmp"
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0stat=
us, output =3D qemu.run_serial("test -f %s && echo found" % testfile)
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0self=
.assertIn("found", output, "%s was not present on boot" % testfile)
+
+
@OETestTag("runqemu")
class SystemTap(OESelftestTestCase):
"""
--
2.45.2

--BTKcJ1b4c8Qb7iHEpiz2
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Alex,<br /><br />I moved the test to meta/lib/oeqa/selftest/cases/runtim=
e_test.py, please review the following patch:<br /><br /><span style=3D"fon=
t-family: courier_newregular, courier;">From 69685cc1bf4fa97e1105ce336c08e3=
0a09834c4c Mon Sep 17 00:00:00 2001</span><br /><span style=3D"font-family:=
 courier_newregular, courier;">From: "Gassner, Tobias.ext" &lt;tobias.gassn=
er.ext@karlstorz.com&gt;</span><br /><span style=3D"font-family: courier_ne=
wregular, courier;">Date: Thu, 4 Jul 2024 12:48:20 +0200</span><br /><span =
style=3D"font-family: courier_newregular, courier;">Subject: [PATCH] added =
test case to verify that post-installation on target</span><br /><span styl=
e=3D"font-family: courier_newregular, courier;">&nbsp;scripts are executed =
even if using read-only rootfs when</span><br /><span style=3D"font-family:=
 courier_newregular, courier;">&nbsp;read-only-rootfs-delayed-postinsts is =
set</span><br /><br /><span style=3D"font-family: courier_newregular, couri=
er;">Signed-off-by: Gassner, Tobias.ext &lt;tobias.gassner.ext@karlstorz.co=
m&gt;</span><br /><span style=3D"font-family: courier_newregular, courier;"=
>---</span><br /><span style=3D"font-family: courier_newregular, courier;">=
&nbsp;.../recipes-test/postinst/postinst_1.0.bb &nbsp; &nbsp; | 18 ++++++++=
++-</span><br /><span style=3D"font-family: courier_newregular, courier;">&=
nbsp;meta/lib/oeqa/selftest/cases/runtime_test.py &nbsp;| 30 ++++++++++++++=
+++++</span><br /><span style=3D"font-family: courier_newregular, courier;"=
>&nbsp;2 files changed, 47 insertions(+), 1 deletion(-)</span><br /><br /><=
span style=3D"font-family: courier_newregular, courier;">diff --git a/meta-=
selftest/recipes-test/postinst/postinst_1.0.bb b/meta-selftest/recipes-test=
/postinst/postinst_1.0.bb</span><br /><span style=3D"font-family: courier_n=
ewregular, courier;">index b936c4f44b..000ea24208 100644</span><br /><span =
style=3D"font-family: courier_newregular, courier;">--- a/meta-selftest/rec=
ipes-test/postinst/postinst_1.0.bb</span><br /><span style=3D"font-family: =
courier_newregular, courier;">+++ b/meta-selftest/recipes-test/postinst/pos=
tinst_1.0.bb</span><br /><span style=3D"font-family: courier_newregular, co=
urier;">@@ -3,12 +3,13 @@ LICENSE =3D "MIT"</span><br /><span style=3D"font=
-family: courier_newregular, courier;">&nbsp;</span><br /><span style=3D"fo=
nt-family: courier_newregular, courier;">&nbsp;inherit allarch</span><br />=
<span style=3D"font-family: courier_newregular, courier;">&nbsp;</span><br =
/><span style=3D"font-family: courier_newregular, courier;">-PACKAGES =3D "=
${PN}-rootfs ${PN}-delayed-a ${PN}-delayed-b ${PN}-rootfs-failing"</span><b=
r /><span style=3D"font-family: courier_newregular, courier;">+PACKAGES =3D=
 "${PN}-rootfs ${PN}-delayed-a ${PN}-delayed-b ${PN}-rootfs-failing ${PN}-t=
mp"</span><br /><span style=3D"font-family: courier_newregular, courier;">&=
nbsp;</span><br /><span style=3D"font-family: courier_newregular, courier;"=
>&nbsp;ALLOW_EMPTY:${PN}-rootfs =3D "1"</span><br /><span style=3D"font-fam=
ily: courier_newregular, courier;">&nbsp;ALLOW_EMPTY:${PN}-delayed-a =3D "1=
"</span><br /><span style=3D"font-family: courier_newregular, courier;">&nb=
sp;ALLOW_EMPTY:${PN}-delayed-b =3D "1"</span><br /><span style=3D"font-fami=
ly: courier_newregular, courier;">&nbsp;ALLOW_EMPTY:${PN}-rootfs-failing =
=3D "1"</span><br /><span style=3D"font-family: courier_newregular, courier=
;">+ALLOW_EMPTY:${PN}-tmp =3D "1"</span><br /><span style=3D"font-family: c=
ourier_newregular, courier;">&nbsp;</span><br /><span style=3D"font-family:=
 courier_newregular, courier;">&nbsp;RDEPENDS:${PN}-delayed-a =3D "${PN}-ro=
otfs"</span><br /><span style=3D"font-family: courier_newregular, courier;"=
>&nbsp;RDEPENDS:${PN}-delayed-b =3D "${PN}-delayed-a"</span><br /><span sty=
le=3D"font-family: courier_newregular, courier;">@@ -70,3 +71,18 @@ pkg_pos=
tinst:${PN}-rootfs-failing () {</span><br /><span style=3D"font-family: cou=
rier_newregular, courier;">&nbsp; &nbsp; &nbsp;# (oe-selftest checks for it=
).</span><br /><span style=3D"font-family: courier_newregular, courier;">&n=
bsp; &nbsp; &nbsp;touch $D${TESTDIR}/rootfs-after-failure</span><br /><span=
 style=3D"font-family: courier_newregular, courier;">&nbsp;}</span><br /><s=
pan style=3D"font-family: courier_newregular, courier;">+</span><br /><span=
 style=3D"font-family: courier_newregular, courier;">+# This scriptlet is u=
sed by a test that configures a read-only rootfs,</span><br /><span style=
=3D"font-family: courier_newregular, courier;">+# however, writing in /tmp =
is still possible.</span><br /><span style=3D"font-family: courier_newregul=
ar, courier;">+pkg_postinst_ontarget:${PN}-tmp () {</span><br /><span style=
=3D"font-family: courier_newregular, courier;">+ &nbsp; &nbsp;set -e</span>=
<br /><span style=3D"font-family: courier_newregular, courier;">+</span><br=
 /><span style=3D"font-family: courier_newregular, courier;">+ &nbsp; &nbsp=
;TESTFILE=3D'/tmp/postinst_tmp'</span><br /><span style=3D"font-family: cou=
rier_newregular, courier;">+</span><br /><span style=3D"font-family: courie=
r_newregular, courier;">+ &nbsp; &nbsp;if [ -e ${TESTFILE} ]; then</span><b=
r /><span style=3D"font-family: courier_newregular, courier;">+ &nbsp; &nbs=
p; &nbsp; &nbsp;echo "${PN}-tmp: ${TESTFILE} does already exist"</span><br =
/><span style=3D"font-family: courier_newregular, courier;">+ &nbsp; &nbsp;=
 &nbsp; &nbsp;exit 1</span><br /><span style=3D"font-family: courier_newreg=
ular, courier;">+ &nbsp; &nbsp;fi</span><br /><span style=3D"font-family: c=
ourier_newregular, courier;">+</span><br /><span style=3D"font-family: cour=
ier_newregular, courier;">+ &nbsp; &nbsp;touch ${TESTFILE}</span><br /><spa=
n style=3D"font-family: courier_newregular, courier;">+}</span><br /><span =
style=3D"font-family: courier_newregular, courier;">\ No newline at end of =
file</span><br /><span style=3D"font-family: courier_newregular, courier;">=
diff --git a/meta/lib/oeqa/selftest/cases/runtime_test.py b/meta/lib/oeqa/s=
elftest/cases/runtime_test.py</span><br /><span style=3D"font-family: couri=
er_newregular, courier;">index 12000aac16..5b097e5f92 100644</span><br /><s=
pan style=3D"font-family: courier_newregular, courier;">--- a/meta/lib/oeqa=
/selftest/cases/runtime_test.py</span><br /><span style=3D"font-family: cou=
rier_newregular, courier;">+++ b/meta/lib/oeqa/selftest/cases/runtime_test.=
py</span><br /><span style=3D"font-family: courier_newregular, courier;">@@=
 -407,6 +407,36 @@ class Postinst(OESelftestTestCase):</span><br /><span st=
yle=3D"font-family: courier_newregular, courier;">&nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;self.assertFalse(os.path.isfile(os.pat=
h.join(hosttestdir, "rootfs-after-failure")),</span><br /><span style=3D"fo=
nt-family: courier_newregular, courier;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp;"rootfs-after-failure file was created")</span><br /=
><span style=3D"font-family: courier_newregular, courier;">&nbsp;</span><br=
 /><span style=3D"font-family: courier_newregular, courier;">+</span><br />=
<span style=3D"font-family: courier_newregular, courier;">+ &nbsp; &nbsp;de=
f test_postinst_on_target_for_read_only_rootfs(self):</span><br /><span sty=
le=3D"font-family: courier_newregular, courier;">+ &nbsp; &nbsp; &nbsp; &nb=
sp;"""</span><br /><span style=3D"font-family: courier_newregular, courier;=
">+ &nbsp; &nbsp; &nbsp; &nbsp;Summary: &nbsp; &nbsp; &nbsp; &nbsp;The purp=
ose of this test case is to verify that post-installation</span><br /><span=
 style=3D"font-family: courier_newregular, courier;">+ &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;on target sc=
ripts are executed even if using read-only rootfs when</span><br /><span st=
yle=3D"font-family: courier_newregular, courier;">+ &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;read-only-rootf=
s-delayed-postinsts is set</span><br /><span style=3D"font-family: courier_=
newregular, courier;">+ &nbsp; &nbsp; &nbsp; &nbsp;Expected: &nbsp; &nbsp; =
&nbsp; The test file in /tmp is created on first boot</span><br /><span sty=
le=3D"font-family: courier_newregular, courier;">+ &nbsp; &nbsp; &nbsp; &nb=
sp;Product: oe-core</span><br /><span style=3D"font-family: courier_newregu=
lar, courier;">+ &nbsp; &nbsp; &nbsp; &nbsp;"""</span><br /><span style=3D"=
font-family: courier_newregular, courier;">+</span><br /><span style=3D"fon=
t-family: courier_newregular, courier;">+ &nbsp; &nbsp; &nbsp; &nbsp;for cl=
asses in ("package_rpm", "package_deb", "package_ipk"):</span><br /><span s=
tyle=3D"font-family: courier_newregular, courier;">+ &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;with self.subTest(package_class=3Dclasses):</span><br />=
<span style=3D"font-family: courier_newregular, courier;">+ &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;features =3D 'CORE_IMAGE_EXTRA_INST=
ALL =3D "postinst-tmp"\n'</span><br /><span style=3D"font-family: courier_n=
ewregular, courier;">+ &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp;features +=3D 'IMAGE_FEATURES +=3D "package-management empty-root-passwo=
rd"\n'</span><br /><span style=3D"font-family: courier_newregular, courier;=
">+ &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;features +=3D 'P=
ACKAGE_CLASSES =3D "%s"\n' % classes</span><br /><span style=3D"font-family=
: courier_newregular, courier;">+ &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp;features +=3D 'INIT_MANAGER =3D "systemd"\n'</span><br /><spa=
n style=3D"font-family: courier_newregular, courier;">+</span><br /><span s=
tyle=3D"font-family: courier_newregular, courier;">+ &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp;features +=3D 'IMAGE_FEATURES +=3D "read-o=
nly-rootfs"\n'</span><br /><span style=3D"font-family: courier_newregular, =
courier;">+ &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;features=
 +=3D 'IMAGE_FEATURES +=3D "read-only-rootfs-delayed-postinsts"\n'</span><b=
r /><span style=3D"font-family: courier_newregular, courier;">+ &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span><br /><span style=3D"fon=
t-family: courier_newregular, courier;">+ &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;self.write_config(features)</span><br /><span style=
=3D"font-family: courier_newregular, courier;">+</span><br /><span style=3D=
"font-family: courier_newregular, courier;">+ &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp;bitbake('core-image-minimal')</span><br /><span s=
tyle=3D"font-family: courier_newregular, courier;">+</span><br /><span styl=
e=3D"font-family: courier_newregular, courier;">+ &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp;with runqemu('core-image-minimal') as qemu:</=
span><br /><span style=3D"font-family: courier_newregular, courier;">+ &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;testfile =
=3D "/tmp/postinst_tmp"</span><br /><span style=3D"font-family: courier_new=
regular, courier;">+ &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp;status, output =3D qemu.run_serial("test -f %s &amp;&amp; ec=
ho found" % testfile)</span><br /><span style=3D"font-family: courier_newre=
gular, courier;">+ &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp;self.assertIn("found", output, "%s was not present on boot" % =
testfile)</span><br /><span style=3D"font-family: courier_newregular, couri=
er;">+</span><br /><span style=3D"font-family: courier_newregular, courier;=
">+</span><br /><span style=3D"font-family: courier_newregular, courier;">&=
nbsp;@OETestTag("runqemu")</span><br /><span style=3D"font-family: courier_=
newregular, courier;">&nbsp;class SystemTap(OESelftestTestCase):</span><br =
/><span style=3D"font-family: courier_newregular, courier;">&nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;"""</span><br /><span style=3D"font-family: courier_newr=
egular, courier;">--&nbsp;</span><br /><span style=3D"font-family: courier_=
newregular, courier;">2.45.2</span><br />

--BTKcJ1b4c8Qb7iHEpiz2--

