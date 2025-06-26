Return-Path: <dan@engineeredarts.co.uk>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6DF2EC77B7F
	for <webhook@archiver.kernel.org>; Thu, 26 Jun 2025 08:32:51 +0000 (UTC)
Subject: python3 debugging symbols CRC error in kirkstone
To: poky@lists.yoctoproject.org
From: "Daniel Squires" <dan@engineeredarts.co.uk>
X-Originating-Location: Harrow, England, GB (62.31.146.167)
X-Originating-Platform: Linux Chrome 137
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 26 Jun 2025 01:32:49 -0700
Message-ID: <PZGF.1750926769805833040.cpvR@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="gkpJ1tXYfyHSA8Mtoong"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 26 Jun 2025 08:32:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13684

--gkpJ1tXYfyHSA8Mtoong
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I'm trying to debug a memory leak in a python application of ours that uses=
 a c module, however what seems to be the tool for the job these days (memr=
ay)=C2=A0 is categorising the bulk of allocations into an <unknown> field.

After a bit of digging it turns out this seems to be relating to some probl=
em with how the python packages are being produced.

readelf -S /usr/bin/python3.10 | grep debug
[26] .gnu_debuglink =C2=A0=C2=A0=C2=A0PROGBITS =C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A00000000000000000 =C2=A000003010
readelf: Warning: Separate debug info file /usr/bin/python3.10 found, but C=
RC does not match - ignoring

I have tried bitbake -c clean python3, rebuilding with --runall=3Dbuild and=
 reinstalling packages on the target but the issue persists.
Strangely the file it reports as a separate debug info file is actually the=
 same file as the binary not the debug info file which is installed as /usr=
/bin/.debug/python3.10

How do I resolve this?

I tried to isolate and reproduce the leak in a standalone application to de=
bug on another platform but unfortunately the leak is not happening here.

--gkpJ1tXYfyHSA8Mtoong
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>I'm trying to debug a memory leak in a python application of ours that=
 uses a c module, however what seems to be the tool for the job these days =
(memray)&nbsp; is categorising the bulk of allocations into an &lt;unknown&=
gt; field.</div>
<div>&nbsp;</div>
<div>After a bit of digging it turns out this seems to be relating to some =
problem with how the python packages are being produced.&nbsp;</div>
<div>&nbsp;</div>
<div><span style=3D"font-family: monospace;"><span style=3D"color: #000000;=
 background-color: #ffffff;">readelf -S /usr/bin/python3.10 | grep debug</s=
pan><span style=3D"color: #000000; background-color: #ffffff;"> </span><br =
/><span style=3D"color: #000000; background-color: #ffffff;"> &nbsp;[26] .g=
nu_debuglink &nbsp;&nbsp;&nbsp;PROGBITS &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;0000000000000000 &nbsp;00003010</span><span style=3D"color: #0=
00000; background-color: #ffffff;"> </span><br /><span style=3D"color: #000=
000; background-color: #ffffff;">readelf: Warning: Separate debug info file=
 /usr/bin/python3.10 found, but CRC does not match - ignoring</span><br /><=
span style=3D"color: #000000; background-color: #ffffff;"> </span><br /></s=
pan></div>
<div>&nbsp;</div>
<div><span style=3D"font-family: monospace;">I have tried bitbake -c clean =
python3, rebuilding with --runall=3Dbuild and reinstalling packages on the =
target but the issue persists.</span></div>
<div><span style=3D"font-family: monospace;">Strangely the file it reports =
as a separate debug info file is actually the same file as the binary not t=
he debug info file which is installed as <span style=3D"font-family: monosp=
ace;"><span style=3D"color: #000000; background-color: #ffffff;">/usr/bin/.=
debug/python3.10</span><br /></span></span></div>
<div>&nbsp;</div>
<div><span style=3D"font-family: monospace;"><span style=3D"font-family: mo=
nospace;"><span style=3D"color: #000000; background-color: #ffffff;">How do=
 I resolve this?</span></span></span></div>
<div>&nbsp;</div>
<div><span style=3D"font-family: monospace;"><span style=3D"font-family: mo=
nospace;"><span style=3D"color: #000000; background-color: #ffffff;">I trie=
d to isolate and reproduce the leak in a standalone application to debug on=
 another platform but unfortunately the leak is not happening here.</span><=
/span></span></div>
<div>&nbsp;</div>

--gkpJ1tXYfyHSA8Mtoong--

