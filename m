Return-Path: <nicolas.wirth@speedgoat.ch>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 19D25C3DA61
	for <webhook@archiver.kernel.org>; Mon, 29 Jul 2024 13:32:58 +0000 (UTC)
Subject: Issues with Extensible SDK: Checksum Mismatch and Sstate Warnings
To: poky@lists.yoctoproject.org
From: "Nicolas Wirth" <nicolas.wirth@speedgoat.ch>
X-Originating-Location: Geneva, CH (213.55.244.78)
X-Originating-Platform: Windows Chrome 126
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 29 Jul 2024 06:32:48 -0700
Message-ID: <R3R3.1722259968114512623.2es7@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="ReMAT8dFDig8jZATPqVf"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Mon, 29 Jul 2024 13:32:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13423

--ReMAT8dFDig8jZATPqVf
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello Yocto Community,
I've encountered some issues while using the Extensible SDK (eSDK) and woul=
d appreciate any guidance or insights you might have. Here are the details =
of the errors:

Sstate Warning:
WARNING: You are using a local hash equivalence server but have configured =
an sstate mirror. This will likely mean no sstate will match from the mirro=
r. You may wish to disable the hash equivalence use (BB_HASHSERVE), or use =
a hash equivalence server alongside the sstate mirror.

Checksum Mismatch for Boost:
WARNING: Checksum mismatch for local file /opt/Yocto_ESDK/Yocto_ESDK_x86/do=
wnloads/boost_1_74_0.tar.bz2
Cleaning and trying again.
WARNING: Renaming /opt/Yocto_ESDK/Yocto_ESDK_x86/downloads/boost_1_74_0.tar=
.bz2 to /opt/Yocto_ESDK/Yocto_ESDK_x86/downloads/boost_1_74_0.tar.bz2_bad-c=
hecksum_5447ae595623f7b8260e93a402896c57282df45d6dcdf6950155f110f7eb55a7
WARNING: Failed to fetch URL https://dl.bintray.com/boostorg/release/1.74.0=
/source/boost_1_74_0.tar.bz2, attempting MIRRORS if available

I have ensured that Boost is included in the IMAGE_INSTALL of the image I'm=
 using. Given this, I'm puzzled as to why Boost is not part of the eSDK sys=
root. Shouldn't all the libraries and headers specified in the image be inc=
luded in the eSDK sysroot? How to fix those issues ?

Best regards,
Nicolas

--ReMAT8dFDig8jZATPqVf
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hello Yocto Community,</div>
<div>I've encountered some issues while using the Extensible SDK (eSDK) and=
 would appreciate any guidance or insights you might have. Here are the det=
ails of the errors:</div>
<div>&nbsp;</div>
<div>Sstate Warning:</div>
<div style=3D"padding-left: 40px;">
<div class=3D"dark bg-gray-950 rounded-md border-[0.5px] border-token-borde=
r-medium">
<div class=3D"overflow-y-auto p-4" dir=3D"ltr">WARNING: You are using a loc=
al hash equivalence server but have configured an sstate mirror. This will =
likely mean no sstate will match from the mirror. You may wish to disable t=
he hash equivalence use (BB_HASHSERVE), or use a hash equivalence server al=
ongside the sstate mirror.</div>
<div class=3D"overflow-y-auto p-4" dir=3D"ltr">&nbsp;</div>
</div>
</div>
<div>Checksum Mismatch for Boost:</div>
<div style=3D"padding-left: 40px;">WARNING: Checksum mismatch for local fil=
e /opt/Yocto_ESDK/Yocto_ESDK_x86/downloads/boost_1_74_0.tar.bz2<br />Cleani=
ng and trying again.<br />WARNING: Renaming /opt/Yocto_ESDK/Yocto_ESDK_x86/=
downloads/boost_1_74_0.tar.bz2 to /opt/Yocto_ESDK/Yocto_ESDK_x86/downloads/=
boost_1_74_0.tar.bz2_bad-checksum_5447ae595623f7b8260e93a402896c57282df45d6=
dcdf6950155f110f7eb55a7<br />WARNING: Failed to fetch URL https://dl.bintra=
y.com/boostorg/release/1.74.0/source/boost_1_74_0.tar.bz2, attempting MIRRO=
RS if available</div>
<div style=3D"padding-left: 40px;">&nbsp;</div>
<div>I have ensured that Boost is included in the IMAGE_INSTALL of the imag=
e I'm using. Given this, I'm puzzled as to why Boost is not part of the eSD=
K sysroot. Shouldn't all the libraries and headers specified in the image b=
e included in the eSDK sysroot? How to fix those issues ?</div>
<div>&nbsp;</div>
<div>Best regards,</div>
<div>Nicolas</div>

--ReMAT8dFDig8jZATPqVf--

