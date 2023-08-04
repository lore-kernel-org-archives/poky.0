Return-Path: <f.louveau@lacroix.group>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 790C9C04FDF
	for <webhook@archiver.kernel.org>; Fri,  4 Aug 2023 15:39:47 +0000 (UTC)
Subject: Re: [LINUX-FIRMWARE] all pacakges in image
To: poky@lists.yoctoproject.org
From: f.louveau@lacroix.group
X-Originating-Location: Versailles, Île-de-France, FR (82.66.7.113)
X-Originating-Platform: Linux Firefox 114
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 04 Aug 2023 08:39:37 -0700
References: <CA+chaQdz5BXB4OUXZYNT06MVN3K+43URB1jVA=DCodP0Ev7u9A@mail.gmail.com>
In-Reply-To: <CA+chaQdz5BXB4OUXZYNT06MVN3K+43URB1jVA=DCodP0Ev7u9A@mail.gmail.com>
Message-ID: <18445.1691163577621123503@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="rAopPMMkOCiDsOtCQ5nR"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 04 Aug 2023 15:39:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13112

--rAopPMMkOCiDsOtCQ5nR
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Many thanks,

I didn't find in the correct mailing list :)

Explanation: binaries for mediatek are moved inside a dedicated folder and =
symlinks are created to keep compatibility during transition.
This symlink causes the problem.

https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git=
/commit/?h=3D20230515&id=3D8451c2b1d529dc1a49328ac9235d3cf5bb8a8fcb

So how to fix this in this poky. Can I propose a patch ?
As you can imagine, I'm new to this

--rAopPMMkOCiDsOtCQ5nR
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Many thanks,<br /><br />I didn't find in the correct mailing list :)<br /><=
br />Explanation: binaries for mediatek are moved inside a dedicated folder=
 and symlinks are created to keep compatibility during transition.<br />Thi=
s symlink causes the problem.<br /><br />https://git.kernel.org/pub/scm/lin=
ux/kernel/git/firmware/linux-firmware.git/commit/?h=3D20230515&amp;id=3D845=
1c2b1d529dc1a49328ac9235d3cf5bb8a8fcb<br /><br />So how to fix this in this=
 poky. Can I propose a patch ?<br />As you can imagine, I'm new to this

--rAopPMMkOCiDsOtCQ5nR--

