Return-Path: <koen@dominion.thruhere.net>
Received: from mail-we0-f176.google.com (mail-we0-f176.google.com
	[74.125.82.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1D086E0030C
	for <poky@yoctoproject.org>; Sun, 15 Jan 2012 00:43:38 -0800 (PST)
Received: by werm12 with SMTP id m12so310492wer.35
	for <poky@yoctoproject.org>; Sun, 15 Jan 2012 00:43:37 -0800 (PST)
Received: by 10.216.131.106 with SMTP id l84mr3076003wei.29.1326617017551;
	Sun, 15 Jan 2012 00:43:37 -0800 (PST)
Received: from [172.20.1.36] (ip545070eb.adsl-surfen.hetnet.nl.
	[84.80.112.235])
	by mx.google.com with ESMTPS id t15sm4712764wiv.6.2012.01.15.00.43.36
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sun, 15 Jan 2012 00:43:36 -0800 (PST)
Mime-Version: 1.0 (Apple Message framework v1251.1)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <1326205750.18105.37.camel@lenny>
Date: Sun, 15 Jan 2012 09:43:32 +0100
Message-Id: <11F67278-7755-454A-BDE6-E9572134B61D@dominion.thruhere.net>
References: <1326144238.18105.22.camel@lenny>
	<4F0B6250.8030105@linux.intel.com>
	<1326205750.18105.37.camel@lenny>
To: Colin Walters <walters@verbum.org>
X-Mailer: Apple Mail (2.1251.1)
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: [PATCH] util-linux: .pc files should go in the -dev packages for subpackages
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
X-List-Received-Date: Sun, 15 Jan 2012 08:43:39 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Op 10 jan. 2012, om 15:29 heeft Colin Walters het volgende geschreven:

> On Mon, 2012-01-09 at 13:55 -0800, Saul Wold wrote:
>> On 01/09/2012 01:23 PM, Colin Walters wrote:
>>>     The .pc files were ending up in util-linux-dev, not the correct
>>>     subpackage like libuuid1-dev.
>>>=20
>> Colin,
>>=20
>> We appreciate these patches against oe-core, can you please send them =
to=20
>> openembedded-core@lists.openembedded.org, as these are patches to =
OE-Core.
>=20
> Sorry, I'm on the list now.
>=20
>> Also, I am not sure what format and mailer you are sending, but each=20=

>> patch I have received does not apply cleanly,
>=20
> It's very likely because I'm building my OS against the Edison =
release,
> so my patches so far are against that.  Sorry for not specifying that
> explicitly.
>=20
> (I'd like to rebase of course, but that's a bit farther back on the =
task
> queue, behind getting NetworkManager working e.g.)

FWIW, the networkmanager and nm-applet recipes in meta-oe seem to be =
working just fine.=

