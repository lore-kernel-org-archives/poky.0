Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A518DE013D6
	for <poky@yoctoproject.org>; Thu, 22 Mar 2012 21:31:25 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 22 Mar 2012 21:31:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="132281169"
Received: from unknown (HELO [10.255.15.202]) ([10.255.15.202])
	by fmsmga001.fm.intel.com with ESMTP; 22 Mar 2012 21:31:23 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: edwin.zhai@intel.com
In-Reply-To: <cover.1332466139.git.edwin.zhai@intel.com>
References: <cover.1332466139.git.edwin.zhai@intel.com>
Date: Thu, 22 Mar 2012 23:31:26 -0500
Message-ID: <1332477086.2310.1.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] choose right video driver for n450
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
X-List-Received-Date: Fri, 23 Mar 2012 04:31:25 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2012-03-23 at 09:36 +0800, edwin.zhai@intel.com wrote:
> From: Zhai Edwin <edwin.zhai@intel.com>
> 
> Tom,
> n450 should use i915 driver rather than i965. With this [YOCTO #1840] got fixed.
> 

You're right, pulled into meta-intel/master.

Tom

> Thanks,
> Edwin
> 
> The following changes since commit 1ada91f40c9c7684ec0963c72de20c639c42ec70:
> 
>   fri2: Add 3.2 kernel recipes (2012-03-20 11:19:28 -0700)
> 
> are available in the git repository at:
>   git://git.pokylinux.org/poky-contrib gzhai/bsp
>   http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=gzhai/bsp
> 
> Zhai Edwin (1):
>   n450: fix wrong video driver
> 
>  conf/machine/include/ia32-base.inc       |    4 ++++
>  meta-sugarbay/conf/machine/sugarbay.conf |    2 +-
>  2 files changed, 5 insertions(+), 1 deletions(-)
> 
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky



