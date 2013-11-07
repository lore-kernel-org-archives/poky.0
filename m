Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D42A9E01757
	for <poky@yoctoproject.org>; Thu,  7 Nov 2013 11:01:15 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 07 Nov 2013 11:01:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,535,1378882800"; d="scan'208";a="405205973"
Received: from dvhart-mobl4.jf.intel.com (HELO [10.7.196.57]) ([10.7.196.57])
	by orsmga001.jf.intel.com with ESMTP; 07 Nov 2013 11:01:15 -0800
Message-ID: <1383850874.5378.58.camel@dvhart-mobl4.amr.corp.intel.com>
From: Darren Hart <dvhart@linux.intel.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Date: Thu, 07 Nov 2013 11:01:14 -0800
In-Reply-To: <527BDE2A.2030408@windriver.com>
References: <CAF8s8J-NfHh=vhDk9937cJcxO8aBTFb3ZP+3J5=A2c+PG443QA@mail.gmail.com>
	<CADkTA4OqyjQqqCsKcfoa14XW4BWQRAmwSQMB8rtypFc4M3mxeA@mail.gmail.com>
	<1383849357.5378.43.camel@dvhart-mobl4.amr.corp.intel.com>
	<527BDE2A.2030408@windriver.com>
Organization: Intel
X-Mailer: Evolution 3.8.5 (3.8.5-2.fc19) 
Mime-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [patch] linux-yocto-rt_3.10.bbappend recipe
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
X-List-Received-Date: Thu, 07 Nov 2013 19:01:16 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2013-11-07 at 13:38 -0500, Bruce Ashfield wrote:
> On 13-11-07 01:35 PM, Darren Hart wrote:
> > On Tue, 2013-11-05 at 22:25 -0500, Bruce Ashfield wrote:
> >> On Tue, Nov 5, 2013 at 6:06 PM, Eric Keller <keller.eric@gmail.com> wrote:
> >>> Hi everyone,
> >>>
> >>> could you consider applying this patch so that we are able to build rt
> >>> kernel for genericx86(-64)?
> >>
> >> Send a patch against the main linux-yocto-rt recipe (not via this
> >> attached bbappend
> >> patch), and we can have a look.
> >
> > Bruce, the genericx86 BSPs are not in oe-core, they are in
> > meta-yocto-bsp, so the bbappend is the right place to do this.
> 
> Ah yes. Right you are.
> 
> >
> >>
> >> But adding the support is something that you can easily carry in your
> >> own layer,
> >> since by adding the support to the main recipe, we are implicitly agreeing that
> >> I'll build and boot test it with each update. And I don't have a large
> >> objection to that,
> >> but I add new supported boards with caution, in particular genericx86, since it
> >> doesn't have a tightly controlled platform or set of drivers.
> >
> > For context, I met with Eric and suggested he send this patch. I would
> > be adding it myself if he didn't as genericx86* absolutely must support
> > PREEMPT_RT IMNSHO.
> 
> Then I assume you'll be taking all the testing of it as well ? The
> patch as it stands is still not properly formatted, but that's a
> minor 'nit.

Yes, this needs to be part of our QA.

Eric, please have a look at the docs on
create-pull-request/send-pull-request or just using "git send-email" to
get your patches out in the appropriate format.

> 
> We should have cc'd the poky list on this as well, since it actually
> isn't any changes to linux-yocto itself to support the type.

Indeed it should have been. Takes some experience to get things to the
right list :-)

> 
> Bruce
> 
> >
> 

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel



