Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3A728E00B05; Wed, 26 Apr 2017 03:54:20 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 850AAE00B01
	for <poky@yoctoproject.org>; Wed, 26 Apr 2017 03:54:16 -0700 (PDT)
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	26 Apr 2017 03:54:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.37,254,1488873600"; d="scan'208";a="92359594"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by orsmga005.jf.intel.com with ESMTP; 26 Apr 2017 03:54:15 -0700
To: Arno Steffens <star@gmx.li>
References: <trinity-1c5fd78a-c6ca-41a1-8dea-dcfe8bf1ff35-1493125020120@3capp-gmx-bs23>
	<29aeb088-beb1-7fa2-b95a-c534f853b374@linux.intel.com>
	<trinity-040eafa5-27ea-4b5a-9493-1dedc3b445c8-1493185325827@3capp-gmx-bs77>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <d69a7c4a-03e0-7447-c956-231244fda704@linux.intel.com>
Date: Wed, 26 Apr 2017 13:54:07 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <trinity-040eafa5-27ea-4b5a-9493-1dedc3b445c8-1493185325827@3capp-gmx-bs77>
Cc: poky@yoctoproject.org
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
X-List-Received-Date: Wed, 26 Apr 2017 10:54:20 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 04/26/2017 08:42 AM, Arno Steffens wrote:

> split it into packets is a good idea, but far above my knowledge. I
> am happy if I can do slightest modifications to things that are less
> complex. Sure, I checked documentation for hints about configuration.
> There is nothing - better said nothing I can handle. My attempt to
> add more --disable-*** has been just uneducated guesses and didn't
> work. That's why I am asking for help here. At minimum I thing it is
> against the rules just to install all language stuff per default.

Don't try to change configuration flags. You already have a pretty clear 
idea of how the output files could be split in the recipe into separate 
packages. It is not hard: you first define the list of packages using

PACKAGES += "pkg1 pkg2"

and then tell which files go where with

FILES_pkg1 = "file1 file2"
FILES_pkg2 = "file3 file4"

There is a lot of examples in oe-core; it's totally standard procedure.

Alex

