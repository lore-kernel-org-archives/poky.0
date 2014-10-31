Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D9D3DE00872; Fri, 31 Oct 2014 07:53:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 83F0EE007B9
	for <poky@yoctoproject.org>; Fri, 31 Oct 2014 07:53:41 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga103.fm.intel.com with ESMTP; 31 Oct 2014 07:47:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,862,1389772800"; d="scan'208";a="409133744"
Received: from kcathuko-mobl.gar.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.122.50])
	by FMSMGA003.fm.intel.com with ESMTP; 31 Oct 2014 07:45:23 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Johnny Vestergaard <jkv@unixcluster.dk>
Date: Fri, 31 Oct 2014 14:53:35 +0000
Message-ID: <7149224.6hmKD4ZtYX@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.2 (Linux/3.16.6-203.fc20.x86_64; KDE/4.14.2; x86_64; ; )
In-Reply-To: <CAO+iiFxU=A7e0eNGUH5kZ6BvJ6LhiTrUcv7fGJKiC1pUQPwMsg@mail.gmail.com>
References: <CAO+iiFx2h3Ufga3QTdw4bNdm0-dFCiK1pPT=ngRrJXAoGDz-qQ@mail.gmail.com>
	<1493154.0U7i0oWxCZ@peggleto-mobl5.ger.corp.intel.com>
	<CAO+iiFxU=A7e0eNGUH5kZ6BvJ6LhiTrUcv7fGJKiC1pUQPwMsg@mail.gmail.com>
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: Auto loading nls-iso8859-1kernel module
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
X-List-Received-Date: Fri, 31 Oct 2014 14:53:44 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Friday 31 October 2014 15:49:29 Johnny Vestergaard wrote:
> On Fri, Oct 31, 2014 at 1:11 PM, Paul Eggleton <
> 
> paul.eggleton@linux.intel.com> wrote:
> > On Friday 31 October 2014 13:01:22 Johnny Vestergaard wrote:
> > > Thanks for the quick response. Actually i tried adding it to local.conf,
> > > but it seems like bitbake did not pick it up - at least it did not
> > 
> > rewrite
> > 
> > > the rootfs.
> > 
> > Right, that is a known issue - you'll have to clean the kernel & image as
> > it
> > won't pick up changes to the module_autoload variable after the kernel has
> > been built:
> > 
> > bitbake -c clean virtual/kernel
> > bitbake -c clean your-imagename
> > 
> > Then you should be able to build the image with the change to
> > module_autoload
> > incorporated.
> 
> Thanks for the tips. certainly get's me in the right direction.
> But, putting the following at the end of my local.conf:
> 
> MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS +=  " kernel-module-nls-cp437"
> module_autoload_nls-cp437 = "nls-cp437"
> 
> and cleaning virtual/kernel afterwards still does not autoload the module -
> but the module is included correctly.

Oh, sorry, I think you'd need to do:

bitbake -c cleansstate virtual/kernel
bitbake -c cleansstate your-imagename

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

