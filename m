Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1FD764C80B70
	for <poky@yoctoproject.org>; Tue,  7 Dec 2010 10:36:59 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 07 Dec 2010 08:36:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,311,1288594800"; d="scan'208";a="358283325"
Received: from unknown (HELO helios.localnet) ([10.255.16.62])
	by azsmga001.ch.intel.com with ESMTP; 07 Dec 2010 08:36:57 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
Organization: Intel Corporation (UK)
To: poky@yoctoproject.org
Date: Tue, 7 Dec 2010 16:36:55 +0000
User-Agent: KMail/1.13.5 (Linux/2.6.35-23-generic-pae; KDE/4.5.1; i686; ; )
References: <201012031634.56033.paul.eggleton@linux.intel.com>
	<201012061606.45790.paul.eggleton@linux.intel.com>
	<1291725996.11475.22.camel@rex>
In-Reply-To: <1291725996.11475.22.camel@rex>
MIME-Version: 1.0
Message-Id: <201012071636.55690.paul.eggleton@linux.intel.com>
Subject: Re: sstate status
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
X-List-Received-Date: Tue, 07 Dec 2010 16:36:59 -0000
Content-Type: Text/Plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: 7bit

On Tuesday 07 December 2010 12:46:36 Richard Purdie wrote:
> Agreed, I'll take that patch on its own, I just want to move carefully
> to the end result.
> 
> Can you rebase your sstate branch onto master, pull in the above changes
> not already in master and lets see where we are?

Done - pushed to contrib paule/sstate. I have omitted Kevin's bitbake-diffsigs srcpath fix which is still being worked on.

Cheers,
Paul

