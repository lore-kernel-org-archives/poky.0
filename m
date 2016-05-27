Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3DC96E00E3A; Fri, 27 May 2016 06:59:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 29E5AE00D04
	for <poky@yoctoproject.org>; Fri, 27 May 2016 06:59:39 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga101.fm.intel.com with ESMTP; 27 May 2016 06:59:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,374,1459839600"; d="scan'208";a="963599601"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by orsmga001.jf.intel.com with ESMTP; 27 May 2016 06:59:34 -0700
To: poky@yoctoproject.org
References: <trinity-200ddab3-0fb2-41ea-8c38-37f5f1195f5e-1464356891340@3capp-gmx-bs01>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <574852BD.3050200@linux.intel.com>
Date: Fri, 27 May 2016 16:59:25 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Icedove/38.6.0
MIME-Version: 1.0
In-Reply-To: <trinity-200ddab3-0fb2-41ea-8c38-37f5f1195f5e-1464356891340@3capp-gmx-bs01>
Subject: Re: Workaround for fetching files
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
X-List-Received-Date: Fri, 27 May 2016 13:59:41 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 05/27/2016 04:48 PM, Arno wrote:
> My question: Can I download some files that gives errors fetching during the build process and a new bitbake will recognise it? Probably it is not so simple, due to all this fancy stuff with timestamps .....
> But - is there a way?
>
> I am in a company network, due to strict rules I am often faced with problems fetching file.
> So I am not able to use git protocol, most http(s) is the workaround.
>
> Sometimes I can access files by browser (sources.openembedded.org/git2_git.yoctoproject.org.yocto-kernel-tools.git.tar.gz)
> but the yocto build process can't and gives errors.

Did you study this?
https://wiki.yoctoproject.org/wiki/Working_Behind_a_Network_Proxy

Alex


