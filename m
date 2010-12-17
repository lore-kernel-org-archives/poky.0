Return-Path: <scott.a.garman@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 56E5B4C80FBE
	for <poky@pokylinux.org>; Thu, 16 Dec 2010 23:43:28 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 16 Dec 2010 21:43:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,359,1288594800"; d="scan'208";a="869197917"
Received: from rrsmsx603.amr.corp.intel.com ([10.31.0.57])
	by fmsmga001.fm.intel.com with ESMTP; 16 Dec 2010 21:43:27 -0800
Received: from [10.255.13.72] (10.255.13.72) by rrsmsx603.amr.corp.intel.com
	(10.31.0.57) with Microsoft SMTP Server (TLS) id 8.2.254.0;
	Thu, 16 Dec 2010 22:43:27 -0700
Message-ID: <4D0AF87A.7060201@intel.com>
Date: Thu, 16 Dec 2010 21:43:22 -0800
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Lightning/1.0b2 Thunderbird/3.1.7
MIME-Version: 1.0
To: "Tian, Kevin" <kevin.tian@intel.com>
References: <4D0ABF1C.6090706@intel.com>
	<625BA99ED14B2D499DC4E29D8138F1504D5F40984C@shsmsx502.ccr.corp.intel.com>
	<4D0AC7D8.8080001@intel.com>
	<625BA99ED14B2D499DC4E29D8138F1504D5F409868@shsmsx502.ccr.corp.intel.com>
	<4D0ACB43.8050909@intel.com>
	<625BA99ED14B2D499DC4E29D8138F1504D5F409997@shsmsx502.ccr.corp.intel.com>
In-Reply-To: <625BA99ED14B2D499DC4E29D8138F1504D5F409997@shsmsx502.ccr.corp.intel.com>
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
X-List-Received-Date: Fri, 17 Dec 2010 05:43:28 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12/16/2010 08:47 PM, Tian, Kevin wrote:
>> It appears that @INC is encoded into the perl interpreter itself. cd
>> into your native sysroot directory and run ./usr/bin/perl -V
>>
>> To reproduce this, bitbake an image in one directory. Then, create a
>> separate directory somewhere else, and copy your sstate-cache over to
>> the second build area. Finally (and this is important), rename your
>> original build area.
>>
>> I'd bet that will make this reproducable.
>>
>
> I assume that you're not using the latest master, correct? I'm asking here as I
> encountered other errors earlier than this one due to a 'noexec' change from RP
> yesterday, and thus your info would confirm my guess. :-)

No, I managed to do this test with today's commit 
(ac4364698618a541624d1a00f27b638815e5a3f5).

> Then after revert that commit, now I do reproduce this with same error as yours,
> except that it happens on git-native. This is understood as I think all perl related
> scripts will hit this issue.

This will impact a ton of recipes as perl is used heavily by autotools.

> However I haven't found which bit contains that bad link pointing to original build
> directory. I checked tmp/sysroot/i686-linux/usr/lib/perl/5.8.8/Config.pm, where
> all hard paths are changed to new build directory correctly... :/

Thanks for looking into this.

Scott

-- 
Scott Garman
Embedded Linux Distro Engineer - Yocto Project

