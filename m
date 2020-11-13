Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by mx.groups.io with SMTP id smtpd.web12.2646.1605305730159031297
 for <poky@lists.yoctoproject.org>;
 Fri, 13 Nov 2020 14:15:30 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kernel.org header.s=default header.b=B8tiHO9H;
 spf=pass (domain: kernel.org, ip: 198.145.29.99, mailfrom: okaya@kernel.org)
Received: from [192.168.0.113] (75-58-59-55.lightspeed.rlghnc.sbcglobal.net [75.58.59.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 6A3322223F;
	Fri, 13 Nov 2020 22:15:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1605305729;
	bh=cDFUSRuaoHEKygqFGZ8HoMuMKVL7RKGyVX0MBF5H3kY=;
	h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
	b=B8tiHO9HsE1scJccPtJkrrqaYzYOTaaE/okGRqr6/lE5vAKuGedFkdaMukgCYK8rc
	 vlKBgm32K4/YnP4MmB3X1q81EeLy6uZpWcNsH/Md5OdiQcIGJLX0nFtu3Luk+bMXed
	 glUfv89W1FR1fi/1FjIX/n1/Z8wtpDQzJI0RxTH0=
Subject: Re: [poky] [PATCH v5] poky-tiny: enable section removal
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
 Khem Raj <raj.khem@gmail.com>, poky@lists.yoctoproject.org
Cc: Ross Burton <ross.burton@arm.com>
References: <20201113002727.21168-1-okaya@kernel.org>
 <34be3f90-4b7a-a2f7-9f4e-ce2aaa1088e8@gmail.com>
 <bece0e62-298e-f07c-5620-8cfdb45c80f3@kernel.org>
 <a3cc14ab6bd9a55adf257a6c993d6a082e77591d.camel@linuxfoundation.org>
From: "Sinan Kaya" <okaya@kernel.org>
Message-ID: <43940ff5-6c51-5b56-ded6-cd8fabb68dba@kernel.org>
Date: Fri, 13 Nov 2020 17:15:28 -0500
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.3
MIME-Version: 1.0
In-Reply-To: <a3cc14ab6bd9a55adf257a6c993d6a082e77591d.camel@linuxfoundation.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 11/13/2020 10:18 AM, Richard Purdie wrote:
>> Sure, I can move there once I get a successful build hint from
>> Richard.
> Fails in perl this time:
> 
> https://autobuilder.yoctoproject.org/typhoon/#/builders/15/builds/2981

v6 posted.

Fingers crossed.
