Return-Path: <kgy@teledigit.eu>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EA028E00CC4; Wed, 13 Sep 2017 23:40:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from teledigit.eu (unknown [195.56.148.71])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A9541E00CB4
	for <poky@yoctoproject.org>; Wed, 13 Sep 2017 23:40:48 -0700 (PDT)
X-AuthUser: kgy@teledigit.eu
Received: from [192.168.42.160] ([176.63.203.49]:34366)
	by teledigit.eu with [XMail 1.27 ESMTP Server]
	id <SBC383> for <poky@yoctoproject.org> from <kgy@teledigit.eu>;
	Thu, 14 Sep 2017 08:40:44 +0200
References: <0ec57716-ba1e-5cb1-670a-a7b4bdf3dad9@teledigit.eu>
	<698c3727-d56d-ebb0-5383-ae4fa2bf5232@windriver.com>
To: poky@yoctoproject.org
From: =?UTF-8?Q?Gy=c3=b6rgy_K=c3=b6vesdi?= <kgy@teledigit.eu>
Message-ID: <ecab5fed-47f1-c12e-8ec0-6f4aeb90c9c6@teledigit.eu>
Date: Thu, 14 Sep 2017 08:40:44 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <698c3727-d56d-ebb0-5383-ae4fa2bf5232@windriver.com>
Subject: Re: kernel module development problem with SDK
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
X-List-Received-Date: Thu, 14 Sep 2017 06:40:52 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US

Hi,

I put them back and there is no problem if they are stripped. However, 
other versions of Poky may lead to QA error.


On 2017-09-13 15:39, Bruce Ashfield wrote:
> On 09/13/2017 09:07 AM, György Kövesdi wrote:
>> Hi,
>>
>> I have poky at git hash 5686f4e1fe5229705b8c7d35895aa03827796d13 and 
>> I build for ARMv7.
>>
>> I wanted to build my kernel module using the SDK generated this way:
>>
>>      bitbake <my-image> -c populate_sdk
>>
>> and the recipe kernel-devsrc is added to my sdk.
>>
>> I found that the recipe meta/recipes-kernel/linux/kernel-devsrc.bb 
>> puts everything in the kernel source tree, except the following 
>> executables:
>>
>>      scripts/recordmcount
>>      scripts/basic/fixdep
>>      scripts/mod/modpost
>>
>> These would be essential for module development.
>>
>> In the recipe kernel-devsrc.bb the following line
>>
>>      oe_runmake -C $kerneldir CC="${KERNEL_CC}" LD="${KERNEL_LD}" 
>> clean _mrproper_scripts
>>
>> removes everything, including the executables mentioned above.
>> IMHO it would be enough to run:
>>
>>      oe_runmake -C $kerneldir CC="${KERNEL_CC}" LD="${KERNEL_LD}" clean
>>
>> In this case the module development works properly with the resulting 
>> SDK.
>> Is the 'mrproper' really necessary? IMHO the 'clean' is enough there, 
>> because 'mrproper' removes too much.
>
> The executables can't be packaged with the actual kernel source, since
> we run into QA errors due to architecture mismatches.
>
> Variants of this issue/concern have been around for several years now,
> but since there are workarounds of simply re-creating the scripts
> after SDK install, it hasn't been fixed to work out of the box.
>
> So unfortunately, it isn't as simple as just leaving those scripts in
> the devsrc package.
>
> A couple of bugs that track work on this are:
>
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=4389
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=6630
>
> Bruce
>
>>
>> Regards
>> Gyorgy Kovesdi
>>
>>
>
>


