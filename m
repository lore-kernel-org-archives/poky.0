Return-Path: <edwin.zhai@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id B14BB4C800A6
	for <poky@yoctoproject.org>; Mon, 21 Feb 2011 23:18:26 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 21 Feb 2011 21:18:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,205,1297065600"; d="scan'208";a="605169339"
Received: from shxpwgzhai1a.ccr.corp.intel.com (HELO [10.239.48.130])
	([10.239.48.130])
	by orsmga002.jf.intel.com with ESMTP; 21 Feb 2011 21:18:25 -0800
Message-ID: <4D634721.1020006@intel.com>
Date: Tue, 22 Feb 2011 13:18:25 +0800
From: "Zhai, Edwin" <edwin.zhai@intel.com>
User-Agent: Thunderbird 2.0.0.17 (Windows/20080914)
MIME-Version: 1.0
To: Tom Rini <tom_rini@mentor.com>
References: <cover.1298340269.git.edwin.zhai@intel.com>	<31a41b85a0a81f7a6318aaaee1f19333e6497c9a.1298340269.git.edwin.zhai@intel.com>
	<4D631BF6.7040205@mentor.com>
In-Reply-To: <4D631BF6.7040205@mentor.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/1] qemu: enable audio support
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
X-List-Received-Date: Tue, 22 Feb 2011 05:18:27 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit



Tom Rini wrote:
>
> On 02/21/2011 07:06 PM, Zhai Edwin wrote:
> > From: Zhai Edwin<edwin.zhai@intel.com>
> >
> > On qemux86, export ac97&  es1370 emulated device to guest, and 
> enable host oss&alsa
> > driver. So end user can get sound from qemux86 guest if the sound card
> > driver installed.
>
> Is there a reason to limit this to qemux86/x86_64?  Or are you assuming
> they won't work on other platforms (I have vague memories of putting an
> actual es1370 card in a powerpc platform, a long long time ago...)?  Or
> have you confirmed elsewhere it's not supported outside these platforms?
>

I have not tested other platforms, so only enable qemux86/x86_64. But 
enabling on other platform is easy: Just change the poky-qemu script.

>
>   Thanks!
>
> -- 
> Tom Rini
> Mentor Graphics Corporation
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>

