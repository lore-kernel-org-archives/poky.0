Return-Path: <f.louveau@lacroix.group>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 167AFC00528
	for <webhook@archiver.kernel.org>; Fri,  4 Aug 2023 13:46:19 +0000 (UTC)
Subject: Re: [LINUX-FIRMWARE] all pacakges in image
To: poky@lists.yoctoproject.org
From: f.louveau@lacroix.group
X-Originating-Location: Versailles, Île-de-France, FR (82.66.7.113)
X-Originating-Platform: Linux Firefox 114
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 04 Aug 2023 06:46:16 -0700
References: <CANNYZj_8Kj6spQOHTvgFXSDQzmMTt6QtxwjeLs8L1yJ9GOEzkQ@mail.gmail.com>
In-Reply-To: <CANNYZj_8Kj6spQOHTvgFXSDQzmMTt6QtxwjeLs8L1yJ9GOEzkQ@mail.gmail.com>
Message-ID: <25343.1691156776634873717@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="H6PZAN9cJHzeicXvZrFx"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 04 Aug 2023 13:46:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13110

--H6PZAN9cJHzeicXvZrFx
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Thanks for the advice.
I analyze the depends.dot file and found something interesting.

>=20
> +"linux-firmware-mt7601u" -> "linux-firmware"
> "linux-firmware-mt7601u" -> "linux-firmware-mt7601u-license"

For the need firmware mt7601u, a new dependency is added to linux-firmware.=
 That explains why I have all firmwares.
But between linux-firmware packages 20230404 & 20230515, the recipe does no=
t change.

--H6PZAN9cJHzeicXvZrFx
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Thanks for the advice.<br />I analyze the depends.dot file and found someth=
ing interesting.<br />
<blockquote>+"linux-firmware-mt7601u" -&gt; "linux-firmware"<br />&nbsp;"li=
nux-firmware-mt7601u" -&gt; "linux-firmware-mt7601u-license"</blockquote>
<br />For the need firmware mt7601u, a new dependency is added to linux-fir=
mware. That explains why I have all firmwares.<br />But between linux-firmw=
are packages 20230404 &amp; 20230515, the recipe does not change.

--H6PZAN9cJHzeicXvZrFx--

