Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 544D0E00903; Fri, 22 Jan 2016 04:52:13 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0B3B2E00803
	for <poky@yoctoproject.org>; Fri, 22 Jan 2016 04:52:11 -0800 (PST)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga102.fm.intel.com with ESMTP; 22 Jan 2016 04:52:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.22,331,1449561600"; d="scan'208";a="639345157"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by FMSMGA003.fm.intel.com with ESMTP; 22 Jan 2016 04:52:08 -0800
To: poky@yoctoproject.org
References: <1453394435-3847-1-git-send-email-alejandro.hernandez@linux.intel.com>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <56A22562.4010002@linux.intel.com>
Date: Fri, 22 Jan 2016 14:49:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Icedove/38.5.0
MIME-Version: 1.0
In-Reply-To: <1453394435-3847-1-git-send-email-alejandro.hernandez@linux.intel.com>
Subject: Re: [PATCH] maintainers.inc: Correct maintainership for several packages
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
X-List-Received-Date: Fri, 22 Jan 2016 12:52:13 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 01/21/2016 06:40 PM, Alejandro Hernandez wrote:
> Signed-off-by: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
>   RECIPE_MAINTAINER_pn-perl = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
> +RECIPE_MAINTAINER_pn-perl-native = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"

I think we actually have a deficiency in RRS here. When determining 
maintainers for -native recipes it should fall back to the 'base' 
recipes. Can you file a bug against RRS in bugzilla?


Alex


