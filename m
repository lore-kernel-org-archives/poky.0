Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-lb0-f176.google.com (mail-lb0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 353E3E017BF
	for <poky@yoctoproject.org>; Tue,  5 Nov 2013 19:25:28 -0800 (PST)
Received: by mail-lb0-f176.google.com with SMTP id z5so7122703lbh.7
	for <poky@yoctoproject.org>; Tue, 05 Nov 2013 19:25:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=hZy3D0KU0hS0VEoHQ7ahSlc6xHY3Kt9g52w47dUg5Y8=;
	b=ILysdkmd5grtL49NEIgOti5D69ktdxcG7CPDMTacDS0klNTpwUuybJeVcuW6bDNEB1
	gtJDh8ygHggB4jpvun4kV+BhPW8V+cNaEXR37ChXgYr8ci4l555UBmluZ/6FoCeNNn2F
	/xZuTw2CD0zDW4mMlwQ3bnOwJXV85SupTOM2Wzj8pUpSEva5cTqV8shisxVz+kabj9XQ
	pOLgnVq9OtklMo4yxZH3TBJEzHM0GGyCWQXQSEo2b6VD4vnwNBiScrYadz0vjDHy5Yj2
	0zFLqTwW59eyHLTgkfryP3mcy04yjsVSLddJjdqVUr892hZYtIi1tz9KL49nEs/w3OY+
	T1NQ==
MIME-Version: 1.0
X-Received: by 10.112.143.3 with SMTP id sa3mr1069997lbb.12.1383708326715;
	Tue, 05 Nov 2013 19:25:26 -0800 (PST)
Received: by 10.112.14.200 with HTTP; Tue, 5 Nov 2013 19:25:26 -0800 (PST)
In-Reply-To: <CAF8s8J-NfHh=vhDk9937cJcxO8aBTFb3ZP+3J5=A2c+PG443QA@mail.gmail.com>
References: <CAF8s8J-NfHh=vhDk9937cJcxO8aBTFb3ZP+3J5=A2c+PG443QA@mail.gmail.com>
Date: Tue, 5 Nov 2013 22:25:26 -0500
Message-ID: <CADkTA4OqyjQqqCsKcfoa14XW4BWQRAmwSQMB8rtypFc4M3mxeA@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Eric Keller <keller.eric@gmail.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [patch] linux-yocto-rt_3.10.bbappend recipe
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
X-List-Received-Date: Wed, 06 Nov 2013 03:25:29 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Tue, Nov 5, 2013 at 6:06 PM, Eric Keller <keller.eric@gmail.com> wrote:
> Hi everyone,
>
> could you consider applying this patch so that we are able to build rt
> kernel for genericx86(-64)?

Send a patch against the main linux-yocto-rt recipe (not via this
attached bbappend
patch), and we can have a look.

But adding the support is something that you can easily carry in your
own layer,
since by adding the support to the main recipe, we are implicitly agreeing that
I'll build and boot test it with each update. And I don't have a large
objection to that,
but I add new supported boards with caution, in particular genericx86, since it
doesn't have a tightly controlled platform or set of drivers.

Cheers,

Bruce

>
> Best regards
> --
> Eric Keller
>
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>



-- 
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

