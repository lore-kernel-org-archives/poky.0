Return-Path: <raj.khem@gmail.com>
Received: from mail-qw0-f48.google.com (mail-qw0-f48.google.com
	[209.85.216.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AB9A4E004E9
	for <poky@yoctoproject.org>; Wed, 12 Oct 2011 12:51:01 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by qadb14 with SMTP id b14so1310680qad.35
	for <poky@yoctoproject.org>; Wed, 12 Oct 2011 12:51:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=0wKHpw7f10zwQ3vdGBZp61+0neNS1IuZ095wdOlWS2o=;
	b=DMhSssyPeA7FjWqWrLvRTw13+KbmxSMAT4RMy99fOvB5wEqwj3AP1ITAkjFhtIZM8m
	GcIQXSVIpza+8kjZTmLcktin+a8cYsBmeuf2oqEBBBfB+Lwzh+kOJtnrGmxJ31oHHsZs
	Dv2jTL1uDBxvMUlhaQWbXM9WKqbEg7EZfZccY=
Received: by 10.68.44.134 with SMTP id e6mr3381810pbm.5.1318449060041; Wed, 12
	Oct 2011 12:51:00 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.68.58.168 with HTTP; Wed, 12 Oct 2011 12:50:30 -0700 (PDT)
In-Reply-To: <1316176509.20858.4.camel@ted>
References: <4E729619.9@freyther.de> <1316176509.20858.4.camel@ted>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 12 Oct 2011 12:50:30 -0700
Message-ID: <CAMKF1soZtRXXxYS5CZpAx84VkZZ=KNxrX+Ar5CCs1S3dCYn_kA@mail.gmail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: poky@yoctoproject.org
Subject: Re: udev and pci devices
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
X-List-Received-Date: Wed, 12 Oct 2011 19:51:02 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Fri, Sep 16, 2011 at 5:35 AM, Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
> On Fri, 2011-09-16 at 02:19 +0200, Holger Hans Peter Freyther wrote:
>> Hi all,
>>
>> we stumbled across an issue of udev and busybox/modprobe. udev detects a=
 PCI
>> device and according to udevadm test it is selecting:
>>
>> udev_rules_apply_to_event: RUN '/sbin/modprobe -bv $env{MODALIAS}'
>> /lib/udev/rules.d/80-drivers.rules:5
>> udev_rules_apply_to_event: RUN '/sbin/modprobe $env{MODALIAS}'
>> /etc/udev/rules.d/local.rules:31
>>
>>
>> but as the busybox modprobe does not support the 'b' option it just fail=
s
>> before executing the other rules. There are some possible fixes to it.
>>
>> 1.)
>> =C2=A0 - remove the local.rules rule for loading the module
>> =C2=A0 - build busybox with CONFIG_FEATURE_MODPROBE_BLACKLIST for -b sup=
port
>
> This sounds like the correct thing to do I think since the
> 80-driver.rules file is coming from upstream, the local.rules piece is
> our extras piece.

Seems fine to me however
How much size does CONFIG_FEATURE_MODPROBE_BLACKLIST add to busybox
Is there some existing knob that could be used to enable/disable this featu=
re
>
> Cheers,
>
> Richard
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>

