Return-Path: <Tobias.Gassner.ext@karlstorz.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 626D1C30658
	for <webhook@archiver.kernel.org>; Fri,  5 Jul 2024 13:58:08 +0000 (UTC)
Subject: Re: execute pkg_postinst_ontarget when read-only-rootfs-delayed-postinsts is set for a read only rootfs
To: poky@lists.yoctoproject.org
From: "Gassner, Tobias.ext" <Tobias.Gassner.ext@karlstorz.com>
X-Originating-Location: CH (147.161.138.106)
X-Originating-Platform: Linux Chrome 126
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 05 Jul 2024 06:57:59 -0700
References: <CANNYZj_-hX-LCvZmOgzJXhsaX1F9TRJExij5fL9gQu0YAJ4sDw@mail.gmail.com>
In-Reply-To: <CANNYZj_-hX-LCvZmOgzJXhsaX1F9TRJExij5fL9gQu0YAJ4sDw@mail.gmail.com>
Message-ID: <20061.1720187879685682356@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="jMlswGieEpQ64Ia6WRbI"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 05 Jul 2024 13:58:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13410

--jMlswGieEpQ64Ia6WRbI
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Alex,

I looked into overlayfs.py but I'm not convinced that this is the right pat=
h. First of all, basically all relevant tests that could be used as a start=
ing point use systemd as well which doesn't make them more generic compared=
 to my test in runtime_test.py. Secondly, when I set IMAGE_FEATURES +=3D "r=
ead-only-rootfs" in the test_correct_image_fstab test case, qemu also hangs=
 during boot.

Again, I build a poky with the same configuration as the test case and got =
the following log messages during boot:

[FAILED] Failed to mount /mnt/overlay.
See 'systemctl status mnt-overlay.mount' for details.
[DEPEND] Dependency failed for Local File Systems.
[DEPEND] Dependency failed for Overlayfs directories setup.
[DEPEND] Dependency failed for Overlayfs mount unit.
[DEPEND] Dependency failed for Overlayfs directories setup.
[DEPEND] Dependency failed for Overlayfs mount unit.

and it start hanging at the following line:

You are in emergency mode. After logging in, type "journalctl -xb" to view
system logs, "systemctl reboot" to reboot, or "exit"
to continue bootup.
Press Enter for maintenance
(or press Control-D to continue):

when I enter systemctl status mnt-overlay.mount , I get:

Jul 05 13:49:39 qemux86-64 mount[138]: mount: /mnt/overlay: mount point doe=
s not=C2=A0exist.

/mnt/overlay is the mount point that is configured by the test. When I make=
 the rootfs read only, the mount point can not be created and I get the err=
or message. For a test, I changed the mount point to /tmp (which is writabl=
e even for a read-only rootfs), with that change, the system boots and the =
test passes.

Overall, I would say that such a kind of test is even worse and in no way m=
ore generic than my previous test implementation in runtime_test.py. What d=
o you think?

--jMlswGieEpQ64Ia6WRbI
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Alex,<br /><br />I looked into <span style=3D"color: #333333; font-famil=
y: system-ui, 'Segoe UI', Roboto, 'Helvetica Neue', 'Noto Sans', 'Liberatio=
n Sans', Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe U=
I Symbol', 'Noto Color Emoji'; font-size: 16px; font-style: normal; font-va=
riant-ligatures: normal; font-variant-caps: normal; font-weight: 400; lette=
r-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-tr=
ansform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px=
; white-space: pre-wrap; background-color: #ffffff; text-decoration-thickne=
ss: initial; text-decoration-style: initial; text-decoration-color: initial=
; display: inline !important; float: none;"><span style=3D"color: #333333; =
font-family: system-ui, 'Segoe UI', Roboto, 'Helvetica Neue', 'Noto Sans', =
'Liberation Sans', Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji'=
, 'Segoe UI Symbol', 'Noto Color Emoji'; font-size: 16px; font-style: norma=
l; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: =
400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0p=
x; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-=
width: 0px; white-space: pre-wrap; background-color: #ffffff; text-decorati=
on-thickness: initial; text-decoration-style: initial; text-decoration-colo=
r: initial; display: inline !important; float: none;"><span style=3D"color:=
 #333333; font-family: system-ui, 'Segoe UI', Roboto, 'Helvetica Neue', 'No=
