Return-Path: <maciej.pijanowski@3mdeb.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 17E20E00BAB; Fri, 22 Feb 2019 06:37:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [46.105.75.26 listed in list.dnswl.org]
X-Greylist: delayed 1200 seconds by postgrey-1.32 at yocto-www;
	Fri, 22 Feb 2019 06:37:23 PST
Received: from 8.mo179.mail-out.ovh.net (8.mo179.mail-out.ovh.net
	[46.105.75.26])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ADF5AE00D99
	for <poky@yoctoproject.org>; Fri, 22 Feb 2019 06:37:23 -0800 (PST)
Received: from player760.ha.ovh.net (unknown [10.109.143.201])
	by mo179.mail-out.ovh.net (Postfix) with ESMTP id 7E34A11C4A5
	for <poky@yoctoproject.org>; Fri, 22 Feb 2019 15:01:17 +0100 (CET)
Received: from 3mdeb.com (85-222-117-222.dynamic.chello.pl [85.222.117.222])
	(Authenticated sender: maciej.pijanowski@3mdeb.com)
	by player760.ha.ovh.net (Postfix) with ESMTPSA id 15F35303CAFA;
	Fri, 22 Feb 2019 14:01:16 +0000 (UTC)
To: poky@yoctoproject.org
From: Maciej Pijanowski <maciej.pijanowski@3mdeb.com>
Message-ID: <cb45e5f9-9c4e-0d67-d2b6-5ff839596644@3mdeb.com>
Date: Fri, 22 Feb 2019 15:01:15 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.4.0
MIME-Version: 1.0
X-Ovh-Tracer-Id: 48695173861813944
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedutddruddtgdeiudcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
Cc: =?UTF-8?B?xYF1a2FzeiDFgWFndW5h?= <lukasz.laguna@3mdeb.com>
Subject: Broken gitsm fetcher for git/ssh protocol
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
X-List-Received-Date: Fri, 22 Feb 2019 14:37:26 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

Hi,

We have ran into a problem when trying to using a gitsm fetcher within a 
recipe.
The "protocol" parameter was not correctly parsed from the initial 
SRC_URI parameters
when using git@ syntax with ssh protocol. To fix the issue we had to 
cherry pick
following commits from poky/master:

* 2a61bdcc7bf1 bitbake: gitsm: The fetcher did not process some 
recursive submodules properly.
* 9c50a8e2dc75 bitbake: gitsmy.py: Fix unpack of submodules of submodules
* 5b9377966844 bitbake: gitsm.py: Fix relative URLs
* a7256b2884b5 bitbake: gitsm.py: Refactor the functions and simplify 
the class
* 2e6e5254df93 bitbake: gitsm.py: Rework the shallow fetcher and test case
* 778810feaddc bitbake: gitsm.py: revise unpack
* 30fa3437b38d bitbake: gitsm.py: Optimize code and attempt to resolve 
locking issue
* 78f7ecbd6800 bitbake: gitsm.py: Add support for alternative URL 
formats from submodule files
* e8e818e4302f bitbake: gitsm.py: Fix when a submodule is defined, but 
not initialized

Is it possible to include those fixes in the poky/thud as well? Or poky/thud
is already closed for including such changes?

Thanks,

-- 
Maciej Pijanowski
Embedded Systems Engineer
https://3mdeb.com | @3mdeb_com


