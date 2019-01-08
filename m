Return-Path: <cJ-poky@zougloub.eu>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0CB37E00C5F; Tue,  8 Jan 2019 13:50:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FROM_EXCESS_BASE64,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  1.0 FROM_EXCESS_BASE64 From: base64 encoded unnecessarily
X-Greylist: delayed 323 seconds by postgrey-1.32 at yocto-www;
	Tue, 08 Jan 2019 13:50:52 PST
Received: from zougloub.eu (zougloub.eu [69.70.16.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5504AE0048C
	for <poky@yoctoproject.org>; Tue,  8 Jan 2019 13:50:52 -0800 (PST)
Received: from pouet.cJ (exmakhina.com [69.70.16.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by zougloub.eu (Postfix) with ESMTPSA id A269A28A84C;
	Tue,  8 Jan 2019 16:45:28 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=zougloub.eu;
	s=zougloub.eu; t=1546983928;
	bh=xhnWzAiEuJuPRM/S3QGA/5ALnE1naGhzNb+whemFcK4=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=O/rLTwZxU11RAQi3bp22dYf+bB9vAihAgSljrYz7df8zpBFQHtyyYh3FP0RU5bUH/
	plNjmJl0XFSXkhURS8asWBBIEx05ME5FOMMdOLIM1zVTPegZBFb58zBA67JbfVfQFB
	cf34uvPjOGWL1q740y1X7Ldsz/eKdSvGefOPd3hA=
Date: Tue, 8 Jan 2019 16:45:38 -0500
From: =?UTF-8?B?SsOpcsO0bWU=?= Carretero <cJ-poky@zougloub.eu>
To: Jean-Francois Dagenais <jeff.dagenais@gmail.com>
Message-ID: <20190108164538.4015686c@pouet.cJ>
In-Reply-To: <F240E478-55ED-4D37-A21D-B4C33EC9F501@gmail.com>
References: <F240E478-55ED-4D37-A21D-B4C33EC9F501@gmail.com>
X-Mailer: Claws Mail 3.17.0git74 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: systemd privatetmp and symlink to /var/volatile/tmp
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 08 Jan 2019 21:50:54 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Tue, 8 Jan 2019 15:40:58 -0500
Jean-Francois Dagenais <jeff.dagenais@gmail.com> wrote:

> Hi all,
>=20
>=20
> On sumo, I've just ran a "systemd" version of my image and the only red I=
 see is
> for systemd-hostnamed...

Hi Jean-Fran=C3=A7ois,


On my end, I've had issues related to .service security restrictions
which were not appropriate to special cases, eg. NFS root filesystem.
While I did have hostnamed in PACKAGECONFIG I don't remember about the
issue you are mentioning, perhaps because it didn't cause any
noticeable problem, and now can't check now because the systems are
upgraded.


Best regards,

--=20
J=C3=A9r=C3=B4me

PS: Thud upgrade is quite smooth, if you can do it...
PPS: You may have trouble building Sumo after a libc update on your
development machine.

