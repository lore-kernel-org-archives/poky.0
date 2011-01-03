Return-Path: <koen@dominion.thruhere.net>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by mx1.pokylinux.org (Postfix) with ESMTP id 739904C8086F
	for <poky@yoctoproject.org>; Mon,  3 Jan 2011 13:31:27 -0600 (CST)
Received: by wwb31 with SMTP id 31so16644091wwb.11
	for <poky@yoctoproject.org>; Mon, 03 Jan 2011 11:31:26 -0800 (PST)
Received: by 10.216.50.72 with SMTP id y50mr24390197web.28.1294083086427;
	Mon, 03 Jan 2011 11:31:26 -0800 (PST)
Received: from [172.20.1.5] (ip545070eb.adsl-surfen.hetnet.nl [84.80.112.235])
	by mx.google.com with ESMTPS id
	c54sm5035961wer.30.2011.01.03.11.31.25
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Mon, 03 Jan 2011 11:31:25 -0800 (PST)
Mime-Version: 1.0 (Apple Message framework v1082)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <4D22221F.2070608@linux.intel.com>
Date: Mon, 3 Jan 2011 20:31:24 +0100
Message-Id: <6F9AC167-5323-4797-B00A-AA748A9CD990@dominion.thruhere.net>
References: <cover.1294076797.git.dvhart@linux.intel.com>	
	<208c2ab8458c67e1b5bc1e22f7c277f1c6d7cd01.1294076797.git.dvhart@linux.intel.com>
	<1294081495.17519.20236.camel@rex>
	<4D22221F.2070608@linux.intel.com>
To: poky@yoctoproject.org
X-Mailer: Apple Mail (2.1082)
Subject: Re: [PATCH 4/4] kernelshark: add ftrace gui viewer
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 03 Jan 2011 19:31:28 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Op 3 jan 2011, om 20:23 heeft Darren Hart het volgende geschreven:

> On 01/03/2011 11:04 AM, Richard Purdie wrote:
>> On Tue, 2010-12-28 at 17:10 -0800, Darren Hart wrote:
>>>=20
>>> +DEPENDS =3D "gtk+"
>>> +RDEPENDS =3D "trace-cmd"
>>=20
>> This should be RDEPENDS_${PN} I suspect. We need to be clear about =
which
>> package has the runtime dependency.
>=20
> Hi Richard, thanks for the review.
>=20
> I'm missing something about how these variables are used I guess. I =
had thought that being assigned inside the kernelshark_git.bb recipe =
would have been sufficient to make it clear it applied to kernelshark. =
How does this bleed over into other recipes?

It bleeds over into the -dev, -dbg and any other packages the recipes =
generates.

regards,

Koen=

