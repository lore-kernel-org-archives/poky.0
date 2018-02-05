Return-Path: <anuj.mittal@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 189FAE0085E; Mon,  5 Feb 2018 06:20:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 07306E005BB
	for <poky@yoctoproject.org>; Mon,  5 Feb 2018 06:20:47 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	05 Feb 2018 06:20:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.46,464,1511856000"; d="scan'208";a="32101703"
Received: from anmitta2-mobl1.gar.corp.intel.com (HELO [10.255.163.156])
	([10.255.163.156])
	by orsmga002.jf.intel.com with ESMTP; 05 Feb 2018 06:20:46 -0800
To: star@gmx.li
References: <trinity-20f872c2-19c2-4de6-b977-5b88adae1eb3-1517824511514@3c-app-gmx-bs39>
	<84f1733e-a5cd-b9d6-c75d-cdb8faf38815@intel.com>
	<trinity-92e2db9a-aa15-48ad-b7d5-80b10abb70b2-1517835902286@3c-app-gmx-bs39>
From: Anuj Mittal <anuj.mittal@intel.com>
Message-ID: <98fa3583-b321-2cc6-b95c-d193beb78d15@intel.com>
Date: Mon, 5 Feb 2018 22:20:44 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <trinity-92e2db9a-aa15-48ad-b7d5-80b10abb70b2-1517835902286@3c-app-gmx-bs39>
Cc: poky@yoctoproject.org
Subject: Re: libs / so without a link to xxx.so.1
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 05 Feb 2018 14:20:49 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 02/05/2018 09:05 PM, star@gmx.li wrote:
> 
> 
>> Gesendet: Montag, 05. Februar 2018 um 11:21 Uhr
>> Von: "Anuj Mittal" <anuj.mittal@intel.com>
>> An: poky@yoctoproject.org
>> Betreff: Re: [poky] libs / so without a link to xxx.so.1
>>
> Thanks Anuj,  but I don't think so. The libs itself are not in the dev package, but in the libcurlpp1
> And I include them like this:
> 
> IMAGE_INSTALL = "packagegroup-core-boot ${CORE_IMAGE_EXTRA_INSTALL} ..... curl libcurlpp"
> 
> TOOLCHAIN_TARGET_TASK_append = " zlib-dev curl-dev libcurlpp-dev net-snmp-dev libidn-dev"

In general, in addition to looking at the recipe, you can check
packages-split in recipe $WORKDIR to see what's where. In this case, the
package you're probably looking for is "curlpp-dev" not libcurlpp-dev:

$ tree packages-split/curlpp-dev/
packages-split/curlpp-dev/
└── usr
    └── lib
        └── libcurlpp.so -> libcurlpp.so.1

2 directories, 1 file

https://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#structure-build-tmp-work-tunearch-recipename-version

Thanks,

Anuj

> 
> And I use the rootfs that is created with -c populate_sdk.
> So it is a bug in the package? Or am I doing wrong?
> 
> 
>> On 02/05/2018 05:55 PM, Arno Steffens wrote:
>>> Using in my project libcurlpp. It is created with yocto (2.3.3), but in my filesystem I just see:
>>>
>>> "/usr/lib/libcurlpp.so.1" which is a link to libcurlpp.so.1.0.0
>>>
>>> What I miss is "libvcurlpp.so" (without version number), as my project includes  "-lcurlpp".
>>
>> You're probably missing the -dev package in your image.
>>
>> Thanks,
>> Anuj
>>
>>>
>>> My question: is there a reason for that? Is this a bug in the scripts or did I handle it wrong?
>>>
>>> I can do "-l:libcurlpp.so.1" but this looks only like a second best solution to me.
>>> Thanks and best regards
>>> Arno
>>>
>>
>> -- 
>> _______________________________________________
>> poky mailing list
>> poky@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/poky
>>


