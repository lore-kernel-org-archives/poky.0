Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by mx.groups.io with SMTP id smtpd.web08.13929.1605227281064366092
 for <poky@lists.yoctoproject.org>;
 Thu, 12 Nov 2020 16:28:01 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kernel.org header.s=default header.b=UQZNerZa;
 spf=pass (domain: kernel.org, ip: 198.145.29.99, mailfrom: okaya@kernel.org)
Received: from [192.168.0.113] (75-58-59-55.lightspeed.rlghnc.sbcglobal.net [75.58.59.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 3EDDC20B80;
	Fri, 13 Nov 2020 00:28:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1605227280;
	bh=InnwVt3u7V3YlbRLWNntVf3oVgoBmS/uxN5t9iah0Fs=;
	h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
	b=UQZNerZanw7QHvig6LY7WjV8cGxs0hDxmcos5HuW/MASEvho/mhlRvsatK1w4Ovmv
	 rzANyk8Hp+22/U7xNSn87eCzLBb4SJBxI24ONbvskvPXqn5LpSM202OEX4erfHQZOL
	 I1Hp8DK/eInnSzivilaDA/DXARbDLN3bxepl70Bc=
Subject: Re: [poky] [PATCH v4] poky-tiny: enable section removal
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
 poky@lists.yoctoproject.org
Cc: Ross Burton <ross.burton@arm.com>
References: <20201110230319.29851-1-okaya@kernel.org>
 <350488a2acca2dc4d2935f7b3a83799bb22a825b.camel@linuxfoundation.org>
From: "Sinan Kaya" <okaya@kernel.org>
Message-ID: <a605ea3d-f0f2-05ae-e41e-622aeaf5f2ae@kernel.org>
Date: Thu, 12 Nov 2020 19:27:57 -0500
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.2
MIME-Version: 1.0
In-Reply-To: <350488a2acca2dc4d2935f7b3a83799bb22a825b.camel@linuxfoundation.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 11/12/2020 4:46 PM, Richard Purdie wrote:
> On Tue, 2020-11-10 at 23:03 +0000, Sinan Kaya wrote:
>> Use GCC sections flags so that unused sections can be garbage
>> collected at link time.
>>
>> Signed-off-by: Sinan Kaya <okaya@kernel.org>
>> ---
>>  meta-poky/conf/distro/poky-tiny.conf | 14 ++++++++++++++
>>  1 file changed, 14 insertions(+)
> 
> I did try this again but still has perl-native issues:
> 
> https://autobuilder.yoctoproject.org/typhoon/#/builders/15/builds/2977
> https://autobuilder.yoctoproject.org/typhoon/#/builders/87/builds/1566
> (and other selftest failures too)
> 

I omitted the feature from native builds and posted v5.

> Cheers,
> 
> Richard
> 

