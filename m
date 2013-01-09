Return-Path: <Qi.Chen@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 01C52E00724
	for <poky@yoctoproject.org>; Wed,  9 Jan 2013 00:27:02 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r098R24V006943
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Wed, 9 Jan 2013 00:27:02 -0800 (PST)
Received: from [128.224.163.154] (128.224.163.154) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.2.318.4;
	Wed, 9 Jan 2013 00:27:02 -0800
Message-ID: <50ED29EB.8030903@windriver.com>
Date: Wed, 9 Jan 2013 16:27:23 +0800
From: ChenQi <Qi.Chen@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: <poky@yoctoproject.org>
References: <1357690719-3136-1-git-send-email-eu@felipetonello.com>
	<50ECD310.90504@windriver.com> <50ED01A5.4030402@felipetonello.com>
In-Reply-To: <50ED01A5.4030402@felipetonello.com>
X-Originating-IP: [128.224.163.154]
Subject: Re: [PATCH] initscripts: added save-rtc to runlevel S
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
X-List-Received-Date: Wed, 09 Jan 2013 08:27:03 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

"the system clock is according to the hardware clock by hwclock.sh. "

====>

"the system clock is set according to the hardware clock by hwclock.sh 
at system boot time. "


On 01/09/2013 01:35 PM, Felipe Ferreri Tonello wrote:
> Hi Chen,
>
> On 01/08/2013 06:16 PM, ChenQi wrote:
>> On 01/09/2013 08:18 AM, eu@felipetonello.com wrote:
>>> From: "Felipe F. Tonello" <ftonello@cercacor.com>
>>>
>>> It is necessary to add save-rtc.sh to runlevel S so the system is 
>>> updated when
>>> it boots up.
>> Hi ftonello,
>> What do you mean by "system is updated"?
> I meant system clock.
>
> What is happening now is that when you turn off the device, without 
> system halt, the next time the device is booted up the system clock is 
> not in sync with the rtc.
>>
>> Besides, this patch should be sent to oe-core.
> Ok.
>
> Felipe
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>
>


