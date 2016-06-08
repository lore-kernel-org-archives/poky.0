Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3E2FAE00CD3; Tue,  7 Jun 2016 18:52:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ADCE1E00CCF
	for <poky@yoctoproject.org>; Tue,  7 Jun 2016 18:52:08 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga103.fm.intel.com with ESMTP; 07 Jun 2016 18:52:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,436,1459839600"; d="scan'208";a="982996257"
Received: from ntjioe-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.145.211])
	by fmsmga001.fm.intel.com with ESMTP; 07 Jun 2016 18:52:05 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Peter Kjellerstedt <peter.kjellerstedt@axis.com>, "Keskinarkaus,
	Teemu" <Teemu.Keskinarkaus@maximatecc.com>
Date: Wed, 08 Jun 2016 13:52:03 +1200
Message-ID: <488452498.gBbhXqb4nk@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.5.5-201.fc23.x86_64; KDE/4.14.20; x86_64; ;
	)
In-Reply-To: <fff4b7c1c35245379ab4cc09fd9fff08@XBOX02.axis.com>
References: <83DB4EC8FADD45428E3CC4E3664761FD4004044C@AMDTCEX15.actuant.pri>
	<fff4b7c1c35245379ab4cc09fd9fff08@XBOX02.axis.com>
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: Recompiles in Yocto/Poky
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
X-List-Received-Date: Wed, 08 Jun 2016 01:52:14 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Fri, 03 Jun 2016 07:00:14 Peter Kjellerstedt wrote:
> This is a feature introduced to complement the main use of externalsrc,
> which is together with devtool. When you use "devtool modify -x <recipe>",
> it fetches the sources as specified in the recipe and makes them available
> locally. At the same time it sets up a bbappend in the workspace layer
> which uses externalsrc to use those sources when building the recipe. This
> is intended to make it easy to use BitBake to actually work on and develop
> the sources. However, for this to work in practice, BitBake must rebuild
> the package if there are any changes in the sources, but since BitBake
> normally only looks at the meta data to determine if a recipe task needs to
> run, there is nothing telling it that the sources have changed. Therefore
> changes were made so that code specified using externalsrc is always
> rebuilt.

In 2.0 that's how it behaved - what it's supposed to do in 2.1 is determine if 
the sources have changed by either relying on the git metadata (if the source 
tree is tracked in git) or by hashing all files in the source tree if it 
isn't. It could be false triggering if you have files in the source tree that 
get regenerated as part of the compilation process that aren't hidden. Teemu, 
is that the case for your source tree?

Unfortunately there is no way at present to turn off this functionality; we 
could add one, however before doing that I would be more interested in looking 
at making the code more intelligent so it did automatically rebuild in 
response to source changes for this case and not when there were no changes, 
assuming that's practical.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

