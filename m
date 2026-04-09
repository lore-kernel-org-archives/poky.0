Return-Path: <ernstp@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EB2C2F31E39
	for <webhook@archiver.kernel.org>; Thu,  9 Apr 2026 15:34:07 +0000 (UTC)
Subject: Re: [PATCH v2] meta-poky: remove the default template
To: poky@lists.yoctoproject.org
From: "Ernst Persson" <ernstp@gmail.com>
X-Originating-Location: Stockholm, Stockholm County, SE (147.161.188.117)
X-Originating-Platform: Windows Chrome 144
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 09 Apr 2026 07:33:57 -0700
References: <20260303172109.2081848-1-alex@linutronix.de>
In-Reply-To: <20260303172109.2081848-1-alex@linutronix.de>
Message-ID: <275547.1775745237087663847@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="4xGnKG6ZmYEEItU7VIaS"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 09 Apr 2026 15:34:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13887

--4xGnKG6ZmYEEItU7VIaS
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

https://git.yoctoproject.org/yocto-docs/tree/documentation/dev-manual/poky-=
manual-setup.rst?h=3Dmaster-next#n97

This TEMPLATECONF path is now wrong in the docs for manual-setup:

$TEMPLATECONF=3D$PWD/layers/meta-yocto/meta-poky/conf/templates/default sou=
rce ./layers/openembedded-core/oe-init-build-env

--4xGnKG6ZmYEEItU7VIaS
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div><a href=3D"https://git.yoctoproject.org/yocto-docs/tree/documentation/=
dev-manual/poky-manual-setup.rst?h=3Dmaster-next#n97" target=3D"_blank" rel=
=3D"noopener">https://git.yoctoproject.org/yocto-docs/tree/documentation/de=
v-manual/poky-manual-setup.rst?h=3Dmaster-next#n97</a>&nbsp;</div>
<div>&nbsp;</div>
<div>This TEMPLATECONF path is now wrong in the docs for manual-setup:</div=
>
<div>&nbsp;</div>
<div>$TEMPLATECONF=3D$PWD/layers/meta-yocto/meta-poky/conf/templates/defaul=
t source ./layers/openembedded-core/oe-init-build-env</div>

--4xGnKG6ZmYEEItU7VIaS--

