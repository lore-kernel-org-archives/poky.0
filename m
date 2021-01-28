Received: from mail.iot.bzh (mail.iot.bzh [51.75.236.24])
 by mx.groups.io with SMTP id smtpd.web11.26334.1611848828454096015
 for <poky@lists.yoctoproject.org>;
 Thu, 28 Jan 2021 07:47:09 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@iot.bzh header.s=20180822 header.b=ELGaswL4;
 spf=pass (domain: iot.bzh, ip: 51.75.236.24, mailfrom: julien.massot@iot.bzh)
Received: from linux.home (lfbn-ren-1-2120-93.w92-167.abo.wanadoo.fr [92.167.199.93])
	by mail.iot.bzh (Postfix) with ESMTPSA id 86B32400A2
	for <poky@lists.yoctoproject.org>; Thu, 28 Jan 2021 16:47:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iot.bzh; s=20180822;
	t=1611848822; h=from:from:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=FYrSMz/gEtXjzMRWpdPbTFdw2CZp0ZYyHeBIa9xG3N8=;
	b=ELGaswL47AvD3ZBjXZxM1ThFt0P9nZMDQQ6daoHPTD64AT9wcsXMN5ERgJdf0GVTTvYq1+
	pPxOVBNSdux5TMlV7dCMKb8LpPjCdCMZfyROPrFkidQk78NKwT3Fw30SkjTgkN6METiHm7
	JT4ZFkyUH6cjEIqhC0QoA4CeHOd5CcHVewTWDfYDuffR3FEAg00aSuEjoJyuwCl0W/xARZ
	2cAudmEJ4yrDWOw7VJ7piZrxBQdvrRgd26P1Ug6AuHH9JO249qVIr9mTUge+OAGBDkvRm5
	y2yOjQE7bw1vBVbWAAyKLuN0SQ8rU9Tbej1BhovvRSap9jzMViFXkF61KXhTYg==
Subject: Re: [poky] [PATCH v2 dunfell] rng-tools: backport 6.11 from master
To: poky@lists.yoctoproject.org
References: <20210128135758.106532-1-julien.massot@iot.bzh>
 <CANNYZj_F4yDDkeAJfpAqbGnby7r6BW+mLwmPGGY59b=fGaU3+g@mail.gmail.com>
From: "Julien Massot" <julien.massot@iot.bzh>
Message-ID: <5016b551-2d99-8d2b-cd2e-b69e2e5d25d8@iot.bzh>
Date: Thu, 28 Jan 2021 16:47:01 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <CANNYZj_F4yDDkeAJfpAqbGnby7r6BW+mLwmPGGY59b=fGaU3+g@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hi Alex,


On 1/28/21 3:57 PM, Alexander Kanavin wrote:
> Version upgrades are not allowed in stable branches; you need to backport specific commits.
> 
> Also this needs to go to oe-core list.
> 

Thanks, it's possible to only apply 3 patches on top of 6.9, will sent a fix to oe-core list then.

Regards,
Julien
