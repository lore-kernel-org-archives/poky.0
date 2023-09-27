Return-Path: <bosinski@genesismobo.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4A0DFE80AAF
	for <webhook@archiver.kernel.org>; Wed, 27 Sep 2023 14:16:43 +0000 (UTC)
Subject: Re: Enable ensurepip on Kirkstone?
To: poky@lists.yoctoproject.org
From: bosinski@genesismobo.com
X-Originating-Location: Warsaw, Mazovia, PL (185.129.33.103)
X-Originating-Platform: Linux Firefox 117
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 27 Sep 2023 07:16:33 -0700
References: <CANNYZj8pYX-PUQUyKRcBO80vUeZtKL5LEAXw1Qc_VqvLddpP1Q@mail.gmail.com>
In-Reply-To: <CANNYZj8pYX-PUQUyKRcBO80vUeZtKL5LEAXw1Qc_VqvLddpP1Q@mail.gmail.com>
Message-ID: <29568.1695824193432418672@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="SBixPURPsW4FxvpKei5m"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 27 Sep 2023 14:16:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13170

--SBixPURPsW4FxvpKei5m
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Indeed, cherry-picking commit e9f923e9d47a2b65105f553a7fc3e834a6bc582b (pyt=
hon3-manifest: add ensurepip) does the trick. Thanks!

--SBixPURPsW4FxvpKei5m
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Indeed, cherry-picking commit e9f923e9d47a2b65105f553a7fc3e834a6bc582b (pyt=
hon3-manifest: add ensurepip) does the trick. Thanks!

--SBixPURPsW4FxvpKei5m--

