Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 30F4A4C80039
	for <poky@yoctoproject.org>; Mon, 20 Dec 2010 06:02:53 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 20 Dec 2010 04:02:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,201,1291622400"; d="scan'208";a="364084476"
Received: from unknown (HELO helios.localnet) ([10.255.16.55])
	by azsmga001.ch.intel.com with ESMTP; 20 Dec 2010 04:02:46 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
Organization: Intel Corporation (UK)
To: poky@yoctoproject.org
Date: Mon, 20 Dec 2010 12:02:44 +0000
User-Agent: KMail/1.13.5 (Linux/2.6.35-23-generic-pae; KDE/4.5.1; i686; ; )
References: <cover.1290442820.git.paul.eggleton@intel.com>
In-Reply-To: <cover.1290442820.git.paul.eggleton@intel.com>
MIME-Version: 1.0
Message-Id: <201012201202.45150.paul.eggleton@linux.intel.com>
Subject: Re: [PATCH 0/1] sstate.bbclass: delete sstate files when doing cleanall
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
X-List-Received-Date: Mon, 20 Dec 2010 12:02:53 -0000
Content-Type: Text/Plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: 7bit

On Monday 22 November 2010 16:20:20 Paul Eggleton wrote:
> Single commit which fixes deleting sstate cache files when doing cleanall.
> 
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: paule/sstate-clean-fix
>   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=paule/sstate-clean-fix

Has anyone had a chance to look at this yet?

Cheers,
Paul

