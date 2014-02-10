Return-Path: <lpapp@archlinux.us>
Received: from mail-pa0-f51.google.com (mail-pa0-f51.google.com
	[209.85.220.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4FDDBE00575
	for <poky@yoctoproject.org>; Mon, 10 Feb 2014 08:23:01 -0800 (PST)
Received: by mail-pa0-f51.google.com with SMTP id ld10so6411254pab.10
	for <poky@yoctoproject.org>; Mon, 10 Feb 2014 08:23:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:sender:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=/cEIxeZ92txm8Ii1vWiHtHKNqcKwpdYsL/3Mvu7wKG8=;
	b=RR9HqW+WLq6q2KPqcSnW7l2A8ipjb+vRI8Hj2IPFrufqMIf+GCscQ10YGgVz9q0/7o
	8TGMbJfZLMBmVd6J3ydrzV1WboRjGukSjmjHKw22GfccDGvbMsN3QZzxgAw2nlC4KQ9B
	aasJ8+vR24Fib/UIeuPYqK2q5WFaFaKZYMiia+OlrplpDrOcbKV27V0KVQc8XsIo0N5V
	NpzcBWDaAopvWEpEVi6+H8Z4reBH8HwNf0zSwCncAhOqmCYyOTUWw8icp0KDHmg7+MB+
	9o9HMZ11WnOgjAi/mi5O1uHznXUVBBNz/QHUkvj3g3/Hqu8LtoT0sZLLrhcEB4YTNpdk
	HD+w==
X-Gm-Message-State: ALoCoQmzbNXwZWdF3K+/6EX+WBnzc6tRDmZv7ya+QsYb77auQ/F/UMPusFW6stnIxd4dv1iB1Lz8
MIME-Version: 1.0
X-Received: by 10.66.121.164 with SMTP id ll4mr17465931pab.129.1392049370550; 
	Mon, 10 Feb 2014 08:22:50 -0800 (PST)
Sender: lpapp@archlinux.us
Received: by 10.70.21.228 with HTTP; Mon, 10 Feb 2014 08:22:50 -0800 (PST)
In-Reply-To: <20140210161935.GP23583@axis.com>
References: <1392025053-22406-1-git-send-email-olof.johansson@axis.com>
	<20140210094605.GI23583@axis.com> <20140210095533.GB3194@piout.net>
	<20140210145748.GM23583@axis.com>
	<CAOMwXhOKYK=yxvrEE7q7KY3jC5Ec6ZEc2g29s0HuVAvorU0gBg@mail.gmail.com>
	<20140210161935.GP23583@axis.com>
Date: Mon, 10 Feb 2014 16:22:50 +0000
X-Google-Sender-Auth: ooiJmM8SnQIZey8TRKAIevhzUMI
Message-ID: <CAOMwXhNjDXaRZDyzTivkmNLfs5pJtwGVaLH0UZQs7q5t_Re+YA@mail.gmail.com>
From: Laszlo Papp <lpapp@kde.org>
To: Olof Johansson <olof.johansson@axis.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH] poky.conf: Add Debian-7.4 to SANITY_TESTED_DISTROS
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
X-List-Received-Date: Mon, 10 Feb 2014 16:23:02 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Mon, Feb 10, 2014 at 4:19 PM, Olof Johansson <olof.johansson@axis.com> wrote:
> On 14-02-10 16:07 +0100, Laszlo Papp wrote:
>> How is a software distribution supported if untested?
>
> I've made my argument that Debian 7.* is tested. I welcome input
> and opinions as long as we don't get caught in futile discussions
> on semantics.
>
> It all boils down to whether or not we can trust Debian to only
> make reasonably backwards compatible point releases (which I am
> of the opinion that we can). Of course, those that disagree have
> valid points, but the cost of not trusting Debian has been
> described in my previous mail.

I do not see much cost. If you are sure it should work, just ignore the warning.

As a user, I would be unhappy if it turns out that a distribution has
some issues with Yocto, and that distribution version has not even
been tested!

