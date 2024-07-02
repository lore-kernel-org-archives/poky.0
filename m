Return-Path: <Tobias.Gassner.ext@karlstorz.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B398C3064D
	for <webhook@archiver.kernel.org>; Tue,  2 Jul 2024 13:08:09 +0000 (UTC)
Subject: Re: execute pkg_postinst_ontarget when read-only-rootfs-delayed-postinsts is set for a read only rootfs
To: poky@lists.yoctoproject.org
From: "Gassner, Tobias.ext" <Tobias.Gassner.ext@karlstorz.com>
X-Originating-Location: CH (147.161.136.86)
X-Originating-Platform: Linux Chrome 126
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 02 Jul 2024 06:08:04 -0700
References: <CANNYZj9c8jhhESsnxiMZZOBT6Or-cpJNT3Xe+rm-2KLg38nOPQ@mail.gmail.com>
In-Reply-To: <CANNYZj9c8jhhESsnxiMZZOBT6Or-cpJNT3Xe+rm-2KLg38nOPQ@mail.gmail.com>
Message-ID: <28357.1719925684756220288@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="wLIIEu2NxsVOnlmndxnh"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 02 Jul 2024 13:08:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13401

--wLIIEu2NxsVOnlmndxnh
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Alex,

I wrote a test in meta/lib/oeqa/selftest/cases/buildoptions.py that fails w=
ithout my patch and passes with my patch. Please review if the test as spec=
ified makes sense to you:

From e125ef8504a83cedd014d275387a16f519880eb5 Mon Sep 17 00:00:00 2001
From: "Gassner, Tobias.ext" <tobias.gassner.ext@karlstorz.com>
Date: Tue, 2 Jul 2024 14:53:04 +0200
Subject: [PATCH] Test that pkg_postinst_ontarget task is executed on
read-only-rootfs, when read-only-rootfs-delayed-postinsts is specified

Signed-off-by: Gassner, Tobias.ext <tobias.gassner.ext@karlstorz.com>
---
meta/lib/oeqa/selftest/cases/buildoptions.py | 39 +++++++++++++++++++-
1 file changed, 38 insertions(+), 1 deletion(-)

diff --git a/meta/lib/oeqa/selftest/cases/buildoptions.py b/meta/lib/oeqa/s=
elftest/cases/buildoptions.py
index 31dafaa9c5..f166de89dd 100644
--- a/meta/lib/oeqa/selftest/cases/buildoptions.py
+++ b/meta/lib/oeqa/selftest/cases/buildoptions.py
@@ -12,7 +12,7 @@ import tempfile
from oeqa.selftest.case import OESelftestTestCase
from oeqa.selftest.cases.buildhistory import BuildhistoryBase
from oeqa.core.decorator.data import skipIfMachine
-from oeqa.utils.commands import bitbake, get_bb_var, get_bb_vars
+from oeqa.utils.commands import bitbake, get_bb_var, get_bb_vars, runqemu
import oeqa.utils.ftools as ftools
from oeqa.core.decorator import OETestTag

@@ -59,6 +59,43 @@ class ImageOptionsTests(OESelftestTestCase):
bitbake("core-image-sato core-image-weston")
# do_image will fail if there are any pending postinsts

