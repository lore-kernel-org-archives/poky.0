Return-Path: <eu@felipetonello.com>
Received: from mail-da0-f41.google.com (mail-da0-f41.google.com
	[209.85.210.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 52312E00559
	for <poky@yoctoproject.org>; Tue,  8 Jan 2013 21:35:44 -0800 (PST)
Received: by mail-da0-f41.google.com with SMTP id e20so562076dak.28
	for <poky@yoctoproject.org>; Tue, 08 Jan 2013 21:35:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:message-id:date:from:user-agent:mime-version:to:subject
	:references:in-reply-to:content-type:content-transfer-encoding
	:x-gm-message-state;
	bh=L7zjA8wC3rs7wZjFAW1pxjrNInFaCVg6aZU3PX1G1vg=;
	b=F9zbanLc0X+97oj1hDy1+EQ06Zl6onugIT1U86UNxdZeIm+XNb8yDEjzYxKlwvG3ee
	7US2Kj2TmtDTpZgAImwjJMt33+gguWnlWNV8JOT4hgxlf0uPnxUzmK5F9UsQvZaTrdje
	oaV/sVJAkvt0j3v7Sn/fqarj3F582nTrJXGANNsWGIj0Xd9yKJ3AzKDPenyv4D0h8+pJ
	lxCJcsURfM2sfNyIaBmJPREYWPyjRPeRW5gf/E7offK/mC+i3iYKYaoKyBOqxOYhnXF6
	3B94iwHWz1poRP7HEjgn2bKuReCdb+3/zBkObgm1TWkq2Uf9T4vvG5jaJqy3sbNCBGpc
	esOA==
X-Received: by 10.68.232.195 with SMTP id tq3mr206283451pbc.70.1357709743992; 
	Tue, 08 Jan 2013 21:35:43 -0800 (PST)
Received: from [192.168.0.3] (ip68-5-23-65.oc.oc.cox.net. [68.5.23.65])
	by mx.google.com with ESMTPS id nw9sm40956838pbb.42.2013.01.08.21.35.34
	(version=SSLv3 cipher=OTHER); Tue, 08 Jan 2013 21:35:43 -0800 (PST)
Message-ID: <50ED01A5.4030402@felipetonello.com>
Date: Tue, 08 Jan 2013 21:35:33 -0800
From: Felipe Ferreri Tonello <eu@felipetonello.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <1357690719-3136-1-git-send-email-eu@felipetonello.com>
	<50ECD310.90504@windriver.com>
In-Reply-To: <50ECD310.90504@windriver.com>
X-Gm-Message-State: ALoCoQkpKk1WmBeMDfGxbnBo5Fz1EfpyE2WvLMoBJlVGVWctdqxejglHtLyyYxHDklfXsBGtWFdn
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
X-List-Received-Date: Wed, 09 Jan 2013 05:35:44 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi Chen,

On 01/08/2013 06:16 PM, ChenQi wrote:
> On 01/09/2013 08:18 AM, eu@felipetonello.com wrote:
>> From: "Felipe F. Tonello" <ftonello@cercacor.com>
>>
>> It is necessary to add save-rtc.sh to runlevel S so the system is 
>> updated when
>> it boots up.
> Hi ftonello,
> What do you mean by "system is updated"?
I meant system clock.

What is happening now is that when you turn off the device, without 
system halt, the next time the device is booted up the system clock is 
not in sync with the rtc.
>
> Besides, this patch should be sent to oe-core.
Ok.

Felipe

