Return-Path: <stefan.tauner@artech.at>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 684E1CED62A
	for <webhook@archiver.kernel.org>; Tue, 18 Nov 2025 11:53:40 +0000 (UTC)
Subject: Re: [PATCH] screen: Add missing RDEPENDS on ncurses-terminfo-base
To: poky@lists.yoctoproject.org
From: "Stefan Tauner" <stefan.tauner@artech.at>
X-Originating-Location: Vienna, AT (91.112.220.233)
X-Originating-Platform: Linux Firefox 140
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 18 Nov 2025 03:53:35 -0800
References: <20251110095127.194211-1-stefan.tauner@artech.at> <CANNYZj-0Dik+7TmWb1aD33X7G3XS+fATe-fLUHzKQAT6JVAniw@mail.gmail.com>
In-Reply-To: <CANNYZj-0Dik+7TmWb1aD33X7G3XS+fATe-fLUHzKQAT6JVAniw@mail.gmail.com>
Message-ID: <531567.1763466815796909697@lists.yoctoproject.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 18 Nov 2025 11:53:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13796

On Tue, Nov 11, 2025 at 09:51 AM, Alexander Kanavin wrote:
>
> On Mon, 10 Nov 2025 at 10:51, Stefan Tauner via lists.yoctoproject.org
> <stefan.tauner=3Dartech.at@lists.yoctoproject.org> wrote:
> > Since screen is not a niche application extraordinaire I am wondering i=
f I
> am
> > doing something else wrong but AFAICT it's really that simple...
> > I am working with scarthgap ATM but if need be I can forward-port it to=
o.
>=20
> Yes, you need to check if the issue occurs on poky master, show others
> how to observe it, and then submit a patch with all that information
> to openembedded-core list.

I tried reproducing it with bitbake-setup setting=20
poky-master poky-with-sstate distro/poky machine/qemux86-64.
I have used core-image-minimal and just added `IMAGE_INSTALL:append =3D " s=
creen"` on top.=20
This does not show the behavior I am seeing with our scarthgap tree. I have=
 compared the
ncurses recipes and they are almost equal. The screen recipes are also quit=
e similar but the
screen version changed from 4.9.1 to 5.0.1, but the short changelog of the =
in-between
versions do not show any significant change regarding terminfo or termcap.

