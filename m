Return-Path: <Tobias.Gassner.ext@karlstorz.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD9EBC3064D
	for <webhook@archiver.kernel.org>; Tue, 25 Jun 2024 13:08:28 +0000 (UTC)
Subject: execute pkg_postinst_ontarget when read-only-rootfs-delayed-postinsts is set for a read only rootfs
To: poky@lists.yoctoproject.org
From: "Gassner, Tobias.ext" <Tobias.Gassner.ext@karlstorz.com>
X-Originating-Location: CH (147.161.136.111)
X-Originating-Platform: Linux Chrome 126
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 25 Jun 2024 06:08:20 -0700
Message-ID: <EERs.1719320900453164786.rlUz@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="UPd8zy9vgn0i3MXQZGSc"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 25 Jun 2024 13:08:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13391

--UPd8zy9vgn0i3MXQZGSc
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

we specify read-only-rootfs and use an overlayFS to "make the roofts writab=
le". We also want to execute a postinstall script for our package on the ta=
rget:

pkg_postinst_ontarget: ${PN} () {

#some code...
}

in order for bitbake to not complain that a read-only rootfs and pkg_postin=
st_ontarget don't work together, we also specify read-only-rootfs-delayed-p=
ostinsts ( https://docs.yoctoproject.org/dev/ref-manual/features.html )

However, it seems that the run-postinsts package is removed by the _uninsta=
ll_unneeded function (in file meta/lib/oe/rootfs.py), because the image_ror=
fs flag only checks for read-only-rootfs and not for read-only-rootfs-delay=
ed-postinsts as well. Hence, the postinst code is not executed.

When I use the fix at the end of this post, the behavior is as expected. Ho=
wever, I am not an expert in this area of the project and want to collect y=
our feedback first, before proposing to merge.

PS: a pointer to read-only-rootfs-delayed-postinsts in the docu ( https://d=
ocs.yoctoproject.org/dev/dev-manual/read-only-rootfs.html#post-installation=
-scripts-and-read-only-root-filesystem ) would be very helpful.

Best regards
-Tobias

From 608050984c5be67f506a0877fadbbe0b61575e54 Mon Sep 17 00:00:00 2001
From: "Gassner, Tobias.ext" <tobias.gassner.ext@karlstorz.com>
Date: Tue, 25 Jun 2024 13:30:17 +0200
Subject: [PATCH] keep delayed-postinsts when
read-only-rootfs-delayed-postinsts is set for a read only rootfs

Signed-off-by: Gassner, Tobias.ext <tobias.gassner.ext@karlstorz.com>
---
meta/lib/oe/rootfs.py | 4 ++++
1 file changed, 4 insertions(+)

diff --git a/meta/lib/oe/rootfs.py b/meta/lib/oe/rootfs.py
index 8cd48f9450..5abce4ad7d 100644
--- a/meta/lib/oe/rootfs.py
+++ b/meta/lib/oe/rootfs.py
@@ -269,7 +269,11 @@ class Rootfs(object, metaclass=3DABCMeta):
self.pm.remove(["run-postinsts"])

image_rorfs =3D bb.utils.contains("IMAGE_FEATURES", "read-only-rootfs",
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0True, Fal=
se, self.d) and \
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0not bb.utils.contains("IMAGE_FEATURES",
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0"read-onl=
y-rootfs-delayed-postinsts",
True, False, self.d)
+
image_rorfs_force =3D self.d.getVar('FORCE_RO_REMOVE')

if image_rorfs or image_rorfs_force =3D=3D "1":
--
2.45.2

--UPd8zy9vgn0i3MXQZGSc
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,<br /><br />we specify <span style=3D"font-family: courier_newregular, c=
ourier;">read-only-rootfs</span> and use an overlayFS to<em> "make the roof=
ts writable"</em>. We also want to execute a postinstall script for our pac=
kage on the target:<br /><br />
<div style=3D"color: #000000; background-color: #ffffff; font-family: 'Droi=
d Sans Mono', 'monospace', monospace; font-weight: normal; font-size: 14px;=
 line-height: 19px; white-space: pre;">
<div><span style=3D"font-family: courier_newregular, courier; font-size: 16=
px;"><span style=3D"color: #000000;">pkg_postinst_ontarget:</span><span sty=
le=3D"color: #0000ff;">${PN}</span><span style=3D"color: #000000;">() {</sp=
an></span></div>
</div>
<p><span style=3D"font-family: courier_newregular, courier; font-size: 16px=
;">&nbsp; &nbsp; #some code...</span><br /><span style=3D"font-family: cour=
ier_newregular, courier; font-size: 16px;">}</span><br /><br />in order for=
 bitbake to not complain that a read-only rootfs and <span style=3D"font-fa=
mily: courier_newregular, courier; font-size: 14px;"><span style=3D"color: =
#000000;">pkg_postinst_ontarget<span style=3D"font-family: system-ui, 'helv=
etica neue'; font-size: 16px;"> don't work together, </span></span></span>w=
e also specify <a href=3D"https://docs.yoctoproject.org/dev/ref-manual/feat=
ures.html" target=3D"_blank" rel=3D"noopener">read-only-rootfs-delayed-post=
insts</a><br /><br />However, it seems that the <span style=3D"font-family:=
 courier_newregular, courier;">run-postinsts</span> package is removed by t=
he <span style=3D"color: #000000;">_uninstall_unneeded </span><span style=
=3D"white-space: pre; background-color: var(--light-mode-body-color);"><spa=
n style=3D"white-space: pre; background-color: var(--light-mode-body-color)=
;">function (in file meta/lib/oe/rootfs.py), because the <span style=3D"col=
or: #000000;">image_rorfs </span><span style=3D"background-color: var(--lig=
ht-mode-body-color);">flag only checks for </span><span style=3D"color: #a3=
1515;">read-only-rootfs </span><span style=3D"background-color: var(--light=
-mode-body-color);">and not for </span><span style=3D"color: #a31515;">read=
-only-rootfs-delayed-postinsts </span><span style=3D"background-color: var(=
--light-mode-body-color);">as well. </span></span></span><span style=3D"whi=
te-space: pre; background-color: var(--light-mode-body-color);"><span style=
=3D"white-space: pre; background-color: var(--light-mode-body-color);"><spa=
n style=3D"background-color: var(--light-mode-body-color);">Hence, the post=
inst code is not executed.</span></span></span><br /><br />When I use the f=
ix at the end of this post, the behavior is as expected. However, I am not =
an expert in this area of the project and want to collect your feedback fir=
st, before proposing to merge.<br /><br />PS: a pointer to <span style=3D"c=
olor: #a31515;">read-only-rootfs-delayed-postinsts </span><span style=3D"wh=
ite-space: pre; background-color: var(--light-mode-body-color);">in the <a =
href=3D"https://docs.yoctoproject.org/dev/dev-manual/read-only-rootfs.html#=
post-installation-scripts-and-read-only-root-filesystem" target=3D"_blank" =
rel=3D"noopener">docu</a> </span><span style=3D"white-space: pre; backgroun=
d-color: var(--light-mode-body-color);">would be very helpful.</span></p>
<p><br />Best regards<br />-Tobias</p>
<p>&nbsp;</p>
<p><span style=3D"font-family: courier_newregular, courier;">From 608050984=
c5be67f506a0877fadbbe0b61575e54 Mon Sep 17 00:00:00 2001</span><br /><span =
style=3D"font-family: courier_newregular, courier;">From: "Gassner, Tobias.=
ext" &lt;tobias.gassner.ext@karlstorz.com&gt;</span><br /><span style=3D"fo=
nt-family: courier_newregular, courier;">Date: Tue, 25 Jun 2024 13:30:17 +0=
200</span><br /><span style=3D"font-family: courier_newregular, courier;">S=
ubject: [PATCH] keep delayed-postinsts when</span><br /><span style=3D"font=
-family: courier_newregular, courier;">&nbsp;read-only-rootfs-delayed-posti=
nsts is set for a read only rootfs</span><br /><br /><span style=3D"font-fa=
mily: courier_newregular, courier;">Signed-off-by: Gassner, Tobias.ext &lt;=
tobias.gassner.ext@karlstorz.com&gt;</span><br /><span style=3D"font-family=
: courier_newregular, courier;">---</span><br /><span style=3D"font-family:=
 courier_newregular, courier;">&nbsp;meta/lib/oe/rootfs.py | 4 ++++</span><=
