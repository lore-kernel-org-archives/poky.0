Return-Path: <Tobias.Gassner.ext@karlstorz.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 666C2C30658
	for <webhook@archiver.kernel.org>; Fri,  5 Jul 2024 07:58:56 +0000 (UTC)
Subject: Re: execute pkg_postinst_ontarget when read-only-rootfs-delayed-postinsts is set for a read only rootfs
To: poky@lists.yoctoproject.org
From: "Gassner, Tobias.ext" <Tobias.Gassner.ext@karlstorz.com>
X-Originating-Location: CH (147.161.138.106)
X-Originating-Platform: Linux Chrome 126
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 05 Jul 2024 00:58:48 -0700
References: <CANNYZj-g32zPpD_eQHgpfgQnpV-6HnPUeD-9OHH4j=n9afdMhg@mail.gmail.com>
In-Reply-To: <CANNYZj-g32zPpD_eQHgpfgQnpV-6HnPUeD-9OHH4j=n9afdMhg@mail.gmail.com>
Message-ID: <3010.1720166328001833441@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="b5M816KkLZmSRMPlVeLV"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 05 Jul 2024 07:58:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13408

--b5M816KkLZmSRMPlVeLV
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I digged a bit into the hanging issue by starting-up poky outside the test =
environment, but with the same configuration (rpm, no systemd, read-only-ro=
otfs and read-only-rootfs-delayed-postinsts set, plus my first patch). Afte=
r the kernel boot log messages I get the following (for testing purposes I =
use opkg-keyrings , as it provides a pkg_postinst_ontarget task) :

Configuring packages on first boot....
(This may take several minutes. Please do not power off the machine.)
Running postinst /etc/rpm-postinsts/100-opkg-keyrings...
rm: remove '/etc/rpm-postinsts/100-opkg-keyrings'?

Since I have to type 'yes' into the console and press enter to continue the=
 test execution hangs on that line.

The behavior (and hence the log messages) at that point are determined by t=
he following script: https://git.openembedded.org/openembedded-core/tree/me=
ta/recipes-devtools/run-postinsts/run-postinsts/run-postinsts

( https://git.openembedded.org/openembedded-core/tree/meta/recipes-devtools=
/run-postinsts/run-postinsts/run-postinsts ) When I apply the following pat=
ch

From c144a7dcad403f41dd33b4429fe6481188512bb0 Mon Sep 17 00:00:00 2001
From: "Gassner, Tobias.ext" <tobias.gassner.ext@karlstorz.com>
Date: Fri, 5 Jul 2024 09:51:25 +0200
Subject: [PATCH] adding force to remove postinst on target script

