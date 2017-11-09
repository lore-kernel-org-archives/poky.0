Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 945D7E00D44; Thu,  9 Nov 2017 04:57:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [134.134.136.31 listed in list.dnswl.org]
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1FE5EE00CE8
	for <poky@yoctoproject.org>; Thu,  9 Nov 2017 04:57:17 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga104.jf.intel.com with ESMTP; 09 Nov 2017 04:57:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.44,369,1505804400"; 
   d="scan'208";a="686449"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by fmsmga001.fm.intel.com with ESMTP; 09 Nov 2017 04:57:16 -0800
To: poky@yoctoproject.org, "Mardegan, Alberto" <AMardegan@luxoft.com>
References: <95b09017-37a3-be4d-29b7-1676aef39af6@luxoft.com>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <397f75bc-5c49-fb12-2556-29a26878cd87@linux.intel.com>
Date: Thu, 9 Nov 2017 14:57:24 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <95b09017-37a3-be4d-29b7-1676aef39af6@luxoft.com>
Subject: Re: INCOMPATIBLE_LICENSE and license aliases
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
X-List-Received-Date: Thu, 09 Nov 2017 12:57:18 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 11/09/2017 02:08 PM, Mardegan, Alberto wrote:

> I see that in meta/conf/licenses.conf there is a mapping of variations
> of license names to the SPDX standard name, but it seems that this does
> not affect the handling of INCOMPATIBLE_LICENSE.
> 
> Is this a bug, or some misunderstanding of mine?

 From what I see in classes/base.bbclass and classes/license.bbclass, 
both INCOMPATIBLE_LICENSE and package-specific LICENSE should be 
canonicalized to SPDX and then matched against each other. Maybe it's 
best to see what actually happens in the code - insert additional 
bb.debug() calls as needed.

Alex

