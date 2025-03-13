Return-Path: <bovog@etipack.it>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 09195C282DE
	for <webhook@archiver.kernel.org>; Thu, 13 Mar 2025 08:11:19 +0000 (UTC)
Subject: Re: Problem run bitbake on terminal in ubuntu #compiler #poky #yocto #bitbake
To: poky@lists.yoctoproject.org
From: bovog@etipack.it
X-Originating-Location: Rome, Latium, IT (2.32.165.50)
X-Originating-Platform: Linux Firefox 135
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 13 Mar 2025 01:11:09 -0700
References: <649407414.2100451.1741793526549@mail.yahoo.com>
In-Reply-To: <649407414.2100451.1741793526549@mail.yahoo.com>
Message-ID: <29623.1741853469718435692@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="Zlf12u63XUsl92A9LXxm"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 13 Mar 2025 08:11:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13562

--Zlf12u63XUsl92A9LXxm
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Jojan,
After that it worked because I had to update to the lts version because it =
didn't work for me, but now it gives me this problem when I run bitbake cor=
e-image-sato
ERROR: The following layer directories do not exist:
ERROR: =C2=A0 =C2=A0/home/etipack/poky/meta
ERROR: =C2=A0 =C2=A0/home/etipack/poky/meta-poky
ERROR: =C2=A0 =C2=A0/home/etipack/poky/meta-yocto-bsp
ERROR: Please check BBLAYERS in /media/etipack/86934a4c-2406-4cfd-afac-f0e2=
c785ec7e/home/etipack/poky/build/conf/bblayers.conf

But I see that in bblayers.conf the layers exist I don't know why these doe=
sn't work

Thanks

--Zlf12u63XUsl92A9LXxm
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi Jojan,</div>
<div>After that it worked because I had to update to the lts version becaus=
e it didn't work for me, but now it gives me this problem when I run bitbak=
e core-image-sato<br />ERROR: The following layer directories do not exist:=
<br />ERROR: &nbsp; &nbsp;/home/etipack/poky/meta<br />ERROR: &nbsp; &nbsp;=
/home/etipack/poky/meta-poky<br />ERROR: &nbsp; &nbsp;/home/etipack/poky/me=
ta-yocto-bsp<br />ERROR: Please check BBLAYERS in /media/etipack/86934a4c-2=
406-4cfd-afac-f0e2c785ec7e/home/etipack/poky/build/conf/bblayers.conf<br />=
<br /></div>
<div>But I see that in bblayers.conf the layers exist I don't know why thes=
e doesn't work</div>
<div>&nbsp;</div>
<div>Thanks</div>

--Zlf12u63XUsl92A9LXxm--

