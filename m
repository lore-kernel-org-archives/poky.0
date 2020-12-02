Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by mx.groups.io with SMTP id smtpd.web08.451.1606934684718350502
 for <poky@lists.yoctoproject.org>;
 Wed, 02 Dec 2020 10:44:44 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kernel.org header.s=k20201202 header.b=RNygpJIi;
 spf=pass (domain: kernel.org, ip: 198.145.29.99, mailfrom: okaya@kernel.org)
Subject: Re: [poky] [PATCH] image_types: add zstd initramfs and squashfs support
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1606934683;
	bh=HCKGLiuo782+0gG0Sa6TA/Ejx6nIkYULAR/yqNrkpCQ=;
	h=To:References:From:Date:In-Reply-To:From;
	b=RNygpJIitOQknn0q7YWsgeAxHatkCuZ3f3bERMWSFiqYY/mFQAbj5LodjlRlG03tg
	 H8aEb8d7P5eagZHQ7OH0qOlAgCsoZuqIVfLi+K2RCfG1NC0FY185vyG0HZ0pfmvcRw
	 up43gZLubG9L+m3RtAH2yRAKKCl8NtbaORTAFq5df9f4JbXVW1/zmwyfMCY48eRyNt
	 Z/hSRG9yPTWkpWWaqINmqRSySXQ46eQzvgFVVA5gbVGAayPpyJW++x5BoOFgsscJAr
	 tXITK1o6DZvK4ErKV66Vjf0dJBtyEmkvXYOXF5v8JtiQV1vriQ23cmfso+ur14EVHB
	 vJLUdu0qUwq7Q==
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
 poky@lists.yoctoproject.org
References: <20201121020434.19912-1-okaya@kernel.org>
 <a22941ee1786ac7349863ca321fb91e0b6ba7c75.camel@linuxfoundation.org>
From: "Sinan Kaya" <okaya@kernel.org>
Message-ID: <8dae57b7-d23d-c66a-ae7e-14c7c567f4ba@kernel.org>
Date: Wed, 2 Dec 2020 13:44:42 -0500
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <a22941ee1786ac7349863ca321fb91e0b6ba7c75.camel@linuxfoundation.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 12/1/2020 5:13 PM, Richard Purdie wrote:
> On Sat, 2020-11-21 at 02:04 +0000, Sinan Kaya wrote:
>> Add support for zstandard format squashfs and initramfs.
>>
>> Signed-off-by: Sinan Kaya <okaya@kernel.org>
>> ---
>>  documentation/ref-manual/ref-variables.rst |  2 ++
>>  meta/classes/base.bbclass                  |  4 ++++
>>  meta/classes/image_types.bbclass           |  6 ++++--
>>  meta/classes/kernel-fitimage.bbclass       |  2 +-
>>  meta/classes/kernel.bbclass                | 10 ++++++++--
>>  5 files changed, 19 insertions(+), 5 deletions(-)
> This is hard to apply as is as documentation is in a separate
> repository, we really need separate patches (but thanks for updating
> the docs!).
> 

Will do.

> I also suspect this will break some selftests when run on the
> autobuilder as some iterate image types. I haven't found the time to
> check into that properly yet and didn't want to risk breaking the
> builds with the patch at those points in time.

I could drop initramfs support for the moment. While squashfs support
for ZSTD has been there for a while, initramfs support is still not
merged.
