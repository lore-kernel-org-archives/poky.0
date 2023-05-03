Return-Path: <rustyhowell@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1F475C7EE2A
	for <webhook@archiver.kernel.org>; Wed,  3 May 2023 17:03:41 +0000 (UTC)
Subject: Ability to customize the prserver connection?
To: poky@lists.yoctoproject.org
From: "Rusty Howell" <rustyhowell@gmail.com>
X-Originating-Location: US (192.207.236.6)
X-Originating-Platform: Linux Firefox 112
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 03 May 2023 10:03:32 -0700
Message-ID: <wKCv.1683133412145731863.pxoj@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="Vpa6kHs5pNRafmtyyMCc"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 03 May 2023 17:03:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13060

--Vpa6kHs5pNRafmtyyMCc
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello, is there a way to (or is there interest from others) in being able t=
o customize the connection to the prserver?=C2=A0=C2=A0 We have a need to s=
end an extra parameter to the prserver (which we have also customized).=C2=
=A0 We were able to do this by monkeypatching the prserv client during the =
do_packagedata task. (Rule #5 Never modify Poky)=C2=A0 We had a custom Task=
Started handler which would monkeypatch the getPR() method and add the extr=
a parameter we wanted.=C2=A0 We recently upgraded to honister which broke o=
ur method of monkeypatching.

I know most Yocto users focus on images and don't bother with package feeds=
. But for those who do, I wanted to work on a way to allow one to create a =
custom prserver connection rather than being forced to use the client in bb=
/lib/prserv/client.py and hack at it via inherits and task handlers.

--Vpa6kHs5pNRafmtyyMCc
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello, is there a way to (or is there interest from others) in being able t=
o customize the connection to the prserver?&nbsp;&nbsp; We have a need to s=
end an extra parameter to the prserver (which we have also customized).&nbs=
p; We were able to do this by monkeypatching the prserv client during the d=
o_packagedata task. (Rule #5 Never modify Poky)&nbsp; We had a custom TaskS=
tarted handler which would monkeypatch the getPR() method and add the extra=
 parameter we wanted.&nbsp; We recently upgraded to honister which broke ou=
r method of monkeypatching.<br /><br />I know most Yocto users focus on ima=
ges and don't bother with package feeds. But for those who do, I wanted to =
work on a way to allow one to create a custom prserver connection rather th=
an being forced to use the client in bb/lib/prserv/client.py and hack at it=
 via inherits and task handlers.

--Vpa6kHs5pNRafmtyyMCc--

