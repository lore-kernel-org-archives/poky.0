Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-yi0-f48.google.com (mail-yi0-f48.google.com
	[209.85.218.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id A6DAE4C8007E
	for <poky@yoctoproject.org>; Fri, 15 Jul 2011 09:08:52 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by yic24 with SMTP id 24so738222yic.35
	for <poky@yoctoproject.org>; Fri, 15 Jul 2011 07:08:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=YSVP6Vp248qL8OFUbAeQKdSx02Zjz4hNiHAAKfmQRy8=;
	b=SjSRhpuNEI8hzwMD7eyOlkjsknPOXjAlL+NAyPj9tMWQ7ibM9vpjADk2GagT1haoIZ
	3NZhiBis59GwybtUw1sp7Bcbqmrzw4V4PbrHzTFcuZNk1q7VSb6ZdaZPlDbZt0pJKeyR
	+nVd8yEIZWBxNNsYTEyOOvvLBukkaOP+HhiW8=
MIME-Version: 1.0
Received: by 10.90.248.10 with SMTP id v10mr3626941agh.54.1310738930184; Fri,
	15 Jul 2011 07:08:50 -0700 (PDT)
Received: by 10.91.164.38 with HTTP; Fri, 15 Jul 2011 07:08:50 -0700 (PDT)
In-Reply-To: <4E204856.1030908@mentor.com>
References: <cover.1310656158.git.paul.eggleton@linux.intel.com>
	<ba97d44dfd74473c3b790c0dedcaf362a4acf844.1310656158.git.paul.eggleton@linux.intel.com>
	<CADkTA4OEs2Bj-fmFRnW=FOENSvTXQPo86E3KbGeocD3QSF745w@mail.gmail.com>
	<201107141717.19891.paul.eggleton@linux.intel.com>
	<4E204856.1030908@mentor.com>
Date: Fri, 15 Jul 2011 10:08:50 -0400
Message-ID: <CADkTA4PVr5Ku0fM+TBeBbNEUvuKJv4SKehCi+AbrdwpVkw2QBg@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Tom Rini <tom_rini@mentor.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/2] linux-yocto: allow configuration of MAC addresses for mpc8315e-rdb
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
X-List-Received-Date: Fri, 15 Jul 2011 14:08:52 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Fri, Jul 15, 2011 at 10:01 AM, Tom Rini <tom_rini@mentor.com> wrote:
> On 07/14/2011 09:17 AM, Paul Eggleton wrote:
>> On Thursday 14 July 2011 16:57:42 Bruce Ashfield wrote:
>>> The change looks fine, in the sense that it'll work, but it's a lot of
>>> hoops to jump through for the mac address. In the past, we've solved th=
is
>>> by allowing the mac address to be specified via the bootline, which we
>>> could then simply drop into the boot environment and have it work more
>>> easily.
>>>
>>> I didn't think of this when we were talking about this issue, but now t=
hat
>>> I see the change ... it's been faulted into the right memory banks.
>>>
>>> I'll dig up these patches, and we can take them for a spin and hopefull=
y we
>>> can drop this part of the series.
>>
>> If we have a better solution that would make things easier for the user =
I'd
>> definitely prefer it over this.
>
> I know we mentioned this on IRC, but why not just ask the user to
> upgrade U-Boot? =A0This isn't a bleeding edge board so that shouldn't be
> difficult...

That's definitely the right solution, and the one that I'm talking about ag=
ain
via the bug/email.  The only reason we are not quite there yet, is due to
an unfortunate board bricking episode. Once we've got jtag and a few minute=
s,
we'll revisit the u-boot update (it should be trivial) and once confirmed s=
imply
go with that.

So that being said, I'm definitely leaning away from any patches like this,=
 just
so we don't have anything to undo once later.

Cheers,

Bruce

>
> --
> Tom Rini
> Mentor Graphics Corporation
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

