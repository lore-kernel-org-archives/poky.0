Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by mx.groups.io with SMTP id smtpd.web10.509.1605048700891341573
 for <poky@lists.yoctoproject.org>;
 Tue, 10 Nov 2020 14:51:40 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kernel.org header.s=default header.b=GDEURZKl;
 spf=pass (domain: kernel.org, ip: 198.145.29.99, mailfrom: okaya@kernel.org)
Received: from [192.168.0.113] (75-58-59-55.lightspeed.rlghnc.sbcglobal.net [75.58.59.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id EDB61205CA;
	Tue, 10 Nov 2020 22:51:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1605048700;
	bh=qktE8pqdIflZAciuw1iF63ajlQ0MlSKQrUjxMGtLdxA=;
	h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
	b=GDEURZKlknWsa+rofAU53d6ut4xQsOEICeIT1XgyWoqmil+b2TqlksNA8fKYNXaTb
	 AjRqZrSYcJHRO54GwSQ/4m1znl6KfRPbTsDGEtwEJCjk1eUjuo4PdnmoeAGUTnSmqA
	 vcm5nOva7az3rAMRYdESO5hPVoKfpMZIYW3Z4bXw=
Subject: Re: [poky] [PATCH v3] poky-tiny: enable section removal
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
 poky@lists.yoctoproject.org
Cc: Ross Burton <ross.burton@arm.com>
References: <20201109223824.12351-1-okaya@kernel.org>
 <f6213e6851995a88753365d68b91a915737a349e.camel@linuxfoundation.org>
From: "Sinan Kaya" <okaya@kernel.org>
Message-ID: <cc85ff90-a95e-5ce4-71e1-a81b887cf5b9@kernel.org>
Date: Tue, 10 Nov 2020 17:51:38 -0500
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.1
MIME-Version: 1.0
In-Reply-To: <f6213e6851995a88753365d68b91a915737a349e.camel@linuxfoundation.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 11/10/2020 4:35 PM, Richard Purdie wrote:
>> +# perl won't cross compile with sections
>> +CFLAGS_remove_pn-perl = "-ffunction-sections -fdata-sections"
>> +LDFLAGS_remove_pn-perl = "-Wl,--gc-sections"
>> +

[snip]

>> +
> Whilst earlier versions passed testing, this one didn't:
> 
> https://autobuilder.yoctoproject.org/typhoon/#/builders/15/builds/2949

Thanks, I saw build error on dunfell. Maybe, the issue is fixed
upstream. I'll omit perl change on next revision.
