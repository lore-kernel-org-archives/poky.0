Return-Path: <tanu.kaskinen@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CA57EE009E6; Mon,  6 Jul 2015 10:02:31 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 25978E007A3
	for <poky@yoctoproject.org>; Mon,  6 Jul 2015 10:02:27 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga102.jf.intel.com with ESMTP; 06 Jul 2015 10:02:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.15,415,1432623600"; d="scan'208";a="741576777"
Received: from tkkaskin-mobl3.ger.corp.intel.com (HELO [10.252.2.187])
	([10.252.2.187])
	by fmsmga001.fm.intel.com with ESMTP; 06 Jul 2015 10:02:17 -0700
Message-ID: <1436202135.2486.7.camel@tkkaskin-mobl3.ger.corp.intel.com>
From: Tanu Kaskinen <tanu.kaskinen@linux.intel.com>
To: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Date: Mon, 06 Jul 2015 20:02:15 +0300
In-Reply-To: <559AAE9D.5010500@linux.intel.com>
References: <1436200247-9112-1-git-send-email-tanu.kaskinen@linux.intel.com>
	<559AAE9D.5010500@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - PL 281, 00181 Helsinki
X-Mailer: Evolution 3.10.4 (3.10.4-4.fc20) 
Mime-Version: 1.0
Cc: poky@yoctoproject.org
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
X-List-Received-Date: Mon, 06 Jul 2015 17:02:31 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2015-07-06 at 19:36 +0300, Alexander Kanavin wrote:
> On 07/06/2015 07:30 PM, Tanu Kaskinen wrote:
> > -RECIPE_MAINTAINER_pn-alsa-lib = "Cristian Iorga <cristian.iorga@intel.com>"
> > -RECIPE_MAINTAINER_pn-alsa-state = "Cristian Iorga <cristian.iorga@intel.com>"
> > -RECIPE_MAINTAINER_pn-alsa-tools = "Kai Kang <kai.kang@windriver.com>"
> > -RECIPE_MAINTAINER_pn-alsa-utils = "Cristian Iorga <cristian.iorga@intel.com>"
> > -RECIPE_MAINTAINER_pn-alsa-utils-alsaconf = "Cristian Iorga <cristian.iorga@intel.com>"
> > +RECIPE_MAINTAINER_pn-alsa-lib = "Tanu Kaskinen <tanu.kaskinen@linux.intel.com>"
> > +RECIPE_MAINTAINER_pn-alsa-plugins = "Tanu Kaskinen <tanu.kaskinen@linux.intel.com>"
> > +RECIPE_MAINTAINER_pn-alsa-state = "Tanu Kaskinen <tanu.kaskinen@linux.intel.com>"
> > +RECIPE_MAINTAINER_pn-alsa-tools = "Tanu Kaskinen <tanu.kaskinen@linux.intel.com>"
> > +RECIPE_MAINTAINER_pn-alsa-utils = "Tanu Kaskinen <tanu.kaskinen@linux.intel.com>"
> > +RECIPE_MAINTAINER_pn-alsa-utils-scripts = "Tanu Kaskinen <tanu.kaskinen@linux.intel.com>"
> 
> You are leaving Intel soon, so

[For other people's information, "soon" = at the end of August.]

> a) will the email address still be valid?

No, it will have to be updated.

> b) will you continue to maintain the recipes?

I'd like to, but I haven't agreed about it with anyone. If the Yocto
project wishes to keep the recipe maintenance within Intel/Windriver,
that's fine by me.

-- 
Tanu


