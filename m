Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5E7CDE00C88; Wed, 13 Sep 2017 06:39:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EA023E00C2B
	for <poky@yoctoproject.org>; Wed, 13 Sep 2017 06:39:20 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id v8DDdHAb014873
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 13 Sep 2017 06:39:17 -0700 (PDT)
Received: from [128.224.56.93] (128.224.56.93) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.361.1;
	Wed, 13 Sep 2017 06:39:16 -0700
To: =?UTF-8?Q?Gy=c3=b6rgy_K=c3=b6vesdi?= <kgy@teledigit.eu>,
	<poky@yoctoproject.org>
References: <0ec57716-ba1e-5cb1-670a-a7b4bdf3dad9@teledigit.eu>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <698c3727-d56d-ebb0-5383-ae4fa2bf5232@windriver.com>
Date: Wed, 13 Sep 2017 09:39:16 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <0ec57716-ba1e-5cb1-670a-a7b4bdf3dad9@teledigit.eu>
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
X-List-Received-Date: Wed, 13 Sep 2017 13:39:21 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 09/13/2017 09:07 AM, György Kövesdi wrote:
> Hi,
> 
> I have poky at git hash 5686f4e1fe5229705b8c7d35895aa03827796d13 and I 
> build for ARMv7.
> 
> I wanted to build my kernel module using the SDK generated this way:
> 
>      bitbake <my-image> -c populate_sdk
> 
> and the recipe kernel-devsrc is added to my sdk.
> 
> I found that the recipe meta/recipes-kernel/linux/kernel-devsrc.bb puts 
> everything in the kernel source tree, except the following executables:
> 
>      scripts/recordmcount
>      scripts/basic/fixdep
>      scripts/mod/modpost
> 
> These would be essential for module development.
> 
> In the recipe kernel-devsrc.bb the following line
> 
>      oe_runmake -C $kerneldir CC="${KERNEL_CC}" LD="${KERNEL_LD}" clean 
> _mrproper_scripts
> 
> removes everything, including the executables mentioned above.
> IMHO it would be enough to run:
> 
>      oe_runmake -C $kerneldir CC="${KERNEL_CC}" LD="${KERNEL_LD}" clean
> 
> In this case the module development works properly with the resulting SDK.
> Is the 'mrproper' really necessary? IMHO the 'clean' is enough there, 
> because 'mrproper' removes too much.

The executables can't be packaged with the actual kernel source, since
we run into QA errors due to architecture mismatches.

Variants of this issue/concern have been around for several years now,
but since there are workarounds of simply re-creating the scripts
after SDK install, it hasn't been fixed to work out of the box.

So unfortunately, it isn't as simple as just leaving those scripts in
the devsrc package.

A couple of bugs that track work on this are:

https://bugzilla.yoctoproject.org/show_bug.cgi?id=4389
https://bugzilla.yoctoproject.org/show_bug.cgi?id=6630

Bruce

> 
> Regards
> Gyorgy Kovesdi
> 
> 


