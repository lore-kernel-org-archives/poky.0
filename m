Return-Path: <lianhao.lu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5CD264C80050
	for <poky@yoctoproject.org>; Mon, 31 Jan 2011 09:25:02 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 31 Jan 2011 07:25:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,404,1291622400"; d="scan'208";a="382166396"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by azsmga001.ch.intel.com with ESMTP; 31 Jan 2011 07:25:01 -0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Mon, 31 Jan 2011 23:25:00 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Mon, 31 Jan 2011 23:24:59 +0800
From: "Lu, Lianhao" <lianhao.lu@intel.com>
To: "Cui, Dexuan" <dexuan.cui@intel.com>, "Tian, Kevin" <kevin.tian@intel.com>,
	Richard Purdie <richard.purdie@linuxfoundation.org>, 
	"Zhang, Jessica" <jessica.zhang@intel.com>
Date: Mon, 31 Jan 2011 23:24:58 +0800
Thread-Topic: [poky] poky-image-sato-sdk failed at do_rootfs
Thread-Index: AcvAZm0RDySv0vkcQK6RudTUMO8M+gAETFFQAATiiCAAMweUEA==
Message-ID: <C10D3FB0CD45994C8A51FEC1227CE22F20F8C32C7C@shsmsx502.ccr.corp.intel.com>
References: <9AFCD584B0B67B48AE8D8585BE30BA9506BAAFDF@orsmsx504.amr.corp.intel.com>
	<1296382406.13501.7899.camel@rex>
	<625BA99ED14B2D499DC4E29D8138F1504E6294E1D3@shsmsx502.ccr.corp.intel.com>
	<C10D3FB0CD45994C8A51FEC1227CE22F20F8C32A4B@shsmsx502.ccr.corp.intel.com>
In-Reply-To: <C10D3FB0CD45994C8A51FEC1227CE22F20F8C32A4B@shsmsx502.ccr.corp.intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: poky-image-sato-sdk failed at do_rootfs
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
X-List-Received-Date: Mon, 31 Jan 2011 15:25:02 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Lu, Lianhao wrote on 2011-01-30:
> Tian, Kevin wrote on 2011-01-30:
>>> From: Richard Purdie
>>> Sent: Sunday, January 30, 2011 6:13 PM
>>>=20
>>> On Sat, 2011-01-29 at 17:33 -0800, Zhang, Jessica wrote:
>>>> My poky-image-sato-sdk against the latest master is consistently=20
>>>> failed at last step of do_rootfs, here's the error:
>>>>=20
>>>>  Processing task-poky-qt-demos...
>>>> | error: Failed dependencies:
>>>> |  eglibc >=3D 2.12 is needed by libstdc++6-4.5.1-r2.armv5te  eglibc
>>>> | >=3D 2.12 is needed by libgcc1-4.5.1-r0.armv5te Function 'do_rootfs'
>>>> | failed
>>>> (see
>>>=20
>>>=20
>>> /home/jzhang/master-arm-build/tmp/work/qemuarm-poky-linux-gnueabi/po
>>> k y - image-sato-sdk-1.0-r0/temp/log.do_rootfs.6142 for further
>>> information)
>>>> | ERROR: Function 'do_rootfs' failed
>>>> (see
>>>=20
>>>=20
>>> /home/jzhang/master-arm-build/tmp/work/qemuarm-poky-linux-gnueabi/po
>>> k y - image-sato-sdk-1.0-r0/temp/log.do_rootfs.6142 for further
>>> information)
>>>>=20
>>>> Has anybody run into same issue or any idea?
>>>=20
>>> This looks like a race issue we once had. Grepping the gcc include=20
>>> files
>>> revealed:
>>>=20
>>> gcc-configure-cross.inc:do_package_write_ipk[depends] +=3D=20
>>> "virtual/libc:do_package"
>>>=20
>>> which was added to address this problem. Of course now, libgcc and
>>> libstdc++ are built by libgcc and gcc-runtime so I think the correct
>>> approach is to make both of these dependent on the libc packaging to=20
>>> finish.
>>=20
>> Curious how that race condition doesn't cause issue in the 1st place=20
>> when libgcc and gcc-runtime are compiled, while only occurs in final=20
>> rootfs stage...
>>=20
>> BTW, today I took a brief look in Lianhao's cube. His phenomenon is=20
>> even more complex I think because when above error of do_rootfs is=20
>> thrown out there're still 6-7 ongoing tasks which are waited to complete=
.
>>=20
>>>=20
>>> This also shouldn't be ipk specific, in the modern world we can=20
>>> depend on do_package_write.
>>>=20
>>> The problem is that "eglibc" gets renamed to libc at package time.
>>> If the package step hasn't run, the renaming isn't applied to the=20
>>> dependencies that libgcc and libstdc++ have on libc and you see this=20
>>> error. If you rebuild those packages, the image should work.
>>> Since its a race, some builds will work, some won't. Using rm_work=20
>>> will make this bug more likely to appear at a guess.
>>>=20
>>=20
>> Since Lianhao also observed this issue, we'll take a look at this=20
>> issue tomorrow.
>>=20
>=20
> Here is what I found using the master with the latest commit=20
> ffd12fc476d6061ba1e019a1e789cf1a2d3c82e6.
>=20
> 1. set PACKAGE_CLASSES to "package_rpm package_ipk" and target machine=20
> to "qemumips" in conf/local.conf 2. bitbake poky-image-minimal from=20
> scratch, then bitbake meta-toolchain incrementally. Both got built succes=
sfully.
> 3. set PACKAGE_CLASSES to "package_ipk package_rpm"
> 4. bitbake poky-image-minimal incrementally, and it succeeded.
> 5. bitbake meta-toolchain incrementally, it failed complaining about=20
> unsatisfied dependencies to eglibc during opkg installation. See=20
> attached file "log.do_populate_sdk" for details. This failure is then rep=
roducible every time.
> 6. set PACKAGE_CLASSES back to "package_rpm package_ipk"
> 7. bitbake poky-image-minimal incrementally, it failed complaining=20
> about unsatisfied dependencies to eglibc during rpm installation. See=20
> attached file "log.do_rootfs" for details. This failure is then reproduci=
ble every time.
>=20

Just as Richard said, we've confirmed that this issue was caused by a race =
problem. We saw this issue because the libgcc's do_package_write_xxx task g=
ot executed before the eglibc's do_pacakge task finished. This problem migh=
t be there for some time, but somehow it was not exposed until the recent c=
ommit of adding a non stamp task do_populate_lic.(see the email chain named=
 after "summary about recent do_populate_sdk failures" for details).  We sh=
ould add dependency so that the task package_write_xxx of libgcc and libstd=
c++ is dependent upon "virtual/libc:do_package".=20

Is there any package other than libgcc and gcc-runtime have such race probl=
em with libc? I think many packages are implicitly dependent on virtual/lib=
c, how those packages do_package_write_xxx's dependency upon libc's do_pack=
age get assured?

Best Regards,
Lianhao



