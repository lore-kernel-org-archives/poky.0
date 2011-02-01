Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 70F2E4C8006D;
	Tue,  1 Feb 2011 13:09:47 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iyb26 with SMTP id 26so7011909iyb.35
	for <multiple recipients>; Tue, 01 Feb 2011 11:09:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=aDzbgdaEdsGgR42rEK46vfexxTIi3hWMbG0q/hsCR/o=;
	b=QNr5VbMRJKRmRZWLIyU+MVSL61fyt6XakW4hH86P4B/1Mri6Fr2Htd9c53RSv33gfM
	ro0RBcEnteQx0w23XGS4ODbW4rE8CoKMW6zQDyuWZ0VG3o7w/q5y8JDZcLONSYI8Q059
	MPYgaqUHKyXGzo2d/nbGCbKiPLiMQ4I9b1oAA=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	b=i9OX4UvX4APcfzPigKHwD5FKAxMo76yl4et6WT5hJcHi7LU3kBgxmCG45vIletREbZ
	re1KC4WrAZ8Llv8sfk2tlIVQTzVlKeTT1ZwMqeiBfa23ilrQAj6TaJ+QlGvv7wr2on37
	6oMJVoPvTenmi+PTTtR9AXGoQsuhXUzenQLtI=
MIME-Version: 1.0
Received: by 10.231.36.133 with SMTP id t5mr8711897ibd.12.1296587386914; Tue,
	01 Feb 2011 11:09:46 -0800 (PST)
Received: by 10.231.156.136 with HTTP; Tue, 1 Feb 2011 11:09:46 -0800 (PST)
In-Reply-To: <4D485554.1030209@linux.intel.com>
References: <cover.1296580694.git.bruce.ashfield@windriver.com>
	<368409054248933ffd777fbd600a29670feeaa16.1296580694.git.bruce.ashfield@windriver.com>
	<4D485554.1030209@linux.intel.com>
Date: Tue, 1 Feb 2011 14:09:46 -0500
Message-ID: <AANLkTink7v3PP=N6fXfvMFGzwOJXY-KX10UtfrCkd0Ei@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Darren Hart <dvhart@linux.intel.com>
Cc: yocto@yoctoproject.org, poky@yoctoproject.org, saul.wold@intel.com
Subject: Re: [PATCH 2/2] linux-yocto: export kernel configuration audit to the console
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
X-List-Received-Date: Tue, 01 Feb 2011 19:09:47 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Tue, Feb 1, 2011 at 1:47 PM, Darren Hart <dvhart@linux.intel.com> wrote:
> On 02/01/2011 09:25 AM, Bruce Ashfield wrote:
>>
>> Fixes [BUGID #692]
>>
>> Previously the information dumped by the kernel configuration audit
>> scripts was only placed in log files. This isn't as useful as it
>> could be, since they are rarely checked. This change takes the
>> output from kconf_check and explicitly displays it to the user.
>>
>> Signed-off-by: Bruce Ashfield<bruce.ashfield@windriver.com>
>
>> diff --git a/meta/conf/distro/include/poky-default-revisions.inc
>> b/meta/conf/distro/include/poky-default-revisions.inc
>> index 0c3aa9a..ac0de6a 100644
>> --- a/meta/conf/distro/include/poky-default-revisions.inc
>> +++ b/meta/conf/distro/include/poky-default-revisions.inc
>
>> -SRCREV_meta_pn-linux-yocto ?= "8a49ef6f1a43dabbce34a9ee9a1be08b26fc511c"
>> +SRCREV_meta_pn-linux-yocto ?= "e8b8c1ae44932835f4f79e77180d3ce5e4b1ec99"
>
> Was this an intentional change? It wasn't clear to me above which bits
> necessitated a linux-yocto-2.6.37/meta SRCREV change.

Good catch, and typically that would have been a mistake. That's
me updating the captured scripts to have the updated kconf_check
(among others), so it was intentional, but I did for get to mention it
in the submission email.

Cheers,

Bruce

>
> --
> Darren Hart
> Intel Open Source Technology Center
> Yocto Project - Linux Kernel
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>



-- 
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

