Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4F35CE013A6
	for <poky@yoctoproject.org>; Thu,  9 Aug 2012 10:36:50 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 09 Aug 2012 10:36:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.77,741,1336374000"; d="scan'208";a="178080447"
Received: from unknown (HELO helios.localnet) ([10.252.121.69])
	by orsmga001.jf.intel.com with ESMTP; 09 Aug 2012 10:36:49 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Gary Thomas <gary@mlbassoc.com>
Date: Thu, 09 Aug 2012 18:36:43 +0100
Message-ID: <2803677.9qrQhhpNF3@helios>
Organization: Intel Corporation
User-Agent: KMail/4.9 (Linux/3.2.0-27-generic-pae; KDE/4.9.0; i686; ; )
In-Reply-To: <5023F425.1090801@mlbassoc.com>
References: <1344533174.4828.29.camel@rogue> <5023F425.1090801@mlbassoc.com>
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: [denzil][meta-ti] Problems building compiler for Pandaboard
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
X-List-Received-Date: Thu, 09 Aug 2012 17:36:50 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday 09 August 2012 11:32:21 Gary Thomas wrote:
> On 2012-08-09 11:26, Luke A. Guest wrote:
> > Can anybody help me get started with this? I've only been able to build
> > an qemux86 image so far which is not that useful for real boards.
> 
> Try cleaning out your build tree (remove sstate-cache/ and tmp/) and run
> it again.  The error you are seeing is related to reusing the same tree
> with [somewhat] different target machines.

Sharing build directory between disparate machines should be perfectly 
allowable, if there are failures that block it we should fix them. I'm not sure 
what this specific failure is caused by though.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

