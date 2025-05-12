Return-Path: <jdowd@slashdevslashnull.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 598DCC3ABCB
	for <webhook@archiver.kernel.org>; Mon, 12 May 2025 16:20:36 +0000 (UTC)
Subject: Patching a patch from a vendor
To: poky@lists.yoctoproject.org
From: "John" <jdowd@slashdevslashnull.org>
X-Originating-Location: Texas, US (165.225.37.26)
X-Originating-Platform: Windows Chrome 136
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 12 May 2025 09:20:30 -0700
Message-ID: <wTK0.1747066830015306452.2L7F@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="vnvuRKB6ef61tNTntLKk"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Mon, 12 May 2025 16:20:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13611

--vnvuRKB6ef61tNTntLKk
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I'm using Yocto version: scarthgap.

I have a situation in vendor's repo, that has patches that needed to be cha=
nged (one of them is as simple as adding the "Upstream-Status:" string to t=
he top of the patch file.

Is this a "thing"? I don't want to be changing the vendor's recipes and pat=
ches (it's the qoriq stuff under NXP) but I need to fix some obvious errors=
.

My problem is that my patches will be applied after theirs so for instance,=
 the "Upstream-Status" fix is already too late and will be reported when bi=
tbake is run.

I have some recipes in the qoriq repos that have errors in them (including =
files that no longer exist).

Advice would be appreciated.

Cheers!!

--vnvuRKB6ef61tNTntLKk
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>I'm using Yocto version: scarthgap.</div>
<div>&nbsp;</div>
<div>I have a situation in vendor's repo, that has patches that needed to b=
e changed (one of them is as simple as adding the "Upstream-Status:" string=
 to the top of the patch file.</div>
<div>&nbsp;</div>
<div>Is this a "thing"? I don't want to be changing the vendor's recipes an=
d patches (it's the qoriq stuff under NXP) but I need to fix some obvious e=
rrors.</div>
<div>&nbsp;</div>
<div>My problem is that my patches will be applied after theirs so for inst=
ance, the "Upstream-Status" fix is already too late and will be reported wh=
en bitbake is run.</div>
<div>&nbsp;</div>
<div>I have some recipes in the qoriq repos that have errors in them (inclu=
ding files that no longer exist).&nbsp;</div>
<div>&nbsp;</div>
<div>Advice would be appreciated.</div>
<div>&nbsp;</div>
<div>Cheers!!</div>

--vnvuRKB6ef61tNTntLKk--

