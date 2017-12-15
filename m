Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 370EDE00D17; Fri, 15 Dec 2017 06:38:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BD991E00C78
	for <poky@yoctoproject.org>; Fri, 15 Dec 2017 06:38:23 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
	by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	15 Dec 2017 06:38:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.45,405,1508828400"; 
   d="scan'208";a="2985637"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by orsmga007.jf.intel.com with ESMTP; 15 Dec 2017 06:38:21 -0800
To: Sascha Silbe <x-yo17@se-silbe.de>, poky@yoctoproject.org
References: <20171215105208.9957-1-x-yo17@se-silbe.de>
	<f02f7dfd-cee9-809e-1ea3-313d1c42e79c@linux.intel.com>
	<toeefnwcc16.fsf@twin.sascha.silbe.org>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <6262fd1f-85df-b108-69b0-eb9b78b2afa9@linux.intel.com>
Date: Fri, 15 Dec 2017 16:39:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <toeefnwcc16.fsf@twin.sascha.silbe.org>
Subject: Re: [PATCH] gitignore: ignore documentation build products
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
X-List-Received-Date: Fri, 15 Dec 2017 14:38:24 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 12/15/2017 04:15 PM, Sascha Silbe wrote:

> But if you're certain there won't be manually edited HTML or PDF files
> in the future and would prefer a more compact solution I'm happy to
> switch to using wildcards.

I think this should be fine, yes.

Alex

