Return-Path: <kevin.tian@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8AA124C80FAD
	for <poky@yoctoproject.org>; Wed, 15 Dec 2010 20:59:52 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 15 Dec 2010 18:59:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,352,1288594800"; d="scan'208";a="362384590"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by azsmga001.ch.intel.com with ESMTP; 15 Dec 2010 18:59:50 -0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Thu, 16 Dec 2010 10:59:39 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Thu, 16 Dec 2010 10:59:38 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Date: Thu, 16 Dec 2010 10:59:36 +0800
Thread-Topic: [poky] question about task override
Thread-Index: AcucVo3Ddn+JUP3vTYmYuC3Mfm/WkgAbRLxA
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504D5F409401@shsmsx502.ccr.corp.intel.com>
References: <625BA99ED14B2D499DC4E29D8138F1504D5F4091FC@shsmsx502.ccr.corp.intel.com>
	<201012151249.31647.paul.eggleton@linux.intel.com>
In-Reply-To: <201012151249.31647.paul.eggleton@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: question about task override
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
X-List-Received-Date: Thu, 16 Dec 2010 02:59:52 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

>From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]
>Sent: Wednesday, December 15, 2010 8:50 PM
>
>On Wednesday 15 December 2010 11:24:02 Tian, Kevin wrote:
>.. top part snipped...
>> (meta/conf/distro/poky.conf)
>> do_deploy[vardepsexclude] =3D "DATE TIME"
>> kernel_do_deploy[vardepsexclude] =3D "DATE TIME"
>>
>> There's one example in poky.conf:
>>
>> patch_do_patch[vardepsexclude] =3D "DATE SRCDATE"
>>
>> which works. Does that mean I have to change do_deploy in kernel.bbclass=
 to
>> kernel_do_deploy which is unique in global namespace and then can be ref=
erenced
>> from other places?
>
>I haven't looked closely into the rest of your post, but I can say that th=
e reason your
>example above won't work is that vardepsexclude will currently only exclud=
e direct
>dependencies, and DATE and TIME aren't directly referred to by do_deploy -=
 it's via
>DATETIME and KERNEL_IMAGE_BASE_NAME. I've attached a graphviz dot diagram =
for
>linux-yocto do_deploy which was produced from debug output, if it helps ma=
ke it clearer
>(viewable with "dot linux_yocto_do_deploy.dot -Tpng > output.png" ).

Got it. I didn't realize it. Thanks for explaining it.

>
>When I was testing vardepsexclude I did wonder whether applying it additio=
nally after
>checking sub-dependencies in order to get around the indirect dependency i=
ssue would be
>a good idea; in the end I elected not to do it for the moment as it is pos=
sibly better to be
>completely explicit. There is the other question as well as to how to deal=
 with dependencies
>in overridden versions of generic functions, which is what you are alludin=
g to I think.

If possible I always try to only include the leaf variables depended by oth=
ers. This way
we can reduce the number of variables in the whitelist. But I can understan=
d your design
choice here, so I'll switch to use DATETIME.

>
>However, my question is if KERNEL_IMAGE_BASE_NAME includes DATETIME, is it=
 a good idea
>to be attempting to exclude the dependency?
>

I think there's no correctness issue, since this is only related to an outp=
ut variable.=20

However here I do realize one potential question which is perhaps what you =
question here,
i.e. do we want to change KERNEL_IMAGE_BASE_NAME for every build when there=
's sstate
package which could be reused?

By reusing I think it's fine to use same DATETIME from what's contained ins=
ide sstate package,
since it indicates exactly when it's generated.

Thanks
Kevin

