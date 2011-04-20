Return-Path: <josh@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id BACD44C80A70
	for <poky@yoctoproject.org>; Wed, 20 Apr 2011 18:17:37 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 20 Apr 2011 16:17:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,248,1301900400"; d="scan'208";a="631752082"
Received: from unknown (HELO [10.255.13.72]) ([10.255.13.72])
	by orsmga002.jf.intel.com with ESMTP; 20 Apr 2011 16:17:14 -0700
From: Joshua Lock <josh@linux.intel.com>
To: poky@yoctoproject.org
Date: Wed, 20 Apr 2011 16:17:13 -0700
In-Reply-To: <BANLkTinU+JDgmJkcNp60aR5LEwX2uCCbvA@mail.gmail.com>
References: <BANLkTinU+JDgmJkcNp60aR5LEwX2uCCbvA@mail.gmail.com>
X-Mailer: Evolution 3.0.0 (3.0.0-1.fc15) 
Message-ID: <1303341434.2893.23.camel@scimitar>
Mime-Version: 1.0
Subject: Re: How to deal with ERROR: Nothing RPROVIDES 'perf'
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
X-List-Received-Date: Wed, 20 Apr 2011 23:17:38 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-04-20 at 20:55 +0200, Francis Meyvis wrote:
> Hello,
> 
> I'm using yocto's bernard and trying to build for an arm board (igep0020).
> For this I created meta/conf/machines/igep0020.conf.
> And my build/conf/local.conf's MACHINE is set as ipep0020
> As a start I used the content of the existing beagleboard.conf for igep0020.conf
> I have also this line in my local.conf:
> EXTRA_IMAGE_FEATURES = "dbg-pkgs dev-pkgs tools-sdk tools-debug
> tools-profile tools-testapps debug-tweaks"
> 
> A bitbake seems to fail each time with these messages below.
> If I limit the EXTRA_IMAGE_FEATURES as follows "dbg-pkgs dev-pkgs
> tools-sdk debug-tweaks" building starts
> But I'm keen on also having debugging tools available (like strace) on
> the target ...
> 
> What am I missing? Thanks

I'm not too familiar with the igep layer, I assume it's not using the
one of the yocto-linux kernel recipes?

perf must be enabled in individual kernel recipes, the yocto kernels do
this through the inherited linux-tools.inc

> Should I also post my problem on the yocto mailing list?

This list is the right one for build system issues :-)

Regards,
Joshua
-- 
Joshua Lock
        Yocto Build System Monkey
        Intel Open Source Technology Centre


