Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-wy0-f171.google.com (mail-wy0-f171.google.com
	[74.125.82.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4F9B3E013A3
	for <poky@pokylinux.org>; Mon,  7 Nov 2011 09:58:18 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by wyh11 with SMTP id 11so6082333wyh.2
	for <poky@pokylinux.org>; Mon, 07 Nov 2011 09:58:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=pldhW03liATg2QZC04gNWzWSowiRvEHExi86KWwLsks=;
	b=wO0BD6PxuK0Pv6hqTxvnYdwFyYTExqlA+17EB5JGrwj1w08D8Fh9qdRlKopxRsxa3s
	Xdhjfwdsq97irxTN+48Ax2U2TjVsWc24K+9MM+BF4xWSl0WGpCkr8q0Z1igV+FdG0CO1
	N06lmx+CugMQxpwEZ7P0Z9Yl+qch/aJ8LBym8=
MIME-Version: 1.0
Received: by 10.216.80.18 with SMTP id j18mr8296221wee.18.1320688680464; Mon,
	07 Nov 2011 09:58:00 -0800 (PST)
Received: by 10.216.179.142 with HTTP; Mon, 7 Nov 2011 09:58:00 -0800 (PST)
In-Reply-To: <1320683982.23708.24.camel@ted>
References: <j9172o$j0s$1@dough.gmane.org>
	<CADkTA4N=My0k31D2moYzK6gi70r2B9hL_-Bqw5T320pLqGGZ1g@mail.gmail.com>
	<1320683982.23708.24.camel@ted>
Date: Mon, 7 Nov 2011 12:58:00 -0500
Message-ID: <CADkTA4OJ5qFh50jJCKBDJiLHHhdaDdJ8_W8jpOhpWY4_zdg=0w@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: gmane@reliableembeddedsystems.com, poky@pokylinux.org
Subject: Re: workflow - kernel config
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
X-List-Received-Date: Mon, 07 Nov 2011 17:58:18 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Mon, Nov 7, 2011 at 11:39 AM, Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
> On Fri, 2011-11-04 at 15:15 -0400, Bruce Ashfield wrote:
>> On Fri, Nov 4, 2011 at 1:23 PM, Robert Berger
>> <gmane@reliableembeddedsystems.com> wrote:
>> > Hi,
>> >
>> > I'm playing with poky-edison-6.0 and the default 2.6.37.6 kernel on a
>> > beagle board with core-image-sato-sdk.
>> >
>> > Interestingly enough there is user space support e.g. for oprofile, bu=
t
>> > oprofile is not configured in the kernel.
>> >
>> > The same for lacencytop and powertop,...
>>
>> We have feature descriptions for all of the above as components in the
>> linux-yocto
>> kernel repository, but they do need to be turned on and tested on a per =
board
>> basis.
>>
>> We can trigger kernel options based on userspace packages being enabled =
or
>> disabled, but that still wouldn't be a guarantee that they'd work. The
>> options that
>> are within the tree are a documentation of what has actually been tested=
.
>>
>> The 2.6.37 tree was a transition point,and we've continued standardizing=
 the
>> options and feature set in the later kernels. For yocto 1.2 we'll have a=
 better
>> defined and consistent set of feature blocks. It's a building process
>> and we move
>> forward.
>>
>> As others will point out there are other/deeper beagle board BSPs and la=
yers
>> (i.e. meta-texasinstruments) that likely already have support for these =
options\
>> (but I haven't checked recently), so that's an avenue to explore as well=
.
>>
>> >
>> > So I was wondering what's the preferred workflow to start with the
>> > "yocto-default" kernel config and add kernel configuration options
>> > afterwards.
>> >
>> > What's I've tried so far is:
>> >
>> > bitbake virtual/kernel -c clean
>> > bitbake virtual/kernel -c configure
>> > bitbake virtual/kernel -c menuconfig
>> > bitbake virtual/kernel -c compile
>> > bitbake virtual/kernel -c deploy
>>
>> This is one flow that will work to make changes to the default kernel, a=
nd
>> test them on a board. I use something like:
>>
>> =A0bitbake -f -c configure linux-yocto
>> =A0bitbake -f -c menuconfig
>> =A0bitbake -c linux-yocto
>
> I suspect you mean:
>
> bitbake -f -c configure linux-yocto
> bitbake -f -c menuconfig
> bitbake linux-yocto

Heh. Indeed. Random use of -c does not produce the results that
one is looking for.

Bruce

>
> :)
>
> Cheers,
>
> Richard
>
>
>
>
>



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

