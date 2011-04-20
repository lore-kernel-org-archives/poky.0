Return-Path: <koen@dominion.thruhere.net>
Received: from mail-wy0-f176.google.com (mail-wy0-f176.google.com
	[74.125.82.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 07EA94C804CA
	for <poky@yoctoproject.org>; Wed, 20 Apr 2011 06:56:01 -0500 (CDT)
Received: by wyb40 with SMTP id 40so808683wyb.35
	for <poky@yoctoproject.org>; Wed, 20 Apr 2011 04:56:01 -0700 (PDT)
Received: by 10.216.80.207 with SMTP id k57mr732788wee.12.1303300560958;
	Wed, 20 Apr 2011 04:56:00 -0700 (PDT)
Received: from [172.20.0.255] (ip545070eb.adsl-surfen.hetnet.nl
	[84.80.112.235])
	by mx.google.com with ESMTPS id f30sm420485wef.7.2011.04.20.04.56.00
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 20 Apr 2011 04:56:00 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1084)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <4DAEC62E.2060109@mlbassoc.com>
Date: Wed, 20 Apr 2011 13:55:59 +0200
Message-Id: <133BF76C-63AD-4CA6-B726-9B1C3487805F@dominion.thruhere.net>
References: <cover.1303296533.git.paul.eggleton@linux.intel.com>	<3f93d8eda4dc873d1c732ccc297782779f7116f6.1303296533.git.paul.eggleton@linux.intel.com>
	<55494E8C-B846-41B8-B7D1-91779015006C@dominion.thruhere.net>
	<4DAEC62E.2060109@mlbassoc.com>
To: poky <poky@yoctoproject.org>
X-Mailer: Apple Mail (2.1084)
Subject: Re: [PATCH 1/1] netbase: automatically bring up usb0 on	BeagleBoard xM
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
X-List-Received-Date: Wed, 20 Apr 2011 11:56:02 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Op 20 apr 2011, om 13:40 heeft Gary Thomas het volgende geschreven:

> On 04/20/2011 05:31 AM, Koen Kooi wrote:
>>=20
>> Op 20 apr 2011, om 12:52 heeft Paul Eggleton het volgende geschreven:
>>=20
>>> From: Paul Eggleton<paul.eggleton@linux.intel.com>
>>>=20
>>> Avoids manual configuration of the BeagleBoard xM's ethernet port
>>> (which shows up as usb0).
>>>=20
>>> Fixes [YOCTO #930]
>>>=20
>>> Signed-off-by: Paul Eggleton<paul.eggleton@linux.intel.com>
>>> ---
>>> .../netbase/netbase-4.45/beagleboard/interfaces    |   27 =
++++++++++++++++++++
>>> .../recipes-core/netbase/netbase_4.45.bbappend     |    3 ++
>>> 2 files changed, 30 insertions(+), 0 deletions(-)
>>> create mode 100644 =
meta-yocto/recipes-core/netbase/netbase-4.45/beagleboard/interfaces
>>> create mode 100644 =
meta-yocto/recipes-core/netbase/netbase_4.45.bbappend
>>=20
>> You mean meta-texasinstruments, right? Or do you yocto people really =
want to take over beagleboard?
>=20
> These are in the Poky tree, not the oe-core+

I don't understand what you are saying. Are you saying poky is not based =
on oe-core?


