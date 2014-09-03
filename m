Return-Path: <sgw@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9B574E004F5; Wed,  3 Sep 2014 12:51:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 79433E0049D
	for <poky@yoctoproject.org>; Wed,  3 Sep 2014 12:51:08 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 03 Sep 2014 12:51:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.04,459,1406617200"; d="scan'208";a="594113469"
Received: from rrhewawa-mobl.gar.corp.intel.com (HELO [10.255.12.244])
	([10.255.12.244])
	by fmsmga002.fm.intel.com with ESMTP; 03 Sep 2014 12:44:01 -0700
Message-ID: <54076F81.3080705@linux.intel.com>
Date: Wed, 03 Sep 2014 12:44:01 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.7.0
MIME-Version: 1.0
To: "Wang, Yang Y" <yang.y.wang@intel.com>, 
	"poky@yoctoproject.org" <poky@yoctoproject.org>
References: <B00C8E670A91FC4CABB6EF6FE24FF0C80A8055E4@SHSMSX104.ccr.corp.intel.com>
In-Reply-To: <B00C8E670A91FC4CABB6EF6FE24FF0C80A8055E4@SHSMSX104.ccr.corp.intel.com>
Subject: Re: populate_sdk_image function removed in Yocto1.6.1?
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
X-List-Received-Date: Wed, 03 Sep 2014 19:51:21 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 09/03/2014 10:52 AM, Wang, Yang Y wrote:
> Hi,
>
>    I got an issue for the secondary toolchain support with Yocto 1.6.1. In the previous version, e.g. Yocto1.5 poky-dora, I has the function to overwrite the environment script:
>
I think what you are looking for is the populate_sdk task that can be 
run again *image* targets

Example:

bitbake -c populate_sdk core-image-sato
>
>
> populate_sdk_image_append() {
>
>           toolchain_create_sdk_env_script_alt ${SDK_OUTPUT}/${SDKPATH}/environment-setup-${REAL_MULTIMACH_TARGET_SYS}
>
> }
>
you should beable to do a populate_sdk_append()
>
>
> The function populate_sdk_image is defined in the meta/classes/populate_sdk_base.bbclass
>
> This works well for Yocto 1.5
>
>
>
> However in the Yocto 1.6, the function populate_sdk_image was removed from populate_sdk_base.bbclass.
>
> So the populate_sdk_image_append() won't work for my class and my environment scripts will not be generated.
>
> Is this expected changes in the Yocto1.6? In Yocto1.6, which function can I use with append() to generate my environment file? I checked populate_sdk_append() but seems not work.
>
What are you trying to do?  Have you looked at 
toolchain-scripts.bbclass, you might look at the 
toolchain_create_sdk_env_script()

Sau!

> Could anyone help advise?
> Thank you.
> -Yang
>
>
>
>

