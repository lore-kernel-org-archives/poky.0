Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BC344E00B31; Tue, 20 Jun 2017 07:07:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.31 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 559D2E00B2E
	for <poky@yoctoproject.org>; Tue, 20 Jun 2017 07:07:20 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga104.jf.intel.com with ESMTP; 20 Jun 2017 07:07:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.39,364,1493708400"; d="scan'208";a="101571742"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by orsmga002.jf.intel.com with ESMTP; 20 Jun 2017 07:07:19 -0700
To: "Burton, Ross" <ross.burton@intel.com>
References: <20170620132415.10818-1-ross.burton@intel.com>
	<adb6de21-4f2c-71db-d31d-1688f82960d7@linux.intel.com>
	<CAJTo0LYRJT8_6yJS73RtJR1a2=K923jrfah8i1ftrER939X2=w@mail.gmail.com>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <88b20571-7f64-bf58-5135-2670418a2f9f@linux.intel.com>
Date: Tue, 20 Jun 2017 17:04:32 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <CAJTo0LYRJT8_6yJS73RtJR1a2=K923jrfah8i1ftrER939X2=w@mail.gmail.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: [PATCH] conf/maintainers: update for revised maintainership
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
X-List-Received-Date: Tue, 20 Jun 2017 14:07:23 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 06/20/2017 04:53 PM, Burton, Ross wrote:
>     Why drop these? They are valid recipes, and it's useful to have a
>     name attached to them on packages.yoctoproject.org
>     <http://packages.yoctoproject.org>, if nothing else.
>
>
> Partly because I'm not convinced there's a great reason to have a named
> person on a packagegroup or image, and partly because it makes it look
> like I own vast chunks of the recipes...

Alright. Don't have a strong opinion here. I'll rebase my patch after 
yours shows up in poky master.

Alex


