Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F199BE00C4F; Fri, 16 Mar 2018 17:49:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 31D3BE007DA
	for <poky@yoctoproject.org>; Fri, 16 Mar 2018 17:49:12 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
	by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	16 Mar 2018 17:49:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.48,318,1517904000"; d="scan'208";a="25215397"
Received: from rravin1x-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.249.79.24])
	by fmsmga008.fm.intel.com with ESMTP; 16 Mar 2018 17:49:10 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Martin Jansa <martin.jansa@gmail.com>
Date: Sat, 17 Mar 2018 08:49:09 +0800
Message-ID: <1892105.toOpV9Lc3k@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
In-Reply-To: <CA+chaQdpuYMo9-6pJTyDdfRW-iqR6QnQ4ycW56kGyxfj_iDbrw@mail.gmail.com>
References: <cover.1521180913.git.paul.eggleton@linux.intel.com>
	<58d772d75254a2cc6ae5ae2cbd35a09cd10bc77e.1521180913.git.paul.eggleton@linux.intel.com>
	<CA+chaQdpuYMo9-6pJTyDdfRW-iqR6QnQ4ycW56kGyxfj_iDbrw@mail.gmail.com>
MIME-Version: 1.0
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: [PATCH 1/1] lib/bb/shell.py: drop
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
X-List-Received-Date: Sat, 17 Mar 2018 00:49:14 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Martin,

On Friday, 16 March 2018 6:14:42 PM +08 Martin Jansa wrote:
> Thanks Paul, this was bothering me every time I was explaining to someone
> that poky/bitbake and standalone bitbake are the same thing.
> 
> Are you willing to sync other less important files as well? Last time I've
> checked there was also MANIFEST.in, TODO, classes and conf in the
> standalone one.

With MANIFEST.in and TODO, yes, I can do that easily. I think classes and conf 
were deliberately excluded to avoid confusion with the ones that normally get 
used when alongside OE, but whether we need to continue to do that I'm not 
sure. We could alternatively put sufficient comments in the bitbake versions 
so that people understand those probably aren't the ones they want to be 
editing.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre



