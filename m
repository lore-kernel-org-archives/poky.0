Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-iw0-f176.google.com (mail-iw0-f176.google.com
	[209.85.214.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id E6E454C80039
	for <poky@yoctoproject.org>; Thu, 20 Jan 2011 12:41:10 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iwn2 with SMTP id 2so941870iwn.35
	for <poky@yoctoproject.org>; Thu, 20 Jan 2011 10:41:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=hhb5bqKnofV7h8pMLdZlijQhQsLzOhXmc4xk23WYy4E=;
	b=nSm3QPvsNc/G0RJfTye5a9A3EoRN2Nz5f0PADaQMbGGTKIP+aagjJmRdewzyNxT6uS
	Nk101ULHGVhaUSpeIc/2FdUE8AWqJ0ebex6gLbmyM/qIbBctGX5NZ5clm9ELX4YQzzna
	hu3KrvpK2DHBTpW3bfIC2sX3//euXefJVWyiQ=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=s+v0tSh35YMI7doSQzfcLpNVnFYWQHgiVH1s4ejxzQjeBEw+SqDHaReNE83kOaxwy1
	zKnNWV5aTedjMupb+cUKA1jPTJygun0SV/OEBzolykb2mL5XRClDgLmFW42aLERK6X/M
	YuyHtLoxA18WyAoiHZuR57sSNa2dTFMVNwUVw=
MIME-Version: 1.0
Received: by 10.231.35.131 with SMTP id p3mr2937238ibd.87.1295548868598; Thu,
	20 Jan 2011 10:41:08 -0800 (PST)
Received: by 10.231.156.136 with HTTP; Thu, 20 Jan 2011 10:41:08 -0800 (PST)
In-Reply-To: <1295548701.12074.247.camel@elmorro>
References: <1295546428.12074.243.camel@elmorro>
	<4D387ECF.5040509@linux.intel.com>
	<1295548701.12074.247.camel@elmorro>
Date: Thu, 20 Jan 2011 13:41:08 -0500
Message-ID: <AANLkTin02i+6CJC05g-L9UYG6bdWnLvRBnBHu+UJYCFH@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Tom Zanussi <tom.zanussi@intel.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH][2.6.34 KERNEL] wrs_meta: turn on OHCI USB config option
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
X-List-Received-Date: Thu, 20 Jan 2011 18:41:11 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 20, 2011 at 1:38 PM, Tom Zanussi <tom.zanussi@intel.com> wrote:
> On Thu, 2011-01-20 at 10:28 -0800, Darren Hart wrote:
>> On 01/20/2011 10:00 AM, Tom Zanussi wrote:
>> > Allow crownbay to recognize low-speed devices such as mouse and
>> > keyboard.
>> >
>> > Pull URL: git://git.pokylinux.org/linux-2.6-windriver-contrib.git
>> > =A0 =A0Branch: tzanussi/crownbay-usb-fix
>> > =A0 =A0Browse:
>> > http://git.pokylinux.org/cgit.cgi/linux-2.6-windriver-contrib/log/?h=
=3Dtzanussi/crownbay-usb-fix
>> >
>> > Please pull...
>> >
>> > Thanks,
>> > =A0 =A0 =A0Tom Zanussi<tom.zanussi@intel.com>
>> >
>> > Signed-off-by: Tom Zanussi<tom.zanussi@intel.com>
>> > ---
>> > =A0 wrs/cfg/kernel-cache/bsp/crownbay/crownbay.cfg | =A0 =A01 +
>> > =A0 1 files changed, 1 insertions(+), 0 deletions(-)
>> >
>> > diff --git a/wrs/cfg/kernel-cache/bsp/crownbay/crownbay.cfg b/wrs/cfg/=
kernel-cache/bsp/crownbay/crownbay.cfg
>> > index a516dc9..864e1dc 100644
>> > --- a/wrs/cfg/kernel-cache/bsp/crownbay/crownbay.cfg
>> > +++ b/wrs/cfg/kernel-cache/bsp/crownbay/crownbay.cfg
>> > @@ -21,6 +21,7 @@ CONFIG_USB_EHCI_HCD=3Dy
>> > =A0 CONFIG_PCIEPORTBUS=3Dy
>> > =A0 CONFIG_NET=3Dy
>> > =A0 CONFIG_USB_UHCI_HCD=3Dy
>> > +CONFIG_USB_OHCI_HCD=3Dy
>> > =A0 CONFIG_BLK_DEV_SD=3Dy
>> > =A0 CONFIG_CHR_DEV_SG=3Dy
>> > =A0 CONFIG_SOUND=3Dy
>>
>> This seems like the sort of thing we should push to standard. Or do BSPs
>> like the crownbay start from an empty config?
>>
>
> Yeah, I remember awhile back discussing that we wanted to factor the
> things in the base configs out into e.g. standard, which of course would
> still be a good thing to do.

Agreed.

>
> But for now, I went with the existing flow and put it alongside other
> similar options in that BSP...

Also fine for now, but having a "usb" config that we could just
include and push out to all BSPs, makes adding a sane set of
options much easier.

As to pushing it down. Can anyone think of side effects of this
on boards that don't have the hardware ? i.e. slower boot, devices
detected in the slower format, or anything like that ? If there
aren't any side effects, and we agree that increasing the base
config (which should be as small/lean as possible) size a bit is fine,
then we can absolutely push it down and at the flick of a switch
enable all supported BSPs with the functionality.

Cheers,

Bruce

>
> Tom
>
>
>



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

