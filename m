Return-Path: <Tobias.Gassner.ext@karlstorz.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C717C3DA42
	for <webhook@archiver.kernel.org>; Mon,  8 Jul 2024 13:53:58 +0000 (UTC)
Subject: Re: execute pkg_postinst_ontarget when read-only-rootfs-delayed-postinsts is set for a read only rootfs
To: poky@lists.yoctoproject.org
From: "Gassner, Tobias.ext" <Tobias.Gassner.ext@karlstorz.com>
X-Originating-Location: CH (147.161.138.118)
X-Originating-Platform: Linux Chrome 126
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 08 Jul 2024 06:53:49 -0700
References: <CANNYZj-2MRP66dbONLGHmacwJjFNTuQ-CfyQLAF0-q=WY+BKmg@mail.gmail.com>
In-Reply-To: <CANNYZj-2MRP66dbONLGHmacwJjFNTuQ-CfyQLAF0-q=WY+BKmg@mail.gmail.com>
Message-ID: <3010.1720446829836869567@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="2fFNqCIX68eD00Reefda"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Mon, 08 Jul 2024 13:53:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13416

--2fFNqCIX68eD00Reefda
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Alex,

please have a look at the following patch in overlayfs.py:

From da51462765e24b186c55431b53856eebd5f6e8da Mon Sep 17 00:00:00 2001
From: "Gassner, Tobias.ext" <tobias.gassner.ext@karlstorz.com>
Date: Mon, 8 Jul 2024 15:50:58 +0200
Subject: [PATCH] added test case to verify that post-installation on target
scripts are executed even if using read-only rootfs when
read-only-rootfs-delayed-postinsts is set

Signed-off-by: Gassner, Tobias.ext <tobias.gassner.ext@karlstorz.com>
---
meta/lib/oeqa/selftest/cases/overlayfs.py | 41 ++++++++++++++++++++++-
1 file changed, 40 insertions(+), 1 deletion(-)

diff --git a/meta/lib/oeqa/selftest/cases/overlayfs.py b/meta/lib/oeqa/self=
test/cases/overlayfs.py
index e31063567b..580fbdcb9c 100644
--- a/meta/lib/oeqa/selftest/cases/overlayfs.py
+++ b/meta/lib/oeqa/selftest/cases/overlayfs.py
@@ -5,7 +5,7 @@
#

from oeqa.selftest.case import OESelftestTestCase
-from oeqa.utils.commands import bitbake, runqemu
+from oeqa.utils.commands import bitbake, runqemu, get_bb_vars
from oeqa.core.decorator import OETestTag
from oeqa.core.decorator.data import skipIfNotMachine

@@ -466,6 +466,45 @@ IMAGE_INSTALL:append =3D " overlayfs-user"
line =3D getline_qemu(output, "Read-only file system")
self.assertTrue(line, msg=3Doutput)

