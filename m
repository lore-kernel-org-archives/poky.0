Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EDC62E0137D
	for <poky@yoctoproject.org>; Tue, 27 Mar 2012 05:55:16 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 27 Mar 2012 05:55:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="123788377"
Received: from unknown (HELO helios.localnet) ([10.252.123.228])
	by azsmga001.ch.intel.com with ESMTP; 27 Mar 2012 05:55:15 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: abel@uni-bielefeld.de
Date: Tue, 27 Mar 2012 13:55:11 +0100
Message-ID: <17090847.kqXxAj3sEM@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.0 (Linux/3.0.0-16-generic-pae; KDE/4.8.1; i686; ; )
In-Reply-To: <4F71B57F.30103@uni-bielefeld.de>
References: <4F71B57F.30103@uni-bielefeld.de>
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: Patch.bbclass URL Reasoning
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
X-List-Received-Date: Tue, 27 Mar 2012 12:55:17 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 27 March 2012 14:41:35 Robert Abel wrote:
> Bumpity...
> 
> So nobody is aware of this issue or has ever tried to edit a patch
> before do_patch?

I'm aware of the behaviour, I can't speak to its intention (well, the part 
where it symlinks back to the original patch I suspect intended to allow you 
to update the patch in the metadata, but I don't know why we also copy the 
patch to the WORKDIR as well). 

However if I needed to do what you want to do I would do it differently - 
instead of modifying the patches, why not just modify the file(s) in the source 
code directly? I would suggest using sed in a do_configure_prepend() to change 
the values in the source to the desired value from a variable. Depending on 
the complexity you could have the patches change the values to some easily 
replaceable string beforehand.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

