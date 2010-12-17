Return-Path: <scott.a.garman@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id C77CD4C80FBE
	for <poky@pokylinux.org>; Thu, 16 Dec 2010 20:31:05 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 16 Dec 2010 18:31:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,358,1288594800"; d="scan'208";a="362936383"
Received: from rrsmsx603.amr.corp.intel.com ([10.31.0.57])
	by azsmga001.ch.intel.com with ESMTP; 16 Dec 2010 18:30:59 -0800
Received: from [10.255.14.24] (10.255.14.24) by rrsmsx603.amr.corp.intel.com
	(10.31.0.57) with Microsoft SMTP Server (TLS) id 8.2.254.0;
	Thu, 16 Dec 2010 19:30:28 -0700
Message-ID: <4D0ACB43.8050909@intel.com>
Date: Thu, 16 Dec 2010 18:30:27 -0800
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101208 Thunderbird/3.1.7
MIME-Version: 1.0
To: "Tian, Kevin" <kevin.tian@intel.com>
References: <4D0ABF1C.6090706@intel.com>
	<625BA99ED14B2D499DC4E29D8138F1504D5F40984C@shsmsx502.ccr.corp.intel.com>
	<4D0AC7D8.8080001@intel.com>
	<625BA99ED14B2D499DC4E29D8138F1504D5F409868@shsmsx502.ccr.corp.intel.com>
In-Reply-To: <625BA99ED14B2D499DC4E29D8138F1504D5F409868@shsmsx502.ccr.corp.intel.com>
Cc: "poky@pokylinux.org" <poky@pokylinux.org>
Subject: Re: Shared state prebuild copy bug report (bug #602)
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
X-List-Received-Date: Fri, 17 Dec 2010 02:31:06 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12/16/2010 06:19 PM, Tian, Kevin wrote:
>> I'm guessing Perl creates a configuration file somewhere in the sysroot
>> which contains full pathnames to it's Perl module directories. That
>> config file gets rolled into the prebuild package and cannot be used on
>> another build directory.
>>
>
> I think so, just curious how it may be reproduced in my side. I just have one
> linux box in front now. :/
>
> Or could you search which file @INC actually points to and its content?

It appears that @INC is encoded into the perl interpreter itself. cd 
into your native sysroot directory and run ./usr/bin/perl -V

To reproduce this, bitbake an image in one directory. Then, create a 
separate directory somewhere else, and copy your sstate-cache over to 
the second build area. Finally (and this is important), rename your 
original build area.

I'd bet that will make this reproducable.

Scott

-- 
Scott Garman
Embedded Linux Distro Engineer - Yocto Project

