Return-Path: <eu@felipetonello.com>
Received: from mail-oa0-f54.google.com (mail-oa0-f54.google.com
	[209.85.219.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6D297E00720
	for <poky@yoctoproject.org>; Thu, 10 Jan 2013 17:17:08 -0800 (PST)
Received: by mail-oa0-f54.google.com with SMTP id n9so1278773oag.41
	for <poky@yoctoproject.org>; Thu, 10 Jan 2013 17:17:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:message-id:date:from:user-agent:mime-version:to:cc
	:subject:references:in-reply-to:content-type
	:content-transfer-encoding:x-gm-message-state;
	bh=2aSRPfu3o1TCtSJ/UsNTqFfxNnmYmjko5N3+g/8d5AY=;
	b=U6AZjJb7z3XO/O4FTJBlamPPW8t9UgJVYnDkX2zgbJsXOHdSIm7q5B1h8znDbgzavI
	/6Fpd0O+PBZsuRWySTX3jsDPMZ1GDtyQSenx69wLbr5XO1hPa8Vu+RXp0rDc+esBgkUl
	wT+rqXMmiKwUtsIHxXfnav32VVd6cUbP5M4TJnqdFCk4ias9Q49iCKd3Dr2nhK/A92lm
	aICSsqyFanes/9On6cOiZJk245V6ppdE+/2BfPj5bTbIk2xTmrKilmvitNfB3i6bc83m
	dj78s/eroeqkjmkxk2muQ8/B3DU6Dch46lm6DPwDhzIkkhGqD8KOELXODYJa93YcmIMu
	jYYg==
X-Received: by 10.60.3.40 with SMTP id 8mr42636611oez.41.1357867027917;
	Thu, 10 Jan 2013 17:17:07 -0800 (PST)
Received: from [192.168.48.44] (wsip-70-183-20-162.oc.oc.cox.net.
	[70.183.20.162])
	by mx.google.com with ESMTPS id a9sm2514445oee.10.2013.01.10.17.17.06
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 10 Jan 2013 17:17:07 -0800 (PST)
Message-ID: <50EF6844.1070008@felipetonello.com>
Date: Thu, 10 Jan 2013 17:17:56 -0800
From: Felipe Ferreri Tonello <eu@felipetonello.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <1357691823-8155-1-git-send-email-eu@felipetonello.com>
	<969F26A8BAB325438E7EB80D3C3134FB161DBDFD@IRSMSX102.ger.corp.intel.com>
	<1357736629.13022.55.camel@ted> <50EF1521.60200@felipetonello.com>
	<1357862268.4072.1.camel@ted>
In-Reply-To: <1357862268.4072.1.camel@ted>
X-Gm-Message-State: ALoCoQkQVPAEFRegItXpMIK03SQGhCL4exLcvnc9oHr8BvGglqeZ1IFYfcZo2UsGC2+QIXrB2CW2
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH] connman: fixed init script, so it can run with nfs
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
X-List-Received-Date: Fri, 11 Jan 2013 01:17:08 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Richard,

On 01/10/2013 03:57 PM, Richard Purdie wrote:
> On Thu, 2013-01-10 at 11:23 -0800, Felipe Ferreri Tonello wrote:
>> Richard and Cristian,
>>
>> On 01/09/2013 05:03 AM, Richard Purdie wrote:
>>> On Wed, 2013-01-09 at 10:12 +0000, Iorga, Cristian wrote:
>>>> Hello Felipe,
>>>>
>>>> I have some questions regarding this patch:
>>>>
>>>> 1. On which hardware/machine have you tested this patch? (real hardware, qemu machine, etc)
>>>> 2. In what way is connman affecting nfs? In other words, what is the root cause?
>>>> 3. Which version of connman are you using?
>>>>
>>>> I am asking these questions because I am working on something somehow related, and I think a more general fix might be needed.
>>>
>>> I'd also add that:
>>>
>>> a) Patches to this part of the tree need to go to the OE-Core mailing list
>>
>> I saw on openembedded tree that connman recipes are old. They are not
>> the same as in poky.
>>
>> I'm always confused about this. Where is oe-core that poky and oe share?
>
> These two repositories should be in sync in terms of file level content
> of the meta directory:
>
> http://cgit.openembedded.org/openembedded-core/log/
>
> http://git.yoctoproject.org/cgit/cgit.cgi/poky/log/
>
> Were you looking at openembedded or openembedded-core?

I was looking into openembedded, now I got it.

btw, What's the difference between them? openembedded tree is the 
meta-oe? and openembedded-core ie oe-core?

Thanks,

Felipe


