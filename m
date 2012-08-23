Return-Path: <flocirel@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 14DADE002A6
	for <poky@yoctoproject.org>; Thu, 23 Aug 2012 07:10:01 -0700 (PDT)
Received: by pbbrq13 with SMTP id rq13so1786870pbb.35
	for <poky@yoctoproject.org>; Thu, 23 Aug 2012 07:09:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=F238mVmSk0RkBAFMAGXE3rZ2bPoTaLG8h6K4YFCNTes=;
	b=v54MYEp7Ucq0oWgR/LscSoNFK1dGZtVTMIR4U4vQRqHgDD1J/3HuOZrxT0WrTNWOCA
	OhW52xyfC1DBq/hZCI1kNHfeIQgeYE8WBGOc2iasyWfgwMzsNvCn4DPQyqZ1VNFPgQH8
	R3vW4am64sbr5Z/0pqv73P5C0KY3TJ2hgdY4IGwnbOJ8d90dHedl/Xh+isIwmaHDd5E7
	4g185BlrU5kahjvtEDPtogpJPNl0giZDGjXjviaPG3mCiqTkUcy4CNcdPTw6cg9rpB5/
	m8V6wJalarwGms2dafmbpu8QKgZza/dpZtw8WaTe3Unge7sGHytMzAz4DA8YKQSHWLI1
	DIrg==
Received: by 10.68.235.41 with SMTP id uj9mr5124661pbc.41.1345730998710;
	Thu, 23 Aug 2012 07:09:58 -0700 (PDT)
Received: from [128.224.170.235] ([89.121.200.106])
	by mx.google.com with ESMTPS id od6sm4549206pbb.7.2012.08.23.07.09.56
	(version=SSLv3 cipher=OTHER); Thu, 23 Aug 2012 07:09:58 -0700 (PDT)
Message-ID: <503639B2.4000605@gmail.com>
Date: Thu, 23 Aug 2012 17:09:54 +0300
From: Florin <flocirel@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:14.0) Gecko/20120714 Thunderbird/14.0
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <503550B4.6060708@gmail.com> <5035DBF4.2020201@r-finger.com>
In-Reply-To: <5035DBF4.2020201@r-finger.com>
Subject: Re: do_fetch error with gcc-cross-initial_4.7
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
X-List-Received-Date: Thu, 23 Aug 2012 14:10:01 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 08/23/2012 10:29 AM, Tomas Frydrych wrote:
> Hi,
>
> On 22/08/12 22:35, Florin wrote:
>> ERROR: Function failed: Fetcher failure for URL:
>> 'git://github.com/mirrors/gcc.git;branch=gcc-4_7-branch;protocol=git'.
>> Unable to fetch URL from any source.
>>
>>
>> After the build stops with this error, retrying the bitbake command to
>> produce the rootfs fetches gcc successfully and gcc (and the rest of the
>> packages) is compiled just fine.
>> Is there anybody else seeing this behavior?
> FWIW, over the last few days I have seen intermittent fetch failures
> from various packages that pull source from github; they pretty much
> always go away on the next attempt; I assume it's github's fault.
Hi Tomas,
thanks for your answer. The problem I am seeing is that it always 
behaves like this: in the stages of creating the rootfs it gets to the 
fetching of gcc cross initial, this stalls a while (tens of minutes) in 
which time bitbake fetches (all kind of native and target packages) and 
compiles native packages and it throws an error at the point where the 
dependency chain would have had gcc cross initial compiled and ready to 
be used by other packages. After that, rerunning the bitbake command to 
create the rootfs fetches successfully gcc and the build finishes. So I 
am always seeing this behavior: first fetch fails, second fetch works. 
Always like this, never had to try a third time to fetch gcc. That is 
why I am not suspecting especially a problem with github but rather the 
way bitbake tries the mirrors for gcc.

Thanks,
Florin
> Tomas
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


