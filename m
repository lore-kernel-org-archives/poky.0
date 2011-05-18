Return-Path: <saul.wold@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id E5E704C80A52
	for <poky@yoctoproject.org>; Wed, 18 May 2011 16:20:13 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 18 May 2011 14:20:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,233,1304319600"; 
   d="scan'208";a="4225313"
Received: from unknown (HELO [10.255.12.160]) ([10.255.12.160])
	by fmsmga001.fm.intel.com with ESMTP; 18 May 2011 14:20:13 -0700
Message-ID: <4DD4380C.1030805@intel.com>
Date: Wed, 18 May 2011 14:20:12 -0700
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110428 Fedora/3.1.10-1.fc13 Thunderbird/3.1.10
MIME-Version: 1.0
To: Gary Thomas <gary@mlbassoc.com>
References: <4DD42F74.7040009@mlbassoc.com> <4DD4353A.9040607@mlbassoc.com>
In-Reply-To: <4DD4353A.9040607@mlbassoc.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: Poky master broken
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
X-List-Received-Date: Wed, 18 May 2011 21:20:14 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 05/18/2011 02:08 PM, Gary Thomas wrote:
> On 05/18/2011 02:43 PM, Gary Thomas wrote:
>> Just merged with 3ea694cf688f26d47149200d0dc522da51a87e58
>> Try to build perl for beagleboard fails - see log at
>> http://www.mlbassoc.com/poky/perl-do_compile
>
> Seems to have been caused by
> commit 5a3d24e6bfc371ce9445cd2676dfa20ac82cb7a0
> Author: Tom Rini <tom_rini@mentor.com>
> Date: Mon May 16 13:14:12 2011 -0700
>
> perl-native: create_wrapper on perl${PV} too
>
> Reverting this change lets me build the target perl.
>
Gary,

I have a proposed fix to utils.bbclass on the oe-core list.

Sau!

