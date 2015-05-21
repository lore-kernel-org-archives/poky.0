Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 89B93E009D9; Thu, 21 May 2015 07:48:53 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 99995E009EC
	for <poky@yoctoproject.org>; Thu, 21 May 2015 07:48:23 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga102.fm.intel.com with ESMTP; 21 May 2015 07:48:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.13,469,1427785200"; d="scan'208";a="574891114"
Received: from linux-8hqz.fi.intel.com (HELO linux-8hqz.site) ([10.237.68.142])
	by orsmga003.jf.intel.com with ESMTP; 21 May 2015 07:48:06 -0700
Message-ID: <555DF04B.2080806@linux.intel.com>
Date: Thu, 21 May 2015 17:48:43 +0300
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <1432219169-7088-1-git-send-email-alexander.kanavin@linux.intel.com>
In-Reply-To: <1432219169-7088-1-git-send-email-alexander.kanavin@linux.intel.com>
Subject: Re: [PATCH] distro: remove obsolete 0.10 packages from distro configuration
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
X-List-Received-Date: Thu, 21 May 2015 14:48:53 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 05/21/2015 05:39 PM, Alexander Kanavin wrote:
> Signed-off-by: Alexander Kanavin <alexander.kanavin@linux.intel.com>

The commit message should read

'distro: remove obsolete gstreamer 0.10 packages from distro configuration'


I don't multitask very well :)


Alex


