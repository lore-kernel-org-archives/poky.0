Received: from relay2-d.mail.gandi.net (relay2-d.mail.gandi.net [217.70.183.194])
 by mx.groups.io with SMTP id smtpd.web11.371.1643299867046813109
 for <poky@lists.yoctoproject.org>;
 Thu, 27 Jan 2022 08:11:07 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=C3KB5VPr;
 spf=pass (domain: bootlin.com, ip: 217.70.183.194, mailfrom: michael.opdenacker@bootlin.com)
Received: (Authenticated sender: michael.opdenacker@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id 60C2840006;
	Thu, 27 Jan 2022 16:11:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1643299864;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=l1lGSlOH/YnSq5/FKPzAMQgYKg0qz5dF+TmTWxT5LdI=;
	b=C3KB5VPrA4X2fGYR32sWw4Y2z8XHHWQf3Un7EX3hc/kVrr3ZC6WMMONDh9k17ZyebkNlMf
	fGrN43e7KWUitIeUtOh9xnTiue2War+erPgM4j8sYUfrfLtO+aXOk1v3c0KmVFVBlEBoIZ
	q8mStcnaVgDvTWp3iz/XyhuEQW4bXUVv/9983WWzYBx8qHdwOjlMeN2egVO4zbHtppf1Sk
	VvKDBCv1e1g6mDAjFpAR7YCkPKZ2qZs2Pylg7799QXXpd7cVnc522Fp+j3Ztjw3qVta5mS
	+Vz02n9QeJuiLVPFwq7FWjkm7XRnsDM707LGswz7Z0x0vFN7whYQzybfiCZZlQ==
Message-ID: <451aaa24-ee59-e040-ded7-370d2188c599@bootlin.com>
Date: Thu, 27 Jan 2022 17:11:03 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [poky] [PATCH v2] local.conf.sample: use https instead of http for SSTATE_MIRRORS
To: Peter Kjellerstedt <peter.kjellerstedt@axis.com>,
 "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
References: <16CDCBDE8210E458.21331@lists.yoctoproject.org>
 <20220126104429.1062137-1-michael.opdenacker@bootlin.com>
 <bd6c8c51ff8748f593aec471a1382fd7@axis.com>
From: "Michael Opdenacker" <michael.opdenacker@bootlin.com>
Organization: Bootlin
In-Reply-To: <bd6c8c51ff8748f593aec471a1382fd7@axis.com>
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi Peter,

Thank you very much for the review!

On 1/26/22 12:24, Peter Kjellerstedt wrote:
>> -----Original Message-----
>> From: poky@lists.yoctoproject.org <poky@lists.yoctoproject.org> On Behalf Of Michael Opdenacker
>> Sent: den 26 januari 2022 11:44
>> To: poky@lists.yoctoproject.org
>> Cc: Michael Opdenacker <michael.opdenacker@bootlin.com>
>> Subject: [poky] [PATCH v2] local.conf.sample: use https instead of http for SSTATE_MIRRORS
>>
>> Both http and https work, but we should get fewer questions
>> with https
>>
>> Signed-off-by: Michael Opdenacker <michael.opdenacker@bootlin.com>
>> ---
>>  meta-poky/conf/local.conf.sample | 6 +++---
>>  1 file changed, 3 insertions(+), 3 deletions(-)
>>
>> diff --git a/meta-poky/conf/local.conf.sample b/meta-poky/conf/local.conf.sample
>> index 7bdbba0..3100eb1 100644
>> --- a/meta-poky/conf/local.conf.sample
>> +++ b/meta-poky/conf/local.conf.sample
>> @@ -206,7 +206,7 @@ BB_DISKMON_DIRS ??= "\
>>  # used to accelerate build time. This variable can be used to configure the system
>>  # to search other mirror locations for these objects before it builds the data itself.
>>  #
>> -# This can be a filesystem directory, or a remote url such as http or ftp. These
>> +# This can be a filesystem directory, or a remote url such as https or ftp. These
>>  # would contain the sstate-cache results from previous builds (possibly from other
>>  # machines). This variable works like fetcher MIRRORS/PREMIRRORS and points to the
>>  # cache locations to check for the shared objects.
>> @@ -214,7 +214,7 @@ BB_DISKMON_DIRS ??= "\
>>  # at the end as shown in the examples below. This will be substituted with the
>>  # correct path within the directory structure.
>>  #SSTATE_MIRRORS ?= "\
>> -#file://.* http://someserver.tld/share/sstate/PATH;downloadfilename=PATH \n \
>> +#file://.* https://someserver.tld/share/sstate/PATH;downloadfilename=PATH \n \
> While there, you may as well remove the "\n".


Good idea. We already did that in other places.
However, shouldn't it be a separate commit? I can read Quentin's lips ;-)
Cheers
Michael.

-- 
Michael Opdenacker, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

