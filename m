Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by mx.groups.io with SMTP id smtpd.web12.10966.1605384405797275497
 for <poky@lists.yoctoproject.org>;
 Sat, 14 Nov 2020 12:06:45 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kernel.org header.s=default header.b=CaeDd9ca;
 spf=pass (domain: kernel.org, ip: 198.145.29.99, mailfrom: okaya@kernel.org)
Received: from [192.168.0.113] (75-58-59-55.lightspeed.rlghnc.sbcglobal.net [75.58.59.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id E256A22314;
	Sat, 14 Nov 2020 20:06:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1605384405;
	bh=gSvbNyPtSgSIM9WoepOH4Wr8IqDG5sA/EAV3bknEtlk=;
	h=Subject:To:References:From:Date:In-Reply-To:From;
	b=CaeDd9caw4linj3XiJq5Ar5J/gyFV/QYVE/kCFd1Q1sWq99g4v194z2OTyIbIjCRO
	 dwfPDTdLdLc1+W9sujMMAVjU7hbya/vCTruVM84l2OLz8Fhm+SM8GrvR6ieR0C3yzC
	 YSZdbO92f57IOv4r58GFiOLsl40ii8puMYtGlk7Y=
Subject: Re: [poky] [PATCH v6] poky-tiny: enable section removal
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
 poky@lists.yoctoproject.org
References: <20201113221425.5106-1-okaya@kernel.org>
 <c2b80e97acb250037828311a1c741a8870f64477.camel@linuxfoundation.org>
From: "Sinan Kaya" <okaya@kernel.org>
Message-ID: <ca5c2ad8-9c74-d02b-c011-f5d60de1c61d@kernel.org>
Date: Sat, 14 Nov 2020 15:06:42 -0500
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.3
MIME-Version: 1.0
In-Reply-To: <c2b80e97acb250037828311a1c741a8870f64477.camel@linuxfoundation.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 11/14/2020 11:14 AM, Richard Purdie wrote:
> Still seems to be the same?
> 
> https://autobuilder.yoctoproject.org/typhoon/#/builders/15/builds/2984
> 
> How are you testing this? I know people can have problems with patches
> but this is getting a little silly :(.

Let me take a closer look. I originally tested this on thud and dunfell.
I have not tested against master branch.
