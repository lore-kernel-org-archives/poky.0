Return-Path: <mns@gomspace.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E3CE3C8303D
	for <webhook@archiver.kernel.org>; Fri,  4 Jul 2025 10:27:36 +0000 (UTC)
Subject: [walnascar] systemd-networkd-persistent-storage fails during boot, using read-only-rootfs and overlayfs-etc image features
To: poky@lists.yoctoproject.org
From: "Martin Siegumfeldt" <mns@gomspace.com>
X-Originating-Location: DK (79.171.149.174)
X-Originating-Platform: Linux Chrome 138
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 04 Jul 2025 03:27:31 -0700
Message-ID: <t2Cd.1751624851200674661.vVFe@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="u2wwrYQ9ez4gf3ZZmeMJ"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 04 Jul 2025 10:27:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13692

--u2wwrYQ9ez4gf3ZZmeMJ
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi all,

We have been using read-only-rootfs and overlayfs-etc image features for th=
e last few Yocto baselines most recently on styhead without any issues. Mov=
ing on to Walnascar we intermittently observe systemd-networkd-persistent-s=
torage service to fail:

systemd-networkd-persistent-storage.service - Enable Persistent Storage in =
systemd-networkd
Loaded: loaded (]8;;file://nanomind-z7020-zed/usr/lib/systemd/system/system=
d-networkd-persistent-storage.service\/usr/lib/systemd/system/systemd-netwo=
rkd-persistent-storage.service]8;;\; static)
Active: failed (Result: exit-code) since Thu 2025-05-29 16:30:37 UTC; 1 mon=
th 1 day ago
Invocation: 9c37effe85404b6c81ecc9195defb5ff
Docs: ]8;;man:networkctl(1)\man:networkctl(1)]8;;\
Process: 162 ExecStart=3Dnetworkctl persistent-storage yes (code=3Dexited, =
status=3D238/STATE_DIRECTORY)
Main PID: 162 (code=3Dexited, status=3D238/STATE_DIRECTORY)
CPU: 33ms
May 29 16:30:37 nanomind-z7020-zed systemd[1]: Starting Enable Persistent S=
torage in systemd-networkd...
May 29 16:30:37 nanomind-z7020-zed (tworkctl)[162]: systemd-networkd-persis=
tent-storage.service: Failed to set up special execution directory in /var/=
lib: Read-only file system
May 29 16:30:37 nanomind-z7020-zed (tworkctl)[162]: systemd-networkd-persis=
tent-storage.service: Failed at step STATE_DIRECTORY spawning networkctl: R=
ead-only file system
May 29 16:30:37 nanomind-z7020-zed systemd[1]: systemd-networkd-persistent-=
storage.service: Main process exited, code=3Dexited, status=3D238/STATE_DIR=
ECTORY
May 29 16:30:37 nanomind-z7020-zed systemd[1]: systemd-networkd-persistent-=
storage.service: Failed with result 'exit-code'.
May 29 16:30:37 nanomind-z7020-zed systemd[1]: Failed to start Enable Persi=
stent Storage in systemd-networkd.

Looking into the most/direct relevant systemd files from styhead version (v=
256.5) to walnascar version (v257.6), no obvious related changes appear. It=
 occurs only sporadicly (for 1/5'ish boots) and I thus suspect some sort of=
 race condition to occur. It is observed on an Avnet Zedboard connected to =
a corporate ethernet network configured for DHCP. overlayfs-etc is configur=
ed using:
OVERLAYFS_ETC_USE_ORIG_INIT_NAME =3D "0"
OVERLAYFS_ETC_CREATE_MOUNT_DIRS =3D "0"

Anyone else observed this, or has clues for further debug?

Thanks,
Martin

--u2wwrYQ9ez4gf3ZZmeMJ
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi all,</div>
<div>&nbsp;</div>
<div>We have been using read-only-rootfs and overlayfs-etc image features f=
or the last few Yocto baselines most recently on styhead without any issues=
. Moving on to Walnascar we intermittently observe systemd-networkd-persist=
ent-storage service to fail:</div>
<div>
<div>&nbsp;</div>
<div>&nbsp;systemd-networkd-persistent-storage.service - Enable Persistent =
Storage in systemd-networkd<br />&nbsp; &nbsp; &nbsp;Loaded: loaded (]8;;fi=
le://nanomind-z7020-zed/usr/lib/systemd/system/systemd-networkd-persistent-=
storage.service\/usr/lib/systemd/system/systemd-networkd-persistent-storage=
.service]8;;\; static)<br />&nbsp; &nbsp; &nbsp;Active: failed (Result: exi=
t-code) since Thu 2025-05-29 16:30:37 UTC; 1 month 1 day ago<br />&nbsp;Inv=
ocation: 9c37effe85404b6c81ecc9195defb5ff<br />&nbsp; &nbsp; &nbsp; &nbsp;D=
ocs: ]8;;man:networkctl(1)\man:networkctl(1)]8;;\<br />&nbsp; &nbsp; Proces=
s: 162 ExecStart=3Dnetworkctl persistent-storage yes (code=3Dexited, status=
=3D238/STATE_DIRECTORY)<br />&nbsp; &nbsp;Main PID: 162 (code=3Dexited, sta=
tus=3D238/STATE_DIRECTORY)<br />&nbsp; &nbsp; &nbsp; &nbsp; CPU: 33ms</div>
<div>May 29 16:30:37 nanomind-z7020-zed systemd[1]: Starting Enable Persist=
ent Storage in systemd-networkd...<br />May 29 16:30:37 nanomind-z7020-zed =
(tworkctl)[162]: systemd-networkd-persistent-storage.service: Failed to set=
 up special execution directory in /var/lib: Read-only file system<br />May=
 29 16:30:37 nanomind-z7020-zed (tworkctl)[162]: systemd-networkd-persisten=
t-storage.service: Failed at step STATE_DIRECTORY spawning networkctl: Read=
-only file system<br />May 29 16:30:37 nanomind-z7020-zed systemd[1]: syste=
md-networkd-persistent-storage.service: Main process exited, code=3Dexited,=
 status=3D238/STATE_DIRECTORY<br />May 29 16:30:37 nanomind-z7020-zed syste=
md[1]: systemd-networkd-persistent-storage.service: Failed with result 'exi=
t-code'.<br />May 29 16:30:37 nanomind-z7020-zed systemd[1]: Failed to star=
t Enable Persistent Storage in systemd-networkd.</div>
<div>&nbsp;</div>
<div>Looking into the most/direct relevant systemd files from styhead versi=
on (v256.5) to walnascar version (v257.6), no obvious related changes appea=
r. It occurs only sporadicly (for 1/5'ish boots) and I thus suspect some so=
rt of race condition to occur. It is observed on an Avnet Zedboard connecte=
d to a corporate ethernet network configured for DHCP. overlayfs-etc is con=
figured using:</div>
<div>OVERLAYFS_ETC_USE_ORIG_INIT_NAME =3D "0"</div>
<div>OVERLAYFS_ETC_CREATE_MOUNT_DIRS =3D "0"</div>
<div>&nbsp;</div>
<div>Anyone else observed this, or has clues for further debug?</div>
<div>&nbsp;</div>
<div>Thanks,</div>
<div>Martin</div>
<div>&nbsp;</div>
</div>

--u2wwrYQ9ez4gf3ZZmeMJ--

