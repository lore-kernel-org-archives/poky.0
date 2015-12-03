Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 08001E00803; Thu,  3 Dec 2015 15:23:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B56CAE00349
	for <poky@yoctoproject.org>; Thu,  3 Dec 2015 15:22:58 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga103.jf.intel.com with ESMTP; 03 Dec 2015 15:22:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,378,1444719600"; d="scan'208";a="833874341"
Received: from cquah-mobl5.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.135.68])
	by orsmga001.jf.intel.com with ESMTP; 03 Dec 2015 15:22:55 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 04 Dec 2015 12:22:53 +1300
Message-ID: <2832665.WLGKgHJUnb@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.2.6-301.fc23.x86_64; KDE/4.14.14; x86_64; ;
	)
In-Reply-To: <CAJTo0LbgFHjxW7icefbm4cej8HqCc2iVy+Bs9u0jtamom5WbOA@mail.gmail.com>
References: <1447702637-1614-1-git-send-email-dagenaisj@sonatest.com>
	<10353510.SMoQjafh4x@peggleto-mobl.ger.corp.intel.com>
	<CAJTo0LbgFHjxW7icefbm4cej8HqCc2iVy+Bs9u0jtamom5WbOA@mail.gmail.com>
MIME-Version: 1.0
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: [PATCH 1/2] toolchain-shar-relocate: don't assume last state of env_setup_script is good
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
X-List-Received-Date: Thu, 03 Dec 2015 23:23:01 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thu, 03 Dec 2015 23:16:07 Burton, Ross wrote:
> On 3 December 2015 at 21:56, Paul Eggleton <paul.eggleton@linux.intel.com>
> 
> wrote:
> > This patch was merged to master and has unfortunately broken
> > buildtools-tarball which does not use the same environment setup script
> > name.
> > 
> > (Additionally this patch was missing Signed-off-by and was sent to the
> > wrong
> > list - it should have gone to the openembedded-core@lists.openembedded.org
> > list instead.)
> 
> Urgh, sorry.  Shall I throw a revert into mut quickly or is this trivial to
> fix properly?

I'm still investigating - don't think it should be too difficult. I'll try to 
have a patch out by the end of the day.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

