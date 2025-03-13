Return-Path: <bovog@etipack.it>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DCDDDC282DE
	for <webhook@archiver.kernel.org>; Thu, 13 Mar 2025 15:27:21 +0000 (UTC)
Subject: Re: Problem run bitbake on terminal in ubuntu #compiler #poky #yocto #bitbake
To: poky@lists.yoctoproject.org
From: bovog@etipack.it
X-Originating-Location: Rome, Latium, IT (2.32.165.50)
X-Originating-Platform: Linux Firefox 135
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 13 Mar 2025 08:27:14 -0700
References: <1704937572.2379958.1741878643738@mail.yahoo.com>
In-Reply-To: <1704937572.2379958.1741878643738@mail.yahoo.com>
Message-ID: <29623.1741879634015542208@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="1diA35T7u4iBKlrGBhAK"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 13 Mar 2025 15:27:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13564

--1diA35T7u4iBKlrGBhAK
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,
Now I have found an another problem

/poky/build$ bitbake core-image-sato
ERROR: User namespaces are not usable by BitBake, possibly due to AppArmor.
See https://discourse.ubuntu.com/t/ubuntu-24-04-lts-noble-numbat-release-no=
tes/39890#unprivileged-user-namespace-restrictions for more information.
Summary: There was 1 ERROR message, returning a non-zero exit code.

What I have to do?

Thanks

--1diA35T7u4iBKlrGBhAK
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi,</div>
<div>Now I have found an another problem</div>
<div>&nbsp;</div>
<div>
<div>/poky/build$ bitbake core-image-sato<br />ERROR: User namespaces are n=
ot usable by BitBake, possibly due to AppArmor.<br />See https://discourse.=
ubuntu.com/t/ubuntu-24-04-lts-noble-numbat-release-notes/39890#unprivileged=
-user-namespace-restrictions for more information.</div>
<div>Summary: There was 1 ERROR message, returning a non-zero exit code.</d=
iv>
<div>&nbsp;</div>
<div>What I have to do?</div>
<div>&nbsp;</div>
<div>Thanks</div>
</div>

--1diA35T7u4iBKlrGBhAK--

