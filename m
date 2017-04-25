Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1BCAAE00AF4; Tue, 25 Apr 2017 06:11:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 89B53E00AF0
	for <poky@yoctoproject.org>; Tue, 25 Apr 2017 06:11:26 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	25 Apr 2017 06:11:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.37,249,1488873600"; d="scan'208";a="1160700420"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by fmsmga002.fm.intel.com with ESMTP; 25 Apr 2017 06:11:06 -0700
To: poky@yoctoproject.org
References: <trinity-1c5fd78a-c6ca-41a1-8dea-dcfe8bf1ff35-1493125020120@3capp-gmx-bs23>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <29aeb088-beb1-7fa2-b95a-c534f853b374@linux.intel.com>
Date: Tue, 25 Apr 2017 16:10:57 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <trinity-1c5fd78a-c6ca-41a1-8dea-dcfe8bf1ff35-1493125020120@3capp-gmx-bs23>
Subject: Re: gnupg strip down
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
X-List-Received-Date: Tue, 25 Apr 2017 13:11:29 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 04/25/2017 03:57 PM, star@gmx.li wrote:
> Would like to include gnupg into my filesystem. If I add gnupg to my image, it become to big (12.5MB instead of 5MB with core-image-minimal).
> It installs a lot of things I don't need: dozen libs, binaries and even helpfiles in all languages ?!?
>
> In fact I need just gnupg-binary and around 5 libs for my need. Can you help me howto strip down the recipe or what has to be set in a bbappend file to achive that? My first experiments with adding things to ETXRA_OECONF like
>
> EXTRA_OECONF = "....
>    --disable-card-support \
>    --disable-gnupg-iconv  \
>    --disable-idea           \
>    --disable-cast5          \
>    --disable-exec           \
>    --disable-photo-viewers  \
>    --disable-keyserver-helpers   \
>
> failed. Thank you.
>

This is your opportunity to contribute to oe-core :) Write a patch that 
splits up gnupg recipe into several sub-packages, and send it to the 
oe-core mailing list.

Alex

