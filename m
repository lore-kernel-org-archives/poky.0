Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 641EA4C803A5
	for <poky@yoctoproject.org>; Wed,  1 Dec 2010 15:00:29 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 01 Dec 2010 13:00:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,285,1288594800"; d="scan'208";a="579604636"
Received: from eflanlinux.jf.intel.com (HELO [10.7.201.99]) ([10.7.201.99])
	by orsmga002.jf.intel.com with ESMTP; 01 Dec 2010 13:00:29 -0800
Message-ID: <4CF6B708.2030002@intel.com>
Date: Wed, 01 Dec 2010 12:58:48 -0800
From: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.15) Gecko/20101026 SUSE/3.0.10 Lightning/1.0b1
	Thunderbird/3.0.10 ThunderBrowse/3.3.3
MIME-Version: 1.0
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
References: <4CF53E28.6020708@intel.com>
In-Reply-To: <4CF53E28.6020708@intel.com>
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
X-List-Received-Date: Wed, 01 Dec 2010 21:00:29 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

More failures from #133 (and #134). These are in addition to what was
reported last night.


Package Name:
libart-lgpl-2.3.21-r1

Targets Failing:
All arch meta-toolchain-sdk do_unpack

-------------------

Package Name:
gupnp-tools_0.8.bb

Targets Failing:
All arch meta-toolchain-sdk do_configure

Note:
configure: error: Package requirements (gnome-icon-theme >= 2.20) were
not met:

-------------------

Package Name:
libatomics-ops_1.2

Targets Failing:
both SDKMACHINE values: qemumips meta-toolchain-sdk do_compile

Note:
In file included from atomic_ops_stack.h:32:0,
                  from atomic_ops_malloc.c:20:
atomic_ops.h:260:4: error: #error Cannot implement
AO_compare_and_swap_full on this architecture.




On 11/30/2010 10:10 AM, Elizabeth Flanagan wrote:
> All,
> 
> Here are the failures for the currently running nightly. The build is
> not complete yet, so more issues will be coming. This list is only for
> issues logged as ERRORs.
> 
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
> -------------------
> Package Name:
> xrandr-1_1.3.4-r0
> 
> Targets Failing:
> All
> 
> Note:
> do_qa_configure fails because MD5 for the license file has changed.
> 
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
> 
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


