Return-Path: <markus.lehtonen@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 228D6E00EC8; Mon, 27 Jun 2016 04:00:24 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0212FE00EB6
	for <poky@yoctoproject.org>; Mon, 27 Jun 2016 04:00:20 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga103.fm.intel.com with ESMTP; 27 Jun 2016 04:00:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,536,1459839600"; d="scan'208";a="835867340"
Received: from marquiz.fi.intel.com ([10.237.72.155])
	by orsmga003.jf.intel.com with ESMTP; 27 Jun 2016 04:00:18 -0700
Message-ID: <1467025217.6738.14.camel@linux.intel.com>
From: Markus Lehtonen <markus.lehtonen@linux.intel.com>
To: "Keskinarkaus, Teemu" <Teemu.Keskinarkaus@Maximatecc.com>, Paul Eggleton
	<paul.eggleton@linux.intel.com>, Peter Kjellerstedt
	<peter.kjellerstedt@axis.com>
Date: Mon, 27 Jun 2016 14:00:17 +0300
In-Reply-To: <83DB4EC8FADD45428E3CC4E3664761FD400438B4@AMDTCEX15.actuant.pri>
References: <83DB4EC8FADD45428E3CC4E3664761FD4004044C@AMDTCEX15.actuant.pri>
	<fff4b7c1c35245379ab4cc09fd9fff08@XBOX02.axis.com>
	<488452498.gBbhXqb4nk@peggleto-mobl.ger.corp.intel.com>
	<83DB4EC8FADD45428E3CC4E3664761FD400438B4@AMDTCEX15.actuant.pri>
X-Mailer: Evolution 3.16.5 
Mime-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
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
X-List-Received-Date: Mon, 27 Jun 2016 11:00:24 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

Hi,

There would be at least two options,that I can think of to "hide" the
files. First, if possible, make the recipe build in a separate
directory so that the build-time generated files won't pollute your
source tree. Second, make your external source tree a Git tree and add
the files in question to .gitignore. 

Thanks,
  Markus

On Wed, 2016-06-08 at 04:50 +0000, Keskinarkaus, Teemu wrote:
> Hi,
> 
> I think there are some files that are being generated at compilation
> time so most likely those triggers the recompilation every time.
> 
> The next question is that how to I 'hide' files so that they don't
> trigger the recompilation? Is that something that I need to do on my
> application side or can I list files in Yocto to ignore when hashing
> files? This is most likely the proper way to deal with this issue
> rather than disabling whole feature.
> 
> Teemu Keskinarkaus
> Software system engineer
> maximatecc
> making machines smart, safe and productive
> 
> 
> -----Original Message-----
> From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]
> Sent: 8. kesäkuuta 2016 4:52
> To: Peter Kjellerstedt; Keskinarkaus, Teemu
> Cc: poky@yoctoproject.org
> Subject: Re: [poky] Recompiles in Yocto/Poky
> 
> On Fri, 03 Jun 2016 07:00:14 Peter Kjellerstedt wrote:
> > This is a feature introduced to complement the main use of
> > externalsrc, which is together with devtool. When you use "devtool
> > modify -x <recipe>", it fetches the sources as specified in the
> > recipe
> > and makes them available locally. At the same time it sets up a
> > bbappend in the workspace layer which uses externalsrc to use those
> > sources when building the recipe. This is intended to make it easy
> > to
> > use BitBake to actually work on and develop the sources. However,
> > for
> > this to work in practice, BitBake must rebuild the package if there
> > are any changes in the sources, but since BitBake normally only
> > looks
> > at the meta data to determine if a recipe task needs to run, there
> > is
> > nothing telling it that the sources have changed. Therefore changes
> > were made so that code specified using externalsrc is always
> > rebuilt.
> 
> In 2.0 that's how it behaved - what it's supposed to do in 2.1 is
> determine if the sources have changed by either relying on the git
> metadata (if the source tree is tracked in git) or by hashing all
> files in the source tree if it isn't. It could be false triggering if
> you have files in the source tree that get regenerated as part of the
> compilation process that aren't hidden. Teemu, is that the case for
> your source tree?
> 
> Unfortunately there is no way at present to turn off this
> functionality; we could add one, however before doing that I would be
> more interested in looking at making the code more intelligent so it
> did automatically rebuild in response to source changes for this case
> and not when there were no changes, assuming that's practical.
> 
> Cheers,
> Paul
> 
> --
> 
> Paul Eggleton
> Intel Open Source Technology Centre
> 
> ________________________________
> 
> Actuant Corporation Email Notice
> 
> This message is intended only for the use of the Addressee and may
> contain information that is PRIVILEGED and/or CONFIDENTIAL.
> This email is intended only for the personal and confidential use of
> the recipient(s) named above. If the reader of this email is not an
> intended recipient, you have received this email in error and any
> review, dissemination, distribution or copying is strictly
> prohibited.
> If you have received this email in error, please notify the sender
> immediately by return mail and permanently delete the copy you
> received.
> 
> Thank you.


