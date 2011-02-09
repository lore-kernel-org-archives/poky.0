Return-Path: <koen@dominion.thruhere.net>
Received: from mail-ww0-f41.google.com (mail-ww0-f41.google.com [74.125.82.41])
	by mx1.pokylinux.org (Postfix) with ESMTP id F2F894C80053
	for <poky@pokylinux.org>; Wed,  9 Feb 2011 12:15:29 -0600 (CST)
Received: by wwi18 with SMTP id 18so2113042wwi.2
	for <poky@pokylinux.org>; Wed, 09 Feb 2011 10:15:29 -0800 (PST)
Received: by 10.227.133.194 with SMTP id g2mr2919466wbt.154.1297275328962;
	Wed, 09 Feb 2011 10:15:28 -0800 (PST)
Received: from [172.20.0.255] (ip545070eb.adsl-surfen.hetnet.nl
	[84.80.112.235])
	by mx.google.com with ESMTPS id n1sm339808weq.7.2011.02.09.10.15.28
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Wed, 09 Feb 2011 10:15:28 -0800 (PST)
Mime-Version: 1.0 (Apple Message framework v1082)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <4D52D210.6070905@linux.intel.com>
Date: Wed, 9 Feb 2011 19:15:27 +0100
Message-Id: <B4A7B800-CC7B-439C-9F36-7410D3B6D117@dominion.thruhere.net>
References: <1297196798-23779-1-git-send-email-yanok@emcraft.com>
	<1297196798-23779-3-git-send-email-yanok@emcraft.com>
	<4D52D210.6070905@linux.intel.com>
To: Darren Hart <dvhart@linux.intel.com>
X-Mailer: Apple Mail (2.1082)
Cc: poky@pokylinux.org, Ilya Yanok <yanok@emcraft.com>
Subject: Re: [PATCH 3/3] u-boot: compile with -O2 on PowerPC
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
X-List-Received-Date: Wed, 09 Feb 2011 18:15:30 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Op 9 feb 2011, om 18:42 heeft Darren Hart het volgende geschreven:

> On 02/08/2011 12:26 PM, Ilya Yanok wrote:
>> gcc on PowerPC is currently compiled with -Os optimization disabled =
so
>> we have to use -O2 on PowerPC instead.
>>=20
>> Signed-off-by: Ilya Yanok<yanok@emcraft.com>
>> ---
>>  meta/recipes-bsp/uboot/u-boot.inc |    7 ++++++-
>>  1 files changed, 6 insertions(+), 1 deletions(-)
>>=20
>> diff --git a/meta/recipes-bsp/uboot/u-boot.inc =
b/meta/recipes-bsp/uboot/u-boot.inc
>> index 6492016..7694c77 100644
>> --- a/meta/recipes-bsp/uboot/u-boot.inc
>> +++ b/meta/recipes-bsp/uboot/u-boot.inc
>> @@ -22,7 +22,12 @@ do_compile () {
>>  	unset CFLAGS
>>  	unset CPPFLAGS
>>  	oe_runmake ${UBOOT_MACHINE}
>> -	oe_runmake all
>> +	# -Os is disabled on PowerPC
>> +	if [ ${TARGET_ARCH} =3D=3D "powerpc" ] ; then
>> +		oe_runmake OPTFLAGS=3D-O2 all
>> +	else
>> +		oe_runmake all
>> +	fi
>=20
>=20
> This is already disabled in u-boot.inc with the following line:
>=20
> # GCC 4.5.1 builds unusable binaries using -Os, remove it from =
OPTFLAGS
> EXTRA_OEMAKE =3D "CROSS_COMPILE=3D${TARGET_PREFIX} OPTFLAGS=3D''"
>=20
> Resetting OPTFLAGS to '' removes the -Os from the variable in the =
Makefile. This isn't just a PowerPC problem, it also manifested on ARM, =
I believe it is a GCC 4.5.1 issue.

4.5.3 + linaro patches has similar -Os problems on armv7a at least, fwiw=