+ =C2=A0 =C2=A0def test_postinst_ontarget_executes_on_read_only_image(self)=
:
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0# Test checks that pkg_postinst_ontarget task =
is executed even
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0# for read-only-rootfs, when read-only-rootfs-=
delayed-postinsts
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0# is specified as well
+
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0# Define a recipe that touches a file in its p=
ostinst ontarget step
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0emptytest_inc =3D """
+SUMMARY =3D "summary"
+DESCRIPTION =3D "description"
+LICENSE:forcevariable =3D "CLOSED"
+
+ALLOW_EMPTY:${PN} =3D "1"
+
+inherit allarch
+
+pkg_postinst_ontarget:${PN} () {
+ =C2=A0 =C2=A0touch /tmp/ro_rootfs_postinst_ontarget
+}
+"""
+
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0self.write_recipeinc('emptytest', emptytest_in=
c)
+
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0# Make rootfs read-only, but allow postinst on=
target task
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0self.write_config('IMAGE_FEATURES +=3D "read-o=
nly-rootfs"')
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0self.append_config('IMAGE_FEATURES +=3D "read-=
only-rootfs-delayed-postinsts"')
+
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0self.append_config('IMAGE_INSTALL:append =3D "=
 emptytest"')
+
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0self.append_config('INIT_MANAGER =3D "systemd"=
')
+
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0bitbake("core-image-minimal")
+
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0with runqemu('core-image-minimal') as qemu:
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# Check that the file, touched i=
n postinst ontarget task exists
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0status, output =3D qemu.run_seri=
al("[ -f /tmp/ro_rootfs_postinst_ontarget ] && echo 1 || echo 0")
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0self.assertTrue("1" in output, m=
sg=3Doutput)
+
class DiskMonTest(OESelftestTestCase):

def test_stoptask_behavior(self):
--
2.45.2

--wLIIEu2NxsVOnlmndxnh
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Alex,<br /><br />I wrote a test in <span style=3D"color: #333333; font-f=
amily: system-ui, 'Segoe UI', Roboto, 'Helvetica Neue', 'Noto Sans', 'Liber=
ation Sans', Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Seg=
oe UI Symbol', 'Noto Color Emoji'; font-size: 16px; font-style: normal; fon=
t-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; l=
etter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; tex=
t-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width:=
 0px; white-space: pre-wrap; background-color: #ffffff; text-decoration-thi=
ckness: initial; text-decoration-style: initial; text-decoration-color: ini=
tial; display: inline !important; float: none;">meta/lib/oeqa/selftest/case=
s/buildoptions.py that fails without my patch and passes with my patch. Ple=
ase review if the test as specified makes sense to you:<br /><br /><span st=
yle=3D"font-family: courier_newregular, courier;">From e125ef8504a83cedd014=
d275387a16f519880eb5 Mon Sep 17 00:00:00 2001</span><br /><span style=3D"fo=
nt-family: courier_newregular, courier;">From: "Gassner, Tobias.ext" &lt;to=
bias.gassner.ext@karlstorz.com&gt;</span><br /><span style=3D"font-family: =
courier_newregular, courier;">Date: Tue, 2 Jul 2024 14:53:04 +0200</span><b=
r /><span style=3D"font-family: courier_newregular, courier;">Subject: [PAT=
CH] Test that pkg_postinst_ontarget task is executed on</span><br /><span s=
tyle=3D"font-family: courier_newregular, courier;">&nbsp;read-only-rootfs, =
when read-only-rootfs-delayed-postinsts is specified</span><br /><br /><spa=
n style=3D"font-family: courier_newregular, courier;">Signed-off-by: Gassne=
r, Tobias.ext &lt;tobias.gassner.ext@karlstorz.com&gt;</span><br /><span st=
yle=3D"font-family: courier_newregular, courier;">---</span><br /><span sty=
le=3D"font-family: courier_newregular, courier;">&nbsp;meta/lib/oeqa/selfte=
st/cases/buildoptions.py | 39 +++++++++++++++++++-</span><br /><span style=
=3D"font-family: courier_newregular, courier;">&nbsp;1 file changed, 38 ins=
ertions(+), 1 deletion(-)</span><br /><br /><span style=3D"font-family: cou=
rier_newregular, courier;">diff --git a/meta/lib/oeqa/selftest/cases/buildo=
ptions.py b/meta/lib/oeqa/selftest/cases/buildoptions.py</span><br /><span =
style=3D"font-family: courier_newregular, courier;">index 31dafaa9c5..f166d=
e89dd 100644</span><br /><span style=3D"font-family: courier_newregular, co=
urier;">--- a/meta/lib/oeqa/selftest/cases/buildoptions.py</span><br /><spa=
n style=3D"font-family: courier_newregular, courier;">+++ b/meta/lib/oeqa/s=
elftest/cases/buildoptions.py</span><br /><span style=3D"font-family: couri=
er_newregular, courier;">@@ -12,7 +12,7 @@ import tempfile</span><br /><spa=
n style=3D"font-family: courier_newregular, courier;">&nbsp;from oeqa.selft=
est.case import OESelftestTestCase</span><br /><span style=3D"font-family: =
courier_newregular, courier;">&nbsp;from oeqa.selftest.cases.buildhistory i=
mport BuildhistoryBase</span><br /><span style=3D"font-family: courier_newr=
egular, courier;">&nbsp;from oeqa.core.decorator.data import skipIfMachine<=
/span><br /><span style=3D"font-family: courier_newregular, courier;">-from=
 oeqa.utils.commands import bitbake, get_bb_var, get_bb_vars</span><br /><s=
pan style=3D"font-family: courier_newregular, courier;">+from oeqa.utils.co=
mmands import bitbake, get_bb_var, get_bb_vars, runqemu</span><br /><span s=
tyle=3D"font-family: courier_newregular, courier;">&nbsp;import oeqa.utils.=
ftools as ftools</span><br /><span style=3D"font-family: courier_newregular=
, courier;">&nbsp;from oeqa.core.decorator import OETestTag</span><br /><sp=
an style=3D"font-family: courier_newregular, courier;">&nbsp;</span><br /><=
span style=3D"font-family: courier_newregular, courier;">@@ -59,6 +59,43 @@=
 class ImageOptionsTests(OESelftestTestCase):</span><br /><span style=3D"fo=
nt-family: courier_newregular, courier;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
bitbake("core-image-sato core-image-weston")</span><br /><span style=3D"fon=
t-family: courier_newregular, courier;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;#=
 do_image will fail if there are any pending postinsts</span><br /><span st=
yle=3D"font-family: courier_newregular, courier;">&nbsp;</span><br /><span =
style=3D"font-family: courier_newregular, courier;">+ &nbsp; &nbsp;def test=
_postinst_ontarget_executes_on_read_only_image(self):</span><br /><span sty=
le=3D"font-family: courier_newregular, courier;">+ &nbsp; &nbsp; &nbsp; &nb=
sp;# Test checks that pkg_postinst_ontarget task is executed even</span><br=
 /><span style=3D"font-family: courier_newregular, courier;">+ &nbsp; &nbsp=
; &nbsp; &nbsp;# for read-only-rootfs, when read-only-rootfs-delayed-postin=
sts</span><br /><span style=3D"font-family: courier_newregular, courier;">+=
 &nbsp; &nbsp; &nbsp; &nbsp;# is specified as well</span><br /><span style=
=3D"font-family: courier_newregular, courier;">+</span><br /><span style=3D=
"font-family: courier_newregular, courier;">+ &nbsp; &nbsp; &nbsp; &nbsp;# =
Define a recipe that touches a file in its postinst ontarget step</span><br=
 /><span style=3D"font-family: courier_newregular, courier;">+ &nbsp; &nbsp=
; &nbsp; &nbsp;emptytest_inc =3D """</span><br /><span style=3D"font-family=
: courier_newregular, courier;">+SUMMARY =3D "summary"</span><br /><span st=
yle=3D"font-family: courier_newregular, courier;">+DESCRIPTION =3D "descrip=
tion"</span><br /><span style=3D"font-family: courier_newregular, courier;"=
>+LICENSE:forcevariable =3D "CLOSED"</span><br /><span style=3D"font-family=
: courier_newregular, courier;">+</span><br /><span style=3D"font-family: c=
ourier_newregular, courier;">+ALLOW_EMPTY:${PN} =3D "1"</span><br /><span s=
tyle=3D"font-family: courier_newregular, courier;">+</span><br /><span styl=
e=3D"font-family: courier_newregular, courier;">+inherit allarch</span><br =
/><span style=3D"font-family: courier_newregular, courier;">+</span><br /><=
span style=3D"font-family: courier_newregular, courier;">+pkg_postinst_onta=
rget:${PN} () {</span><br /><span style=3D"font-family: courier_newregular,=
 courier;">+ &nbsp; &nbsp;touch /tmp/ro_rootfs_postinst_ontarget</span><br =
/><span style=3D"font-family: courier_newregular, courier;">+}</span><br />=
<span style=3D"font-family: courier_newregular, courier;">+"""</span><br />=
<span style=3D"font-family: courier_newregular, courier;">+</span><br /><sp=
an style=3D"font-family: courier_newregular, courier;">+ &nbsp; &nbsp; &nbs=
p; &nbsp;self.write_recipeinc('emptytest', emptytest_inc)</span><br /><span=
 style=3D"font-family: courier_newregular, courier;">+</span><br /><span st=
yle=3D"font-family: courier_newregular, courier;">+ &nbsp; &nbsp; &nbsp; &n=
bsp;# Make rootfs read-only, but allow postinst ontarget task</span><br /><=
span style=3D"font-family: courier_newregular, courier;">+ &nbsp; &nbsp; &n=
bsp; &nbsp;self.write_config('IMAGE_FEATURES +=3D "read-only-rootfs"')</spa=
n><br /><span style=3D"font-family: courier_newregular, courier;">+ &nbsp; =
&nbsp; &nbsp; &nbsp;self.append_config('IMAGE_FEATURES +=3D "read-only-root=
fs-delayed-postinsts"')</span><br /><span style=3D"font-family: courier_new=
regular, courier;">+</span><br /><span style=3D"font-family: courier_newreg=
ular, courier;">+ &nbsp; &nbsp; &nbsp; &nbsp;self.append_config('IMAGE_INST=
ALL:append =3D " emptytest"')</span><br /><span style=3D"font-family: couri=
er_newregular, courier;">+</span><br /><span style=3D"font-family: courier_=
newregular, courier;">+ &nbsp; &nbsp; &nbsp; &nbsp;self.append_config('INIT=
_MANAGER =3D "systemd"')</span><br /><span style=3D"font-family: courier_ne=
wregular, courier;">+</span><br /><span style=3D"font-family: courier_newre=
gular, courier;">+ &nbsp; &nbsp; &nbsp; &nbsp;bitbake("core-image-minimal")=
</span><br /><span style=3D"font-family: courier_newregular, courier;">+</s=
pan><br /><span style=3D"font-family: courier_newregular, courier;">+ &nbsp=
; &nbsp; &nbsp; &nbsp;with runqemu('core-image-minimal') as qemu:</span><br=
 /><span style=3D"font-family: courier_newregular, courier;">+ &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp;# Check that the file, touched in postinst ont=
arget task exists</span><br /><span style=3D"font-family: courier_newregula=
r, courier;">+ &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;status, output =3D =
qemu.run_serial("[ -f /tmp/ro_rootfs_postinst_ontarget ] &amp;&amp; echo 1 =
|| echo 0")</span><br /><span style=3D"font-family: courier_newregular, cou=
rier;">+ &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;self.assertTrue("1" in ou=
tput, msg=3Doutput)</span><br /><span style=3D"font-family: courier_newregu=
lar, courier;">+</span><br /><span style=3D"font-family: courier_newregular=
, courier;">&nbsp;class DiskMonTest(OESelftestTestCase):</span><br /><span =
style=3D"font-family: courier_newregular, courier;">&nbsp;</span><br /><spa=
n style=3D"font-family: courier_newregular, courier;">&nbsp; &nbsp; &nbsp;d=
ef test_stoptask_behavior(self):</span><br /><span style=3D"font-family: co=
urier_newregular, courier;">--&nbsp;</span><br /><span style=3D"font-family=
: courier_newregular, courier;">2.45.2</span><br /><br /><br /></span>

--wLIIEu2NxsVOnlmndxnh--

