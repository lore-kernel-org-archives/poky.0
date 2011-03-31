Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 86B094C800A3
	for <poky@yoctoproject.org>; Thu, 31 Mar 2011 08:00:55 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iym1 with SMTP id 1so3413445iym.35
	for <poky@yoctoproject.org>; Thu, 31 Mar 2011 06:00:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=dTt886buB7AGSrS865xGeSAQJZorptGW9H8OFk0jBuU=;
	b=JvMX0FrODCQnwFKytAOlBCb7CB6n0ztPmkRnCU1f0aeXbnabfz3XxGlQYlTKVu7Zkd
	N5etsk3l8s549Uyja8Glv5tmqFLkRfk55uFNLjVwpp6IPJOOIqix/NuZXkQcQI9GSBu+
	C4wgshdG+mpccOjeY0glu59AM/9rjcT7ATEac=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	b=ep6Mj3vs/xIlBKEjWblbdGDctRCfAGZ8/I6JVvzwGoBX14g3n3EsSndgpqV1vGtz83
	+YBaEgesobeCEMV0l4H46YzRWQ5RZ++LvM7ElmZYNyrZwmeQGJEd8usLG7s2r1oTCTMH
	1ISgAYDA4UKWMcT8Ah08kV6Z+qTXYda1E3kOI=
MIME-Version: 1.0
Received: by 10.42.149.194 with SMTP id x2mr2953934icv.388.1301576303051; Thu,
	31 Mar 2011 05:58:23 -0700 (PDT)
Received: by 10.231.155.138 with HTTP; Thu, 31 Mar 2011 05:58:22 -0700 (PDT)
In-Reply-To: <AANLkTimri2H+nN4y=Xa2eUsxtENZUqpAX17WqNgnf1Fm@mail.gmail.com>
References: <AANLkTi=K6AGvEvn0JJcFtx4MR9TRwL-VaDnkhaX=t7Lz@mail.gmail.com>
	<AANLkTikeonvaG+5-p8Lr32Z36wRxVoSc_AJgCofKtuXS@mail.gmail.com>
	<AANLkTimri2H+nN4y=Xa2eUsxtENZUqpAX17WqNgnf1Fm@mail.gmail.com>
Date: Thu, 31 Mar 2011 08:58:22 -0400
Message-ID: <AANLkTimm282fdW7iwFv0NLvXW3QaC1Rc3S7tHPnNJnij@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: v sailaja <vsailub4u@gmail.com>
Cc: poky@yoctoproject.org
Subject: Re: Problem in linux-yocto kernel 2.6.37 configuration while building with sugarbay machine
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
X-List-Received-Date: Thu, 31 Mar 2011 13:00:55 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Thu, Mar 31, 2011 at 8:55 AM, v sailaja <vsailub4u@gmail.com> wrote:
>
> Hi Bruce,
>
>
> The following are the layers in the build
>
> meta
> meta-intel
> meta-yocto
>
> Here I am sending the generated .config file. Please find the attachment.

Thanks. I just started my own build here, and once I get through
some setup steps, I'll compare the two configurations.

Cheers,

Bruce

>
>
> --
> Thanks & Regards,
> SAI
>
>



-- 
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

