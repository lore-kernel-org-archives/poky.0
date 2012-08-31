Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9117DE002A5
	for <poky@yoctoproject.org>; Fri, 31 Aug 2012 13:55:02 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 31 Aug 2012 13:55:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,349,1344236400"; d="scan'208";a="216872283"
Received: from unknown (HELO [10.255.13.47]) ([10.255.13.47])
	by fmsmga001.fm.intel.com with ESMTP; 31 Aug 2012 13:55:01 -0700
Message-ID: <1346446500.12571.23.camel@empanada>
From: Tom Zanussi <tom.zanussi@intel.com>
To: poky@yoctoproject.org
Date: Fri, 31 Aug 2012 15:55:00 -0500
In-Reply-To: <cover.1346285456.git.tom.zanussi@intel.com>
References: <cover.1346285456.git.tom.zanussi@intel.com>
X-Mailer: Evolution 3.4.1 (3.4.1-2.fc17) 
Mime-Version: 1.0
Subject: Re: [PATCH 0/4] yocto-bsp updates to reflect ia32-base move, v2
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
X-List-Received-Date: Fri, 31 Aug 2012 20:55:02 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2012-08-29 at 19:15 -0500, tom.zanussi@intel.com wrote:
> From: Tom Zanussi <tom.zanussi@intel.com>
> 
> ia32-base was moved to oe-core, which resulted in some more changes
> yo yocto-bsp.
> 
> v2: exactly the same as the previous version, but again adds 
> 'yocto-bsp: add new strip_base() function', which for some reason
> keeps not getting pulled in.
> 

ping...

Tom

> The following changes since commit bb0aab79e488a99cb1b43f72f0e8ddbe39d97519:
> 
>   yocto-bsp: use KBRANCH_DEFAULT in 'newbranch' cases (2012-08-29 14:23:36 -0700)
> 
> are available in the git repository at:
> 
>   git://git.yoctoproject.org/poky-contrib.git tzanussi/yocto-bsp-ia32-base-updates.v2
>   http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=tzanussi/yocto-bsp-ia32-base-updates.v2
> 
> Tom Zanussi (4):
>   yocto-bsp: include meta-intel.inc if emgd selected
>   yocto-bsp: update the help regarding the meta-intel layer
>   yocto-bsp: add a LICENSE_FLAGS_WHITELIST blurb for emgd to README
>   yocto-bsp: add new strip_base() function
> 
>  scripts/lib/bsp/engine.py                                    | 10 ++++++++++
>  scripts/lib/bsp/help.py                                      | 12 ++++++------
>  scripts/lib/bsp/substrate/target/arch/common/README          |  8 ++++++++
>  .../target/arch/i386/conf/machine/{{=machine}}.conf          |  2 ++
>  4 files changed, 26 insertions(+), 6 deletions(-)
> 



