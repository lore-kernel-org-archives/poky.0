Return-Path: <anjandeep.sahni@ti.com>
Received: from devils.ext.ti.com (devils.ext.ti.com [198.47.26.153])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B23B8E00BA7
	for <poky@yoctoproject.org>; Fri, 28 Mar 2014 03:20:32 -0700 (PDT)
Received: from dflxv15.itg.ti.com ([128.247.5.124])
	by devils.ext.ti.com (8.13.7/8.13.7) with ESMTP id s2SAKVEK000947
	for <poky@yoctoproject.org>; Fri, 28 Mar 2014 05:20:31 -0500
Received: from DLEE70.ent.ti.com (dlemailx.itg.ti.com [157.170.170.113])
	by dflxv15.itg.ti.com (8.14.3/8.13.8) with ESMTP id s2SAKVV0027786
	for <poky@yoctoproject.org>; Fri, 28 Mar 2014 05:20:31 -0500
Received: from dflp32.itg.ti.com (10.64.6.15) by DLEE70.ent.ti.com
	(157.170.170.113) with Microsoft SMTP Server id 14.3.174.1;
	Fri, 28 Mar 2014 05:20:31 -0500
Received: from [172.24.145.160] (ileax41-snat.itg.ti.com [10.172.224.153])	by
	dflp32.itg.ti.com (8.14.3/8.13.8) with ESMTP id s2SAKT7d004964	for
	<poky@yoctoproject.org>; Fri, 28 Mar 2014 05:20:30 -0500
Message-ID: <53354CED.4090700@ti.com>
Date: Fri, 28 Mar 2014 15:50:29 +0530
From: Anjandeep Sahni <x0212391@ti.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.3.0
MIME-Version: 1.0
To: "poky, mailing-list" <poky@yoctoproject.org>
Subject: External Toolchain
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
X-List-Received-Date: Fri, 28 Mar 2014 10:20:32 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

Hi all,

I am fairly new to poky. Just had a few queries.

I wanted to know where exactly in the build directory does poky build 
the default toolchain.
And also if I have to use an external linaro toolchain, how would I go 
about it? Should I just include the meta-linaro layer, and add the 
TCMODE variable to local.conf?
I downloaded and extracted the prebuilt binaries for linaro toolchain. 
How do I point my build system to use these instead of the default 
toolchain?

-- 
Regards,
Anjandeep Sahni

