Return-Path: <eu@felipetonello.com>
Received: from mail-ob0-f180.google.com (mail-ob0-f180.google.com
	[209.85.214.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5FC27E0070F
	for <poky@yoctoproject.org>; Thu, 10 Jan 2013 11:22:24 -0800 (PST)
Received: by mail-ob0-f180.google.com with SMTP id wd20so934843obb.39
	for <poky@yoctoproject.org>; Thu, 10 Jan 2013 11:22:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:message-id:date:from:user-agent:mime-version:to:cc
	:subject:references:in-reply-to:content-type
	:content-transfer-encoding:x-gm-message-state;
	bh=mSieqWEwnzU5nCxOd8peSfIaKrbu6RQkTIE7BKBqgjY=;
	b=l2WUXDzovT0AmMYPvFc1+LrmDGtC8fx1BhPnvgYMK31CHFV+yR70GHpjQQvESKs4ED
	Q48Uc/oLKkGC7BLGQ3HPjb9o6+XZFm5PCNv1MUjJFtkyQ0A7KDR4vutZzxwYlBpTjdX4
	fr81ilCt6TA7vVJto3v+ImyK9qQFX1kOg5hr5zLfS9XM6TOplSrUQ5bErxNkF5BYI36l
	DYMK+vIGb1T0l1Q0gnnKpiKuNnSPHNjlTZeO2RyUtvp+P2mKEyxT6vU+rUFDPYgn5Hme
	lsjBYl3CA4qw+W9eRt4gpxMpaixwed2sQpYFxiruouvy5dbZX2aXd0DTyrr1TQvpqVLW
	mLZQ==
X-Received: by 10.182.223.101 with SMTP id qt5mr16481470obc.51.1357845743777; 
	Thu, 10 Jan 2013 11:22:23 -0800 (PST)
Received: from [192.168.48.44] (wsip-70-183-20-162.oc.oc.cox.net.
	[70.183.20.162])
	by mx.google.com with ESMTPS id w10sm1820142oeg.2.2013.01.10.11.22.22
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 10 Jan 2013 11:22:22 -0800 (PST)
Message-ID: <50EF1521.60200@felipetonello.com>
Date: Thu, 10 Jan 2013 11:23:13 -0800
From: Felipe Ferreri Tonello <eu@felipetonello.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <1357691823-8155-1-git-send-email-eu@felipetonello.com>
	<969F26A8BAB325438E7EB80D3C3134FB161DBDFD@IRSMSX102.ger.corp.intel.com>
	<1357736629.13022.55.camel@ted>
In-Reply-To: <1357736629.13022.55.camel@ted>
X-Gm-Message-State: ALoCoQkZ52DXRdJNHtH8n5q1JJSD4xy8gSiV1e3vyKyD+cqmFYWuKdMFIvpFm7HAZ8/QqMgNeu2p
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
X-List-Received-Date: Thu, 10 Jan 2013 19:22:24 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Richard and Cristian,

On 01/09/2013 05:03 AM, Richard Purdie wrote:
> On Wed, 2013-01-09 at 10:12 +0000, Iorga, Cristian wrote:
>> Hello Felipe,
>>
>> I have some questions regarding this patch:
>>
>> 1. On which hardware/machine have you tested this patch? (real hardware, qemu machine, etc)
>> 2. In what way is connman affecting nfs? In other words, what is the root cause?
>> 3. Which version of connman are you using?
>>
>> I am asking these questions because I am working on something somehow related, and I think a more general fix might be needed.
>
> I'd also add that:
>
> a) Patches to this part of the tree need to go to the OE-Core mailing list

I saw on openembedded tree that connman recipes are old. They are not 
the same as in poky.

I'm always confused about this. Where is oe-core that poky and oe share?

Felipe

