Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 774E5E0078F
	for <poky@yoctoproject.org>; Mon,  9 Dec 2013 02:17:01 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by azsmga102.ch.intel.com with ESMTP; 09 Dec 2013 02:17:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,856,1378882800"; d="scan'208";a="440909220"
Received: from mmckenna-mobl1.ger.corp.intel.com (HELO helios.localnet)
	([10.252.121.196])
	by fmsmga001.fm.intel.com with ESMTP; 09 Dec 2013 02:16:23 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Stefan Seyfried <stefan.seyfried@googlemail.com>
Date: Mon, 09 Dec 2013 10:16:21 +0000
Message-ID: <1815462.v3FsJx2u9X@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-31-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <52A46C53.1040906@message-id.googlemail.com>
References: <52A46C53.1040906@message-id.googlemail.com>
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: mklibs patches: fix mklibs on powerpc, use correct ld.so
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
X-List-Received-Date: Mon, 09 Dec 2013 10:17:02 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Stefan,

On Sunday 08 December 2013 13:55:47 Stefan Seyfried wrote:
> image-mklibs.bbclass was only looking for LSB binaries, which does not
> bode well with powerpc
> 
> mklibs script is searching for ld.so in /lib instead of sysroot, which
> also did not work well for me (powerpc has /lib/ld.so.1 and my x86_64
> host has something completely different, and even if it was there it
> would be the wrong one).

Poky tracks OpenEmbedded-Core (OE-Core), so these patches need to be sent 
there:

http://www.openembedded.org/wiki/How_to_submit_a_patch_to_OpenEmbedded

Thanks,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

