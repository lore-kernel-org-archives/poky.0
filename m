Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by mx.groups.io with SMTP id smtpd.web11.16400.1605653481145385157
 for <poky@lists.yoctoproject.org>;
 Tue, 17 Nov 2020 14:51:21 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kernel.org header.s=default header.b=aDKgGlUa;
 spf=pass (domain: kernel.org, ip: 198.145.29.99, mailfrom: okaya@kernel.org)
Received: from [192.168.0.113] (75-58-59-55.lightspeed.rlghnc.sbcglobal.net [75.58.59.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 357BB22202;
	Tue, 17 Nov 2020 22:51:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1605653480;
	bh=wsueJsRrfaL2a35txdGVV5U1JKxr00LEdVvXMdxaaZc=;
	h=Subject:To:References:From:Date:In-Reply-To:From;
	b=aDKgGlUaEbrze1TtnBEmZckQ+BKBZ6gFmXPMpmG2nJci2Whq4wOvlJgveup7ZygYQ
	 0ji0B2vl+4Z45hEcJh9I8hZFvBiu/iGKdA3huxNSysgzjz0gCT+lpl/ZrEBhcT7+EM
	 Rj2i0d3KT2THMkFGFqoSD8mvkTIsESYvIshGYMdM=
Subject: Re: [poky] [PATCH v7] poky-tiny: enable section removal
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
 poky@lists.yoctoproject.org, Khem Raj <raj.khem@gmail.com>
References: <1647D622A62A0183.6873@lists.yoctoproject.org>
 <2fe8c77e-8dc5-cf9c-9569-b7d9d43f2a89@kernel.org>
 <ad18ad9f7c6244b90c0de9a7a5b975e0fe93807f.camel@linuxfoundation.org>
 <3ea5615c-f410-edf5-f042-7d7eff537324@kernel.org>
 <180fe413f3599b58f37414351653b54edc244aec.camel@linuxfoundation.org>
From: "Sinan Kaya" <okaya@kernel.org>
Message-ID: <516dac1a-ac23-467e-57f0-cd65a917ce8b@kernel.org>
Date: Tue, 17 Nov 2020 17:51:19 -0500
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.3
MIME-Version: 1.0
In-Reply-To: <180fe413f3599b58f37414351653b54edc244aec.camel@linuxfoundation.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

+Khem,

On 11/17/2020 5:46 PM, Richard Purdie wrote:
> On Tue, 2020-11-17 at 10:51 -0500, Sinan Kaya wrote:
>> On 11/17/2020 10:49 AM, Richard Purdie wrote:
>>>> How is v7 looking?
>>>>
>>>> It built for me yesterday.
>>> This version did pass on the autobuilder :)
>>
>> Awesome, thanks.
> 
> Just to be clear, was the plan to merge this, or create an inc file in
> OE-Core which poky-tiny then includes? I wasn't sure what the end
> result of the discussion was...

I think it was both to create an inc file to be used by other distros
as well as add to tiny distro with a require statement.

I followed the same design pattern as lto. Let me know if you need me
to refactor something.

> 
> Cheers,
> 
> Richard
> 

