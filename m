Return-Path: <jdowd@slashdevslashnull.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DF342C3ABCB
	for <webhook@archiver.kernel.org>; Mon, 12 May 2025 18:10:36 +0000 (UTC)
Subject: Re: Patching a patch from a vendor
To: poky@lists.yoctoproject.org
From: "John" <jdowd@slashdevslashnull.org>
X-Originating-Location: Texas, US (165.225.37.26)
X-Originating-Platform: Windows Chrome 136
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 12 May 2025 11:10:32 -0700
References: <CANNYZj9GwH4w-Zg2571wz2bdJ+hPyBxPf6w18Zy+mXypFgsEJA@mail.gmail.com>
In-Reply-To: <CANNYZj9GwH4w-Zg2571wz2bdJ+hPyBxPf6w18Zy+mXypFgsEJA@mail.gmail.com>
Message-ID: <1013.1747073432355760356@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="bLprrisJzctjFEE7TMNB"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Mon, 12 May 2025 18:10:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13614

--bLprrisJzctjFEE7TMNB
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

So this is an NXP product and their 1st response to any of my queries is to=
 ask for the processor for which my response is T1024RDB 64bit. They respon=
d that they don't support Yocto for that product beyond dunfell. Since my c=
ustomer's requirement is to get them off of dunfell and onto scarthgap, I h=
ave to work around NXP. People keep telling me to talk to them and NXP has =
made it quite clear that they will not entertain any questions about that p=
roduct as far as Yocto Scarthgap is concerned.

I am more than willing to share my fix (if I can figure one out) here but n=
eedless to say, I don't support NXP beyond my personally tagged version of =
"I'm-Too-Old-to-be-Wasting-My-Time".

I'm unable to come up with a bbappend patch to replace an erroneous 'requir=
e' statement in an 'inc' file. I need to remove the "require" statement fro=
m 3 recipes (again, from qoriq which is NXP) since the required file no lon=
ger exists.

Cheers!!

--bLprrisJzctjFEE7TMNB
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>So this is an NXP product and their 1st response to any of my queries =
is to ask for the processor for which my response is T1024RDB 64bit. They r=
espond that they don't support Yocto for that product beyond dunfell. Since=
 my customer's requirement is to get them off of dunfell and onto scarthgap=
, I have to work around NXP. People keep telling me to talk to them and NXP=
 has made it quite clear that they will not entertain any questions about t=
hat product as far as Yocto Scarthgap is concerned.</div>
<div>&nbsp;</div>
<div>I am more than willing to share my fix (if I can figure one out) here =
but needless to say, I don't support NXP beyond my personally tagged versio=
n of "I'm-Too-Old-to-be-Wasting-My-Time".</div>
<div>&nbsp;</div>
<div>I'm unable to come up with a bbappend patch to replace an erroneous 'r=
equire' statement in an 'inc' file. I need to remove the "require" statemen=
t from 3 recipes (again, from qoriq which is NXP) since the required file n=
o longer exists.</div>
<div>&nbsp;</div>
<div>Cheers!!</div>

--bLprrisJzctjFEE7TMNB--

