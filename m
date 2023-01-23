Received: from relay4-d.mail.gandi.net (relay4-d.mail.gandi.net [217.70.183.196])
 by mx.groups.io with SMTP id smtpd.web11.39674.1674469956296656504
 for <poky@lists.yoctoproject.org>;
 Mon, 23 Jan 2023 02:32:36 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=Fdr4CZ4N;
 spf=pass (domain: bootlin.com, ip: 217.70.183.196, mailfrom: michael.opdenacker@bootlin.com)
Received: (Authenticated sender: michael.opdenacker@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id 01F87E0009;
	Mon, 23 Jan 2023 10:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1674469954;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=GT21tm/2YVR5JXQFCNGlS6MOQo4aU/uOKlJYFcavE2I=;
	b=Fdr4CZ4NIssxbN6K5bKY5GosGQRINbyTaEsrAdvQx/ojhjurqDh/bpl6tJOEp1F/pCgb98
	pcHi9KTz8dYTrS16VmhXOQYQSN9GwWWv7HKoJW85NeAHKgXY/dF9i0mzdpiUJlM2NA6NB7
	9BTOZmdDz3i9tv4MaaZ42wB/lgClnZfLEhDLv9Rk5SjXZsYHqDGwhgBBnDPp2WU6cbPqrf
	9OOQAQ/GefIqUcX2oq8BXOPqbJIXKIpAQQEgvZopcmkxxtx3Rz7yw8e1SIiesMOGIi99WW
	4VgQBErS5Kl8+TWDja/v3VJYyfWyTSWwAiVmAdCi1l0WJO9xxdJlE5ceRxBz5Q==
Message-ID: <57335780-bf20-b438-c15b-5a612f9cbcab@bootlin.com>
Date: Mon, 23 Jan 2023 11:32:33 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Cc: poky@lists.yoctoproject.org
Subject: Re: [poky] [PATCH] poky.conf: set INIT_MANAGER with ?=
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <20230123095529.21702-1-michael.opdenacker@bootlin.com>
 <4514863819222de97dcc00c0c55ec795f6f60d6a.camel@linuxfoundation.org>
From: "Michael Opdenacker" <michael.opdenacker@bootlin.com>
Organization: Bootlin
In-Reply-To: <4514863819222de97dcc00c0c55ec795f6f60d6a.camel@linuxfoundation.org>
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Richard,

On 23.01.23 at 11:05, Richard Purdie wrote:
> On Mon, 2023-01-23 at 10:55 +0100, Michael Opdenacker via
> lists.yoctoproject.org wrote:
>> From: Michael Opdenacker <michael.opdenacker@bootlin.com>
>>
>> Allowing to set INIT_MANAGER from conf/local.conf
>>
>> ---
>>
>> This has been tested on the autobuilder:
>> https://autobuilder.yoctoproject.org/typhoon/#/builders/83/builds/4797
>>
>> This will allow to document INIT_MANAGER properly
>> and address a few related bugs.
>>
>> Signed-off-by: Michael Opdenacker <michael.opdenacker@bootlin.com>
>> ---
>>   meta-poky/conf/distro/poky.conf | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
>> index dc0e8e76ab..072d2ab32f 100644
>> --- a/meta-poky/conf/distro/poky.conf
>> +++ b/meta-poky/conf/distro/poky.conf
>> @@ -65,7 +65,7 @@ INHERIT += "uninative"
>>   BB_SIGNATURE_HANDLER ?= "OEEquivHash"
>>   BB_HASHSERVE ??= "auto"
>>   
>> -INIT_MANAGER = "sysvinit"
>> +INIT_MANAGER ?= "sysvinit"
>>   
> This solves the problem for poky, but not poky-tiny or poky-altcfg.
> I've just sent a version which would address those too. I'd much prefer
> to fix this issue properly rather than incompletely!


Great! I was actually wondering about those. Glad that we have a generic 
solution.
Thanks
Michael

-- 
Michael Opdenacker, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

