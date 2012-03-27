Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C55B7E0070C
	for <poky@yoctoproject.org>; Tue, 27 Mar 2012 10:52:35 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 27 Mar 2012 10:52:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="82211891"
Received: from unknown (HELO [10.255.12.50]) ([10.255.12.50])
	by AZSMGA002.ch.intel.com with ESMTP; 27 Mar 2012 10:52:34 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: Wolfgang Denk <wd@denx.de>
In-Reply-To: <20120327174316.CB8CB2002FF@gemini.denx.de>
References: <4F71D17B.2030200@mlbassoc.com> <1332859973.3854.15.camel@elmorro>
	<20120327174316.CB8CB2002FF@gemini.denx.de>
Date: Tue, 27 Mar 2012 12:53:01 -0500
Message-ID: <1332870781.20140.12.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: Strange file names
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
X-List-Received-Date: Tue, 27 Mar 2012 17:52:35 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2012-03-27 at 19:43 +0200, Wolfgang Denk wrote:
> Dear Tom Zanussi,
> 
> In message <1332859973.3854.15.camel@elmorro> you wrote:
> >
> > The template files can contain inline Python between {{ tags }} that
> > gets used as logic when generating the BSP.  The inline Python can also
> > be used in the filne names themselves for that purpose.  In this case,
> > it's used to only include one of the .bbappend files depending on the
> > value of the kernel_choice variable.
> 
> Arghhh... This is totally broken. Do not do this.
> 

Why do you say so - they're legal filenames and useful for this purpose?

Tom

> Best regards,
> 
> Wolfgang Denk
> 



