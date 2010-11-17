Return-Path: <Tom_Rini@mentor.com>
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by mx1.pokylinux.org (Postfix) with ESMTP id A5BC04C8106A
	for <poky@yoctoproject.org>; Wed, 17 Nov 2010 08:31:17 -0600 (CST)
Received: from svr-orw-fem-01.mgc.mentorg.com ([147.34.98.93])
	by relay1.mentorg.com with esmtp 
	id 1PIj2a-0002oe-Rs from Tom_Rini@mentor.com 
	for poky@yoctoproject.org; Wed, 17 Nov 2010 06:31:16 -0800
Received: from na2-mail.mgc.mentorg.com ([134.86.114.213]) by
	svr-orw-fem-01.mgc.mentorg.com with Microsoft
	SMTPSVC(6.0.3790.4675); Wed, 17 Nov 2010 06:31:16 -0800
Received: from [172.30.7.13] ([172.30.7.13]) by na2-mail.mgc.mentorg.com with
	Microsoft SMTPSVC(6.0.3790.3959); Wed, 17 Nov 2010 07:31:13 -0700
Message-ID: <4CE3E72E.6070904@mentor.com>
Date: Wed, 17 Nov 2010 07:31:10 -0700
From: Tom Rini <tom_rini@mentor.com>
Organization: Mentor Graphics Corporation
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.1.15) Gecko/20101027 Lightning/1.0b1 Thunderbird/3.0.10
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <625BA99ED14B2D499DC4E29D8138F1504D31419AED@shsmsx502.ccr.corp.intel.com>
	<1290004124.2518.4.camel@scimitar>
In-Reply-To: <1290004124.2518.4.camel@scimitar>
X-OriginalArrivalTime: 17 Nov 2010 14:31:14.0153 (UTC)
	FILETIME=[1670BD90:01CB8664]
Subject: Re: a new problem with sstate
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
X-List-Received-Date: Wed, 17 Nov 2010 14:31:18 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11/17/2010 07:28 AM, Joshua Lock wrote:
> On Wed, 2010-11-17 at 21:21 +0800, Tian, Kevin wrote:
>> When looking into the problem why some prebuilts can't be reused, I've struggled with
>> another issue these days. It's more severe because the 2nd build can't even succeed
>> when prebuilt is used.
>>
>> The failure happened randomly on eglibc, eglibc-initial, and gcc-runtime. The error log
>> shows that either gcc libraries or eglibc headers are not correctly installed when building
>> those recipes. This first led me to think about potential dependency problem among
>> those recipes. However this only happens when prebuilt is used. A fresh build just
>> succeeds.
>>
>> Finally it turns out from two factors:
>>
>> 	o sstate.bbclass has special handling about -initial and -intermediate recipes. If
>> a complete (e.g. gcc-cross or eglibc) setscene function has been invoked already,
>> installation for those special sstate packages is skipped, while still marked as
>> accelerate-able
>
> The special casing in the sstate class was added to work around the fact
> that the toolchain bootstrap overwrites some pieces of the sysroot
> (bug#239).
>
> http://bugzilla.yoctoproject.org/show_bug.cgi?id=239
>
> If this is still not working is there anything stopping us from
> expanding the workaround Richard started in
> ecf2eb1efa145d5c8f350697ec605ea58beb9ba7 as a temporary fix until bug
> 239 is fixed?
>
> http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=ecf2eb1efa145d5c8f350697ec605ea58beb9ba7

With old style packaged-staging we workaround this by doing:

# We want to be certain that the scene is set for us only after it's set for
# our dependencies, to avoid problems with pstage package install order.
do_setscene[deptask] = "do_setscene"

Can something similar be done for the sstate way of the world?

-- 
Tom Rini
Mentor Graphics Corporation

