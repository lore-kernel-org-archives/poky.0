Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 169BB4C80FBE
	for <poky@yoctoproject.org>; Thu, 30 Dec 2010 10:32:51 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 30 Dec 2010 08:32:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,250,1291622400"; d="scan'208";a="692018073"
Received: from unknown (HELO [10.255.13.220]) ([10.255.13.220])
	by orsmga001.jf.intel.com with ESMTP; 30 Dec 2010 08:32:50 -0800
Message-ID: <4D1CB436.2090200@linux.intel.com>
Date: Thu, 30 Dec 2010 08:32:54 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Lightning/1.0b2 Thunderbird/3.1.7
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <4D1A8103.2030501@linux.intel.com>	
	<AANLkTinj7sVzHzDX9b09H+BQy4HDUvs-5kt8gehhOiZ2@mail.gmail.com>	
	<4D1A879E.6060702@linux.intel.com>
	<1293708069.17519.10063.camel@rex>
In-Reply-To: <1293708069.17519.10063.camel@rex>
Cc: Chris Larson <clarson@kergoth.com>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: Library paths for Makefile based recipes
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
X-List-Received-Date: Thu, 30 Dec 2010 16:32:51 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 12/30/2010 03:21 AM, Richard Purdie wrote:
> On Tue, 2010-12-28 at 16:58 -0800, Darren Hart wrote:
>> Turns out the project Makefile is doing this:
>>
>> CC = $(CROSS_COMPILE)gcc
>> AR = $(CROSS_COMPILE)ar
>>
>> Removing those lines from the Makefile allows the project to build.
>
> You could also set CROSS_COMPILE to the right value (TARGET_PREFIX?) and
> things should work. This looks very similar to how we cross compile the
> kernel.

I tried that first, it led to loads of cross-compilation errors. I 
didn't investigate much further as explicitly setting CC, AR, etc for 
oe_runmake resolved the issue.

-- 
Darren Hart
Yocto Linux Kernel

