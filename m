Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 905AFE0086D; Wed,  5 Aug 2015 03:26:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CFD8AE005A2
	for <poky@yoctoproject.org>; Wed,  5 Aug 2015 03:26:03 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga103.fm.intel.com with ESMTP; 05 Aug 2015 03:26:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.15,615,1432623600"; d="scan'208";a="742582525"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.143])
	([10.237.68.143])
	by orsmga001.jf.intel.com with ESMTP; 05 Aug 2015 03:26:03 -0700
Message-ID: <55C1E4FE.1030600@linux.intel.com>
Date: Wed, 05 Aug 2015 13:27:10 +0300
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Icedove/31.7.0
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <cover.1438619357.git.alexander.kanavin@linux.intel.com>	
	<df96a0988d4664a3569e78ca40bef7886de8d39e.1438619357.git.alexander.kanavin@linux.intel.com>
	<1438643386.4796.69.camel@linuxfoundation.org>
In-Reply-To: <1438643386.4796.69.camel@linuxfoundation.org>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/1] package_regex.inc: fix upstream version check for -native and -initial packages
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
X-List-Received-Date: Wed, 05 Aug 2015 10:26:05 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 08/04/2015 02:09 AM, Richard Purdie wrote:

>>   meta-yocto/conf/distro/include/package_regex.inc | 34 ++++++++++++++----------
>>   1 file changed, 20 insertions(+), 14 deletions(-)
>
> Rather than duplicate these, can we teach the code in question how to
> map variables back to the original one (e.g. strip the -native suffix)?

That's right. Also it needs to be done because otherwise upstream check 
won't find the correct tarballs. Distrodata.bbclass already does it 
right at the start of checkpkg task, but RRS apparently does not.

https://bugzilla.yoctoproject.org/show_bug.cgi?id=8102

Alex

