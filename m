Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by mx.groups.io with SMTP id smtpd.web10.8560.1605622479564372655
 for <poky@lists.yoctoproject.org>;
 Tue, 17 Nov 2020 06:14:39 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kernel.org header.s=default header.b=1jnCCYa9;
 spf=pass (domain: kernel.org, ip: 198.145.29.99, mailfrom: okaya@kernel.org)
Received: from [192.168.0.113] (75-58-59-55.lightspeed.rlghnc.sbcglobal.net [75.58.59.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id AAC3D20825
	for <poky@lists.yoctoproject.org>; Tue, 17 Nov 2020 14:14:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1605622478;
	bh=sm6FbKd9pLhHxfhjavsr21l5+uby9179/xirtd6ECJw=;
	h=Subject:To:References:From:Date:In-Reply-To:From;
	b=1jnCCYa9JhZ4paayoKbpJmswCEj2EkdcUHs86DL9nCBlRzhAwn8A1WUz5ZnhzJehX
	 7qRP9ua8Us/7PLMNgl6ulND2Q4nqZaCayjpANurqFjwIgM615B0v47RGrnsMGyTdho
	 4xbEKR+jHHtlUfwQUA6PRAFIhFDV+rpbnA1/ei6A=
Subject: Re: [poky] [PATCH] poky-tiny: prefer thumb mode by default
To: poky@lists.yoctoproject.org
References: <20201117024555.7716-1-okaya@kernel.org>
 <CAMKF1sqJCo5xTnLjcukxkjYEqGiR9b8pXSDA2igDF+1OzuKBug@mail.gmail.com>
From: "Sinan Kaya" <okaya@kernel.org>
Message-ID: <fc71a242-b884-01e3-8c21-774e73446a5c@kernel.org>
Date: Tue, 17 Nov 2020 09:14:37 -0500
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.3
MIME-Version: 1.0
In-Reply-To: <CAMKF1sqJCo5xTnLjcukxkjYEqGiR9b8pXSDA2igDF+1OzuKBug@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 11/17/2020 2:35 AM, Khem Raj wrote:
>> +# prefer thumb mode by default for userspace
>> +ARM_INSTRUCTION_SET = "thumb"
> we have defaulted armv7a+ machines to use thumb ISA if DEFAULTTUNE has
> 't' attribute in it
> which SOCs do you target with this change ?
> 

I wanted to use it on ARM926EJS. I noticed that it is defaulting to arm
even though the CPU supports thumb.

Why was the same decision not made for armv5 and armv6?
