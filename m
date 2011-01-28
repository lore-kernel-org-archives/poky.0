Return-Path: <koen@dominion.thruhere.net>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by mx1.pokylinux.org (Postfix) with ESMTP id 073334C8123C
	for <poky@yoctoproject.org>; Fri, 28 Jan 2011 11:43:36 -0600 (CST)
Received: by wwb31 with SMTP id 31so3730484wwb.11
	for <poky@yoctoproject.org>; Fri, 28 Jan 2011 09:43:36 -0800 (PST)
Received: by 10.227.144.130 with SMTP id z2mr3034451wbu.69.1296236615839;
	Fri, 28 Jan 2011 09:43:35 -0800 (PST)
Received: from [172.20.0.255] (ip545070eb.adsl-surfen.hetnet.nl
	[84.80.112.235])
	by mx.google.com with ESMTPS id c54sm9162927wer.6.2011.01.28.09.43.34
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Fri, 28 Jan 2011 09:43:35 -0800 (PST)
Mime-Version: 1.0 (Apple Message framework v1082)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <201101281721.00110.paul.eggleton@linux.intel.com>
Date: Fri, 28 Jan 2011 18:43:33 +0100
Message-Id: <6405F94B-6BFE-4144-BDF8-EC03131A1A04@dominion.thruhere.net>
References: <cover.1296174472.git.paul.eggleton@linux.intel.com>
	<1296228443.2704.25.camel@scimitar>
	<8B09826E-906B-4744-BF64-C5DCF43F3103@dominion.thruhere.net>
	<201101281721.00110.paul.eggleton@linux.intel.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
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
X-List-Received-Date: Fri, 28 Jan 2011 17:43:38 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Op 28 jan 2011, om 18:20 heeft Paul Eggleton het volgende geschreven:

> On Friday 28 January 2011 15:47:28 Koen Kooi wrote:
>> Op 28 jan 2011, om 16:27 heeft Joshua Lock het volgende geschreven:
>>> On Fri, 2011-01-28 at 00:36 +0000, Paul Eggleton wrote:
>>>> +#Qt Declarative is new in 4.7, try to include it like this.
>>>> +#RRECOMMENDS_${PN} +=3D " \
>>>> +#        libqt-embeddeddeclarative4-dev \
>>>> +#        "
>>>=20
>>> We don't want to include this?
>>=20
>> There was a bug in the OE recipes where the declarative stuff was =
only
>> mentioned in the 4.7.1 recipe, so building meta-toolchain-qte would =
build
>> both 4.6.x and 4.7.1. I think I fixed that a few weeks back, so it =
should
>> be safe to include again.=20
>=20
> Am testing that as we speak, if it works I'll include it in v3 of this=20=

> patchset which I will try to post very soon.
>=20
> BTW Koen I realise that your original reply to my first patchset =
pointed out=20
> the virtues of having MySQL and PostgreSQL support in the Qt recipes;=20=

> unfortunately I've had to cut those out from this patchset as we don't =
have=20
> these DBMSs in Poky at the moment and probably won't for the 1.0 =
timeframe.=20
> However as you will no doubt want these in meta-openembedded it might =
be worth=20
> modifying qt4.inc to make re-enabling these easier in a .bbappend =
(e.g. by=20
> splitting out the SQL plugin configure flags to a separate variable). =
I didn't=20
> have a chance to make such a change for this patchset but you could =
submit a=20
> patch to do so, or I will when I get back from holiday.

I'll have a look at that when after this lands in master, enjoy your =
holiday!=

