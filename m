Return-Path: <dvhart@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C4E60E009E1; Mon, 18 May 2015 16:55:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 45536E009D8
	for <poky@yoctoproject.org>; Mon, 18 May 2015 16:55:21 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 18 May 2015 16:55:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.13,455,1427785200"; d="scan'208";a="712148414"
Received: from nbrasam-mobl1.amr.corp.intel.com ([10.255.75.190])
	by fmsmga001.fm.intel.com with ESMTP; 18 May 2015 16:55:20 -0700
Message-ID: <555A7BE8.6060802@linux.intel.com>
Date: Mon, 18 May 2015 16:55:20 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10;
	rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
To: Saul Wold <sgw@linux.intel.com>, poky@yoctoproject.org
References: <1431991923-20314-1-git-send-email-sgw@linux.intel.com>
In-Reply-To: <1431991923-20314-1-git-send-email-sgw@linux.intel.com>
Subject: Re: [PATCH] meta-yocto-bsp: Add genericx86* BSP to use 3.19
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
X-List-Received-Date: Mon, 18 May 2015 23:55:22 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit



On 5/18/15 4:32 PM, Saul Wold wrote:
> Add the linux-yocto_3.19.bbappend to support the genericx86 BSP
> 
> Tested on a variety of machines both 32 bit and 64 bit
> 
> Signed-off-by: Saul Wold <sgw@linux.intel.com>

Acked-by: Darren Hart <dvhart@linux.intel.com>

-- 
Darren Hart
Intel Open Source Technology Center

