Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by mx.groups.io with SMTP id smtpd.web12.357.1605244384877291448
 for <poky@lists.yoctoproject.org>;
 Thu, 12 Nov 2020 21:13:04 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kernel.org header.s=default header.b=V5w8bw7M;
 spf=pass (domain: kernel.org, ip: 198.145.29.99, mailfrom: okaya@kernel.org)
Received: from [192.168.0.113] (75-58-59-55.lightspeed.rlghnc.sbcglobal.net [75.58.59.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 9FB482137B;
	Fri, 13 Nov 2020 05:13:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1605244383;
	bh=M9YTR801SuyjMG0t1wOyZsnSj3HOfOoiDlyyTZkhIlE=;
	h=Subject:To:References:From:Date:In-Reply-To:From;
	b=V5w8bw7M+Gbo2zHkkfH1h3i9n4cDRuWCWYQiZ4GMxHq1UK9gwQm/fvgXPTb/4MLIj
	 1gpT3FWuySGsU4a+ZYFqQFG6AulfDsNr1R7UyV6bQ44m/b73oTOOJfIffNQBu45Yhr
	 /XkkNF71KPN+FpKkZxb0js6Zqz033h8HgCy8OPUc=
Subject: Re: [poky] [PATCH v5] poky-tiny: enable section removal
To: Khem Raj <raj.khem@gmail.com>, poky@lists.yoctoproject.org
References: <20201113002727.21168-1-okaya@kernel.org>
 <34be3f90-4b7a-a2f7-9f4e-ce2aaa1088e8@gmail.com>
From: "Sinan Kaya" <okaya@kernel.org>
Message-ID: <bece0e62-298e-f07c-5620-8cfdb45c80f3@kernel.org>
Date: Fri, 13 Nov 2020 00:13:02 -0500
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.2
MIME-Version: 1.0
In-Reply-To: <34be3f90-4b7a-a2f7-9f4e-ce2aaa1088e8@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 11/12/2020 11:59 PM, Khem Raj wrote:
>> +# omit section removal on native builds
>> +CFLAGS_SECTION_REMOVAL_class-native = ""
>> +LDFLAGS_SECTION_REMOVAL_class-native = ""
>> +
>> +# set default for all targets
>> +CFLAGS_append = " ${CFLAGS_SECTION_REMOVAL}"
>> +LDFLAGS_append = " ${LDFLAGS_SECTION_REMOVAL}"
>> +
>>
> I think this should be an independent .inc file in oe-core
> much like lto.inc, perhaps something like size_opts.inc
> and here it could just in added via a include/require directive
> 
> Could be useful for non-poky distros as well.
> 

Sure, I can move there once I get a successful build hint from Richard.
