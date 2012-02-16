Return-Path: <David.Nystrom@enea.com>
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id CB3FAE0030B
	for <poky@yoctoproject.org>; Thu, 16 Feb 2012 06:13:31 -0800 (PST)
Received: from [172.16.140.132] (172.16.140.132) by smtp.enea.com
	(172.21.1.208) with Microsoft SMTP Server id 14.2.247.3;
	Thu, 16 Feb 2012 15:13:29 +0100
Message-ID: <4F3D0F10.3070902@enea.com>
Date: Thu, 16 Feb 2012 15:13:36 +0100
From: =?UTF-8?B?RGF2aWQgTnlzdHLDtm0=?= <david.nystrom@enea.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:9.0) Gecko/20111229 Thunderbird/9.0
MIME-Version: 1.0
To: <poky@yoctoproject.org>
References: <1329209188.15247.YahooMailNeo@web29001.mail.ird.yahoo.com>
	<857BE142E5399E46B20FD45B9DB8A7BC0FCE74DE@SHSMSX102.ccr.corp.intel.com>
	<1329213674.19294.YahooMailNeo@web29004.mail.ird.yahoo.com>
	<1329214323.96557.YahooMailNeo@web29011.mail.ird.yahoo.com>
In-Reply-To: <1329214323.96557.YahooMailNeo@web29011.mail.ird.yahoo.com>
X-Originating-IP: [172.16.140.132]
Subject: Re: Re : Re : Building sysroot for SDK
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
X-List-Received-Date: Thu, 16 Feb 2012 14:13:32 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 02/14/2012 11:12 AM, Patrick wrote:
>
>>> Hi Patrick,
>>>
>>> If you want to add more packages into the sysroot built by meta-toolchain, you may add your extra packages(i.e. libsqlite3-dev) into the variable "TOOLCHAIN_TARGET_TASK". 
>>> Meta/recipes-core/meta/meta-toolchain-gmae.bb might be an example of how to add more packages into the target sysroot.
>>>
>>> Best Regards,
>>> Lianhao
>>>
>> Hi Lianhao,
>>
>> Thanks for your help ! I have created my own meta-toolchain based on meta-toolchain-gmae.bb and it's work nicely.
>> However, there remains a small problem. My own meta-toolchain-perso.bb file is stored in my own layer meta-perso.
>> To include the meta-toolchain.bb with require I need to use the full path to the meta layer: require ../../../meta/recipes-core/meta/meta-toolchain.bb
>> This is not really clean, do you know how to point the meta-toolchain.bb file without using the full path ?
>>
>> Thanks again for your help
>>
>> Patrick
> I answer myself to my question:
> I used a meta-toolchain.bbappend file placed in my own layer. This file append the libqlite3-dev package to the TOOLCHAIN_TARGET_TASK.
> This works fine !
>
> Patrick
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
Hi,

Should you not also be able to use your favourite package manager 
included in the toolchain tarball for this ?
opkg-cl -f /opt/poky/1.1/sysroots/ppce500mc-enea-linux/etc/opkg.conf 
--offline-root /opt/poky/1.1/sysroots/ppce500mc-enea-linux/ update
opkg-cl -f /opt/poky/1.1/sysroots/ppce500mc-enea-linux/etc/opkg.conf 
--offline-root /opt/poky/1.1/sysroots/ppce500mc-enea-linux/ install 
libsqlite3-dev



