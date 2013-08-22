Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2E176E00406
	for <poky@yoctoproject.org>; Thu, 22 Aug 2013 11:33:18 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 22 Aug 2013 11:33:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,935,1367996400"; d="scan'208";a="366954741"
Received: from dvhart-mobl4.jf.intel.com (HELO [10.7.201.147]) ([10.7.201.147])
	by orsmga001.jf.intel.com with ESMTP; 22 Aug 2013 11:33:18 -0700
Message-ID: <1377196395.5259.32.camel@dvhart-mobl4.amr.corp.intel.com>
From: Darren Hart <dvhart@linux.intel.com>
To: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 22 Aug 2013 11:33:15 -0700
In-Reply-To: <CAJTo0LZ0_YEGW_Qz-sab=su2vu2wEB4Z6y6+MjjuC6u5eeKdxg@mail.gmail.com>
References: <2eacc0a56e45f8210ff25844cee1fd31014cbb64.1377186905.git.ross.burton@intel.com>
	<c6e699b18e2e78f9e44de5c49482afe0d46f8f95.1377186905.git.ross.burton@intel.com>
	<1377193460.5259.17.camel@dvhart-mobl4.amr.corp.intel.com>
	<CAJTo0LZ0_YEGW_Qz-sab=su2vu2wEB4Z6y6+MjjuC6u5eeKdxg@mail.gmail.com>
Organization: Intel
X-Mailer: Evolution 3.8.5 (3.8.5-2.fc19) 
Mime-Version: 1.0
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: [PATCH 2/4] genericx86: add v86d to machine recommends for uvesafb
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
X-List-Received-Date: Thu, 22 Aug 2013 18:33:19 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2013-08-22 at 19:21 +0100, Burton, Ross wrote:
> On 22 August 2013 18:44, Darren Hart <dvhart@linux.intel.com> wrote:
> > This is added to MACHINE_ESSENTIAL_EXTRA_RDEPENDS for qemux86.
> >
> > MACHINE_EXTRA_RRECOMMENDS does not impact packagegroup-core-boot, and
> > therefor not core-image-minimal. Perhaps that is the intention?
> 
> It's not essential, no v86d means no uvesafb driver which isn't the
> end of the world, and possibly what you want for a minimal image.
> 
> Ross

In that case:

Acked-by: Darren Hart <dvhart@linux.intel.com>

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel



