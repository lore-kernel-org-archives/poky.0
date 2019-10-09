Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8453CE00D1C; Wed,  9 Oct 2019 08:22:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [192.55.52.136 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7479EE00BFF
	for <poky@yoctoproject.org>; Wed,  9 Oct 2019 08:22:09 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	09 Oct 2019 08:22:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,276,1566889200"; d="scan'208";a="277451154"
Received: from unknown (HELO blackadder.local) ([10.252.56.237])
	by orsmga001.jf.intel.com with ESMTP; 09 Oct 2019 08:22:03 -0700
To: Alexander Kanavin <alex.kanavin@gmail.com>, Adrian Bunk <bunk@stusta.de>
References: <20191009130328.28520-1-ross.burton@intel.com>
	<20191009133153.GA29168@localhost>
	<CANNYZj8RsOn3T_aXpNSP8MBdiUd28gnasWcgJENrZ2TzPxRRRg@mail.gmail.com>
From: Ross Burton <ross.burton@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
	Swindon SN3 1RJ
Message-ID: <796a0633-7a85-bb5c-06da-17abdb06a483@intel.com>
Date: Wed, 9 Oct 2019 16:22:02 +0100
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
	Gecko/20100101 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CANNYZj8RsOn3T_aXpNSP8MBdiUd28gnasWcgJENrZ2TzPxRRRg@mail.gmail.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: [PATCH] poky: add Ubuntu 19.04 as a supported distribution
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
X-List-Received-Date: Wed, 09 Oct 2019 15:22:10 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit

On 09/10/2019 15:49, Alexander Kanavin wrote:
> I believe this list is compiled from a specific set of distributions 
> that are actually installed and used on the Yocto autobuilder. If ubuntu 
> 19.04 is there, then it is added to the list. It is up to the users if 
> they want to use that (in a container maybe), or something else that is 
> current.

A distro has to be in the autobuilder cluster to be supported, but not 
all distros on the autobuilder are supported.

We run a tumbleweed instance on the AB just to catch issues sooner, but 
don't plan to add that to the supported list just yet.

Ross

