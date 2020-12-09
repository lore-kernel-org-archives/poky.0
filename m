Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.3769.1607551581532094610
 for <poky@lists.yoctoproject.org>;
 Wed, 09 Dec 2020 14:06:22 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@zougloub.eu header.s=zougloub.eu header.b=aPe+90jm;
 spf=fail (domain: zougloub.eu, ip: 198.145.29.25, mailfrom: cj-poky@zougloub.eu)
Received: from zougloub.eu (zougloub.eu [69.70.16.42])
	by mail.yoctoproject.org (Postfix) with ESMTP id CB8C638C0701
	for <poky@yoctoproject.org>; Wed,  9 Dec 2020 22:06:20 +0000 (UTC)
Received: from pouet.cJ (exmakhina.com [69.70.16.43])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by zougloub.eu (Postfix) with ESMTPSA id 1416B14377B0;
	Wed,  9 Dec 2020 17:06:20 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=zougloub.eu;
	s=zougloub.eu; t=1607551580;
	bh=ugYfW+Mh/MA7M20MdCI9pXUGZh0wHPk5phiU+nrOIV4=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=aPe+90jmEebhwfA5QI84Z/k6iW3WV1bE6OzLxKW07CyHYqwDJxJ95GFcXj4nfdpqs
	 crAvEUV06pHzLKp35TRD3GLVU+8UKCaK4h3BqkcOJQI4nLlAEFt0rEkXW68iaCUC7B
	 /D9FmNuG/pOR1LaVXX4IE9JT8vErlvLxSyureN9c=
Date: Wed, 9 Dec 2020 17:06:17 -0500
From: "J?r?me Carretero" <cJ-poky@zougloub.eu>
To: "R Srinivasan" <s@srin.me>
Cc: poky@yoctoproject.org
Subject: Re: [poky] practices question
Message-ID: <20201209170617.0005086c@pouet.cJ>
In-Reply-To: <CAGNn0hbf=v9VVj2uVECAF9_UU8d_MUOW6UodpUsXzY54vDMkwA@mail.gmail.com>
References: <CAGNn0hbf=v9VVj2uVECAF9_UU8d_MUOW6UodpUsXzY54vDMkwA@mail.gmail.com>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, 9 Dec 2020 16:34:22 -0500
"R Srinivasan" <s@srin.me> wrote:

> Curious if yocto users have their own replicated repo say poky.git or
> meta-openembedded
>=20
> it would seem to me that we should always be able to retrieve the right
> version from the yoctoproject repositories.
>=20
> thanks, srini

Hi srini,


Most of the time I'm directly using the upstream poky and layer
repositories as submodules within a master repo with build template
folders, custom layers, scripts and documentation.

Rationale for not replicating: there would be many more SRC_URI to
mirror, and it would take resources that my clients don't have to
handle them all. They don't care about offline build-ability and are
cloning their code from the cloud with AUTOREV kept on forever. Of
course something better than SHA1 submodule commit IDs would help
security.


Regards,

--=20
J=C3=A9r=C3=B4me
