Return-Path: <qing.he@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 06E684C81065
	for <poky@yoctoproject.org>; Thu, 20 Jan 2011 21:21:26 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 20 Jan 2011 19:21:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,355,1291622400"; d="scan'208";a="649500352"
Received: from qhe2-db.sh.intel.com ([10.239.13.48])
	by fmsmga002.fm.intel.com with ESMTP; 20 Jan 2011 19:21:26 -0800
Received: from qhe2 by qhe2-db.sh.intel.com with local (Exim 4.71)
	(envelope-from <qing.he@intel.com>)
	id 1Pg7TF-0002aW-R9; Fri, 21 Jan 2011 11:15:29 +0800
Date: Fri, 21 Jan 2011 11:15:29 +0800
From: Qing He <qing.he@intel.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>, saul.wold@intel.com
Message-ID: <20110121031529.GB9774@qhe2-db>
References: <cover.1295455496.git.paul.eggleton@linux.intel.com>
	<88be364793ae493d048409762c83ca4126e3fecf.1295455496.git.paul.eggleton@linux.intel.com>
	<4D3737DF.2040906@intel.com>
	<201101201015.03665.paul.eggleton@linux.intel.com>
MIME-Version: 1.0
In-Reply-To: <201101201015.03665.paul.eggleton@linux.intel.com>
User-Agent: Mutt/1.5.20 (2009-06-14)
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 1/3] util-linux: split out libuuid and libblkid into	separate packages
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 21 Jan 2011 03:21:27 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, 2011-01-20 at 18:15 +0800, Paul Eggleton wrote:
> On Wednesday 19 January 2011 19:13:35 Saul Wold wrote:
> > On 01/19/2011 08:55 AM, Paul Eggleton wrote:
> > > libuuid and libblkid can exist on their own separately from the rest
> > > of util-linux. Slightly reduces the overall footprint of other packages
> > > that depend on these libraries.
> > 
> > Is this different than the work that Qing submitted last night?  Are you
> > both addressing the same bug #661?
> > 
> > This fix seems different than his, we need to make sure we are better
> > coordinated
> 
> Yes, this is a lesson for me to check bugzilla and pay closer attention 
> patches that are being posted - my apologies. FYI I was responding to a 
> request from Richard on IRC rather than the bug report.

It's no big deal, there are lots of messages on the list and it's pretty
normal to miss some of them. I did not see your discussion on IRC,
otherwise I would have give you guys updates.

> 
> Qing's patch is slightly better than mine in that it splits the dev packages 
> out as well; on the other hand it names the packages libuuid and libblkid 
> rather than util-linux-libblkid and util-linux-libuuid. Personally it doesn't 
> bother me, but having the prefix there does at least make it easy to determine 
> the source recipe from the package name.

Personally I'm OK with both naming, I just happened to use lib* for brevity.

> 
> I think we do also need to bump PR on all packages that depend on these 
> libraries (the other patches from my patchset) so that package dependencies 
> get corrected automatically.

Yes. This is reasonable.

However, I have some concerns on other similar issues. This specific
problem (bumping PR for dependency changes) was brought out earlier but
seems quite difficult to maintain the package revisions consistently.
Every repackaging or major API change (or even some bbclass change) is
likely to need an adjustment of the packages that depend on it. Given
that some of these are low level libraries that are widely linked, it's
not easy to maintain the correctness of PR of impacted packages.

My understanding is that, previously, usually PR is only changed when
there is explicit modification to the .bb file, those implicit changes
are largely ignored. Smooth upgrading of the binary packages in the
target is only a goal that we all want, but is expected to have some
problems?

> 
> Qing, would you mind integrating these changes into your branch and reposting? 
> (assuming we want the util-linux- package name prefix?)

Ok, I'll get the patches updated. Together with the other patches in
your patch set.

Saul, please also hold the other patch in my patch set regarding
util-linux dangling link as well, I'll resend it in the new set.

Thanks,
Qing

