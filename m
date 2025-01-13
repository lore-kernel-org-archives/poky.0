Return-Path: <peter-simon.dieterich@vaillant-group.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E9932C02183
	for <webhook@archiver.kernel.org>; Mon, 13 Jan 2025 14:15:26 +0000 (UTC)
Subject: Re: #package #poky #yocto connman: Bug in connman causing endless write to file
To: poky@lists.yoctoproject.org
From: "Dieterich, Peter-Simon" <peter-simon.dieterich@vaillant-group.com>
X-Originating-Location: =?UTF-8?B?S2lwcGVuaGVpbSwgQmFkZW4tV8O8cnR0ZW1iZXJnLCBERQ==?= (79.199.250.188)
X-Originating-Platform: Linux Firefox 134
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 13 Jan 2025 06:15:16 -0800
References: <CANNYZj_tTFbO36CEeaVqZJROhb8LK6jFpCegD6TYFNejFcQ_XA@mail.gmail.com>
In-Reply-To: <CANNYZj_tTFbO36CEeaVqZJROhb8LK6jFpCegD6TYFNejFcQ_XA@mail.gmail.com>
Message-ID: <31827.1736777716848119510@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="6JwkdXgYr410LQk0pUKO"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Mon, 13 Jan 2025 14:15:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13504

--6JwkdXgYr410LQk0pUKO
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Jan 13, 2025 at 05:17 AM, Alexander Kanavin wrote:

>=20
> First please find out whether it's possible to solve the data format
> issue with an upstream fix. Disabling something because of a bug
> triggered by a very corner case isn't a great idea, particularly when
> justified by broad, difficult to verify statements like 'most users
> don't need this'.

Will do. I agree that the statement is very broad. To be honest, I don't kn=
ow the exact use case of this feature. From what I've seen it saves connect=
ion statistics that look very much like debug information, for which you al=
so need special binaries to analyze.

Concerning the very corner case, I'd like to point out that this issue affe=
cts all users using connman and migrating existing systems from previous yo=
cto versions without 64-bit support to a current version with 64-bit suppor=
t.

--6JwkdXgYr410LQk0pUKO
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>On Mon, Jan 13, 2025 at 05:17 AM, Alexander Kanavin wrote:</div>
<div>
<blockquote>First please find out whether it's possible to solve the data f=
ormat<br />issue with an upstream fix. Disabling something because of a bug=
<br />triggered by a very corner case isn't a great idea, particularly when=
<br />justified by broad, difficult to verify statements like 'most users<b=
r />don't need this'.</blockquote>
Will do. I agree that the statement is very broad. To be honest, I don't kn=
ow the exact use case of this feature. From what I've seen it saves connect=
ion statistics that look very much like debug information, for which you al=
so need special binaries to analyze.</div>
<div>&nbsp;</div>
<div>Concerning the very corner case, I'd like to point out that this issue=
 affects all users using connman and migrating existing systems from previo=
us yocto versions without 64-bit support to a current version with 64-bit s=
upport.</div>

--6JwkdXgYr410LQk0pUKO--

