Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EBE33E011C0
	for <poky@yoctoproject.org>; Mon,  1 Oct 2012 09:58:27 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 01 Oct 2012 09:58:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,517,1344236400"; d="scan'208";a="229154953"
Received: from unknown (HELO helios.localnet) ([10.252.122.40])
	by fmsmga002.fm.intel.com with ESMTP; 01 Oct 2012 09:58:26 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 01 Oct 2012 17:58:25 +0100
Message-ID: <4890658.Z4EHLe5yFh@helios>
Organization: Intel Corporation
User-Agent: KMail/4.9.1 (Linux/3.2.0-31-generic-pae; KDE/4.9.1; i686; ; )
In-Reply-To: <CAJTo0LYVJTzEQT6uhUL8ASKORJL_1coJAa-rLXG25C4o3Khq0g@mail.gmail.com>
References: <1349109710-7478-1-git-send-email-paul.eggleton@linux.intel.com>
	<CAJTo0LYVJTzEQT6uhUL8ASKORJL_1coJAa-rLXG25C4o3Khq0g@mail.gmail.com>
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: [meta-yocto][PATCH] poky.conf: supported distro warning update
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
X-List-Received-Date: Mon, 01 Oct 2012 16:58:28 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday 01 October 2012 17:54:16 Burton, Ross wrote:
> On 1 October 2012 17:41, Paul Eggleton <paul.eggleton@linux.intel.com> 
wrote:
> > * Remove Fedora 15 (no longer supported by Fedora project)
> > * Add upcoming Fedora 18
> > * Add upcoming Ubuntu 12.10
> > * Add CentOS 5.8 & 6.3
> > * Add new Poky distro name format (self-hosted / build appliance) for
> > 
> >   Yocto Project 1.2 / 1.3
> > 
> > * Update Debian squeeze to 6.0.5 (automatic update from earlier 6.0.x)
> 
> 6.0.6 was literally just released. :)

Well knock me down with a feather. ;)

Patch v2 on the way I guess...

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

