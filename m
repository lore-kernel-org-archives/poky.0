Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3BC17E00D46; Mon,  5 Aug 2019 04:26:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at https://www.dnswl.org/,
	high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BB519E00D46
	for <poky@yoctoproject.org>; Mon,  5 Aug 2019 04:26:12 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	05 Aug 2019 04:26:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,349,1559545200"; d="scan'208";a="373673628"
Received: from mekarim-mobl1.ger.corp.intel.com (HELO blackadder.local)
	([10.252.49.129])
	by fmsmga006.fm.intel.com with ESMTP; 05 Aug 2019 04:26:11 -0700
To: poky@yoctoproject.org
References: <1564622700-171766-1-git-send-email-changqing.li@windriver.com>
	<ec5291a9-541e-264b-c055-e8307eea0fab@windriver.com>
From: Ross Burton <ross.burton@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
	Swindon SN3 1RJ
Message-ID: <aa66ded0-65d6-cba0-c5b0-917ca3e0b1d7@intel.com>
Date: Mon, 5 Aug 2019 12:26:10 +0100
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
	Gecko/20100101 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <ec5291a9-541e-264b-c055-e8307eea0fab@windriver.com>
Subject: Re: [PATCH V2] qemuboot-x86: move QB_SYSTEM_NAME to corresponding conf
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
X-List-Received-Date: Mon, 05 Aug 2019 11:26:13 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 8bit

On 05/08/2019 04:01, Changqing Li wrote:
> ping
> 
> Do I need to split this patch into 2 part? since 3 files are unser repo 
> oe-core,  2 files are under repo poky
> 
> but changes in files under poky depend on changes under oe-core

Yes, the commits need to go to oe-core and meta-yocto-bsp respectively.

Ross