+ =C2=A0 =C2=A0@skipIfNotMachine("qemux86-64", "tests are qemux86-64 specif=
ic currently")
+ =C2=A0 =C2=A0def test_postinst_on_target_for_read_only_rootfs(self):
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0"""
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0Summary: =C2=A0The purpose of this test case i=
s to verify that post-installation
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0on target s=
cripts are executed even if using read-only rootfs when
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0read-only-r=
ootfs-delayed-postinsts is set
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0Expected: The test files are created on first =
boot
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0"""
+
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0import oe.path
+
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0vars =3D get_bb_vars(("IMAGE_ROOTFS", "sysconf=
dir"), "core-image-minimal")
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0sysconfdir =3D vars["sysconfdir"]
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0self.assertIsNotNone(sysconfdir)
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0# Need to use oe.path here as sysconfdir start=
s with /
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0targettestdir =3D os.path.join(sysconfdir, "po=
stinst-test")
+
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0config =3D self.get_working_config()
+
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0args =3D {
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0'OVERLAYFS_INIT_OPTION': "",
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0'OVERLAYFS_ETC_USE_ORIG_INIT_NAM=
E': 1,
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0'OVERLAYFS_ROOTFS_TYPE': "ext4",
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0'OVERLAYFS_ETC_CREATE_MOUNT_DIRS=
': 1
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0}
+
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0# read-only-rootfs is already set in get_worki=
ng_config()
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0config +=3D 'EXTRA_IMAGE_FEATURES +=3D "read-o=
nly-rootfs-delayed-postinsts"\n'
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0config +=3D 'CORE_IMAGE_EXTRA_INSTALL =3D "pos=
tinst-delayed-b"\n'
+
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0self.write_config(config.format(**args))
+
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0res =3D bitbake('core-image-minimal')
+
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0with runqemu('core-image-minimal', image_fstyp=
e=3D'wic') as qemu:
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0for filename in ("rootfs", "dela=
yed-a", "delayed-b"):
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0status, output =3D=
 qemu.run_serial("test -f %s && echo found" % os.path.join(targettestdir, f=
ilename))
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0self.assertIn("fou=
nd", output, "%s was not present on boot" % filename)
+
def get_working_config(self):
return """
# Use systemd as init manager
--
2.45.2

Greetings
-Tobias

--2fFNqCIX68eD00Reefda
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Alex,<br /><br />please have a look at the following patch in overlayfs.=
py:<br /><br /><span style=3D"font-family: courier_newregular, courier;">Fr=
om da51462765e24b186c55431b53856eebd5f6e8da Mon Sep 17 00:00:00 2001</span>=
<br /><span style=3D"font-family: courier_newregular, courier;">From: "Gass=
ner, Tobias.ext" &lt;tobias.gassner.ext@karlstorz.com&gt;</span><br /><span=
 style=3D"font-family: courier_newregular, courier;">Date: Mon, 8 Jul 2024 =
15:50:58 +0200</span><br /><span style=3D"font-family: courier_newregular, =
courier;">Subject: [PATCH] added test case to verify that post-installation=
 on target</span><br /><span style=3D"font-family: courier_newregular, cour=
ier;">&nbsp;scripts are executed even if using read-only rootfs when</span>=
<br /><span style=3D"font-family: courier_newregular, courier;">&nbsp;read-=
only-rootfs-delayed-postinsts is set</span><br /><br /><span style=3D"font-=
family: courier_newregular, courier;">Signed-off-by: Gassner, Tobias.ext &l=
t;tobias.gassner.ext@karlstorz.com&gt;</span><br /><span style=3D"font-fami=
ly: courier_newregular, courier;">---</span><br /><span style=3D"font-famil=
y: courier_newregular, courier;">&nbsp;meta/lib/oeqa/selftest/cases/overlay=
fs.py | 41 ++++++++++++++++++++++-</span><br /><span style=3D"font-family: =
courier_newregular, courier;">&nbsp;1 file changed, 40 insertions(+), 1 del=
etion(-)</span><br /><br /><span style=3D"font-family: courier_newregular, =
courier;">diff --git a/meta/lib/oeqa/selftest/cases/overlayfs.py b/meta/lib=
/oeqa/selftest/cases/overlayfs.py</span><br /><span style=3D"font-family: c=
ourier_newregular, courier;">index e31063567b..580fbdcb9c 100644</span><br =
/><span style=3D"font-family: courier_newregular, courier;">--- a/meta/lib/=
oeqa/selftest/cases/overlayfs.py</span><br /><span style=3D"font-family: co=
urier_newregular, courier;">+++ b/meta/lib/oeqa/selftest/cases/overlayfs.py=
</span><br /><span style=3D"font-family: courier_newregular, courier;">@@ -=
5,7 +5,7 @@</span><br /><span style=3D"font-family: courier_newregular, cou=
rier;">&nbsp;#</span><br /><span style=3D"font-family: courier_newregular, =
courier;">&nbsp;</span><br /><span style=3D"font-family: courier_newregular=
, courier;">&nbsp;from oeqa.selftest.case import OESelftestTestCase</span><=
br /><span style=3D"font-family: courier_newregular, courier;">-from oeqa.u=
tils.commands import bitbake, runqemu</span><br /><span style=3D"font-famil=
y: courier_newregular, courier;">+from oeqa.utils.commands import bitbake, =
runqemu, get_bb_vars</span><br /><span style=3D"font-family: courier_newreg=
ular, courier;">&nbsp;from oeqa.core.decorator import OETestTag</span><br /=
><span style=3D"font-family: courier_newregular, courier;">&nbsp;from oeqa.=
core.decorator.data import skipIfNotMachine</span><br /><span style=3D"font=
-family: courier_newregular, courier;">&nbsp;</span><br /><span style=3D"fo=
nt-family: courier_newregular, courier;">@@ -466,6 +466,45 @@ IMAGE_INSTALL=
:append =3D " overlayfs-user"</span><br /><span style=3D"font-family: couri=
er_newregular, courier;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;li=
ne =3D getline_qemu(output, "Read-only file system")</span><br /><span styl=
e=3D"font-family: courier_newregular, courier;">&nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp;self.assertTrue(line, msg=3Doutput)</span><br /><span =
style=3D"font-family: courier_newregular, courier;">&nbsp;</span><br /><spa=
n style=3D"font-family: courier_newregular, courier;">+ &nbsp; &nbsp;@skipI=
fNotMachine("qemux86-64", "tests are qemux86-64 specific currently")</span>=
<br /><span style=3D"font-family: courier_newregular, courier;">+ &nbsp; &n=
bsp;def test_postinst_on_target_for_read_only_rootfs(self):</span><br /><sp=
an style=3D"font-family: courier_newregular, courier;">+ &nbsp; &nbsp; &nbs=
p; &nbsp;"""</span><br /><span style=3D"font-family: courier_newregular, co=
urier;">+ &nbsp; &nbsp; &nbsp; &nbsp;Summary: &nbsp;The purpose of this tes=
t case is to verify that post-installation</span><br /><span style=3D"font-=
family: courier_newregular, courier;">+ &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp;on target scripts are executed even if using rea=
d-only rootfs when</span><br /><span style=3D"font-family: courier_newregul=
ar, courier;">+ &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp;read-only-rootfs-delayed-postinsts is set</span><br /><span style=3D"fon=
t-family: courier_newregular, courier;">+ &nbsp; &nbsp; &nbsp; &nbsp;Expect=
ed: The test files are created on first boot</span><br /><span style=3D"fon=
t-family: courier_newregular, courier;">+ &nbsp; &nbsp; &nbsp; &nbsp;"""</s=
pan><br /><span style=3D"font-family: courier_newregular, courier;">+</span=
><br /><span style=3D"font-family: courier_newregular, courier;">+ &nbsp; &=
nbsp; &nbsp; &nbsp;import oe.path</span><br /><span style=3D"font-family: c=
ourier_newregular, courier;">+</span><br /><span style=3D"font-family: cour=
ier_newregular, courier;">+ &nbsp; &nbsp; &nbsp; &nbsp;vars =3D get_bb_vars=
(("IMAGE_ROOTFS", "sysconfdir"), "core-image-minimal")</span><br /><span st=
yle=3D"font-family: courier_newregular, courier;">+ &nbsp; &nbsp; &nbsp; &n=
bsp;sysconfdir =3D vars["sysconfdir"]</span><br /><span style=3D"font-famil=
y: courier_newregular, courier;">+ &nbsp; &nbsp; &nbsp; &nbsp;self.assertIs=
NotNone(sysconfdir)</span><br /><span style=3D"font-family: courier_newregu=
lar, courier;">+ &nbsp; &nbsp; &nbsp; &nbsp;# Need to use oe.path here as s=
ysconfdir starts with /</span><br /><span style=3D"font-family: courier_new=
regular, courier;">+ &nbsp; &nbsp; &nbsp; &nbsp;targettestdir =3D os.path.j=
oin(sysconfdir, "postinst-test")</span><br /><span style=3D"font-family: co=
urier_newregular, courier;">+</span><br /><span style=3D"font-family: couri=
er_newregular, courier;">+ &nbsp; &nbsp; &nbsp; &nbsp;config =3D self.get_w=
orking_config()</span><br /><span style=3D"font-family: courier_newregular,=
 courier;">+</span><br /><span style=3D"font-family: courier_newregular, co=
urier;">+ &nbsp; &nbsp; &nbsp; &nbsp;args =3D {</span><br /><span style=3D"=
font-family: courier_newregular, courier;">+ &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp;'OVERLAYFS_INIT_OPTION': "",</span><br /><span style=3D"font-fam=
ily: courier_newregular, courier;">+ &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp;'OVERLAYFS_ETC_USE_ORIG_INIT_NAME': 1,</span><br /><span style=3D"font-f=
amily: courier_newregular, courier;">+ &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp;'OVERLAYFS_ROOTFS_TYPE': "ext4",</span><br /><span style=3D"font-famil=
y: courier_newregular, courier;">+ &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
;'OVERLAYFS_ETC_CREATE_MOUNT_DIRS': 1</span><br /><span style=3D"font-famil=
y: courier_newregular, courier;">+ &nbsp; &nbsp; &nbsp; &nbsp;}</span><br /=
><span style=3D"font-family: courier_newregular, courier;">+</span><br /><s=
pan style=3D"font-family: courier_newregular, courier;">+ &nbsp; &nbsp; &nb=
sp; &nbsp;# read-only-rootfs is already set in get_working_config()</span><=
br /><span style=3D"font-family: courier_newregular, courier;">+ &nbsp; &nb=
sp; &nbsp; &nbsp;config +=3D 'EXTRA_IMAGE_FEATURES +=3D "read-only-rootfs-d=
elayed-postinsts"\n'</span><br /><span style=3D"font-family: courier_newreg=
ular, courier;">+ &nbsp; &nbsp; &nbsp; &nbsp;config +=3D 'CORE_IMAGE_EXTRA_=
INSTALL =3D "postinst-delayed-b"\n'</span><br /><span style=3D"font-family:=
 courier_newregular, courier;">+</span><br /><span style=3D"font-family: co=
urier_newregular, courier;">+ &nbsp; &nbsp; &nbsp; &nbsp;self.write_config(=
config.format(**args))</span><br /><span style=3D"font-family: courier_newr=
egular, courier;">+</span><br /><span style=3D"font-family: courier_newregu=
lar, courier;">+ &nbsp; &nbsp; &nbsp; &nbsp;res =3D bitbake('core-image-min=
imal')</span><br /><span style=3D"font-family: courier_newregular, courier;=
">+</span><br /><span style=3D"font-family: courier_newregular, courier;">+=
 &nbsp; &nbsp; &nbsp; &nbsp;with runqemu('core-image-minimal', image_fstype=
=3D'wic') as qemu:</span><br /><span style=3D"font-family: courier_newregul=
ar, courier;">+ &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;for filename in ("=
rootfs", "delayed-a", "delayed-b"):</span><br /><span style=3D"font-family:=
 courier_newregular, courier;">+ &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp;status, output =3D qemu.run_serial("test -f %s &amp;&amp; echo=
 found" % os.path.join(targettestdir, filename))</span><br /><span style=3D=
"font-family: courier_newregular, courier;">+ &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp;self.assertIn("found", output, "%s was not presen=
t on boot" % filename)</span><br /><span style=3D"font-family: courier_newr=
egular, courier;">+</span><br /><span style=3D"font-family: courier_newregu=
lar, courier;">&nbsp; &nbsp; &nbsp;def get_working_config(self):</span><br =
/><span style=3D"font-family: courier_newregular, courier;">&nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;return """</span><br /><span style=3D"font-family: couri=
er_newregular, courier;">&nbsp;# Use systemd as init manager</span><br /><s=
pan style=3D"font-family: courier_newregular, courier;">--&nbsp;</span><br =
/><span style=3D"font-family: courier_newregular, courier;">2.45.2</span><b=
r /><br /><br />Greetings<br />-Tobias

--2fFNqCIX68eD00Reefda--

