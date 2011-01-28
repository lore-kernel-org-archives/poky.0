Return-Path: <koen@dominion.thruhere.net>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by mx1.pokylinux.org (Postfix) with ESMTP id 104D34C812AC
	for <poky@yoctoproject.org>; Fri, 28 Jan 2011 09:48:16 -0600 (CST)
Received: by wwb31 with SMTP id 31so3599835wwb.11
	for <poky@yoctoproject.org>; Fri, 28 Jan 2011 07:48:15 -0800 (PST)
Received: by 10.227.69.144 with SMTP id z16mr2864270wbi.77.1296229695484;
	Fri, 28 Jan 2011 07:48:15 -0800 (PST)
Received: from [172.20.0.255] (ip545070eb.adsl-surfen.hetnet.nl
	[84.80.112.235])
	by mx.google.com with ESMTPS id w25sm1737277wbd.17.2011.01.28.07.48.14
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Fri, 28 Jan 2011 07:48:14 -0800 (PST)
Mime-Version: 1.0 (Apple Message framework v1082)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <1296228443.2704.25.camel@scimitar>
Date: Fri, 28 Jan 2011 16:47:28 +0100
Message-Id: <8B09826E-906B-4744-BF64-C5DCF43F3103@dominion.thruhere.net>
References: <cover.1296174472.git.paul.eggleton@linux.intel.com>
	<74141e6fb3aece291357c79a4d855353b12874b4.1296174472.git.paul.eggleton@linux.intel.com>
	<1296228443.2704.25.camel@scimitar>
To: Joshua Lock <josh@openedhand.com>
X-Mailer: Apple Mail (2.1082)
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 11/11] qt4: Add meta-toolchain-qte and dependent tasks from OpenEmbedded
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
X-List-Received-Date: Fri, 28 Jan 2011 15:48:17 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Op 28 jan 2011, om 16:27 heeft Joshua Lock het volgende geschreven:

> On Fri, 2011-01-28 at 00:36 +0000, Paul Eggleton wrote:
>>=20
>> +#Qt Declarative is new in 4.7, try to include it like this.
>> +#RRECOMMENDS_${PN} +=3D " \
>> +#        libqt-embeddeddeclarative4-dev \
>> +#        "
>=20
> We don't want to include this?

There was a bug in the OE recipes where the declarative stuff was only =
mentioned in the 4.7.1 recipe, so building meta-toolchain-qte would =
build both 4.6.x and 4.7.1. I think I fixed that a few weeks back, so it =
should be safe to include again. Maybe the opengl stuff can go in as =
well (if it isn't in already).

regards,

Koen=