to Sans', 'Liberation Sans', Arial, sans-serif, 'Apple Color Emoji', 'Segoe=
 UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji'; font-size: 16px; font-st=
yle: normal; font-variant-ligatures: normal; font-variant-caps: normal; fon=
t-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-=
indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-te=
xt-stroke-width: 0px; white-space: pre-wrap; background-color: #ffffff; tex=
t-decoration-thickness: initial; text-decoration-style: initial; text-decor=
ation-color: initial; display: inline !important; float: none;">overlayfs.p=
y but I'm not convinced that this is the right path. First of all, basicall=
y all relevant tests that could be used as a starting point use systemd as =
well which doesn't make them more generic compared to my test in <span styl=
e=3D"color: #333333; font-family: courier_newregular, courier; font-size: 1=
6px; font-style: normal; font-variant-ligatures: normal; font-variant-caps:=
 normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: =
start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px=
; -webkit-text-stroke-width: 0px; white-space: normal; background-color: #f=
fffff; text-decoration-thickness: initial; text-decoration-style: initial; =
text-decoration-color: initial; display: inline !important; float: none;">r=
untime_test.py<span style=3D"font-family: system-ui, 'helvetica neue';">. S=
econdly, when I set </span></span></span></span></span><span style=3D"color=
: #a31515; background-color: #ffffff; font-family: 'Droid Sans Mono', 'mono=
space', monospace; font-size: 14px; white-space: pre;">IMAGE_FEATURES +=3D =
"read-only-rootfs"<span style=3D"font-family: system-ui, 'helvetica neue'; =
color: #000000;"> in the </span></span><span style=3D"color: #795e26; backg=
round-color: #ffffff; font-family: 'Droid Sans Mono', 'monospace', monospac=
e; font-size: 14px; white-space: pre;">test_correct_image_fstab<span style=
=3D"font-family: system-ui, 'helvetica neue'; color: #000000;"> test case, =
qemu also hangs during boot.<br /><br />Again, I build a poky with the same=
 configuration as the test case and got the following log messages during b=
oot:<br /><br /><span style=3D"font-family: courier_newregular, courier;">[=
FAILED] Failed to mount /mnt/overlay.</span><br /><span style=3D"font-famil=
y: courier_newregular, courier;">See 'systemctl status mnt-overlay.mount' f=
or details.</span><br /><span style=3D"font-family: courier_newregular, cou=
rier;">[DEPEND] Dependency failed for Local File Systems.</span><br /><span=
 style=3D"font-family: courier_newregular, courier;">[DEPEND] Dependency fa=
iled for Overlayfs directories setup.</span><br /><span style=3D"font-famil=
y: courier_newregular, courier;">[DEPEND] Dependency failed for Overlayfs m=
ount unit.</span><br /><span style=3D"font-family: courier_newregular, cour=
ier;">[DEPEND] Dependency failed for Overlayfs directories setup.</span><br=
 /><span style=3D"font-family: courier_newregular, courier;">[DEPEND] Depen=
dency failed for Overlayfs mount unit.</span><br /><br />and it start hangi=
ng at the following line:<br /><br /><span style=3D"font-family: courier_ne=
wregular, courier;">You are in emergency mode. After logging in, type "jour=
nalctl -xb" to view</span><br /><span style=3D"font-family: courier_newregu=
lar, courier;">system logs, "systemctl reboot" to reboot, or "exit"</span><=
br /><span style=3D"font-family: courier_newregular, courier;">to continue =
bootup.</span><br /><span style=3D"font-family: courier_newregular, courier=
;">Press Enter for maintenance</span><br /><span style=3D"font-family: cour=
ier_newregular, courier;">(or press Control-D to continue):&nbsp;</span><br=
 /><br />when I enter <span style=3D"color: #795e26; background-color: #fff=
