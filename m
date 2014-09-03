Return-Path: <yang.y.wang@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EFAB1E004F5; Wed,  3 Sep 2014 13:31:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C95BCE0049D
	for <poky@yoctoproject.org>; Wed,  3 Sep 2014 13:31:00 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 03 Sep 2014 13:24:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.04,459,1406617200"; d="scan'208";a="597511748"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
	by orsmga002.jf.intel.com with ESMTP; 03 Sep 2014 13:30:59 -0700
Received: from fmsmsx102.amr.corp.intel.com (10.18.124.200) by
	FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server
	(TLS) id 14.3.195.1; Wed, 3 Sep 2014 13:30:58 -0700
Received: from shsmsx103.ccr.corp.intel.com (10.239.4.69) by
	FMSMSX102.amr.corp.intel.com (10.18.124.200) with Microsoft SMTP Server
	(TLS) id 14.3.195.1; Wed, 3 Sep 2014 13:30:58 -0700
Received: from shsmsx104.ccr.corp.intel.com ([169.254.5.17]) by
	SHSMSX103.ccr.corp.intel.com ([169.254.4.219]) with mapi id
	14.03.0195.001; Thu, 4 Sep 2014 04:30:51 +0800
From: "Wang, Yang Y" <yang.y.wang@intel.com>
To: Saul Wold <sgw@linux.intel.com>, "poky@yoctoproject.org"
	<poky@yoctoproject.org>
Thread-Topic: [poky] populate_sdk_image function removed in Yocto1.6.1?
Thread-Index: Ac/Hn11KIWMqFN+GRiGUmBVs3VlF3v//mfqA//9vtLA=
Date: Wed, 3 Sep 2014 20:30:50 +0000
Message-ID: <B00C8E670A91FC4CABB6EF6FE24FF0C80A8058A7@SHSMSX104.ccr.corp.intel.com>
References: <B00C8E670A91FC4CABB6EF6FE24FF0C80A8055E4@SHSMSX104.ccr.corp.intel.com>
	<54076F81.3080705@linux.intel.com>
In-Reply-To: <54076F81.3080705@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.239.127.40]
MIME-Version: 1.0
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
X-List-Received-Date: Wed, 03 Sep 2014 20:31:14 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Saul,
	Thank you very much for the reply.
Yes, I'm using "bitbake -c populate_sdk core-image-sato" to build the SDK.
I'm trying to generate a new environment-setup-i586-wrs-linux-icc script wh=
ich is based on the GCC environment file environment-setup-i586-wrs-linux.
In my implementation,=20
	populate_sdk_image_append() {
           toolchain_create_sdk_env_script_alt  ${SDK_OUTPUT}/${SDKPATH}/en=
vironment-setup-${REAL_MULTIMACH_TARGET_SYS
    }
the populate_sdk_image_append() function will be invoked to generate the ne=
w environment script file. toolchain_create_sdk_env_script_alt is my implem=
entation for the new script file.=20
My implementation is very similar as http://www.openembedded.org/wiki/Addin=
g_a_secondary_toolchain This works for the yocto1.5 release.
However in the yocto1.6.1, this is not working. I checked the file meta/cla=
sses/populate_sdk_base.bbclass in yocto1.6.1 and compare with yocto 1.5, th=
e function populate_sdk_image was removed in yocto1.6.1 when creating the s=
dk image.
So not sure why this happens.
I do try the populate_sdk_append() but seems it does not work. My script fi=
le is not generated and added into sdk image.
Thanks.
-Yang


-----Original Message-----
From: Saul Wold [mailto:sgw@linux.intel.com]=20
Sent: Wednesday, September 03, 2014 12:44 PM
To: Wang, Yang Y; poky@yoctoproject.org
Subject: Re: [poky] populate_sdk_image function removed in Yocto1.6.1?

On 09/03/2014 10:52 AM, Wang, Yang Y wrote:
> Hi,
>
>    I got an issue for the secondary toolchain support with Yocto 1.6.1. I=
n the previous version, e.g. Yocto1.5 poky-dora, I has the function to over=
write the environment script:
>
I think what you are looking for is the populate_sdk task that can be run a=
gain *image* targets

Example:

bitbake -c populate_sdk core-image-sato
>
>
> populate_sdk_image_append() {
>
>           toolchain_create_sdk_env_script_alt=20
> ${SDK_OUTPUT}/${SDKPATH}/environment-setup-${REAL_MULTIMACH_TARGET_SYS
> }
>
> }
>
you should beable to do a populate_sdk_append()
>
>
> The function populate_sdk_image is defined in the=20
> meta/classes/populate_sdk_base.bbclass
>
> This works well for Yocto 1.5
>
>
>
> However in the Yocto 1.6, the function populate_sdk_image was removed fro=
m populate_sdk_base.bbclass.
>
> So the populate_sdk_image_append() won't work for my class and my environ=
ment scripts will not be generated.
>
> Is this expected changes in the Yocto1.6? In Yocto1.6, which function can=
 I use with append() to generate my environment file? I checked populate_sd=
k_append() but seems not work.
>
What are you trying to do?  Have you looked at toolchain-scripts.bbclass, y=
ou might look at the
toolchain_create_sdk_env_script()

Sau!

> Could anyone help advise?
> Thank you.
> -Yang
>
>
>
>

