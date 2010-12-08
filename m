Return-Path: <josh@openedhand.com>
Received: from pug.o-hand.com (3a.49.1343.static.theplanet.com [67.19.73.58])
	by mx1.pokylinux.org (Postfix) with ESMTP id 30E734C811F9
	for <poky@yoctoproject.org>; Wed,  8 Dec 2010 06:14:54 -0600 (CST)
Received: from [10.250.128.97] (unknown [158.43.2.102])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by pug.o-hand.com (Postfix) with ESMTP id CA17612EC117
	for <poky@yoctoproject.org>; Wed,  8 Dec 2010 06:53:04 -0600 (CST)
From: Joshua Lock <josh@openedhand.com>
To: poky@yoctoproject.org
In-Reply-To: <4CFE82DC.5020608@intel.com>
References: <4CFD94DD.7010906@intel.com> <4CFE7269.4000507@intel.com>
	<1291747386.9405.3.camel@scimitar>  <4CFE82DC.5020608@intel.com>
Date: Wed, 08 Dec 2010 12:14:44 +0000
Message-ID: <1291810484.2516.3.camel@scimitar>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.1 (2.32.1-1.fc14) 
Subject: Re: Master Stability
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
X-List-Received-Date: Wed, 08 Dec 2010 12:14:54 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2010-12-07 at 10:54 -0800, Scott Garman wrote:
> On 12/07/2010 10:43 AM, Joshua Lock wrote:
> > On Tue, 2010-12-07 at 09:44 -0800, Elizabeth Flanagan wrote:
> >> Acked-by: Beth Flanagan
> >>
> >> (Stands on build engineer soap box)
> >>
> >> If at all possible, when you try to verify a fix, do a full clean build
> >> for more than just one arch using BB_NUMBER_THREADS and PARALLEL_MAKE.
> >> With the number of pull requests coming through, it becomes more and
> >> more vital to verify patches prior to sending them out.
> >>
> >> Preferably, I'd like to start seeing people add something like a
> >> Verified-with:<build target>  tag to pull requests, so we can at least
> >> identify pulls that need more peer review than normal.
> >
> > Personally I'd like to see links to an autobuilder report showing it has
> > succeeded and if such a tag is *not* on a pull request it's
> > automatically pushed to an autobuilder instance with the success of the
> > build sent back to the list as a reply to the patch thread.
> >
> > I think hardware constraints make this a bit of a pipe dream though?
> 
> We're definitely hardware constrained for it. I want a pony also. ;)

I've become increasingly jealous because some colleagues have a unicorn!
It's called git test-sequence:
http://dustin.github.com/2010/03/28/git-test-sequence.html

> 
> Beth has started working on customizing Buildbot's web interface to 
> allow finer-grained control over what gets built. A longer-range goal of 
> this is eventually be able to pick which targets and architectures get 
> built from a custom autobuilder buildset. That way someone with a commit 
> to quilt (which has very few dependencies) wouldn't have to build all of 
> poky-image-sato to demonstrate their build works. With something like 
> that in place, we can start to consider having individual developers 
> test their changes on our autobuilder infrastructure. Which would kick ass.

No kidding, can't wait!

Hopefully we can tie something like git test-sequence into this such
that we can do these things from our lovely shell environments :-)

Cheers,
Joshua
-- 
Joshua Lock
        Intel Open Source Technology Centre


