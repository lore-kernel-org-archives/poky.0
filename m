Return-Path: <Tobias.Gassner.ext@karlstorz.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8B341C3271E
	for <webhook@archiver.kernel.org>; Mon,  8 Jul 2024 14:15:18 +0000 (UTC)
Subject: Re: execute pkg_postinst_ontarget when read-only-rootfs-delayed-postinsts is set for a read only rootfs
To: poky@lists.yoctoproject.org
From: "Gassner, Tobias.ext" <Tobias.Gassner.ext@karlstorz.com>
X-Originating-Location: CH (147.161.138.118)
X-Originating-Platform: Linux Chrome 126
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 08 Jul 2024 07:15:13 -0700
References: <CANNYZj9bsqRc6+fSmseKeMS1+1M_+-bkr3Q69cH96sJi2HvPJQ@mail.gmail.com>
In-Reply-To: <CANNYZj9bsqRc6+fSmseKeMS1+1M_+-bkr3Q69cH96sJi2HvPJQ@mail.gmail.com>
Message-ID: <20061.1720448113215907691@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="P8mgkSp8vW8k8w5HoLg5"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Mon, 08 Jul 2024 14:15:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13418

--P8mgkSp8vW8k8w5HoLg5
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

>=20
> Does it fail without the patch and pass with it?
>=20

Yes.

--P8mgkSp8vW8k8w5HoLg5
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<blockquote><span style=3D"color: #333333; font-family: system-ui, 'Segoe U=
I', Roboto, 'Helvetica Neue', 'Noto Sans', 'Liberation Sans', Arial, sans-s=
erif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color=
 Emoji'; font-size: 16px; font-style: normal; font-variant-ligatures: norma=
l; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orp=
hans: 2; text-align: start; text-indent: 0px; text-transform: none; widows:=
 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: pre-wra=
p; background-color: #ffffff; text-decoration-thickness: initial; text-deco=
ration-style: initial; text-decoration-color: initial; display: inline !imp=
ortant; float: none;">Does it fail without the patch and pass with it?<br /=
></span></blockquote>
<span style=3D"color: #333333; font-family: system-ui, 'Segoe UI', Roboto, =
'Helvetica Neue', 'Noto Sans', 'Liberation Sans', Arial, sans-serif, 'Apple=
 Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji'; fon=
t-size: 16px; font-style: normal; font-variant-ligatures: normal; font-vari=
ant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; tex=
t-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spa=
cing: 0px; -webkit-text-stroke-width: 0px; white-space: pre-wrap; backgroun=
d-color: #ffffff; text-decoration-thickness: initial; text-decoration-style=
: initial; text-decoration-color: initial; display: inline !important; floa=
t: none;">Yes.</span>

--P8mgkSp8vW8k8w5HoLg5--

