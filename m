Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by mx.groups.io with SMTP id smtpd.web09.31695.1605030944046587985
 for <poky@lists.yoctoproject.org>;
 Tue, 10 Nov 2020 09:55:44 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kernel.org header.s=default header.b=z0JqdnPP;
 spf=pass (domain: kernel.org, ip: 198.145.29.99, mailfrom: okaya@kernel.org)
Received: from [192.168.0.113] (75-58-59-55.lightspeed.rlghnc.sbcglobal.net [75.58.59.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 13F7B20781;
	Tue, 10 Nov 2020 17:55:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1605030943;
	bh=46FR+Uxy0HZ7ak9H6DNw9sXR7eeNqxAxqzzhSLlK9XE=;
	h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
	b=z0JqdnPPs8CnVZF072eibkSNUIT0DM3W3Qk2zKKImgKX0VPqhgTvL3mhcA8iF6/hB
	 mQYkjtO7cLYzpE8PfSxWDVzf5P8YncrQLLp07PYAjHP1pYOaBuOyq0yEgGcQGIKSpj
	 seaqoDaJ3ff5+abOe+Urt306rPR9l3BmErwYXtxQ=
Subject: Re: [poky] [PATCH v3] poky-tiny: enable section removal
To: Paul Barker <pbarker@konsulko.com>
Cc: poky@lists.yoctoproject.org
References: <20201109223824.12351-1-okaya@kernel.org>
 <CAM9ZRVvcLwFs6zgw_5+BdjYVjevm=46CBTOko4774wRM86Zo1A@mail.gmail.com>
From: "Sinan Kaya" <okaya@kernel.org>
Message-ID: <62b06a64-c998-e4b8-5f21-4a6336e06801@kernel.org>
Date: Tue, 10 Nov 2020 12:55:42 -0500
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.1
MIME-Version: 1.0
In-Reply-To: <CAM9ZRVvcLwFs6zgw_5+BdjYVjevm=46CBTOko4774wRM86Zo1A@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 11/10/2020 5:11 AM, Paul Barker wrote:
> On Mon, 9 Nov 2020 at 22:38, Sinan Kaya <okaya@kernel.org> wrote:
>> Use GCC sections flags so that unused sections can be garbage
>> collected at link time.
>>
>> Signed-off-by: Sinan Kaya <okaya@kernel.org>
>> ---
>>  meta-poky/conf/distro/poky-tiny.conf | 18 ++++++++++++++++++
>>  1 file changed, 18 insertions(+)
>>
>> diff --git a/meta-poky/conf/distro/poky-tiny.conf b/meta-poky/conf/distro/poky-tiny.conf
>> index c6d4b88f83d..1e37394875d 100644
>> --- a/meta-poky/conf/distro/poky-tiny.conf
>> +++ b/meta-poky/conf/distro/poky-tiny.conf
>> @@ -122,3 +122,21 @@ PNBLACKLIST[core-image-weston] = "not buildable with poky-tiny"
>>
>>  # Disable python usage in opkg-utils since it won't build with tiny config
>>  PACKAGECONFIG_remove_pn-opkg-utils = "python"
>> +
>> +# set default for all targets
>> +CFLAGS_append = " -ffunction-sections -fdata-sections"
>> +LDFLAGS_append = " -Wl,--gc-sections"
>> +
>> +# gc-sections requires either an entry or an undefined symbol
>> +CFLAGS_remove_pn-glibc = "-ffunction-sections -fdata-sections"
>> +LDFLAGS_remove_pn-glibc = "-Wl,--gc-sections"
>> +
>> +# perl won't cross compile with sections
>> +CFLAGS_remove_pn-perl = "-ffunction-sections -fdata-sections"
>> +LDFLAGS_remove_pn-perl = "-Wl,--gc-sections"
>> +
>> +# Unknown float word ordering. You need to manually preset
>> +CFLAGS_remove_pn-cairo = "-ffunction-sections -fdata-sections"
>> +LDFLAGS_remove_pn-cairo = "-Wl,--gc-sections"
>> +
>> +
> Using _remove in a common layer like this is discouraged as it's very
> difficult to override anywhere else.
> 
> I'd recommend defining new variables with default values which enable
> the flags you want then append them to CFLAGS and LDFLAGS
> respectively. This allows the new variables to be overridden per
> package very easily. Also consider that you may want to apply these
> only for the target and not for native/nativesdk packages.
> 
> Here's a quick untested example:
> 
> CFLAGS_SECTION_REMOVAL = "-ffunction-sections -fdata-sections"
> LDFLAGS_SECTION_REMOVAL = "-Wl,--gc-sections"
> 
> CFLAGS_SECTION_REMOVAL_pn-glibc = ""
> LDFLAGS_SECTION_REMOVAL_pn-glibc = ""
> CFLAGS_SECTION_REMOVAL_pn-perl = ""
> LDFLAGS_SECTION_REMOVAL_pn-perl = ""
> CFLAGS_SECTION_REMOVAL_pn-cairo = ""
> LDFLAGS_SECTION_REMOVAL_pn-cairo = ""
> 
> CFLAGS_append_class-target = " ${CFLAGS_SECTION_REMOVAL}"
> LDFLAGS_append_class-target = " ${LDFLAGS_SECTION_REMOVAL}"
> 
> You could also look at `meta/conf/distro/include/security_flags.inc`
> in oe-core as an example.

Makes sense.

> 
> And lastly it looks like you have a couple of extra newlines added at
> the end of the file, these can be dropped.

Sure, let me look. It must be left over there when I removed other
configs.

> 
> Thanks,
> 
> -- Paul Barker Konsulko Group
> 

