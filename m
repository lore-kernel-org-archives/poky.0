Return-Path: <jdowd@slashdevslashnull.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC25EC021B2
	for <webhook@archiver.kernel.org>; Tue, 25 Feb 2025 22:21:14 +0000 (UTC)
Subject: Unable to add a dbus user session as a service to raspberry Pi zero 2 W image
To: poky@lists.yoctoproject.org
From: "John" <jdowd@slashdevslashnull.org>
X-Originating-Location: Ottawa, Ontario, CA (184.175.41.163)
X-Originating-Platform: Linux Chrome 133
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 25 Feb 2025 14:21:12 -0800
Message-ID: <lp6U.1740522072227851753.VtjX@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="wVF2lWkFYNLWk2N7UB1O"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 25 Feb 2025 22:21:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13543

--wVF2lWkFYNLWk2N7UB1O
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I've been trying to add pulseaudio as a service to my raspberry Pi image (c=
ore-image-minimal) for a few days now. As pulseaudio apparently requires to=
 be added as a d-bus user session only, I then tried to start a user sessio=
n in systemd. No Joy!

I have dbus running as a service but it is a system level service and not a=
 user level service:

root@raspberrypi0-64-wf:~# systemctl status dbus.service
=E2=97=8F dbus.service - D-Bus System Message Bus
Loaded: loaded (/usr/lib/systemd/system/dbus.service; static)
Active: active (running) since Tue 2025-02-25 21:28:52 UTC; 2min 40s ago
Invocation: 95ded9e8656b41abb16c48c6e1ace29c
TriggeredBy: =E2=97=8F dbus.socket
Docs: man:dbus-daemon(1)
Main PID: 217 (dbus-daemon)
Tasks: 1 (limit: 249)
CPU: 222ms
CGroup: /system.slice/dbus.service
=E2=94=94=E2=94=80217 /usr/bin/dbus-daemon --system --address=3Dsystemd: --=
nofork --nopidfile --systemd-activation --syslog-only

When I try to start a user session:

>=20
> root@raspberrypi0-64-wf:~# systemctl --user enable dbus.service
> Failed to connect to user scope bus via local transport:
> $DBUS_SESSION_BUS_ADDRESS and $XDG_RUNTIME_DIR not defined (consider usin=
g
> --machine=3D<user>@.host --user to connect to bus of other user)
>=20

I've not managed to find any examples of d-bus running as a user session.

Is there some secret sauce that I'm missing?

I did try to run pulseaudio as a system service, it was a blood bath (I ref=
er to the amount of red error messages)

Cheers!!

--wVF2lWkFYNLWk2N7UB1O
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>I've been trying to add pulseaudio as a service to my raspberry Pi ima=
ge (core-image-minimal) for a few days now. As pulseaudio apparently requir=
es to be added as a d-bus user session only, I then tried to start a user s=
ession in systemd. No Joy!</div>
<div>&nbsp;</div>
<div>I have dbus running as a service but it is a system level service and =
not a user level service:</div>
<div>&nbsp;</div>
<div>root@raspberrypi0-64-wf:~# systemctl status dbus.service<br />=E2=97=
=8F dbus.service - D-Bus System Message Bus<br />&nbsp; &nbsp; &nbsp;Loaded=
: loaded (/usr/lib/systemd/system/dbus.service; static)<br />&nbsp; &nbsp; =
&nbsp;Active: active (running) since Tue 2025-02-25 21:28:52 UTC; 2min 40s =
ago<br />&nbsp;Invocation: 95ded9e8656b41abb16c48c6e1ace29c<br />TriggeredB=
y: =E2=97=8F dbus.socket<br />&nbsp; &nbsp; &nbsp; &nbsp;Docs: man:dbus-dae=
mon(1)<br />&nbsp; &nbsp;Main PID: 217 (dbus-daemon)<br />&nbsp; &nbsp; &nb=
sp; Tasks: 1 (limit: 249)<br />&nbsp; &nbsp; &nbsp; &nbsp; CPU: 222ms<br />=
&nbsp; &nbsp; &nbsp;CGroup: /system.slice/dbus.service<br />&nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=E2=94=94=E2=94=80217 /usr/bin/dbus-daemon=
 --system --address=3Dsystemd: --nofork --nopidfile --systemd-activation --=
syslog-only</div>
<div>&nbsp;</div>
<div>When I try to start a user session:</div>
<blockquote>
<div>root@raspberrypi0-64-wf:~# systemctl --user enable dbus.service<br />F=
ailed to connect to user scope bus via local transport: $DBUS_SESSION_BUS_A=
DDRESS and $XDG_RUNTIME_DIR not defined (consider using --machine=3D&lt;use=
r&gt;@.host --user to connect to bus of other user)</div>
</blockquote>
<div>&nbsp;</div>
<div>I've not managed to find any examples of d-bus running as a user sessi=
on.</div>
<div>&nbsp;</div>
<div>Is there some secret sauce that I'm missing?</div>
<div>&nbsp;</div>
<div>I did try to run pulseaudio as a system service, it was a blood bath (=
I refer to the amount of red error messages)</div>
<div>&nbsp;</div>
<div>Cheers!!</div>
<div>&nbsp;</div>

--wVF2lWkFYNLWk2N7UB1O--

