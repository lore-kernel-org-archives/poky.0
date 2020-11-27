Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by mx.groups.io with SMTP id smtpd.web12.25437.1606514599892883165
 for <poky@lists.yoctoproject.org>;
 Fri, 27 Nov 2020 14:03:19 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kernel.org header.s=default header.b=lPMy6U5S;
 spf=pass (domain: kernel.org, ip: 198.145.29.99, mailfrom: okaya@kernel.org)
Received: from [192.168.0.113] (75-58-59-55.lightspeed.rlghnc.sbcglobal.net [75.58.59.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id EA9A521D7F
	for <poky@lists.yoctoproject.org>; Fri, 27 Nov 2020 22:03:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1606514599;
	bh=r7ZX0ME99baqUsMVCaqTSE4MG62xyH32ltgaoo5fSBE=;
	h=Subject:To:References:From:Date:In-Reply-To:From;
	b=lPMy6U5SyIKYmClyNN2Esgn57j/fMBuzqIZzhd8FQkQql1WA9CC9UMMLA6KsthgZV
	 Nfepm91usXy1Bl/HERNgHTVOybCNxtfGgPZjZJRGHQq7zweIi8oPTfOoUX4jvadC6u
	 u6JpEyKa4N7r5Rvf9YqmkrBjHZ7xigq5KVZQmsIc=
Subject: Re: [poky] [PATCH] image_types: add zstd initramfs and squashfs support
To: poky@lists.yoctoproject.org
References: <164963A05F9159A7.30699@lists.yoctoproject.org>
From: "Sinan Kaya" <okaya@kernel.org>
Message-ID: <19eb4d0f-4462-05fa-c960-0a64838728cb@kernel.org>
Date: Fri, 27 Nov 2020 17:03:17 -0500
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <164963A05F9159A7.30699@lists.yoctoproject.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 11/20/2020 9:04 PM, Sinan Kaya wrote:
> Add support for zstandard format squashfs and initramfs.
> 
> Signed-off-by: Sinan Kaya <okaya@kernel.org>

Any comments on this?
