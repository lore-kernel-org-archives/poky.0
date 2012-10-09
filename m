Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DD1CBE00346
	for <poky@yoctoproject.org>; Tue,  9 Oct 2012 05:41:30 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 09 Oct 2012 05:41:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,560,1344236400"; d="scan'208";a="231688668"
Received: from unknown (HELO helios.localnet) ([10.252.122.38])
	by fmsmga001.fm.intel.com with ESMTP; 09 Oct 2012 05:41:27 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Gary Thomas <gary@mlbassoc.com>
Date: Tue, 09 Oct 2012 13:41:26 +0100
Message-ID: <2044692.De8MTCDQ8r@helios>
Organization: Intel Corporation
User-Agent: KMail/4.9.2 (Linux/3.2.0-31-generic-pae; KDE/4.9.2; i686; ; )
In-Reply-To: <50741A47.1010107@mlbassoc.com>
References: <5072FBB8.9060703@mlbassoc.com> <1349735995.15658.156.camel@ted>
	<50741A47.1010107@mlbassoc.com>
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: Files missing from package
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
X-List-Received-Date: Tue, 09 Oct 2012 12:41:31 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 09 October 2012 06:36:23 Gary Thomas wrote:
> On 2012-10-08 16:39, Richard Purdie wrote:
> > PACKAGE_BEFORE_PN lets you put the package specifically after
> > -dev/-dbg/-doc/-locale and so on but before PN.
> 
> I needed to write this as
>    PACKAGES_BEFORE_${PN} += "${PN}-tools"

Just to be clear the variable is called PACKAGE_BEFORE_PN and not 
PACKAGES_BEFORE_PN; otherwise yes.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

