Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 446E8E009CA; Thu, 17 May 2018 03:39:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5C26BE00843
	for <poky@yoctoproject.org>; Thu, 17 May 2018 03:39:39 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	17 May 2018 03:39:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.49,410,1520924400"; d="scan'208";a="41997482"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by orsmga008.jf.intel.com with ESMTP; 17 May 2018 03:39:38 -0700
To: Arno Steffens <star@gmx.li>, Bas Mevissen <abuse@basmevissen.nl>
References: <trinity-fe84c674-2df9-449b-8b6a-53f1b7cf21d2-1526375104797@3c-app-gmx-bs15>
	<63ef6b8aff254ed7dc38d9bee7623d4d@basmevissen.nl>
	<trinity-c6098955-a734-46bf-a321-e8d24473dc5d-1526383048370@3c-app-gmx-bs12>
	<1526383459.5720.162.camel@linuxfoundation.org>
	<trinity-bef4d5a0-3616-4539-81d6-e345a1ee4e98-1526387443357@3c-app-gmx-bs12>
	<1f08a8411aad4311f4e5677fe4c0cbfe@basmevissen.nl>
	<trinity-22dc1a63-7fa8-41fd-bc2f-e011b698d3c6-1526461333500@3c-app-gmx-bs71>
	<1fd67bfccb82049ff75349a65d5bc81c@basmevissen.nl>
	<trinity-bafd13ab-8a55-4361-9796-d4dec1738677-1526466175205@3c-app-gmx-bs71>
	<trinity-1da387ae-4287-4deb-9844-59c3a2016d56-1526479553134@3c-app-gmx-bs71>
	<bc174232c043d0844f2a95fc32ca2f9f@basmevissen.nl>
	<trinity-16addffd-a4be-4adb-8d17-45c6ef608732-1526540296031@3c-app-gmx-bs28>
	<ea06c8eca7b0ca720d98f9980076ddc5@basmevissen.nl>
	<trinity-ecca3500-7d71-44c4-83cf-1c6c394eb3a5-1526553333206@3c-app-gmx-bs33>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <039da5e0-d7d8-ae3e-d6eb-845b6e464276@linux.intel.com>
Date: Thu, 17 May 2018 13:32:11 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <trinity-ecca3500-7d71-44c4-83cf-1c6c394eb3a5-1526553333206@3c-app-gmx-bs33>
Cc: poky@yoctoproject.org
Subject: Re: Yocto 2.5 and problem with pseudo-native-1.9.0
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
X-List-Received-Date: Thu, 17 May 2018 10:39:42 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 05/17/2018 01:35 PM, Arno Steffens wrote:
> 2.5 sumo is rather new ...
> 
> Our IT teams give signs to open the port. Is TCP-Port 9418 sufficient?

They can also provide a SOCKS proxy that you can use. That way you can 
access any service, not just git (e.g. ssh can be useful).

Alex

