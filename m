Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2B54BE00C99; Thu, 21 Sep 2017 07:16:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C1AD3E00C45
	for <poky@yoctoproject.org>; Thu, 21 Sep 2017 07:16:00 -0700 (PDT)
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	21 Sep 2017 07:16:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.42,425,1500966000"; d="scan'208";a="154455308"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by fmsmga006.fm.intel.com with ESMTP; 21 Sep 2017 07:15:59 -0700
To: "Mardegan, Alberto" <AMardegan@luxoft.com>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
References: <4c4a33cb-b2d8-f56f-f037-6769b77f70f0@luxoft.com>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <b38912a5-efce-d3e7-3d84-aba0867ebf56@linux.intel.com>
Date: Thu, 21 Sep 2017 17:12:02 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <4c4a33cb-b2d8-f56f-f037-6769b77f70f0@luxoft.com>
Subject: Re: [PATCH] bitbake: lib/bb/utils: fix movefile() copy to dir fallback
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
X-List-Received-Date: Thu, 21 Sep 2017 14:16:01 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 09/21/2017 05:08 PM, Mardegan, Alberto wrote:
> 
> ________________________________
> 
> This e-mail and any attachment(s) are intended only for the recipient(s) named above and others who have been specifically authorized to receive them. They may contain confidential information. If you are not the intended recipient, please do not read this email or its attachment(s). Furthermore, you are hereby notified that any dissemination, distribution or copying of this e-mail and any attachment(s) is strictly prohibited. If you have received this e-mail in error, please immediately notify the sender by replying to this e-mail and then delete this e-mail and any attachment(s) or copies thereof from your system. Thank you.

This patch should go to bitbake-devel list. Also, please use git 
send-email :)


Alex

