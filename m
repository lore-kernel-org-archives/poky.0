Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 10850E008D7; Fri, 16 Jan 2015 07:25:16 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 125EFE0083A
	for <poky@yoctoproject.org>; Fri, 16 Jan 2015 07:25:00 -0800 (PST)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga102.fm.intel.com with ESMTP; 16 Jan 2015 07:25:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.09,411,1418112000"; d="scan'208";a="513316944"
Received: from ogiles1-mobl1.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.17.108])
	by orsmga003.jf.intel.com with ESMTP; 16 Jan 2015 07:18:38 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Sywula, Krzysztof M" <krzysztof.m.sywula@intel.com>
Date: Fri, 16 Jan 2015 15:24:57 +0000
Message-ID: <7687106.qi7Bl6mb8d@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.3 (Linux/3.17.8-200.fc20.x86_64; KDE/4.14.3; x86_64; ; )
In-Reply-To: <6741EAAB26B57F4995668065CB62D86B490B2B69@fmsmsx116.amr.corp.intel.com>
References: <6741EAAB26B57F4995668065CB62D86B490B2B69@fmsmsx116.amr.corp.intel.com>
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: toolchain build without dbg pkgs
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
X-List-Received-Date: Fri, 16 Jan 2015 15:25:16 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Krzysztof,

On Friday 16 January 2015 02:04:51 Sywula, Krzysztof M wrote:
> Hi guys, we are considering getting rid of debug packages in toolchain due
> to size constrains. What's the trick to remove them?

Try setting SDKIMAGE_FEATURES = "dev-pkgs" (the default is 
"dev-pkgs dbg-pkgs".

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

