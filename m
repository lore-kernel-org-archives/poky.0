Return-Path: <saul.wold@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7D5814C81233
	for <poky@yoctoproject.org>; Tue, 30 Nov 2010 12:25:38 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 30 Nov 2010 10:25:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,281,1288594800"; d="scan'208";a="579124861"
Received: from unknown (HELO [10.255.12.249]) ([10.255.12.249])
	by orsmga002.jf.intel.com with ESMTP; 30 Nov 2010 10:25:37 -0800
Message-ID: <4CF5419C.2060508@intel.com>
Date: Tue, 30 Nov 2010 10:25:32 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
References: <4CF53E28.6020708@intel.com>
In-Reply-To: <4CF53E28.6020708@intel.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: Current Autobuilder nightly failures for build #133
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
X-List-Received-Date: Tue, 30 Nov 2010 18:25:38 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11/30/2010 10:10 AM, Elizabeth Flanagan wrote:
> All,
>
> Here are the failures for the currently running nightly. The build is
> not complete yet, so more issues will be coming. This list is only for
> issues logged as ERRORs.
>
Thanks for this summary, this will be good to track moving forward and 
keep the team aware of what's happening.

Sau!


> Package Name:
> blktrace-1.0.1+git0+1e09f6e9012826fca69fa07222b7bc53c3e629ee-r0
>
> Targets Failing:
> poky-image-sdk	x86
> poky-image-sdk	qemumips
>
> Note:
> Fails at do_compile
>
I am not sure what changed, but the build is now working with 
distro/master, may have needed a kernel patch to catch up with the master.

> -------------------]
> Package Name:
> xrandr-1_1.3.4-r0
>
> Targets Failing:
> All
>
> Note:
> do_qa_configure fails because MD5 for the license file has changed.
>
Fixed in distro/master

> -------------------
> Package Name:
> dhcp-4.2.0
>
> Targets Failing:
> poky-image-lsb qemuarm
> poky-image-lsb qemumips
>
> Note:
> fails at do_compile. patch submitted.
> -------------------
>
Tested and fixed in distro/master
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>


