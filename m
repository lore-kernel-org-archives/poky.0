Return-Path: <bewong@fastenal.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A203D30012
	for <webhook@archiver.kernel.org>; Fri, 18 Oct 2024 14:19:59 +0000 (UTC)
Subject: How do I use the conversiontypes?
To: poky@lists.yoctoproject.org
From: bewong@fastenal.com
X-Originating-Location: Louisville, Kentucky, US (24.95.57.199)
X-Originating-Platform: Windows Firefox 131
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 18 Oct 2024 07:19:59 -0700
Message-ID: <gVI9.1729261199023992327.JqEd@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="ibQcW33YQrlhEKnaQSsG"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 18 Oct 2024 14:19:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13457

--ibQcW33YQrlhEKnaQSsG
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I am creating an image with swupdate and am trying to use the conversiontyp=
es in order to create the zck and zckheader files for my delta updates. The=
 swupdate layer has a bbclass for adding those types and conversion_cmds fo=
r both. see here: https://github.com/sbabic/meta-swupdate/blob/kirkstone/cl=
asses/image_types_zchunk.bbclass The issue is that I can;t seem to figure o=
ut how to actually use the bbclass, I've tried multiple different things an=
d have tried to look up documentation on this. The only thing I could find =
was the implementation of the types and the command in which to generate th=
e image, which is done in the layer, but no instructions on how to get bitb=
ake to actually build the conversion output files.

--ibQcW33YQrlhEKnaQSsG
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>I am creating an image with swupdate and am trying to use the conversi=
ontypes in order to create the zck and zckheader files for my delta updates=
. The swupdate layer has a bbclass for adding those types and conversion_cm=
ds for both. see here: <a href=3D"https://github.com/sbabic/meta-swupdate/b=
lob/kirkstone/classes/image_types_zchunk.bbclass" target=3D"_blank" rel=3D"=
noopener">https://github.com/sbabic/meta-swupdate/blob/kirkstone/classes/im=
age_types_zchunk.bbclass</a> The issue is that I can;t seem to figure out h=
ow to actually use the bbclass, I've tried multiple different things and ha=
ve tried to look up documentation on this. The only thing I could find was =
the implementation of the types and the command in which to generate the im=
age, which is done in the layer, but no instructions on how to get bitbake =
to actually build the conversion output files.</div>

--ibQcW33YQrlhEKnaQSsG--

