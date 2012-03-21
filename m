Return-Path: <dongxiao.xu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 83E7EE0070C
	for <poky@yoctoproject.org>; Tue, 20 Mar 2012 23:58:54 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 20 Mar 2012 23:58:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="142351245"
Received: from dongxiao-osel.sh.intel.com (HELO [10.239.36.11])
	([10.239.36.11])
	by fmsmga002.fm.intel.com with ESMTP; 20 Mar 2012 23:58:52 -0700
From: "Xu, Dongxiao" <dongxiao.xu@intel.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>, Gary Thomas
	<gary@mlbassoc.com>, lauri.hintsala@bluegiga.com
In-Reply-To: <2153250.yonJ7Q2VZR@helios>
References: <4F67EA50.7000708@mlbassoc.com>
	<1332210703.1041.86.camel@localhost.localdomain>
	<1332224231.1848.24.camel@dongxiao-osel>  <2153250.yonJ7Q2VZR@helios>
Date: Wed, 21 Mar 2012 14:56:45 +0800
Message-ID: <1332313005.10433.9.camel@dongxiao-osel>
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
X-List-Received-Date: Wed, 21 Mar 2012 06:58:54 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2012-03-20 at 09:53 +0000, Paul Eggleton wrote:
> On Tuesday 20 March 2012 14:17:11 Xu, Dongxiao wrote:
> > On Tue, 2012-03-20 at 10:31 +0800, Ni Qingliang wrote:
> > > maybe all image recipes should be placed in the directory
> > > "meta-xx/images"?
> > 
> > Hob recognizes image whose file name is "xxx-image-xxx", like
> > core-image-sato.
> 
> Would it be possible to detect recipes that inherit from image.bbclass 
> instead?

Thanks all for your feedback.

I will try to find the possibility to detect the inherits of
image.bbclass instead of judging my image file name.

Thanks,
Dongxiao

> 
> Cheers,
> Paul
> 



