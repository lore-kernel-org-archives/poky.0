Return-Path: <dvirbechor3@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A7DCC00528
	for <webhook@archiver.kernel.org>; Mon,  7 Aug 2023 14:21:33 +0000 (UTC)
Subject: =?UTF-8?B?UG9reSBpbml0c2NyaXB0czogQWRkIHN0YXR1cyB0byDigJxzZW5kc2lnc+KAnSBpbml0c2NyaXB0?=
To: poky@lists.yoctoproject.org
From: "Dvir Bechor" <dvirbechor3@gmail.com>
X-Originating-Location: US (104.28.244.208)
X-Originating-Platform: iPhone Safari 17
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 07 Aug 2023 07:21:31 -0700
Message-ID: <zfJl.1691418091730277087.5rng@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="uXFL0CNToEg58GzUFCAV"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Mon, 07 Aug 2023 14:21:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13115

--uXFL0CNToEg58GzUFCAV
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,

I=E2=80=99ve came across an issue in the =E2=80=9Csendsigs=E2=80=9D initscr=
ipt while using the service command from init-system-helpers.

=E2=80=98service =E2=80=94status-all=E2=80=99 command runs (almost) every i=
nit script with status as an argument, and if usage is printed then the sta=
tus of the service is unknown.

Since =E2=80=9Csendsigs=E2=80=9D init script have no switch-case or argumen=
t validation, passing status as an argument makes it run as usual, which cr=
eate an unexpected bug, and sends a kill signal to all processes.

I believe this can be solved by adding switch-case or argument validation t=
o sendsigs, or by patching the service script to ignore the sendsigs script=
 like it does for halt or reboot.

Are you familiar with this issue? What do you think is the=C2=A0best soluti=
on? I don=E2=80=99t mind adding a patch for either one of the solutions.

Thanks,
Dvir Bechor.

--uXFL0CNToEg58GzUFCAV
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<span style=3D"font-size: 16px; -webkit-text-size-adjust: auto; caret-color=
: #d4d4d5; font-family: -apple-system, 'Helvetica Neue'; word-spacing: 1px;=
 -webkit-tap-highlight-color: rgba(255, 255, 255, 0.25); border-color: #313=
131; color: #313131;">Hello,</span>
<div dir=3D"auto" style=3D"font-size: 16px; -webkit-text-size-adjust: auto;=
 caret-color: #d4d4d5; font-family: -apple-system, 'Helvetica Neue'; word-s=
pacing: 1px; -webkit-tap-highlight-color: rgba(255, 255, 255, 0.25); border=
-color: #313131; color: #313131;">&nbsp;</div>
<div dir=3D"auto" style=3D"font-size: 1rem; -webkit-text-size-adjust: auto;=
 caret-color: #d4d4d5; font-family: -apple-system, 'Helvetica Neue'; word-s=
pacing: 1px; -webkit-tap-highlight-color: rgba(255, 255, 255, 0.25); border=
-color: #313131; color: #313131;" data-removefontsize=3D"true" data-origina=
lcomputedfontsize=3D"16">I&rsquo;ve came across an issue in the &ldquo;send=
sigs&rdquo; initscript while using the service command from init-system-hel=
pers.</div>
<div dir=3D"auto" style=3D"font-size: 16px; -webkit-text-size-adjust: auto;=
 caret-color: #d4d4d5; font-family: -apple-system, 'Helvetica Neue'; word-s=
pacing: 1px; -webkit-tap-highlight-color: rgba(255, 255, 255, 0.25); border=
-color: #313131; color: #313131;">&nbsp;</div>
<div dir=3D"auto" style=3D"font-size: 1rem; -webkit-text-size-adjust: auto;=
 caret-color: #d4d4d5; font-family: -apple-system, 'Helvetica Neue'; word-s=
pacing: 1px; -webkit-tap-highlight-color: rgba(255, 255, 255, 0.25); border=
-color: #313131; color: #313131;" data-removefontsize=3D"true" data-origina=
lcomputedfontsize=3D"16">&lsquo;service &mdash;status-all&rsquo; command ru=
ns (almost) every init script with status as an argument, and if usage is p=
rinted then the status of the service is unknown.</div>
<div dir=3D"auto" style=3D"font-size: 16px; -webkit-text-size-adjust: auto;=
 caret-color: #d4d4d5; font-family: -apple-system, 'Helvetica Neue'; word-s=
