Return-Path: <joshua.g.lock@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CA4CEE0071C; Fri, 13 Jan 2017 07:04:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,NORMAL_HTTP_TO_IP,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.100 listed in list.dnswl.org]
	* 0.0 NORMAL_HTTP_TO_IP URI: URI host has a public dotted-decimal IPv4
	*      address
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6FC57E006C6
	for <poky@yoctoproject.org>; Fri, 13 Jan 2017 07:04:23 -0800 (PST)
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by orsmga105.jf.intel.com with ESMTP; 13 Jan 2017 07:04:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,221,1477983600"; d="scan'208";a="52638572"
Received: from jlock-mobl1.ger.corp.intel.com ([10.252.24.83])
	by orsmga005.jf.intel.com with ESMTP; 13 Jan 2017 07:04:20 -0800
Message-ID: <1484319859.3828.5.camel@linux.intel.com>
From: Joshua Lock <joshua.g.lock@linux.intel.com>
To: Kristian Amlie <kristian.amlie@mender.io>, Richard Purdie
	<richard.purdie@linuxfoundation.org>, "poky@yoctoproject.org"
	<poky@yoctoproject.org>
Date: Fri, 13 Jan 2017 15:04:19 +0000
In-Reply-To: <d4ef08e1-80b3-ba38-76ea-67157dc6abec@mender.io>
References: <e5ed867c-cb26-466c-694f-65d60254cd60@mender.io>
	<1484304092.4367.248.camel@linuxfoundation.org>
	<94097740-4d39-525e-94d6-bbc7aaa69dc2@mender.io>
	<d4ef08e1-80b3-ba38-76ea-67157dc6abec@mender.io>
X-Mailer: Evolution 3.22.3 (3.22.3-1.fc25) 
Mime-Version: 1.0
Subject: Re: SSTATE_MIRRORS not working?
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
X-List-Received-Date: Fri, 13 Jan 2017 15:04:24 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Fri, 2017-01-13 at 15:58 +0100, Kristian Amlie wrote:
> On 13/01/17 13:35, Kristian Amlie wrote:
> > On 13/01/17 11:41, Richard Purdie wrote:
> > > On Fri, 2017-01-13 at 09:50 +0100, Kristian Amlie wrote:
> > > > For some time now, I've had the problem that SSTATE_MIRRORS
> > > > does not
> > > > work properly for me. I can see that it downloads lots of
> > > > packages
> > > > from the cache, but once the setscene stage is over, and
> > > > runqueue
> > > > begins, it starts the whole build from scratch regardless.
> > > > 
> > > > This used to work for me before, it would only run a small
> > > > subset of
> > > > the tasks locally, taking full advantage of the cache, so I'm
> > > > fairly
> > > > certain my setup is correct. For me it broke maybe six weeks
> > > > ago or
> > > > so (master branch).
> > > > 
> > > > I realize this question may be more appropriate for bitbake-
> > > > devel,
> > > > and I can provide more details, but I thought I'd just hear if
> > > > anybody else has experienced the same, before I go digging.
> > > 
> > > Which SSTATE_MIRRORS are you using?
> > 
> > It's a private build machine in the cloud. It's simply the sstate-
> > cache
> > folder exposed with Apache, and me pointing my mirror at it with:
> > 
> >   SSTATE_MIRRORS ?= "file://.* http://1.2.3.4/PATH"
> > 
> > > The build logs should show what is being rebuilt. The autobuilder
> > > does
> > > reuse sstate during its builds and we'd likely have noticed long
> > > build
> > > times if it was completely broken so its likely some mismatch
> > > between
> > > your setup and what is in the particular mirror you're using.
> > 
> > I'll try to do a more thorough check, and compare downloaded
> > packages
> > with built packages.
> 
> Looker closer, it appears that it's all the native tools that are
> rebuilt. This didn't use to happen though. What could be the
> difference
> factor here?

Did you recently change distro (i.e. was using poky and switched to a
custom distro)? Does your distro use uninative?

http://www.yoctoproject.org/docs/2.2/mega-manual/mega-manual.html#ref-c
lasses-uninative

> My machine is Ubuntu 16.04 and the cloud machine I use as a mirror is
> Debian 8. Could this be significant?

If you aren't using uninative the different host OS won't share sstate
for native recipe variants.

Regards,

Joshua

