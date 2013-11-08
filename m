Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-la0-f41.google.com (mail-la0-f41.google.com
	[209.85.215.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 716DFE01846
	for <poky@yoctoproject.org>; Fri,  8 Nov 2013 06:57:52 -0800 (PST)
Received: by mail-la0-f41.google.com with SMTP id ea20so1817452lab.14
	for <poky@yoctoproject.org>; Fri, 08 Nov 2013 06:57:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=XNkJBg3p7SKNXURGERTKDxzaY+ksdCnWAHbjCz8ozYI=;
	b=aOjc6dZvdvKa3MnUD1Xzi6zSBiyC0gbDrLbUT3rKFbL8k4qqSItesA6QyLYO4eUJTl
	gQoHoO1kGKuTQrgu2yw/OYab/WsdRDOCplBHeuqXoM8jzQk/eslfCD7uMzaK7/mQ7GPz
	t57R1ro5CcimVAhoqWnvwBNYtUPIJgP5KgB9t5GNsWHRgGJhjdeRWe5yQDuppOzYMTt7
	4etxA0jPeYjamGQl/1mhMFN+4TzMeqUAvacy5K35MkhSrOz4WYytFlBLntEPdw1tP7VM
	1cAYpA7ACXwo+bhD0EeE1PB/6q+8zmpFdQ5X48/Tfwk0Q6n8QAqdjuyNzdImZ38qs1+J
	cvvw==
MIME-Version: 1.0
X-Received: by 10.152.243.11 with SMTP id wu11mr1156885lac.42.1383922671322;
	Fri, 08 Nov 2013 06:57:51 -0800 (PST)
Received: by 10.112.14.200 with HTTP; Fri, 8 Nov 2013 06:57:51 -0800 (PST)
In-Reply-To: <CAN-Ho=GD76zwcKWj5kWsBx-Qs=0V0Z1mWBtT1vbsO_goP9HFQw@mail.gmail.com>
References: <1383861844-26405-1-git-send-email-eric.keller.ek1@roche.com>
	<1383861844-26405-2-git-send-email-eric.keller.ek1@roche.com>
	<CADkTA4P8HA9oOmWCVOHVvcG=wKaZwbqS9pe6reFy-Ep6ktDy2g@mail.gmail.com>
	<CAN-Ho=GD76zwcKWj5kWsBx-Qs=0V0Z1mWBtT1vbsO_goP9HFQw@mail.gmail.com>
Date: Fri, 8 Nov 2013 09:57:51 -0500
Message-ID: <CADkTA4NoTormTsYh3K3AzNn9bxCJfHUJXZjadnJt6=kMq_i9YA@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: "Keller, Eric" <eric.keller.ek1@roche.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH] meta-yocto-bsp/recipes-kernel/linux/: add genericx86(-64) support for linux-yocto-rt_3.10
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 08 Nov 2013 14:57:53 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Fri, Nov 8, 2013 at 1:58 AM, Keller, Eric <eric.keller.ek1@roche.com> wrote:
> On Fri, Nov 8, 2013 at 5:44 AM, Bruce Ashfield <bruce.ashfield@gmail.com> wrote:
>> On Thu, Nov 7, 2013 at 5:04 PM, Eric Keller <keller.eric@gmail.com> wrote:
>>
>> There's no sense carrying along the commented out board support. I didn't get
>> around to testing all the reference boards with -rt in the 1.5 release
>> cycle, but
>> will in 1.6.
>>
>> At that point, we can add the lines back in. But for now, it is
>> cleaner to just remove
>> anything that hasn't been tested.
>>
>
> Hi Bruce,
>
> I ll remove the commented board support this afternoon.

Great. And thanks for taking care of this!

Bruce

>
> Best regads
>
> --
> Eric Keller



-- 
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

