Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E2EB3E00B76; Tue, 20 Jun 2017 06:38:30 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4082FE009C2
	for <poky@yoctoproject.org>; Tue, 20 Jun 2017 06:38:29 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	20 Jun 2017 06:38:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.39,364,1493708400"; d="scan'208";a="983052241"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by orsmga003.jf.intel.com with ESMTP; 20 Jun 2017 06:38:28 -0700
To: Ross Burton <ross.burton@intel.com>, poky@yoctoproject.org
References: <20170620132415.10818-1-ross.burton@intel.com>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <adb6de21-4f2c-71db-d31d-1688f82960d7@linux.intel.com>
Date: Tue, 20 Jun 2017 16:35:41 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <20170620132415.10818-1-ross.burton@intel.com>
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
X-List-Received-Date: Tue, 20 Jun 2017 13:38:30 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 06/20/2017 04:24 PM, Ross Burton wrote:
> -RECIPE_MAINTAINER_pn-core-image-base = "Ross Burton <ross.burton@intel.com>"
> -RECIPE_MAINTAINER_pn-core-image-clutter = "Ross Burton <ross.burton@intel.com>"
> -RECIPE_MAINTAINER_pn-core-image-full-cmdline = "Ross Burton <ross.burton@intel.com>"
> -RECIPE_MAINTAINER_pn-core-image-kernel-dev = "Ross Burton <ross.burton@intel.com>"
....
> -RECIPE_MAINTAINER_pn-packagegroup-base = "Ross Burton <ross.burton@intel.com>"
> -RECIPE_MAINTAINER_pn-packagegroup-core-boot = "Ross Burton <ross.burton@intel.com>"
> -RECIPE_MAINTAINER_pn-packagegroup-core-buildessential = "Ross Burton <ross.burton@intel.com>"
> -RECIPE_MAINTAINER_pn-packagegroup-core-clutter = "Ross Burton <ross.burton@intel.com>"
> -RECIPE_MAINTAINER_pn-packagegroup-core-device-devel = "Ross Burton <ross.burton@intel.com>"
> -RECIPE_MAINTAINER_pn-packagegroup-core-directfb = "Ross Burton <ross.burton@intel.com>"
> -RECIPE_MAINTAINER_pn-packagegroup-core-eclipse-debug = "Ross Burton <ross.burton@intel.com>"

Why drop these? They are valid recipes, and it's useful to have a name 
attached to them on packages.yoctoproject.org, if nothing else.

Alex