Signed-off-by: Gassner, Tobias.ext <tobias.gassner.ext@karlstorz.com>
---
meta/recipes-devtools/run-postinsts/run-postinsts/run-postinsts | 2 +-
1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta/recipes-devtools/run-postinsts/run-postinsts/run-postinst=
s b/meta/recipes-devtools/run-postinsts/run-postinsts/run-postinsts
index 1f3e692029..7f197bf89b 100755
--- a/meta/recipes-devtools/run-postinsts/run-postinsts/run-postinsts
+++ b/meta/recipes-devtools/run-postinsts/run-postinsts/run-postinsts
@@ -68,7 +68,7 @@ exec_postinst_scriptlets() {
[ "$POSTINST_LOGGING" =3D "1" ] && eval echo "Running postinst $i..." $appe=
nd_log
if [ -x $i ]; then
(sh -c $i $append_log)
- =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0rm $i
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0rm -f $i
else
echo "ERROR: postinst $i failed."
[ "$POSTINST_LOGGING" =3D "1" ] && eval echo "ERROR: postinst $i failed." $=
append_log
--
2.45.2

I get the following output, and the test executes without hanging for rpm:

Configuring packages on first boot....
(This may take several minutes. Please do not power off the machine.)
Running postinst /etc/rpm-postinsts/100-opkg-keyrings...
rm: can't remove '/etc/rpm-postinsts/100-opkg-keyrings': Read-only file sys=
tem
update-rc.d: /etc/init.d/run-postinsts exists during rc.d purge (continuing=
)
Removing any system startup links for run-postinsts ...
/etc/rcS.d/S99run-postinsts
rm: can't remove '/etc/rcS.d/S99run-postinsts': Read-only file system

Note: Since overlayFS is not configured for this test, the postinst ontarge=
t script file cannot be removed, but this is expected. This specific test d=
oes not rely on the fact that the file can be removed so the test passes.

--b5M816KkLZmSRMPlVeLV
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I digged a bit into the hanging issue by starting-up poky outside the test =
environment, but with the same configuration (rpm, no systemd,<span style=
=3D"font-family: system-ui, 'helvetica neue';"> <span style=3D"box-sizing: =
border-box; color: #333333; font-size: 16px; font-style: normal; font-varia=
nt-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-s=
pacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-trans=
form: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; w=
hite-space: normal; background-color: #ffffff; text-decoration-thickness: i=
nitial; text-decoration-style: initial; text-decoration-color: initial; ove=
rflow-wrap: break-word !important;">read-only-rootfs and </span><span style=
=3D"box-sizing: border-box; color: #333333; font-size: 16px; font-style: no=
rmal; font-variant-ligatures: normal; font-variant-caps: normal; font-weigh=
t: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent:=
 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stro=
ke-width: 0px; white-space: normal; background-color: #ffffff; text-decorat=
ion-thickness: initial; text-decoration-style: initial; text-decoration-col=
or: initial; overflow-wrap: break-word !important;">read-only-rootfs-delaye=
d-postinsts set, plus my first patch). After the kernel boot log messages I=
 get the following (for testing purposes I use <span style=3D"font-family: =
courier_newregular, courier;">opkg-keyrings<span style=3D"font-family: syst=
em-ui, 'helvetica neue';">, as it provides a pkg_postinst_ontarget task)</s=
pan></span>:<br /></span></span><br /><span style=3D"font-family: courier_n=
ewregular, courier;">Configuring packages on first boot....</span><br /><sp=
an style=3D"font-family: courier_newregular, courier;">&nbsp;(This may take=
 several minutes. Please do not power off the machine.)</span><br /><span s=
tyle=3D"font-family: courier_newregular, courier;">Running postinst /etc/rp=
m-postinsts/100-opkg-keyrings...</span><br /><span style=3D"font-family: co=
urier_newregular, courier;">rm: remove '/etc/rpm-postinsts/100-opkg-keyring=
s'?&nbsp;</span><br /><br />Since I have to type 'yes' into the console and=
 press enter to continue the test execution hangs on that line.<br /><br />=
The behavior (and hence the log messages) at that point are determined by t=
he following script: <a href=3D"https://git.openembedded.org/openembedded-c=
ore/tree/meta/recipes-devtools/run-postinsts/run-postinsts/run-postinsts" t=
arget=3D"_blank" rel=3D"noopener">https://git.openembedded.org/openembedded=
-core/tree/meta/recipes-devtools/run-postinsts/run-postinsts/run-postinsts<=
br /><br /></a>When I apply the following patch<br /><br /><span style=3D"f=
ont-family: courier_newregular, courier;">From c144a7dcad403f41dd33b4429fe6=
481188512bb0 Mon Sep 17 00:00:00 2001</span><br /><span style=3D"font-famil=
y: courier_newregular, courier;">From: "Gassner, Tobias.ext" &lt;tobias.gas=
sner.ext@karlstorz.com&gt;</span><br /><span style=3D"font-family: courier_=
newregular, courier;">Date: Fri, 5 Jul 2024 09:51:25 +0200</span><br /><spa=
n style=3D"font-family: courier_newregular, courier;">Subject: [PATCH] addi=
ng force to remove postinst on target script</span><br /><br /><span style=
=3D"font-family: courier_newregular, courier;">Signed-off-by: Gassner, Tobi=
as.ext &lt;tobias.gassner.ext@karlstorz.com&gt;</span><br /><span style=3D"=
font-family: courier_newregular, courier;">---</span><br /><span style=3D"f=
ont-family: courier_newregular, courier;">&nbsp;meta/recipes-devtools/run-p=
ostinsts/run-postinsts/run-postinsts | 2 +-</span><br /><span style=3D"font=
-family: courier_newregular, courier;">&nbsp;1 file changed, 1 insertion(+)=
, 1 deletion(-)</span><br /><br /><span style=3D"font-family: courier_newre=
gular, courier;">diff --git a/meta/recipes-devtools/run-postinsts/run-posti=
nsts/run-postinsts b/meta/recipes-devtools/run-postinsts/run-postinsts/run-=
postinsts</span><br /><span style=3D"font-family: courier_newregular, couri=
er;">index 1f3e692029..7f197bf89b 100755</span><br /><span style=3D"font-fa=
mily: courier_newregular, courier;">--- a/meta/recipes-devtools/run-postins=
ts/run-postinsts/run-postinsts</span><br /><span style=3D"font-family: cour=
ier_newregular, courier;">+++ b/meta/recipes-devtools/run-postinsts/run-pos=
tinsts/run-postinsts</span><br /><span style=3D"font-family: courier_newreg=
ular, courier;">@@ -68,7 +68,7 @@ exec_postinst_scriptlets() {</span><br />=
<span style=3D"font-family: courier_newregular, courier;">&nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp;[ "$POSTINST_LOGGING" =3D "1" ] &amp;&amp; eval echo "Runn=
ing postinst $i..." $append_log</span><br /><span style=3D"font-family: cou=
rier_newregular, courier;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;if [ -x $i ]; =
then</span><br /><span style=3D"font-family: courier_newregular, courier;">=
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;(sh -c $i $append_log)</spa=
n><br /><span style=3D"font-family: courier_newregular, courier;">- &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;rm $i</span><br /><span style=3D"font-fam=
ily: courier_newregular, courier;">+ &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp;rm -f $i</span><br /><span style=3D"font-family: courier_newregular, cou=
rier;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;else</span><br /><span style=3D"fo=
nt-family: courier_newregular, courier;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp;echo "ERROR: postinst $i failed."</span><br /><span style=3D"=
font-family: courier_newregular, courier;">&nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp;[ "$POSTINST_LOGGING" =3D "1" ] &amp;&amp; eval echo "ERROR=
: postinst $i failed." $append_log</span><br /><span style=3D"font-family: =
courier_newregular, courier;">--&nbsp;</span><br /><span style=3D"font-fami=
ly: courier_newregular, courier;">2.45.2</span><br /><br />I get the follow=
ing output, and the test executes without hanging for rpm:<br /><br /><span=
 style=3D"font-family: courier_newregular, courier;">Configuring packages o=
n first boot....</span><br /><span style=3D"font-family: courier_newregular=
, courier;">&nbsp;(This may take several minutes. Please do not power off t=
he machine.)</span><br /><span style=3D"font-family: courier_newregular, co=
urier;">Running postinst /etc/rpm-postinsts/100-opkg-keyrings...</span><br =
/><span style=3D"font-family: courier_newregular, courier;">rm: can't remov=
e '/etc/rpm-postinsts/100-opkg-keyrings': Read-only file system</span><br /=
><span style=3D"font-family: courier_newregular, courier;">update-rc.d: /et=
c/init.d/run-postinsts exists during rc.d purge (continuing)</span><br /><s=
pan style=3D"font-family: courier_newregular, courier;">&nbsp;Removing any =
system startup links for run-postinsts ...</span><br /><span style=3D"font-=
family: courier_newregular, courier;">&nbsp; /etc/rcS.d/S99run-postinsts</s=
pan><br /><span style=3D"font-family: courier_newregular, courier;">rm: can=
't remove '/etc/rcS.d/S99run-postinsts': Read-only file system</span><br />=
<br />Note: Since overlayFS is not configured for this test, the <span styl=
e=3D"font-family: courier_newregular, courier;"><span style=3D"font-family:=
 system-ui, 'helvetica neue';">postinst ontarget script file cannot be remo=
ved, but this is expected. This specific test does not rely on the fact tha=
t the file can be removed so the test passes.</span></span>

--b5M816KkLZmSRMPlVeLV--

