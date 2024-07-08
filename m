Return-Path: <chris.vd.kruit@certhon.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3A312C3271E
	for <webhook@archiver.kernel.org>; Mon,  8 Jul 2024 10:08:57 +0000 (UTC)
Subject: Licence error in openssh
To: poky@lists.yoctoproject.org
From: chris.vd.kruit@certhon.com
X-Originating-Location: Spijkenisse, South Holland, NL (92.68.185.136)
X-Originating-Platform: Windows Chrome 126
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 08 Jul 2024 03:08:51 -0700
Message-ID: <nauN.1720433331746704508.jsS2@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="9JVSQddrefUHagTFqoUz"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Mon, 08 Jul 2024 10:08:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13412

--9JVSQddrefUHagTFqoUz
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I'm not sure if this is the correct place to report this. I got an error me=
ssage building openssh-9.8P1-r0, regarding the license file. It seems like =
the MD5SUM in the recipe file is wrong.

I got the following error during build.

ERROR: openssh-9.8p1-r0 do_populate_lic: QA Issue: openssh: The LIC_FILES_C=
HKSUM does not match for file://LICENCE;md5=3D8baf365614c9bdd63705f298c9afb=
fb9

openssh: The new md5 checksum is 072979064e691d342002f43cd89c0394

openssh: Here is the selected license text:

vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv

This file is part of the OpenSSH software.

The licences which components of this software fall under are as

follows. First, we will summarize and say that all components

are under a BSD licence, or a licence more free than that.

I generated the MD5SUM of the LICENCE file and it is the number reported in=
 text above, so i just changed the recipe and then it worked.
Maybe the source needs to be changed, but i don't know how to do this.

--9JVSQddrefUHagTFqoUz
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span lang=3D"EN-US" s=
tyle=3D"mso-ansi-language: EN-US;">I&#39;m not sure if this is the correct =
place to report this. I got an error message building openssh-9.8P1-r0, reg=
arding the license file. It seems like the MD5SUM in the recipe file is wro=
ng.<br/><br/>I got the following error during build.<br/><br/></span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><em><span lang=3D"EN-U=
S" style=3D"mso-ansi-language: EN-US;">ERROR: openssh-9.8p1-r0 do_populate_=
lic: QA Issue: openssh: The LIC_FILES_CHKSUM does not match for file://LICE=
NCE;md5=3D8baf365614c9bdd63705f298c9afbfb9</span></em></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><em><span lang=3D"EN-U=
S" style=3D"mso-ansi-language: EN-US;">openssh: The new md5 checksum is 072=
979064e691d342002f43cd89c0394</span></em></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><em><span lang=3D"EN-U=
S" style=3D"mso-ansi-language: EN-US;">openssh: Here is the selected licens=
e text:</span></em></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><em><span lang=3D"EN-U=
S" style=3D"mso-ansi-language: EN-US;">vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv=
vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv<span style=3D"mso-spacerun: yes;">=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 </span></span></em></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><em><span lang=3D"EN-U=
S" style=3D"mso-ansi-language: EN-US;">This file is part of the OpenSSH sof=
tware.<span style=3D"mso-spacerun: yes;">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 </span></span></em></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><em><span lang=3D"EN-U=
S" style=3D"mso-ansi-language: EN-US;"><span style=3D"mso-spacerun: yes;">=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 </span></span></em></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><em><span lang=3D"EN-U=
S" style=3D"mso-ansi-language: EN-US;">The licences which components of thi=
s software fall under are as<span style=3D"mso-spacerun: yes;">=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 </span></span></em></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><em><span lang=3D"EN-U=
S" style=3D"mso-ansi-language: EN-US;">follows.<span style=3D"mso-spacerun:=
 yes;">=C2=A0 </span>First, we will summarize and say that all components<s=
pan style=3D"mso-spacerun: yes;">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 </span></span></e=
m></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><em><span lang=3D"EN-U=
S" style=3D"mso-ansi-language: EN-US;">are under a BSD licence, or a licenc=
e more free than that.<br/><br/></span></em><span lang=3D"EN-US" style=3D"m=
so-ansi-language: EN-US;">I generated the MD5SUM of the LICENCE file and it=
 is the number reported in text above, so i just changed the recipe and the=
n it worked.=C2=A0<br/>Maybe the source needs to be changed, but i don&#39;=
t know how to do this.</span></p>

--9JVSQddrefUHagTFqoUz--

