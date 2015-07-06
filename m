Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7C2DCE009E6; Mon,  6 Jul 2015 09:36:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5AE7CE007A3
	for <poky@yoctoproject.org>; Mon,  6 Jul 2015 09:36:28 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 06 Jul 2015 09:36:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.15,415,1432623600"; d="scan'208";a="723762826"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.143])
	([10.237.68.143])
	by orsmga001.jf.intel.com with ESMTP; 06 Jul 2015 09:36:11 -0700
Message-ID: <559AAE9D.5010500@linux.intel.com>
Date: Mon, 06 Jul 2015 19:36:45 +0300
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Icedove/31.7.0
MIME-Version: 1.0
To: Tanu Kaskinen <tanu.kaskinen@linux.intel.com>, poky@yoctoproject.org
References: <1436200247-9112-1-git-send-email-tanu.kaskinen@linux.intel.com>
In-Reply-To: <1436200247-9112-1-git-send-email-tanu.kaskinen@linux.intel.com>
Subject: Re: [PATCH] maintainers.inc: reassign audio recipe maintainership
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
X-List-Received-Date: Mon, 06 Jul 2015 16:36:33 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 07/06/2015 07:30 PM, Tanu Kaskinen wrote:
> -RECIPE_MAINTAINER_pn-alsa-lib = "Cristian Iorga <cristian.iorga@intel.com>"
> -RECIPE_MAINTAINER_pn-alsa-state = "Cristian Iorga <cristian.iorga@intel.com>"
> -RECIPE_MAINTAINER_pn-alsa-tools = "Kai Kang <kai.kang@windriver.com>"
> -RECIPE_MAINTAINER_pn-alsa-utils = "Cristian Iorga <cristian.iorga@intel.com>"
> -RECIPE_MAINTAINER_pn-alsa-utils-alsaconf = "Cristian Iorga <cristian.iorga@intel.com>"
> +RECIPE_MAINTAINER_pn-alsa-lib = "Tanu Kaskinen <tanu.kaskinen@linux.intel.com>"
> +RECIPE_MAINTAINER_pn-alsa-plugins = "Tanu Kaskinen <tanu.kaskinen@linux.intel.com>"
> +RECIPE_MAINTAINER_pn-alsa-state = "Tanu Kaskinen <tanu.kaskinen@linux.intel.com>"
> +RECIPE_MAINTAINER_pn-alsa-tools = "Tanu Kaskinen <tanu.kaskinen@linux.intel.com>"
> +RECIPE_MAINTAINER_pn-alsa-utils = "Tanu Kaskinen <tanu.kaskinen@linux.intel.com>"
> +RECIPE_MAINTAINER_pn-alsa-utils-scripts = "Tanu Kaskinen <tanu.kaskinen@linux.intel.com>"

You are leaving Intel soon, so

a) will the email address still be valid?
b) will you continue to maintain the recipes?

Alex


