Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F2C30E01302
	for <poky@yoctoproject.org>; Tue,  9 Oct 2012 05:48:20 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 09 Oct 2012 05:48:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,560,1344236400"; d="scan'208";a="154133689"
Received: from unknown (HELO helios.localnet) ([10.252.122.38])
	by AZSMGA002.ch.intel.com with ESMTP; 09 Oct 2012 05:48:19 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Gary Thomas <gary@mlbassoc.com>
Date: Tue, 09 Oct 2012 13:48:18 +0100
Message-ID: <40905288.mpvDERoCt8@helios>
Organization: Intel Corporation
User-Agent: KMail/4.9.2 (Linux/3.2.0-31-generic-pae; KDE/4.9.2; i686; ; )
In-Reply-To: <50741C8A.2070400@mlbassoc.com>
References: <5072FBB8.9060703@mlbassoc.com> <2044692.De8MTCDQ8r@helios>
	<50741C8A.2070400@mlbassoc.com>
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
X-List-Received-Date: Tue, 09 Oct 2012 12:48:21 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 09 October 2012 06:46:02 Gary Thomas wrote:
> On 2012-10-09 06:41, Paul Eggleton wrote:
> > On Tuesday 09 October 2012 06:36:23 Gary Thomas wrote:
> >> On 2012-10-08 16:39, Richard Purdie wrote:
> >>> PACKAGE_BEFORE_PN lets you put the package specifically after
> >>> -dev/-dbg/-doc/-locale and so on but before PN.
> >> 
> >> I needed to write this as
> >> 
> >>     PACKAGES_BEFORE_${PN} += "${PN}-tools"
> > 
> > Just to be clear the variable is called PACKAGE_BEFORE_PN and not
> > PACKAGES_BEFORE_PN; otherwise yes.
> 
> Indeed, that does work.  Sorry about my typo...
> 
> How did 'PACKAGES_BEFORE_${PN}' manage to work?

I'm not sure how it could have unless you have some additional statement or 
code that is getting the package into PACKAGES. By all means, change it back 
and see if your package appears in the final value of PACKAGES using:

bitbake -e recipename | grep ^PACKAGES=

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

