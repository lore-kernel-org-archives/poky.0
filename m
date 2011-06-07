Return-Path: <koen@dominion.thruhere.net>
Received: from mail-wy0-f176.google.com (mail-wy0-f176.google.com
	[74.125.82.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5F9ED4C801BF
	for <poky@yoctoproject.org>; Tue,  7 Jun 2011 12:05:08 -0500 (CDT)
Received: by wyb40 with SMTP id 40so6244720wyb.35
	for <poky@yoctoproject.org>; Tue, 07 Jun 2011 10:05:07 -0700 (PDT)
Received: by 10.216.242.205 with SMTP id i55mr4214415wer.66.1307466306942;
	Tue, 07 Jun 2011 10:05:06 -0700 (PDT)
Received: from [172.20.0.96] (ip545070eb.adsl-surfen.hetnet.nl [84.80.112.235])
	by mx.google.com with ESMTPS id e1sm3705990wbh.5.2011.06.07.10.05.04
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 07 Jun 2011 10:05:05 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1084)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <4DEE4C5B.7030804@linux.intel.com>
Date: Tue, 7 Jun 2011 19:05:03 +0200
Message-Id: <6717A320-A70F-4B88-A793-2C8BA94E2661@dominion.thruhere.net>
References: <cover.1307436402.git.dongxiao.xu@intel.com>	<9e80fcf7db2a25b1caa913c61764a9f36c1abcaf.1307436402.git.dongxiao.xu@intel.com>
	<BANLkTikQH8oxMmMWzrrBjPd_PN_200PUsQ@mail.gmail.com>
	<4DEE4C5B.7030804@linux.intel.com>
To: Darren Hart <dvhart@linux.intel.com>
X-Mailer: Apple Mail (2.1084)
Cc: y@pokylinux.org, poky@yoctoproject.org
Subject: Re: [PATCH 1/5] kernel.bbclass: Auto load cdc-acm and cdc-wdm
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
X-List-Received-Date: Tue, 07 Jun 2011 17:05:09 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Op 7 jun 2011, om 18:05 heeft Darren Hart het volgende geschreven:

>=20
>=20
> On 06/07/2011 05:58 AM, Bruce Ashfield wrote:
>> On Tue, Jun 7, 2011 at 4:52 AM,  <y@pokylinux.org> wrote:
>>> From: Dongxiao Xu <dongxiao.xu@intel.com>
>>>=20
>>> Automatically load cdc-acm.ko and cdc-wdm.ko to support 3G module.
>>>=20
>>> Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
>>> ---
>>> meta/classes/kernel.bbclass |    2 ++
>>> 1 files changed, 2 insertions(+), 0 deletions(-)
>>>=20
>>> diff --git a/meta/classes/kernel.bbclass =
b/meta/classes/kernel.bbclass
>>> index 1bb69f5..1b50b38 100644
>>> --- a/meta/classes/kernel.bbclass
>>> +++ b/meta/classes/kernel.bbclass
>>> @@ -264,6 +264,8 @@ module_autoload_rfcomm =3D "rfcomm"
>>> module_autoload_sa1100-rtc =3D "sa1100-rtc"
>>> # sa1100-rtc was renamed in 2.6.23 onwards
>>> module_autoload_rtc-sa1100 =3D "rtc-sa1100"
>>> +module_autoload_cdc-acm =3D "cdc-acm"
>>> +module_autoload_cdc-wdm =3D "cdc-wdm"
>>=20
>> Hi Dongxiao,
>>=20
>> This patch should go to oe-core, since we are talking about
>> meta/classes/kernel.bbclass.
>>=20
>> But seeing this looks like it doesn't belong in kernel.bbclass at all =
(neither
>> do the existing autoloads), but would be better defined in either a =
BSP or
>> distro layer.
>=20
> Agreed.

And more importantly, figure out why those don't get autoloaded when =
plugging in such usb devices.

regards,

Koen=

