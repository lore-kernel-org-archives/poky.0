Return-Path: <simon.eu@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0B0FC369CB
	for <webhook@archiver.kernel.org>; Sat, 26 Apr 2025 21:32:33 +0000 (UTC)
Subject: Re: Problem run bitbake on terminal in ubuntu #compiler #poky #yocto #bitbake
To: poky@lists.yoctoproject.org
From: "Simon A. Eugster" <simon.eu@gmail.com>
X-Originating-Location: Winterthur, Zurich, CH (85.195.255.24)
X-Originating-Platform: Linux Firefox 137
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sat, 26 Apr 2025 14:32:13 -0700
References: <4168.1742208662877621129@lists.yoctoproject.org>
In-Reply-To: <4168.1742208662877621129@lists.yoctoproject.org>
Message-ID: <9729.1745703133050021685@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="mhM5Ly5ng562Ps1GESrq"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Sat, 26 Apr 2025 21:32:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13608

--mhM5Ly5ng562Ps1GESrq
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Gabriele,

Another option is to use a custom profile instead of a global disable.

Put this to /etc/apparmor.d/bitbake:

abi <abi/4.0>,
include <tunables/global>

profile bitbake /path-to-your/bitbake flags=3D(unconfined) {
 userns,
}

Then add it to the kernel with
cat /etc/apparmor.d/bitbake | sudo apparmor_parser -a

Simon

--mhM5Ly5ng562Ps1GESrq
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi Gabriele,</div>
<div>&nbsp;</div>
<div>Another option is to use a custom profile instead of a global disable.=
</div>
<div>&nbsp;</div>
<div>Put this to /etc/apparmor.d/bitbake:</div>
<div>&nbsp;</div>
<div>
<div style=3D"background-color: #ffffff; color: #080808;">
<pre style=3D"font-family: 'JetBrains Mono',monospace; font-size: 9.8pt;">a=
bi &lt;abi/4.0&gt;,<br />include &lt;tunables/global&gt;<br /><br />profile=
 bitbake /path-to-your/bitbake flags=3D(unconfined) {<br />  userns,<br />}=
</pre>
<div>&nbsp;</div>
<div>Then add it to the kernel with </div>
<div>
<div style=3D"background-color: #ffffff; color: #080808;">
<pre style=3D"font-family: 'JetBrains Mono',monospace; font-size: 9.8pt;">c=
at /etc/apparmor.d/bitbake | sudo apparmor_parser -a</pre>
<div>&nbsp;</div>
<div>Simon</div>
</div>
</div>
</div>
</div>

--mhM5Ly5ng562Ps1GESrq--

