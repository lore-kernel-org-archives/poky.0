Return-Path: <joshua.g.lock@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 04DACE009C9; Wed,  8 Feb 2017 06:49:15 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A4625E00939
	for <poky@yoctoproject.org>; Wed,  8 Feb 2017 06:49:13 -0800 (PST)
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by orsmga103.jf.intel.com with ESMTP; 08 Feb 2017 06:49:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,346,1477983600"; d="scan'208";a="63324964"
Received: from jlock-mobl1.ger.corp.intel.com ([10.252.16.172])
	by fmsmga006.fm.intel.com with ESMTP; 08 Feb 2017 06:49:11 -0800
Message-ID: <1486565350.3754.19.camel@linux.intel.com>
From: Joshua Lock <joshua.g.lock@linux.intel.com>
To: Khem Raj <raj.khem@gmail.com>, poky@yoctoproject.org
Date: Wed, 08 Feb 2017 14:49:10 +0000
In-Reply-To: <01cb82a0-b38a-f56f-cbf9-da212ba4c4a5@gmail.com>
References: <20170124130413.24928-1-joshua.g.lock@intel.com>
	<20170124150400.GG22316@bill-the-cat>
	<01cb82a0-b38a-f56f-cbf9-da212ba4c4a5@gmail.com>
X-Mailer: Evolution 3.22.4 (3.22.4-2.fc25) 
Mime-Version: 1.0
Subject: Re: [PATCH] poky.conf: prune SANITY_TESTED_DISTROS
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
X-List-Received-Date: Wed, 08 Feb 2017 14:49:15 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Thu, 2017-01-26 at 17:35 -0800, Khem Raj wrote:
> 
> On 1/24/17 7:04 AM, Tom Rini wrote:
> > On Tue, Jan 24, 2017 at 01:04:13PM +0000, Joshua Lock wrote:
> > > Remove several old/untested distros from the list:
> > > * poky-1.8 and poky-2.0 are no longer supported releases
> > > * ubuntu-14.04 is an LTS but we plan to remove it from the
> > >   project's autobuilder cluster as the kernel is old and
> > >   it doesn't use systemd -- therefore this will no longer
> > >   be tested.
> > 
> > Can you elaborate a bit more on the pain involved with supporting
> > Ubuntu
> > 14.04?  Or, do you expect to drop Ubuntu 16.04 in favour of 18.04
> > at
> > around this point in 2019 and continue only supporting the latest
> > LTS
> > for Ubuntu?  I ask because supported hosts are an important part of
> > companies being able to plan their use and upgrade
> > strategies.  Thanks!
> > 
> 
> ubuntu 14.04 is still not EOL until April 2019, and I think lot of
> folks
> will keep using it until its EOLed, so it would be preferable to keep
> it
> as a supported host.

I agree that it would be preferable. 

Unfortunately we don't currently have the resources to validate it so,
whilst we won't explicitly *not* support it, we can't include it in
SANITY_TESTED_DISTROS because it won't be tested by the YP QA team.

Regards,

Joshua


