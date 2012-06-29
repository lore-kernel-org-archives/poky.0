Return-Path: <dvhart@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 45D0CE006D9
	for <poky@yoctoproject.org>; Fri, 29 Jun 2012 16:03:03 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 29 Jun 2012 16:03:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="171807503"
Received: from unknown (HELO envy.home) ([10.255.13.25])
	by fmsmga001.fm.intel.com with ESMTP; 29 Jun 2012 16:03:02 -0700
Message-ID: <4FEE33CB.3010609@linux.intel.com>
Date: Fri, 29 Jun 2012 16:01:31 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:13.0) Gecko/20120615 Thunderbird/13.0.1
MIME-Version: 1.0
To: Khem Raj <raj.khem@gmail.com>
References: <cover.1340998763.git.dvhart@linux.intel.com>
	<4263ffefaa6f3b0069bc41c0f7578d36717edcfc.1340998763.git.dvhart@linux.intel.com>
	<53ce203eec118e3d5b0faac4c8e71f69c9857146.1340998763.git.dvhart@linux.intel.com>
	<CAMKF1sqrg5O7A1Tt=XjTzc0PfV5ZKcETe1tJfHOP460NNmpojw@mail.gmail.com>
In-Reply-To: <CAMKF1sqrg5O7A1Tt=XjTzc0PfV5ZKcETe1tJfHOP460NNmpojw@mail.gmail.com>
X-Enigmail-Version: 1.4.2
Cc: Poky <poky@yoctoproject.org>, Kishore Bodke <kishore.k.bodke@intel.com>,
	"openembedded-core@lists.openembedded.org"
	<openembedded-core@lists.openembedded.org>
Subject: Re: [PATCH 4/5] tasl-core-sdk: Add kernel-dev to task-core-sdk RDEPENDS
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
X-List-Received-Date: Fri, 29 Jun 2012 23:03:03 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 06/29/2012 02:59 PM, Khem Raj wrote:

>>  ALLOW_EMPTY = "1"
>>  #PACKAGEFUNCS =+ 'generate_sdk_pkgs'
>> @@ -46,7 +46,8 @@ RDEPENDS_task-core-sdk = "\
>>     distcc \
>>     ldd \
>>     file \
>> -    tcl"
>> +    tcl \
>> +    kernel-dev"
> 
> Doesn't this.make sdk to be machine specific now

It does indeed as the kernel-dev contains the system map, config, and
possibly even modified headers dependingon the KBRANCH.

Is task-core-sdk intended to be only architecture specific?

If so, I can just add kernel-dev to the -sdk image recipes directly
rather than modifying task-core-sdk.

Jessica, any opinion here?

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel



