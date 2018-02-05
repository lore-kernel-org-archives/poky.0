Return-Path: <anuj.mittal@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 398B1E00DF0; Mon,  5 Feb 2018 02:21:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B46AAE007D1
	for <poky@yoctoproject.org>; Mon,  5 Feb 2018 02:21:18 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	05 Feb 2018 02:21:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.46,464,1511856000"; d="scan'208";a="201403224"
Received: from hengc-mobl.gar.corp.intel.com (HELO [10.249.69.236])
	([10.249.69.236])
	by fmsmga006.fm.intel.com with ESMTP; 05 Feb 2018 02:21:16 -0800
To: poky@yoctoproject.org
References: <trinity-20f872c2-19c2-4de6-b977-5b88adae1eb3-1517824511514@3c-app-gmx-bs39>
From: Anuj Mittal <anuj.mittal@intel.com>
Message-ID: <84f1733e-a5cd-b9d6-c75d-cdb8faf38815@intel.com>
Date: Mon, 5 Feb 2018 18:21:16 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <trinity-20f872c2-19c2-4de6-b977-5b88adae1eb3-1517824511514@3c-app-gmx-bs39>
Subject: Re: libs / so without a link to xxx.so.1
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
X-List-Received-Date: Mon, 05 Feb 2018 10:21:19 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 02/05/2018 05:55 PM, Arno Steffens wrote:
> Using in my project libcurlpp. It is created with yocto (2.3.3), but in my filesystem I just see:
> 
> "/usr/lib/libcurlpp.so.1" which is a link to libcurlpp.so.1.0.0
> 
> What I miss is "libvcurlpp.so" (without version number), as my project includes  "-lcurlpp".

You're probably missing the -dev package in your image.

Thanks,
Anuj

> 
> My question: is there a reason for that? Is this a bug in the scripts or did I handle it wrong?
> 
> I can do "-l:libcurlpp.so.1" but this looks only like a second best solution to me.
> Thanks and best regards
> Arno
> 