br /><span style=3D"font-family: courier_newregular, courier;">&nbsp;1 file=
 changed, 4 insertions(+)</span><br /><br /><span style=3D"font-family: cou=
rier_newregular, courier;">diff --git a/meta/lib/oe/rootfs.py b/meta/lib/oe=
/rootfs.py</span><br /><span style=3D"font-family: courier_newregular, cour=
ier;">index 8cd48f9450..5abce4ad7d 100644</span><br /><span style=3D"font-f=
amily: courier_newregular, courier;">--- a/meta/lib/oe/rootfs.py</span><br =
/><span style=3D"font-family: courier_newregular, courier;">+++ b/meta/lib/=
oe/rootfs.py</span><br /><span style=3D"font-family: courier_newregular, co=
urier;">@@ -269,7 +269,11 @@ class Rootfs(object, metaclass=3DABCMeta):</sp=
an><br /><span style=3D"font-family: courier_newregular, courier;">&nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;self.pm.remove(["run-=
postinsts"])</span><br /><span style=3D"font-family: courier_newregular, co=
urier;">&nbsp;</span><br /><span style=3D"font-family: courier_newregular, =
courier;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;image_rorfs =3D bb.utils.contai=
ns("IMAGE_FEATURES", "read-only-rootfs",</span><br /><span style=3D"font-fa=
mily: courier_newregular, courier;">+ &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp;True, False, self.d) and \</span><br /><span sty=
le=3D"font-family: courier_newregular, courier;">+ &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;not bb.utils.contains("=
IMAGE_FEATURES",</span><br /><span style=3D"font-family: courier_newregular=
, courier;">+ &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp;"read-only-rootfs-delayed-postinsts",</span><br /><span style=3D"font-fa=
mily: courier_newregular, courier;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp;True, False, self.d)</span><br /><span styl=
e=3D"font-family: courier_newregular, courier;">+</span><br /><span style=
=3D"font-family: courier_newregular, courier;">&nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;image_rorfs_force =3D self.d.getVar('FORCE_RO_REMOVE')</span><br /><s=
pan style=3D"font-family: courier_newregular, courier;">&nbsp;</span><br />=
<span style=3D"font-family: courier_newregular, courier;">&nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp;if image_rorfs or image_rorfs_force =3D=3D "1":</span><br =
/><span style=3D"font-family: courier_newregular, courier;">--&nbsp;</span>=
<br /><span style=3D"font-family: courier_newregular, courier;">2.45.2</spa=
n></p>

--UPd8zy9vgn0i3MXQZGSc--

