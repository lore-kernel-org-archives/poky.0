Return-Path: <dongxiao.xu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 766D8E0137D
	for <poky@yoctoproject.org>; Mon, 26 Mar 2012 19:00:18 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 26 Mar 2012 19:00:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="81908937"
Received: from dongxiao-osel.sh.intel.com (HELO [10.239.36.11])
	([10.239.36.11])
	by AZSMGA002.ch.intel.com with ESMTP; 26 Mar 2012 19:00:16 -0700
From: "Xu, Dongxiao" <dongxiao.xu@intel.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
In-Reply-To: <1332313005.10433.9.camel@dongxiao-osel>
References: <4F67EA50.7000708@mlbassoc.com>
	<1332210703.1041.86.camel@localhost.localdomain>
	<1332224231.1848.24.camel@dongxiao-osel>  <2153250.yonJ7Q2VZR@helios>
	<1332313005.10433.9.camel@dongxiao-osel>
Date: Tue, 27 Mar 2012 09:58:00 +0800
Message-ID: <1332813480.10454.0.camel@dongxiao-osel>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
Cc: poky@yoctoproject.org
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
X-List-Received-Date: Tue, 27 Mar 2012 02:00:18 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2012-03-21 at 14:56 +0800, Xu, Dongxiao wrote:
> On Tue, 2012-03-20 at 09:53 +0000, Paul Eggleton wrote:
> > On Tuesday 20 March 2012 14:17:11 Xu, Dongxiao wrote:
> > > On Tue, 2012-03-20 at 10:31 +0800, Ni Qingliang wrote:
> > > > maybe all image recipes should be placed in the directory
> > > > "meta-xx/images"?
> > > 
> > > Hob recognizes image whose file name is "xxx-image-xxx", like
> > > core-image-sato.
> > 
> > Would it be possible to detect recipes that inherit from image.bbclass 
> > instead?
> 
> Thanks all for your feedback.
> 
> I will try to find the possibility to detect the inherits of
> image.bbclass instead of judging my image file name.
> 
> Thanks,
> Dongxiao

I have fixed this issue in latest master, welcome to have a test for
your image.

Thanks,
Dongxiao

> 
> > 
> > Cheers,
> > Paul
> > 
> 
> 
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky



