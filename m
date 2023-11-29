Return-Path: <dvirbechor3@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DA944C4167B
	for <webhook@archiver.kernel.org>; Wed, 29 Nov 2023 11:59:52 +0000 (UTC)
Subject: Poky initscripts: Add start/stop/status to initscripts #poky #yocto
To: poky@lists.yoctoproject.org
From: "Dvir Bechor" <dvirbechor3@gmail.com>
X-Originating-Location: Raanana, Central District, IL (84.110.212.230)
X-Originating-Platform: Linux Firefox 120
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 29 Nov 2023 03:59:50 -0800
Message-ID: <qsRq.1701258775413275865.majK@lists.yoctoproject.org>
X-Old-Date: Wed, 29 Nov 2023 03:52:55 -0800
Content-Type: multipart/alternative; boundary="kZonohKTWNHqIiRq5gBO"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 29 Nov 2023 11:59:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13212
Message-ID: <20231129115950.VoQW-D_DvgBEcn1IHdokw2VceajNyFxJ2mgMr8w7hI8@z>

--kZonohKTWNHqIiRq5gBO
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,
I=E2=80=99ve came across an issue in the =E2=80=9Csendsigs=E2=80=9D initscr=
ipt while using the service command from init-system-helpers.

=E2=80=98service =E2=80=94status-all=E2=80=99 command runs (almost) every i=
nitscript with status as an argument, and if usage is printed then the stat=
us of the service is unknown.

Some built-in initscripts (such as sendsigs, umountfs) have no switch-case =
or argument validation, passing status as an argument makes it run as usual=
, which causes unexpected behavior.
I believe this can be solved by adding switch-case or argument validation t=
o those initscripts, or by patching the service script to ignore the sendsi=
gs script like it does for halt or reboot.

Are you familiar with this issue? What do you think is the best solution? I=
 don=E2=80=99t mind adding a patch for either one of the solutions.
Thanks,
Dvir Bechor.

--kZonohKTWNHqIiRq5gBO
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,<br />I&rsquo;ve came across an issue in the &ldquo;sendsigs&rdquo; i=
nitscript while using the service command from init-system-helpers.<br /><b=
r />&lsquo;service &mdash;status-all&rsquo; command runs (almost) every ini=
tscript with status as an argument, and if usage is printed then the status=
 of the service is unknown.<br /><br />Some built-in initscripts (such as s=
endsigs, umountfs) have no switch-case or argument validation, passing stat=
us as an argument makes it run as usual, which causes unexpected behavior.<=
br />I believe this can be solved by adding switch-case or argument validat=
ion to those initscripts, or by patching the service script to ignore the s=
endsigs script like it does for halt or reboot.<br /><br />Are you familiar=
 with this issue? What do you think is the best solution? I don&rsquo;t min=
d adding a patch for either one of the solutions.<br />Thanks,<br />Dvir Be=
chor.

--kZonohKTWNHqIiRq5gBO--

