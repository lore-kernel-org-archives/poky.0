Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2663E00BD3
	for <poky@yoctoproject.org>; Wed,  2 Apr 2014 05:57:09 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 02 Apr 2014 05:57:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,780,1389772800"; d="scan'208";a="485687171"
Received: from davidllo-mobl.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.120.86])
	by orsmga001.jf.intel.com with ESMTP; 02 Apr 2014 05:57:04 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>,
	Richard Purdie <richard.purdie@linuxfoundation.org>
Date: Wed, 02 Apr 2014 13:57:03 +0100
Message-ID: <5946317.EfKT5Psj4O@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.12.3 (Linux/3.13.7-200.fc20.x86_64; KDE/4.12.3; x86_64; ; )
In-Reply-To: <cover.1396288654.git.bruce.ashfield@windriver.com>
References: <cover.1396288654.git.bruce.ashfield@windriver.com>
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: [v2 PATCH 0/7] poky/yocto-bsps: 3.10 and 3.14 updates
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
X-List-Received-Date: Wed, 02 Apr 2014 12:57:10 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday 31 March 2014 14:01:53 Bruce Ashfield wrote:
> Here's the resend of the 3.10 and 3.14 updates for the 3.14 kernel
> and 3.10.34 update.

It seems like we should be dropping routerstationpro at this point as well. 
I've started putting together patches to do this; the question is do we want 
to preserve the removed pieces in some additional external layer?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

