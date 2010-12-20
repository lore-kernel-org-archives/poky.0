Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 931B44C80B70
	for <poky@yoctoproject.org>; Mon, 20 Dec 2010 15:56:42 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 20 Dec 2010 13:56:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,204,1291622400"; d="scan'208";a="585568536"
Received: from unknown (HELO [10.255.14.34]) ([10.255.14.34])
	by orsmga002.jf.intel.com with ESMTP; 20 Dec 2010 13:56:41 -0800
From: Tom Zanussi <tom.zanussi@intel.com>
To: "Wold, Saul" <saul.wold@intel.com>
In-Reply-To: <4D0FA8E1.70505@intel.com>
References: <cover.1292870600.git.tom.zanussi@intel.com>
	<4D0FA8E1.70505@intel.com>
Date: Mon, 20 Dec 2010 15:56:57 -0600
Message-ID: <1292882217.2104.680.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 0/1] Update emenlow with new BSP layout
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
X-List-Received-Date: Mon, 20 Dec 2010 21:56:43 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2010-12-20 at 11:05 -0800, Wold, Saul wrote:
> On 12/20/2010 10:43 AM, Tom Zanussi wrote:
> > This changes the meta-emenlow layout to match the new Yocto BSP standard.
> >
> >   rename meta-emenlow/{recipes =>  recipes-kernel}/linux/linux-yocto-stable_git.bbappend (100%)
> >   rename meta-emenlow/{recipes =>  recipes-kernel}/linux/linux_2.6.33.2.bbappend (100%)
> >
> Tom,
> 
> If we are using yocto-stable, is there any reason to keep the 2.6.33 
> defconfig and bbappend around?
> 

No, I don't see any reason to maintain support for 2.6.33 for this since
it was moved over to linux-wrs (and now yocto-stable).  So unless anyone
sees a reason to keep it, I'll send a patch to remove the 2.6.33
stuff...

Tom


> Sau!
> 
> 
> > _______________________________________________
> > poky mailing list
> > poky@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/poky
> >
> 



