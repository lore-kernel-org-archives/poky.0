Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by mx.groups.io with SMTP id smtpd.web12.19411.1604960808972936811
 for <poky@lists.yoctoproject.org>;
 Mon, 09 Nov 2020 14:26:49 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kernel.org header.s=default header.b=xourGNQO;
 spf=pass (domain: kernel.org, ip: 198.145.29.99, mailfrom: okaya@kernel.org)
Received: from [192.168.0.113] (75-58-59-55.lightspeed.rlghnc.sbcglobal.net [75.58.59.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 0BA362074F;
	Mon,  9 Nov 2020 22:26:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1604960808;
	bh=6xuEyX81/TSffjzu0tqREvO3q+Kk29ZWKm9j811Ja3c=;
	h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
	b=xourGNQOTwze2FzWf0HbW3YsreMv2Zbk0gLDsl+/ZRb2JvE85k6Nn5dZ3Vyro5NN+
	 YCm/e3tu3nU4Z7z0JXMqK4YUvGE3mLO+mcNxWmIMnLTfrDFL63iZ8phrsUoXgbeATv
	 717OPfVz2Q7JKvYRxt/RnfhCYLhLZJuWOZFF4ykY=
Subject: Re: [poky] [PATCH] poky-tiny: use size optimization, section removal and lto
To: Khem Raj <raj.khem@gmail.com>
Cc: poky@lists.yoctoproject.org
References: <20201106170336.5216-1-okaya@kernel.org>
 <559e9e34-6e21-a66e-ce69-a72cc2f64935@gmail.com>
 <c9590d13-7be3-ea6b-1766-f322f0e35982@kernel.org>
 <CAMKF1sojdk5oAvP-RLbMR01PoQhd1x430f4yQjPTgJX5ZOgUcg@mail.gmail.com>
From: "Sinan Kaya" <okaya@kernel.org>
Message-ID: <539fea0f-99be-acfb-375f-49b08c49c3a3@kernel.org>
Date: Mon, 9 Nov 2020 17:26:46 -0500
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.1
MIME-Version: 1.0
In-Reply-To: <CAMKF1sojdk5oAvP-RLbMR01PoQhd1x430f4yQjPTgJX5ZOgUcg@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 11/8/2020 8:37 PM, Khem Raj wrote:
>> Would you be willing to follow up for "-ffunction-sections
>> -fdata-sections" too?
> that perhaps is fine and we should add that as in this patch. Except
> that they should be part of GLOBAL_OPTIMIZATIONS
> so please send a v2
> 

I posted v2. I couldn't quite understand what you mean by
GLOBAL_OPTIMIZATIONS though.
