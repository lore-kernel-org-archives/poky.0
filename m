Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 67FBDE0129D
	for <poky@yoctoproject.org>; Wed, 22 May 2013 09:36:11 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 22 May 2013 09:33:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,722,1363158000"; d="scan'208";a="341491386"
Received: from unknown (HELO helios.localnet) ([10.255.12.181])
	by orsmga002.jf.intel.com with ESMTP; 22 May 2013 09:35:54 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org
Date: Wed, 22 May 2013 17:35:52 +0100
Message-ID: <6088151.tNeL1NyIpG@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.2 (Linux/3.8.0-21-generic; KDE/4.10.2; i686; ; )
In-Reply-To: <cover.1369239589.git.paul.eggleton@linux.intel.com>
References: <cover.1369239589.git.paul.eggleton@linux.intel.com>
MIME-Version: 1.0
Subject: Re: [dylan][PATCH 0/1] Cherry-picks from master for poky dylan branch
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
X-List-Received-Date: Wed, 22 May 2013 16:36:11 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 22 May 2013 17:20:26 Paul Eggleton wrote:
> This has been tested on the Yocto Project autobuilder.
> 
> 
> The following change since commit 3faa5039c8147d0bf9e352dc5ad1e9e12cf2086a:
> 
>   kern-tools: refresh and make dash compliant (2013-05-22 17:14:05 +0100)
> 
> is available in the git repository at:
> 
>   git://git.yoctoproject.org/poky-contrib paule/poky-dylan-next
>  
> http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=paule/poky-dylan-n
> ext
> 
> Saul Wold (1):
>   poky-lsb: Ensure kernel nfsd module is enabled
> 
>  meta-yocto/conf/distro/poky-lsb.conf | 3 +++
>  1 file changed, 3 insertions(+)

I've just pushed an additional commit to the branch that bumps DISTRO_VERSION 
to 1.4.1 and adds this version to SANITY_TESTED_DISTROS.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

