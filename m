Return-Path: <dongxiao.xu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5F897E013A5
	for <poky@yoctoproject.org>; Mon, 19 Mar 2012 23:19:17 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 19 Mar 2012 23:19:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="120940605"
Received: from dongxiao-osel.sh.intel.com (HELO [10.239.36.11])
	([10.239.36.11])
	by azsmga001.ch.intel.com with ESMTP; 19 Mar 2012 23:19:15 -0700
From: "Xu, Dongxiao" <dongxiao.xu@intel.com>
To: niqingliang@insigma.com.cn
In-Reply-To: <1332210703.1041.86.camel@localhost.localdomain>
References: <4F67EA50.7000708@mlbassoc.com>
	<1332210703.1041.86.camel@localhost.localdomain>
Date: Tue, 20 Mar 2012 14:17:11 +0800
Message-ID: <1332224231.1848.24.camel@dongxiao-osel>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: HOB doesn't see my image recipes
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
X-List-Received-Date: Tue, 20 Mar 2012 06:19:17 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2012-03-20 at 10:31 +0800, Ni Qingliang wrote:
> maybe all image recipes should be placed in the directory
> "meta-xx/images"?

Hob recognizes image whose file name is "xxx-image-xxx", like
core-image-sato.

Thanks,
Dongxiao

> 
> wait expert...
> 
> On Tue, 2012-03-20 at 10:24 +0800, Gary Thomas wrote:
> > I have my own distribution, layered over poky (I use meta & meta-yocto
> > with my own distribution layers).  HOB doesn't seem to find any of my
> > [non-yocto] images.
> > 
> > I thought that this was to be fixed so that any recipe which inherited
> > 'image.bbclass' (or relied on one that did) would be listed as an image?
> > 
> > Am I missing something, or is this a bug?
> > 
> > --
> > ------------------------------------------------------------
> > Gary Thomas                 |  Consulting for the
> > MLB Associates              |    Embedded world
> > ------------------------------------------------------------
> > _______________________________________________
> > poky mailing list
> > poky@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/poky
> 



