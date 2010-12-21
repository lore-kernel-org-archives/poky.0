Return-Path: <raj.khem@gmail.com>
Received: from mail-gy0-f176.google.com (mail-gy0-f176.google.com
	[209.85.160.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 158484C810E8
	for <poky@yoctoproject.org>; Tue, 21 Dec 2010 16:24:59 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by gyf1 with SMTP id 1so2226220gyf.35
	for <poky@yoctoproject.org>; Tue, 21 Dec 2010 14:24:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:received:mime-version:received:in-reply-to
	:references:from:date:message-id:subject:to:cc:content-type;
	bh=SIBDQr2sCjlbeMUd4vjWmrC2lZXeYmQkhQhWwwug6kw=;
	b=xBIhL9GzLtem6vOzyUjEPnQE/GEBt3HHuvTlAyguFELhqz61f8rw8b9k1PgSw4XawW
	M3f0hOWQs0nGLJQXBYiGKInWivrA6xgZAlulq1afIKcxzGuXB3Xmve9ny96b/O8Lavjk
	NY/aSfFldwij6WMlMgQVjwZz2JahgFS0UbHzg=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	b=u/W5/1dVfRhMlKcKFYXXU5rRBm8Fict4VYCdnGAxi5p1EEHb+ycspJyWryOi/nz+Xc
	nmYqy55HZx3rjExapc2S8JHn5xQaMD2l8SoNtKE2ndsY+ma5pqiNS7SMOkrLLQbc0wLZ
	iewcuWHXVvvBoItEjxRzdQDhdNRQAvXIr+gEs=
Received: by 10.90.10.31 with SMTP id 31mr7711845agj.85.1292970298712; Tue, 21
	Dec 2010 14:24:58 -0800 (PST)
MIME-Version: 1.0
Received: by 10.90.86.4 with HTTP; Tue, 21 Dec 2010 14:24:38 -0800 (PST)
In-Reply-To: <4D111BA0.4070909@linux.intel.com>
References: <cover.1292920700.git.raj.khem@gmail.com>
	<4D111BA0.4070909@linux.intel.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 21 Dec 2010 14:24:38 -0800
Message-ID: <AANLkTikRWi_s_X9o0ZFpqB=B07UqipZP6kA3CD8wEB=Z@mail.gmail.com>
To: Darren Hart <dvhart@linux.intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/3] gcc 4.5.4 + linaro update
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
X-List-Received-Date: Tue, 21 Dec 2010 22:24:59 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Dec 21, 2010 at 1:26 PM, Darren Hart <dvhart@linux.intel.com> wrote:
> On 12/21/2010 01:27 AM, Khem Raj wrote:
>>
>> Hello,
>>
>> This branch brings in gcc 4.5.2 and on top linaro's enhancements to gcc
>> 4.5
>> I have made sure that it builds poky-image-minimal for arm, ppc, x86, mips
>> qemu and boots on all of them. It did not boot on ppc however poky-qemu
>> did not boot any images for me even the ones built without these
>> enhancements
>> i.e. on vanilla yocto. So I used a qemu 0.12.5 built with OE
>> which worked well. I need help in testing it out. So please test these
>> patches rigourously
>> with standard testing setup you use before you pull them
>>
>> If there are issues found let me know
>
> Hi Khem,
>
> So with this in place, we should be able to remove all the toolchain work
> from the meta-linaro layer - is that correct?

w.r.t gcc yes but if you are using other stuff like optimizes string
functions or kernel enhancements from linaro
they still stand

>
> --
> Darren Hart
> Yocto Linux Kernel
>

