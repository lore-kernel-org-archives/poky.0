Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 086DFE00E34; Fri, 12 Jan 2018 04:46:11 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 85E15E009E6
	for <poky@yoctoproject.org>; Fri, 12 Jan 2018 04:46:09 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
	by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	12 Jan 2018 04:46:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.46,348,1511856000"; 
   d="scan'208";a="9231452"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by fmsmga008.fm.intel.com with ESMTP; 12 Jan 2018 04:46:08 -0800
To: =?UTF-8?Q?Ga=c3=abl_PORTAY?= <gael.portay@savoirfairelinux.com>,
	poky@yoctoproject.org
References: <cover.1512682188.git.gael.portay@savoirfairelinux.com>
	<ebf0d7257abc739215a3e852e8c5c364bc1b6f29.1512682188.git.gael.portay@savoirfairelinux.com>
	<20180111181247.zcb74beq33jgn5qe@archlinux>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <8fa4e9e5-76c6-973c-5f68-2ce79fa42a6e@linux.intel.com>
Date: Fri, 12 Jan 2018 14:46:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <20180111181247.zcb74beq33jgn5qe@archlinux>
Cc: Ash Charles <ash.charles@savoirfairelinux.com>
Subject: Re: [PATCH 1/1] package_manager.py: fix opkg custom config path
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
X-List-Received-Date: Fri, 12 Jan 2018 12:46:11 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 01/11/2018 08:12 PM, Gaël PORTAY wrote:
> Does anybody has any comment about this patch?

Please send this to oe-core list.

Alex

