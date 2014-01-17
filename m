Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1B71CE00824
	for <poky@yoctoproject.org>; Fri, 17 Jan 2014 08:13:02 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 17 Jan 2014 08:08:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.95,674,1384329600"; d="scan'208";a="468327833"
Received: from ssaevars-mobl.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.122.195])
	by orsmga002.jf.intel.com with ESMTP; 17 Jan 2014 08:13:01 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Praveen kumar Vattipalli <praveen.v@phytec.in>, poky@yoctoproject.org
Date: Fri, 17 Jan 2014 16:13 +0000
Message-ID: <10612076.DIAM6rAyCE@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.11.5 (Linux/3.12.7-300.fc20.x86_64; KDE/4.11.5; x86_64; ; )
In-Reply-To: <1387796118-5493-1-git-send-email-praveen.v@phytec.in>
References: <1387796118-5493-1-git-send-email-praveen.v@phytec.in>
MIME-Version: 1.0
Subject: Re: [PATCH] Added meta-phytec layer for phytec boards
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
X-List-Received-Date: Fri, 17 Jan 2014 16:13:03 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Praveen,

On Monday 23 December 2013 16:25:18 Praveen kumar Vattipalli wrote:
> From: Praveen Kumar Vattipalli <praveen.v@phytec.in>
> 
> Signed-off-by: Praveen Kumar Vattipalli <praveen.v@phytec.in>
> ---
>  meta-phytec/COPYING.MIT     |   17 +++++++
>  meta-phytec/README          |  118
> +++++++++++++++++++++++++++++++++++++++++++ meta-phytec/conf/layer.conf |  
> 10 ++++
>  3 files changed, 145 insertions(+)
>  create mode 100644 meta-phytec/COPYING.MIT
>  create mode 100644 meta-phytec/README
>  create mode 100644 meta-phytec/conf/layer.conf

I'd suggest creating a new repository (e.g. on github) to hold this layer - 
other than the reference BSPs in meta-yocto-bsp we don't include BSP layers in 
poky itself.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

