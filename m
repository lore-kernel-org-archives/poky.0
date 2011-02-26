Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-iw0-f176.google.com (mail-iw0-f176.google.com
	[209.85.214.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id DD07D4C800A7;
	Sat, 26 Feb 2011 11:31:53 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iwr19 with SMTP id 19so2557991iwr.35
	for <multiple recipients>; Sat, 26 Feb 2011 09:31:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=FKD+qznG4Xp51FLu1CAicr/xZy1dG234VZQjm/v42Qw=;
	b=oInDIQTs3hL6ydTH4RhTRLZy7TY1/oD8HXdFyNaJm6Bz8yCBvx4UubUdz+eAaTQZiI
	iyxlfOGsFLmu7DV1n+yTPibMPU/3hwLsZ1D5ot4WoZoFefJsVvhApaugKN58SBW91j7t
	fcQ78/GOoUkSATt0NuvOud0Ox5sqJlL31xCks=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=i7LOBY0n7SKweKDSeFHTep8I9HYkY69w7crLwvskZh0idEhWAULvcukWJOW13M88LC
	SdEdvvpd7XkpukIMqHsJ1gU3XUBouIR21MoxcbOmB1DZx0BIfDNqGbfZIs0A6LV3PZjd
	+FPHqkiqwm//3Pm8ONlfBO8mLQFp7Fhv0uPMQ=
MIME-Version: 1.0
Received: by 10.43.60.69 with SMTP id wr5mr2439821icb.306.1298741512369; Sat,
	26 Feb 2011 09:31:52 -0800 (PST)
Received: by 10.231.160.79 with HTTP; Sat, 26 Feb 2011 09:31:52 -0800 (PST)
In-Reply-To: <4D68B227.4090000@linux.intel.com>
References: <cover.1298690997.git.bruce.ashfield@windriver.com>
	<4D68B227.4090000@linux.intel.com>
Date: Sat, 26 Feb 2011 12:31:52 -0500
Message-ID: <AANLkTimiGKRedrXLJ4DNbMHXUO+t5EyJeTV4MZbyANNB@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Saul Wold <sgw@linux.intel.com>
Cc: yocto@yoctoproject.org, poky@yoctoproject.org
Subject: Re: [yocto] [PATCH 0/1] linux-yocto: add crowbay BSP
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
X-List-Received-Date: Sat, 26 Feb 2011 17:31:54 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Sat, Feb 26, 2011 at 2:56 AM, Saul Wold <sgw@linux.intel.com> wrote:
> On 02/25/2011 07:32 PM, Bruce Ashfield wrote:
>>
>> Richard/Saul,
>>
>> This adds the crownbay BSP infrastructure to the 2.6.37 kernel.
>> The BSP branch has already been pushed and this adds the config
>> data.
>>
>> TomZ will use this for a baseline and for further testing, so
>> for now the change is harmless to any existing functionality.
>>
> Does this go against the meta-intel or core yocto meta-data?

core yocto, since this part points to the meta data for the BSP
configuration that is part of the shared kernel repo. There is a
BSP specific part that goes in meta-intel that TomZ will update
once he's done more testing.

>
> It missed RC1 for core yocto.

We tried :(

Bruce

>
> Sau!
>
>> Pull URL: git://git.pokylinux.org/poky-contrib.git
>> =A0 Branch: zedd/kernel
>> =A0 Browse:
>> http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=3Dzedd/kernel
>>
>> Thanks,
>> =A0 =A0 Bruce Ashfield<bruce.ashfield@windriver.com>
>> ---
>>
>>
>> Bruce Ashfield (1):
>> =A0 linux-yocto: add crownbay BSP infrastructure
>>
>> =A0.../conf/distro/include/poky-default-revisions.inc | =A0 =A02 +-
>> =A01 files changed, 1 insertions(+), 1 deletions(-)
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

