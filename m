Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by mx.groups.io with SMTP id smtpd.web12.9799.1605628300024026864
 for <poky@lists.yoctoproject.org>;
 Tue, 17 Nov 2020 07:51:40 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kernel.org header.s=default header.b=Q2QRfm9V;
 spf=pass (domain: kernel.org, ip: 198.145.29.99, mailfrom: okaya@kernel.org)
Received: from [192.168.0.113] (75-58-59-55.lightspeed.rlghnc.sbcglobal.net [75.58.59.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 03AC92463D;
	Tue, 17 Nov 2020 15:51:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1605628299;
	bh=lM8vXAIscV6iQTsBknBEEF3xaQuy1E3Z9bX2PbHdyIk=;
	h=Subject:To:References:From:Date:In-Reply-To:From;
	b=Q2QRfm9VL6iQiCRAXjzgRc1s1ichLzCBhJZAYB5gzT9czhk7n3jjioMhnzgep2ljm
	 sIwe/hgJQ1P7823+AbYgVTDF6YYV0ZU/tftib0WEF3wzcClKfKeoTqq8UifiKDawrM
	 B0RIcy9pvh64S+N1fT+jNaiUMJmnF2/puP2T3JW4=
Subject: Re: [poky] [PATCH v7] poky-tiny: enable section removal
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
 poky@lists.yoctoproject.org
References: <1647D622A62A0183.6873@lists.yoctoproject.org>
 <2fe8c77e-8dc5-cf9c-9569-b7d9d43f2a89@kernel.org>
 <ad18ad9f7c6244b90c0de9a7a5b975e0fe93807f.camel@linuxfoundation.org>
From: "Sinan Kaya" <okaya@kernel.org>
Message-ID: <3ea5615c-f410-edf5-f042-7d7eff537324@kernel.org>
Date: Tue, 17 Nov 2020 10:51:37 -0500
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.3
MIME-Version: 1.0
In-Reply-To: <ad18ad9f7c6244b90c0de9a7a5b975e0fe93807f.camel@linuxfoundation.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 11/17/2020 10:49 AM, Richard Purdie wrote:
>> How is v7 looking?
>>
>> It built for me yesterday.
> This version did pass on the autobuilder :)

Awesome, thanks.
