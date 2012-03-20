Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CD723E013A6
	for <poky@yoctoproject.org>; Tue, 20 Mar 2012 02:53:48 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 20 Mar 2012 02:53:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="119470936"
Received: from unknown (HELO helios.localnet) ([10.252.123.195])
	by orsmga001.jf.intel.com with ESMTP; 20 Mar 2012 02:53:47 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Xu, Dongxiao" <dongxiao.xu@intel.com>
Date: Tue, 20 Mar 2012 09:53:46 +0000
Message-ID: <2153250.yonJ7Q2VZR@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.0 (Linux/3.0.0-16-generic-pae; KDE/4.8.1; i686; ; )
In-Reply-To: <1332224231.1848.24.camel@dongxiao-osel>
References: <4F67EA50.7000708@mlbassoc.com>
	<1332210703.1041.86.camel@localhost.localdomain>
	<1332224231.1848.24.camel@dongxiao-osel>
MIME-Version: 1.0
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
X-List-Received-Date: Tue, 20 Mar 2012 09:53:48 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 20 March 2012 14:17:11 Xu, Dongxiao wrote:
> On Tue, 2012-03-20 at 10:31 +0800, Ni Qingliang wrote:
> > maybe all image recipes should be placed in the directory
> > "meta-xx/images"?
> 
> Hob recognizes image whose file name is "xxx-image-xxx", like
> core-image-sato.

Would it be possible to detect recipes that inherit from image.bbclass 
instead?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

