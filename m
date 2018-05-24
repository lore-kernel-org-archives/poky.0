Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8678DE006F1; Thu, 24 May 2018 12:42:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.120 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7678EE0044F
	for <poky@yoctoproject.org>; Thu, 24 May 2018 12:42:05 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	24 May 2018 12:42:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.49,437,1520924400"; d="scan'208";a="49892056"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by fmsmga002.fm.intel.com with ESMTP; 24 May 2018 12:42:03 -0700
To: nick83ola <nick83ola@gmail.com>, poky@yoctoproject.org
References: <CABPh3UPT7qC+-pzVm6=4x2xu1b19QKEsFThMeAP-C+mtoZOTmQ@mail.gmail.com>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <fd8533e6-fbe3-d54e-643a-6f98a681e927@linux.intel.com>
Date: Thu, 24 May 2018 22:42:11 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <CABPh3UPT7qC+-pzVm6=4x2xu1b19QKEsFThMeAP-C+mtoZOTmQ@mail.gmail.com>
Subject: Re: [yocto][PATCH] U-Boot 2018.03 wrong SD card clock speed
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
X-List-Received-Date: Thu, 24 May 2018 19:42:07 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 05/24/2018 08:33 PM, nick83ola wrote:
> This patch fixes a problem with U-Boot 2018.03.
> Basically U-boot get for the sd card the wrong clock source and with the 
> latest firmware (that changes it) it hangs when it try to access the sd 
> card.
> See this discussion
> 
> https://github.com/raspberrypi/firmware/issues/953
> 
> This patch has already been accepted in U-boot source tree and it will 
> be included in 2018.05 version.

That version will show up in oe-core master branch shortly.

> I think that the best approach here would be to have only one recipe 
> that provides the
> u-book-mkimage u-boot-fw-utils and u-boot packages

If you can make a patch for that and send it openembedded-core mailing 
list, that would be great.

Alex

