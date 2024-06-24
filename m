Return-Path: <nicolas.wirth@speedgoat.ch>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A94CAC2BD05
	for <webhook@archiver.kernel.org>; Mon, 24 Jun 2024 07:24:19 +0000 (UTC)
Subject: Re: Issue with Dynamic Linker and Python Dependency in Yocto SDK Setup
To: poky@lists.yoctoproject.org
From: "Nicolas Wirth" <nicolas.wirth@speedgoat.ch>
X-Originating-Location: Geneva, CH (213.55.244.78)
X-Originating-Platform: Windows Chrome 126
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 24 Jun 2024 00:24:07 -0700
References: <06C32164-088C-4ADB-AA7B-BC20E68EDF84@arm.com>
In-Reply-To: <06C32164-088C-4ADB-AA7B-BC20E68EDF84@arm.com>
Message-ID: <6942.1719213477427571414@lists.yoctoproject.org>
X-Old-Date: Mon, 24 Jun 2024 00:17:57 -0700
Content-Type: multipart/alternative; boundary="iF2BPE6PRSEMB4EemtK4"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Mon, 24 Jun 2024 07:24:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13386
Message-ID: <20240624072407.9mxoBxDz4wwZlTR5RXWWR-jijCaYrNL_yyxT67sfK78@z>

--iF2BPE6PRSEMB4EemtK4
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Thanks for your input.

I cannot install anything (including Python) on the target machine that wil=
l use the SDK due to company policy. Additionally, I cannot modify the SDK =
generation because the SDK is mounted on the machine using a token mechanis=
m, making the location variable. Finally, I don't have root privilege on th=
e target.

Is there no other way to have the SDK available on my target without using =
the relocate_sdk.py script?

--iF2BPE6PRSEMB4EemtK4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Thanks for your input.</p>
<p>I cannot install anything (including Python) on the target machine that =
will use the SDK due to company policy. Additionally, I cannot modify the S=
DK generation because the SDK is mounted on the machine using a token mecha=
nism, making the location variable. Finally, I don't have root privilege on=
 the target.</p>
<p>Is there no other way to have the SDK available on my target without usi=
ng the <code>relocate_sdk.py</code> script?</p>

--iF2BPE6PRSEMB4EemtK4--

