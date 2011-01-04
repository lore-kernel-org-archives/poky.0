Return-Path: <saul.wold@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id ECE014C8086F
	for <poky@pokylinux.org>; Mon,  3 Jan 2011 19:17:16 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 03 Jan 2011 17:17:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,269,1291622400"; d="scan'208";a="693238097"
Received: from unknown (HELO [10.255.14.6]) ([10.255.14.6])
	by orsmga001.jf.intel.com with ESMTP; 03 Jan 2011 17:17:16 -0800
Message-ID: <4D22751B.1090101@intel.com>
Date: Mon, 03 Jan 2011 17:17:15 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Kevin Tian <kevin.tian@intel.com>
References: <b9dded$hh9bqm@orsmga002.jf.intel.com>
In-Reply-To: <b9dded$hh9bqm@orsmga002.jf.intel.com>
Cc: poky@pokylinux.org
Subject: Re: [PATCH 0/1] make c++ include path relative to --sysroot
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
X-List-Received-Date: Tue, 04 Jan 2011 01:17:17 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 12/30/2010 09:28 PM, Kevin Tian wrote:
> with this fix, now gcc installed from sstate packages can find c++ standard header
> files correctly in the new build directory, e.g when building libproxy. There's
> still one remaining issue in meta-toolchain part, that a complex c++ project
> compilation still fails being unable to find<algorithm>, if meta-toolchain is
> installed in a location different from the default assumption.
>
> Having said that, this patch doesn't break normal usage w/o causing regression.
> I verified Sato build for qemuarm/qemuppc, and Lianhao helped verify qemumips
> and corresonding normal meta-toolchain usage. So it'd be good to get it merged
> earlier to remove one more road blocker for sstate.
>
> Thanks to RP for suggesting the solution here.
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: tk/cplusplus
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=tk/cplusplus
>
> Thanks,
>      Kevin Tian<kevin.tian@intel.com>
> ---
>
>
> Kevin Tian (1):
>    gcc-4.5.1: make c++ include path relative to "--sysroot"
>
>   meta/recipes-devtools/gcc/gcc-4.5.1.inc            |    1 +
>   .../GPLUSPLUS_INCLUDE_DIR_with_sysroot.patch       |   33 ++++++++++++++++++++
>   meta/recipes-devtools/gcc/gcc-configure-cross.inc  |    2 +-
>   meta/recipes-devtools/gcc/gcc-configure-sdk.inc    |    2 +-
>   .../gcc/gcc-cross-canadian_4.5.1.bb                |    2 +-
>   .../gcc/gcc-cross-initial_4.5.1.bb                 |    2 +-
>   .../gcc/gcc-cross-intermediate_4.5.1.bb            |    2 +-
>   meta/recipes-devtools/gcc/gcc-cross_4.5.1.bb       |    2 +-
>   .../gcc/gcc-crosssdk-initial_4.5.1.bb              |    2 +-
>   .../gcc/gcc-crosssdk-intermediate_4.5.1.bb         |    2 +-
>   meta/recipes-devtools/gcc/gcc-crosssdk_4.5.1.bb    |    2 +-
>   meta/recipes-devtools/gcc/gcc-runtime_4.5.1.bb     |    2 +-
>   meta/recipes-devtools/gcc/gcc_4.5.1.bb             |    2 +-
>   13 files changed, 45 insertions(+), 11 deletions(-)
>   create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.1/GPLUSPLUS_INCLUDE_DIR_with_sysroot.patch
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>
Pulled into Master

  Thanks
    Sau!


