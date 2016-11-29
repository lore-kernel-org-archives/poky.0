Return-Path: <leonardo.sandoval.gonzalez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A3A38E00503; Tue, 29 Nov 2016 08:51:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.9 required=5.0 tests=BAYES_00,BODY_URI_ONLY,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* 1.0 BODY_URI_ONLY Message body is only a URI in one line of text or
	for *      an image
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DA7F7E0049F
	for <poky@yoctoproject.org>; Tue, 29 Nov 2016 08:51:27 -0800 (PST)
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
	by orsmga103.jf.intel.com with ESMTP; 29 Nov 2016 08:51:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,717,1473145200"; d="scan'208";a="36961555"
Received: from lsandov1-mobl2.zpn.intel.com (HELO [10.219.5.38])
	([10.219.5.38])
	by fmsmga005.fm.intel.com with ESMTP; 29 Nov 2016 08:51:26 -0800
To: Khem Raj <raj.khem@gmail.com>
References: <cover.1480022350.git.leonardo.sandoval.gonzalez@linux.intel.com>
	<e2521c31acb6e6cdf59e9d7101439035efe085be.1480022350.git.leonardo.sandoval.gonzalez@linux.intel.com>
	<1A8E575B-ED23-4411-AE18-DA3EC439F3F5@gmail.com>
From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
Message-ID: <51ce51f1-a542-5c58-08eb-db2a39747614@linux.intel.com>
Date: Tue, 29 Nov 2016 10:57:02 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.3.0
MIME-Version: 1.0
In-Reply-To: <1A8E575B-ED23-4411-AE18-DA3EC439F3F5@gmail.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH v2 1/1] selftest: skip tests for poky-tiny distro due to incompatible kernel machine
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
X-List-Received-Date: Tue, 29 Nov 2016 16:51:29 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit



On 11/25/2016 10:10 PM, Khem Raj wrote:
>> On Nov 24, 2016, at 1:34 PM, leonardo.sandoval.gonzalez@linux.intel.com wrote:
>>
>> From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
>>
>> The poky-tiny distro points to linux-yocto-tiny which in turns the compatible
>> machine is set to qemux86. Current tests are defined for just generic86 architectures
>> so tests are not possible for the corresponding distro.
>>
> can we fix the distro policy instead of skipping ?
That work (meta-intel compatible with poky-tiny policy) is in progress 
and should be ready soon (not sure the date), so I believe for the 
moment the skip is valid.

