Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E7455E00EE2; Mon, 21 Sep 2015 13:23:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 88443E009B8
	for <poky@yoctoproject.org>; Mon, 21 Sep 2015 13:23:48 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga101.fm.intel.com with ESMTP; 21 Sep 2015 08:12:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.17,568,1437462000"; d="scan'208";a="565792972"
Received: from unknown (HELO peggleto-mobl.ger.corp.intel.com) ([10.252.19.88])
	by FMSMGA003.fm.intel.com with ESMTP; 21 Sep 2015 08:12:25 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: brian avery <avery.brian@gmail.com>
Date: Mon, 21 Sep 2015 16:06:51 +0100
Message-ID: <3091895.LLTqhN8z0X@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.9 (Linux/4.1.6-100.fc21.x86_64; KDE/4.14.9; x86_64; ; )
In-Reply-To: <CAJTo0LafTwo-xVgEXWokdReEb3es57kf2cda6+dsHS9i43qDiA@mail.gmail.com>
References: <cover.1442710213.git.avery.brian@gmail.com>
	<ce1b1e6f90c04502bb96418880367f0784e4acd4.1442710213.git.avery.brian@gmail.com>
	<CAJTo0LafTwo-xVgEXWokdReEb3es57kf2cda6+dsHS9i43qDiA@mail.gmail.com>
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/1] meta-selftest: add error recipe and error-image
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
X-List-Received-Date: Mon, 21 Sep 2015 20:23:50 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday 21 September 2015 11:37:02 Burton, Ross wrote:
> On 20 September 2015 at 01:53, brian avery <avery.brian@gmail.com> wrote:
> > +++ b/meta-selftest/recipes-test/error/error.bb
> > @@ -0,0 +1,10 @@
> > +SUMMARY = "Error Test case that fails on do_compile"
> > +DESCRIPTION = "This generates a compile time error to be used to for
> > testing. Not currently used by oe-selftest"
> > +LICENSE = "MIT"
> > +LIC_FILES_CHKSUM =
> > "file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
> > +
> > +INHIBIT_DEFAULT_DEPS = "1"
> > +
> > +do_compile() {
> > +        false;
> > +}
> 
> Would it be sensible to addEXCLUDE_FROM_WORLD to this so it doesn't get
> built in world builds if meta-selftest is enabled?

Good idea; one more - use bbfatal with a message like "failing as expected" or 
similar. I think "Not currently used by oe-selftest" can be dropped as well, 
that's likely to change in the near future.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

