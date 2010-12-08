Return-Path: <koen@dominion.thruhere.net>
Received: from mail-ew0-f45.google.com (mail-ew0-f45.google.com
	[209.85.215.45])
	by mx1.pokylinux.org (Postfix) with ESMTP id B6E784C81229
	for <poky@pokylinux.org>; Wed,  8 Dec 2010 09:53:56 -0600 (CST)
Received: by ewy10 with SMTP id 10so934585ewy.32
	for <poky@pokylinux.org>; Wed, 08 Dec 2010 07:53:55 -0800 (PST)
Received: by 10.216.90.79 with SMTP id d57mr169495wef.65.1291823622388;
	Wed, 08 Dec 2010 07:53:42 -0800 (PST)
Received: from [172.20.1.5] (ip545070eb.adsl-surfen.hetnet.nl [84.80.112.235])
	by mx.google.com with ESMTPS id o51sm340660wes.39.2010.12.08.07.53.41
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Wed, 08 Dec 2010 07:53:41 -0800 (PST)
Mime-Version: 1.0 (Apple Message framework v1082)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <1291821677.2779.143.camel@constitution.bos.jonmasters.org>
Date: Wed, 8 Dec 2010 16:53:39 +0100
Message-Id: <48260A0C-FEAC-473C-8C27-5B46D6A02666@dominion.thruhere.net>
References: <1291791085.2779.125.camel@constitution.bos.jonmasters.org>
	<1291806770.1554.304.camel@rex>
	<1291821677.2779.143.camel@constitution.bos.jonmasters.org>
To: poky@pokylinux.org
X-Mailer: Apple Mail (2.1082)
Subject: Re: distcc/ccache?
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
X-List-Received-Date: Wed, 08 Dec 2010 15:53:57 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Op 8 dec 2010, om 16:21 heeft Jon Masters het volgende geschreven:

> On Wed, 2010-12-08 at 11:12 +0000, Richard Purdie wrote:
>> On Wed, 2010-12-08 at 01:51 -0500, Jon Masters wrote:
>>> Anyone happen to know if poky plays nicely with distcc?
>>=20
>> I think most success has been with icecc in the past and there is a
>> icecc class which has code to enable that. It turns out that =
compiling
>> isn't the main bottleneck in builds though and icecc isn't something =
we
>> test in Poky at this time, we just provide the same class OE has =
which
>> may or may not work.
>=20
> Thanks. Someone else pointed me to Icecream, too

I'm having a massive reply-to fail here since this list does NOT munge =
reply-to for a change :)=

