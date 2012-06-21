Return-Path: <scott.a.garman@intel.com>
Received: from orsmga101.jf.intel.com (mga06.intel.com [134.134.136.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1C4B9E00723
	for <poky@yoctoproject.org>; Thu, 21 Jun 2012 13:59:26 -0700 (PDT)
Received: from mail-pz0-f52.google.com ([209.85.210.52])
	by mga02.intel.com with ESMTP/TLS/RC4-MD5; 21 Jun 2012 13:59:23 -0700
Received: by dano14 with SMTP id o14so1438696dan.25
	for <poky@yoctoproject.org>; Thu, 21 Jun 2012 13:59:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding
	:x-gm-message-state;
	bh=dYt5uiTNu0SHzgladrWnzSAmXm0g/RwOx9hYlUwQH6E=;
	b=Wc1TiLUZXaDMk+LuM22qQCkSe42am+poYXnES2IkZQ/7t+jd0DhkCi+WfTLaWB6rZf
	nFAX+TFrGKx85ps0+beYLMZwM97kRvFYsFhRfzdzCAW3umdxvtlAVnB0ODwfJkZbChsV
	FqDPzmBIFXHeDjDqb8wz0knQl86bane2diziPs46bUgWYYQZPyagY0NwSPhB9MwYda1q
	VSCBkqEPYdw8LQM/VES51rIw39hu9EzDMec7fAzfHwBYr/Q6xTKtV+PVxR4NdMe+OxWe
	hqEmt2AEfOXtx2S+v8RBlML4mGpi75DgtRW5rrk9Ld0jckIv1dm5a6bViKSrg2Z5MDTG
	ytoA==
Received: by 10.68.224.70 with SMTP id ra6mr2820590pbc.11.1340312363224;
	Thu, 21 Jun 2012 13:59:23 -0700 (PDT)
Received: from [127.0.0.1] (masterfoo.zenlinux.com. [207.192.74.254])
	by mx.google.com with ESMTPS id op10sm5677017pbc.75.2012.06.21.13.59.20
	(version=SSLv3 cipher=OTHER); Thu, 21 Jun 2012 13:59:22 -0700 (PDT)
Message-ID: <4FE38AB3.40503@intel.com>
Date: Thu, 21 Jun 2012 13:57:23 -0700
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: Khem Raj <raj.khem@gmail.com>
References: <cover.1340038493.git.scott.a.garman@intel.com>
	<3a231c484aaa511b95f9232d000b1190327b4626.1340038494.git.scott.a.garman@intel.com>
	<CAMKF1sp4KvDtK68NQNtOhSmCF6WK738Yr9cXOA0ntkHJ9wpYUQ@mail.gmail.com>
In-Reply-To: <CAMKF1sp4KvDtK68NQNtOhSmCF6WK738Yr9cXOA0ntkHJ9wpYUQ@mail.gmail.com>
X-Gm-Message-State: ALoCoQkLbb5Kzlq59kEMCZnEetbmaaaBqbYzD7bQqFe/Q+eOt6whaP+kwrFCWkGBJuwApoSNjFU/
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 4/8] sanity.bbclass: warn the user if BBPATH contains wrong entries
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 21 Jun 2012 20:59:26 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 06/21/2012 08:51 AM, Khem Raj wrote:
> On Mon, Jun 18, 2012 at 12:56 PM, Scott Garman<scott.a.garman@intel.com>  wrote:
>> From: Laurentiu Palcu<laurentiu.palcu@intel.com>
>>
>> If BBPATH references the working directory, the user is warned and asked
>> to fix the problem.
>>
>> [Yocto #1465]
>>
>> (From OE-Core rev: 73f10ae955ba217078fa2c5288b736ae8a30b184)
>>
>> Signed-off-by: Laurentiu Palcu<laurentiu.palcu@intel.com>
>> Signed-off-by: Richard Purdie<richard.purdie@linuxfoundation.org>
>>
>> Reworked commit to fix merge conflicts with denzil branch.
>>
>> Signed-off-by: Scott Garman<scott.a.garman@intel.com>
>> ---
>>   meta/classes/sanity.bbclass |   13 ++++++++++++-
>>   1 file changed, 12 insertions(+), 1 deletion(-)
>>
>> diff --git a/meta/classes/sanity.bbclass b/meta/classes/sanity.bbclass
>> index 9755694..298372b 100644
>> --- a/meta/classes/sanity.bbclass
>> +++ b/meta/classes/sanity.bbclass
>> @@ -310,7 +310,18 @@ def check_sanity(sanity_data):
>>      if "." in data.getVar('PATH', sanity_data, True).split(":"):
>>          messages = messages + "PATH contains '.' which will break the build, please remove this"
>>
>> -    if data.getVar('TARGET_ARCH', sanity_data, True) == "arm":
>> +    bbpaths = sanity_data.getVar('BBPATH', True).split(":")
>> +    if "." in bbpaths or "" in bbpaths:
>> +        # TODO: change the following message to fatal when all BBPATH issues
>> +        # are fixed
>> +        bb.warn("BBPATH references the current directory, either through "    \
>> +                "an empty entry, or a '.'.\n\t This is unsafe and means your "\
>> +                "layer configuration is adding empty elements to BBPATH.\n\t "\
>> +                "Please check your layer.conf files and other BBPATH "        \
>> +                "settings to remove the current working directory "           \
>> +                "references.");
>> +
>> +    if sanity_data.getVar('TARGET_ARCH', True) == "arm":
>
> No I get this warning when I use OE-Core standalone. The reason is for OE-Core
>
> BBPATH .= ":${LAYERDIR}"
>
> and there are no more entries prepended since its the only layer so
> leading : is causing
> this warning to show up.
>
>>          # This path is no longer user-readable in modern (very recent) Linux
>>          try:
>>              if os.path.exists("/proc/sys/vm/mmap_min_addr"):
>> --
>> 1.7.9.5

Richard didn't end up pulling this in, and explained his reasoning on 
the oe-core ML. So no worries.

Scott

-- 
Scott Garman
Embedded Linux Engineer - Yocto Project
Intel Open Source Technology Center

