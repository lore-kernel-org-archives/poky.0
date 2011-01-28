Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5FF4B4C812AC
	for <poky@yoctoproject.org>; Fri, 28 Jan 2011 11:21:00 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 28 Jan 2011 09:20:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,393,1291622400"; d="scan'208";a="652176915"
Received: from unknown (HELO helios.localnet) ([10.255.16.173])
	by fmsmga002.fm.intel.com with ESMTP; 28 Jan 2011 09:20:59 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
Organization: Intel Corporation (UK)
To: poky@yoctoproject.org
Date: Fri, 28 Jan 2011 17:20:59 +0000
User-Agent: KMail/1.13.5 (Linux/2.6.35-24-generic-pae; KDE/4.5.1; i686; ; )
References: <cover.1296174472.git.paul.eggleton@linux.intel.com>
	<1296228443.2704.25.camel@scimitar>
	<8B09826E-906B-4744-BF64-C5DCF43F3103@dominion.thruhere.net>
In-Reply-To: <8B09826E-906B-4744-BF64-C5DCF43F3103@dominion.thruhere.net>
MIME-Version: 1.0
Message-Id: <201101281721.00110.paul.eggleton@linux.intel.com>
Subject: Re: [PATCH 11/11] qt4: Add meta-toolchain-qte and dependent tasks from OpenEmbedded
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
X-List-Received-Date: Fri, 28 Jan 2011 17:21:00 -0000
Content-Type: Text/Plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: 7bit

On Friday 28 January 2011 15:47:28 Koen Kooi wrote:
> Op 28 jan 2011, om 16:27 heeft Joshua Lock het volgende geschreven:
> > On Fri, 2011-01-28 at 00:36 +0000, Paul Eggleton wrote:
> >> +#Qt Declarative is new in 4.7, try to include it like this.
> >> +#RRECOMMENDS_${PN} += " \
> >> +#        libqt-embeddeddeclarative4-dev \
> >> +#        "
> > 
> > We don't want to include this?
> 
> There was a bug in the OE recipes where the declarative stuff was only
> mentioned in the 4.7.1 recipe, so building meta-toolchain-qte would build
> both 4.6.x and 4.7.1. I think I fixed that a few weeks back, so it should
> be safe to include again. 

Am testing that as we speak, if it works I'll include it in v3 of this 
patchset which I will try to post very soon.

BTW Koen I realise that your original reply to my first patchset pointed out 
the virtues of having MySQL and PostgreSQL support in the Qt recipes; 
unfortunately I've had to cut those out from this patchset as we don't have 
these DBMSs in Poky at the moment and probably won't for the 1.0 timeframe. 
However as you will no doubt want these in meta-openembedded it might be worth 
modifying qt4.inc to make re-enabling these easier in a .bbappend (e.g. by 
splitting out the SQL plugin configure flags to a separate variable). I didn't 
have a chance to make such a change for this patchset but you could submit a 
patch to do so, or I will when I get back from holiday.

Cheers,
Paul