pacing: 1px; -webkit-tap-highlight-color: rgba(255, 255, 255, 0.25); border=
-color: #313131; color: #313131;">&nbsp;</div>
<div dir=3D"auto" style=3D"font-size: 1rem; -webkit-text-size-adjust: auto;=
 caret-color: #d4d4d5; font-family: -apple-system, 'Helvetica Neue'; word-s=
pacing: 1px; -webkit-tap-highlight-color: rgba(255, 255, 255, 0.25); border=
-color: #313131; color: #313131;" data-removefontsize=3D"true" data-origina=
lcomputedfontsize=3D"16">Since &ldquo;sendsigs&rdquo; init script have no s=
witch-case or argument validation, passing status as an argument makes it r=
un as usual, which create an unexpected bug, and sends a kill signal to all=
 processes.</div>
<div dir=3D"auto" style=3D"font-size: 16px; -webkit-text-size-adjust: auto;=
 caret-color: #d4d4d5; font-family: -apple-system, 'Helvetica Neue'; word-s=
pacing: 1px; -webkit-tap-highlight-color: rgba(255, 255, 255, 0.25); border=
-color: #313131; color: #313131;">&nbsp;</div>
<div dir=3D"auto" style=3D"font-size: 1rem; -webkit-text-size-adjust: auto;=
 caret-color: #d4d4d5; font-family: -apple-system, 'Helvetica Neue'; word-s=
pacing: 1px; -webkit-tap-highlight-color: rgba(255, 255, 255, 0.25); border=
-color: #313131; color: #313131;" data-removefontsize=3D"true" data-origina=
lcomputedfontsize=3D"16">I believe this can be solved by adding switch-case=
 or argument validation to sendsigs, or by patching the service script to i=
gnore the sendsigs script like it does for halt or reboot.</div>
<div dir=3D"auto" style=3D"font-size: 16px; -webkit-text-size-adjust: auto;=
 caret-color: #d4d4d5; font-family: -apple-system, 'Helvetica Neue'; word-s=
pacing: 1px; -webkit-tap-highlight-color: rgba(255, 255, 255, 0.25); border=
-color: #313131; color: #313131;">&nbsp;</div>
<div dir=3D"auto" style=3D"font-size: 1rem; -webkit-text-size-adjust: auto;=
 caret-color: #d4d4d5; font-family: -apple-system, 'Helvetica Neue'; word-s=
pacing: 1px; -webkit-tap-highlight-color: rgba(255, 255, 255, 0.25); border=
-color: #313131; color: #313131;" data-removefontsize=3D"true" data-origina=
lcomputedfontsize=3D"16">Are you familiar with this issue? What do you thin=
k is the&nbsp;best solution? I don&rsquo;t mind adding a patch for either o=
ne of the solutions.</div>
<div dir=3D"auto" style=3D"font-size: 16px; -webkit-text-size-adjust: auto;=
 caret-color: #d4d4d5; font-family: -apple-system, 'Helvetica Neue'; word-s=
pacing: 1px; -webkit-tap-highlight-color: rgba(255, 255, 255, 0.25); border=
-color: #313131; color: #313131;">&nbsp;</div>
<div dir=3D"auto" style=3D"font-size: 1rem; -webkit-text-size-adjust: auto;=
 caret-color: #d4d4d5; font-family: -apple-system, 'Helvetica Neue'; word-s=
pacing: 1px; -webkit-tap-highlight-color: rgba(255, 255, 255, 0.25); border=
-color: #313131; color: #313131;" data-removefontsize=3D"true" data-origina=
lcomputedfontsize=3D"16">Thanks,</div>
<div dir=3D"auto" style=3D"font-size: 1rem; -webkit-text-size-adjust: auto;=
 caret-color: #d4d4d5; font-family: -apple-system, 'Helvetica Neue'; word-s=
pacing: 1px; -webkit-tap-highlight-color: rgba(255, 255, 255, 0.25); border=
-color: #313131; color: #313131;" data-removefontsize=3D"true" data-origina=
lcomputedfontsize=3D"16">Dvir Bechor.</div>

--uXFL0CNToEg58GzUFCAV--