fff; font-family: 'Droid Sans Mono', 'monospace', monospace; font-size: 14p=
x; white-space: pre;"><span style=3D"font-family: system-ui, 'helvetica neu=
e'; color: #000000;"><span style=3D"font-family: courier_newregular, courie=
r;">systemctl status mnt-overlay.mount<span style=3D"font-family: system-ui=
, 'helvetica neue';">, I get:</span></span></span></span><br /><br /><span =
style=3D"font-family: courier_newregular, courier;">Jul 05 13:49:39 qemux86=
-64 mount[138]: mount: /mnt/overlay: mount point does not&nbsp;exist.</span=
><br /><br /><span style=3D"color: #795e26; background-color: #ffffff; font=
-family: 'Droid Sans Mono', 'monospace', monospace; font-size: 14px; white-=
space: pre;"><span style=3D"font-family: system-ui, 'helvetica neue'; color=
: #000000;"><span style=3D"font-family: courier_newregular, courier;">/mnt/=
overlay </span></span></span>is the mount point that is configured by the t=
est. When I make the rootfs read only, the mount point can not be created a=
nd I get the error message. For a test, I changed the mount point to /tmp (=
which is writable even for a read-only rootfs), with that change, the syste=
m boots and the test passes.<br /><br />Overall, I would say that such a ki=
nd of test is even worse and in no way more generic than my previous test i=
mplementation in <span style=3D"color: #333333; font-family: system-ui, 'Se=
goe UI', Roboto, 'Helvetica Neue', 'Noto Sans', 'Liberation Sans', Arial, s=
ans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto =
Color Emoji'; font-size: 16px; font-style: normal; font-variant-ligatures: =
normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal=
; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; wi=
dows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: pr=
e-wrap; background-color: #ffffff; text-decoration-thickness: initial; text=
-decoration-style: initial; text-decoration-color: initial; display: inline=
 !important; float: none;"><span style=3D"color: #333333; font-family: syst=
em-ui, 'Segoe UI', Roboto, 'Helvetica Neue', 'Noto Sans', 'Liberation Sans'=
, Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbo=
l', 'Noto Color Emoji'; font-size: 16px; font-style: normal; font-variant-l=
igatures: normal; font-variant-caps: normal; font-weight: 400; letter-spaci=
ng: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform=
: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white=
-space: pre-wrap; background-color: #ffffff; text-decoration-thickness: ini=
tial; text-decoration-style: initial; text-decoration-color: initial; displ=
ay: inline !important; float: none;"><span style=3D"color: #333333; font-fa=
mily: system-ui, 'Segoe UI', Roboto, 'Helvetica Neue', 'Noto Sans', 'Libera=
tion Sans', Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Sego=
e UI Symbol', 'Noto Color Emoji'; font-size: 16px; font-style: normal; font=
-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; le=
tter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text=
-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: =
0px; white-space: pre-wrap; background-color: #ffffff; text-decoration-thic=
kness: initial; text-decoration-style: initial; text-decoration-color: init=
ial; display: inline !important; float: none;"><span style=3D"color: #33333=
3; font-family: courier_newregular, courier; font-size: 16px; font-style: n=
ormal; font-variant-ligatures: normal; font-variant-caps: normal; font-weig=
ht: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent=
: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-str=
oke-width: 0px; white-space: normal; background-color: #ffffff; text-decora=
tion-thickness: initial; text-decoration-style: initial; text-decoration-co=
lor: initial; display: inline !important; float: none;">runtime_test.py</sp=
an></span></span></span>. What do you think?</span></span>

--jMlswGieEpQ64Ia6WRbI--

