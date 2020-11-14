Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by mx.groups.io with SMTP id smtpd.web10.11632.1605387210682987594
 for <poky@lists.yoctoproject.org>;
 Sat, 14 Nov 2020 12:53:30 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kernel.org header.s=default header.b=WUeakrl9;
 spf=pass (domain: kernel.org, ip: 198.145.29.99, mailfrom: okaya@kernel.org)
Received: from [192.168.0.113] (75-58-59-55.lightspeed.rlghnc.sbcglobal.net [75.58.59.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 5074B22409;
	Sat, 14 Nov 2020 20:53:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1605387209;
	bh=/U40IU+/nm1bD6xLftXtFMEk7CE+RsChW0TmeS5D1sE=;
	h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
	b=WUeakrl9UX7Ez/V4ZUf3DsbLhFTwmpxh3YvT2+vLiIocLmBho7OZPPEH6z+yxfRWk
	 tUR8IXgHNBfjKW1gsVql29DdJaQH/ZYmFQQqx4x57/kQMNTWRGD6Gded5IX2fWvaG9
	 0KEM/gr8k/PXNbJNZw8tcomGKaV68Qc88dfUT/Lc=
Subject: Re: [poky] [PATCH v6] poky-tiny: enable section removal
To: Paul Barker <pbarker@konsulko.com>
Cc: poky@lists.yoctoproject.org
References: <20201113221425.5106-1-okaya@kernel.org>
 <CAM9ZRVu0EXaTc08zpEH9rORenatkBGgPmfSL4jmu9QPwF21F9g@mail.gmail.com>
From: "Sinan Kaya" <okaya@kernel.org>
Message-ID: <09447f4d-e49f-88b7-0d53-7f4eb9773e2f@kernel.org>
Date: Sat, 14 Nov 2020 15:53:29 -0500
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.3
MIME-Version: 1.0
In-Reply-To: <CAM9ZRVu0EXaTc08zpEH9rORenatkBGgPmfSL4jmu9QPwF21F9g@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 11/14/2020 3:23 PM, Paul Barker wrote:
> On Fri, 13 Nov 2020 at 22:14, Sinan Kaya <okaya@kernel.org> wrote:
>>
>> Use GCC sections flags so that unused sections can be garbage
>> collected at link time.
>>
>> Signed-off-by: Sinan Kaya <okaya@kernel.org>
>> ---
>>  meta-poky/conf/distro/include/gcsections.inc | 19 +++++++++++++++++++
>>  meta-poky/conf/distro/poky-tiny.conf         |  3 +++
>>  2 files changed, 22 insertions(+)
>>  create mode 100644 meta-poky/conf/distro/include/gcsections.inc
>>
>> diff --git a/meta-poky/conf/distro/include/gcsections.inc b/meta-poky/conf/distro/include/gcsections.inc
>> new file mode 100644
>> index 00000000000..d94f25913bb
>> --- /dev/null
>> +++ b/meta-poky/conf/distro/include/gcsections.inc
>> @@ -0,0 +1,19 @@
>> +CFLAGS_SECTION_REMOVAL = "-ffunction-sections -fdata-sections"
>> +LDFLAGS_SECTION_REMOVAL = "-Wl,--gc-sections"
>> +
>> +# packages with build problems using sections
>> +CFLAGS_SECTION_REMOVAL_pn-glibc = ""
>> +LDFLAGS_SECTION_REMOVAL_pn-glibc = ""
>> +CFLAGS_section_removal_pn-cairo = ""
>> +LDFLAGS_section_removal_pn-cairo = ""
>> +CFLAGS_section_removal_pn-perl = ""
>> +LDFLAGS_section_removal_pn-perl = ""
> 
> Are you sure "section_removal" should be lower case here?
> 

Copy/paste screw up.

>> +
>> +# omit section removal on native builds
>> +CFLAGS_SECTION_REMOVAL_class-native = ""
>> +LDFLAGS_SECTION_REMOVAL_class-native = ""
> 
> This still applies the flags to -nativesdk builds, possibly to other
> builds as well. Instead you should only append the flags for
> class-target.
> 

This was my original version. Khem wanted to increase the scope to
nativesdk too. I'll go back to class-target.

>> +
>> +# set default for all targets
>> +CFLAGS_append = " ${CFLAGS_SECTION_REMOVAL}"
>> +LDFLAGS_append = " ${LDFLAGS_SECTION_REMOVAL}"
> 
> This isn't ideal. You should use CFLAGS_append_class-target and
> similar for LDFLAGS here.
> 

sounds good.

>> +
> 
> This looks like stray whitespace.
> 

ok

>> diff --git a/meta-poky/conf/distro/poky-tiny.conf b/meta-poky/conf/distro/poky-tiny.conf
>> index c6d4b88f83d..9507a68a11e 100644
>> --- a/meta-poky/conf/distro/poky-tiny.conf
>> +++ b/meta-poky/conf/distro/poky-tiny.conf
>> @@ -29,6 +29,8 @@
>>  # [ ] Modify busybox to allow for DISTRO_FEATURES-like confiruration
>>
>>  require conf/distro/poky.conf
>> +require conf/distro/include/gcsections.inc
>> +
>>  DISTRO = "poky-tiny"
>>  DISTROOVERRIDES = "poky:poky-tiny"
>>  TCLIBC = "musl"
>> @@ -122,3 +124,4 @@ PNBLACKLIST[core-image-weston] = "not buildable with poky-tiny"
>>
>>  # Disable python usage in opkg-utils since it won't build with tiny config
>>  PACKAGECONFIG_remove_pn-opkg-utils = "python"
>> +
> 
> This also looks like stray whitespace.
> 

ok

