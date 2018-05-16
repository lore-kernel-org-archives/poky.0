Return-Path: <anuj.mittal@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8540DE009BC; Tue, 15 May 2018 19:02:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E527DE00816
	for <poky@yoctoproject.org>; Tue, 15 May 2018 19:02:22 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	15 May 2018 19:02:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.49,404,1520924400"; d="scan'208";a="58971362"
Received: from anmitta2-mobl1.png.intel.com (HELO [10.221.23.24])
	([10.221.23.24])
	by orsmga002.jf.intel.com with ESMTP; 15 May 2018 19:02:20 -0700
To: John Tobias <john.tobias.ph@gmail.com>, poky@yoctoproject.org
References: <CACUGKYNCx3o8oftrU-m8b_e2p83VekEbBiU0TXsMMUh17_WV2A@mail.gmail.com>
From: Anuj Mittal <anuj.mittal@intel.com>
Message-ID: <10bbfb39-2bce-1b09-3cdb-eb47ae3a941b@intel.com>
Date: Wed, 16 May 2018 10:02:19 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <CACUGKYNCx3o8oftrU-m8b_e2p83VekEbBiU0TXsMMUh17_WV2A@mail.gmail.com>
Subject: Re: Sysroot location
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
X-List-Received-Date: Wed, 16 May 2018 02:02:26 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 05/13/2018 11:31 AM, John Tobias wrote:
> Hi All,
> 
> I compiled poky sumo and I am using eclipse oxygen. I installed the
> yocto plugin in eclipse but, when I configured it, I couldn't figure
> it out the sysroot location. The Yocto plugin able to see the target
> architecture, if I enter /path/poky/build/tmp in Toolchain Root
> Location.
> 
> I ran bitbake meta-toolchain; bitbake meta-ide-support
> 
> I really appreciate if anyone could give me some hints to locate the
> correct sysroot.

This is probably something that you can try asking on the
eclipse-yocto@yoctoproject.org list if you haven't already got the
answer here.

Thanks,
Anuj

