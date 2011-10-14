Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 616EFE01277
	for <poky@yoctoproject.org>; Fri, 14 Oct 2011 15:28:47 -0700 (PDT)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p9EMZK1T003473; Fri, 14 Oct 2011 23:35:21 +0100
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id VDtlUNj-R2Mx; Fri, 14 Oct 2011 23:35:20 +0100 (BST)
Received: from [192.168.1.66] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p9EMZEvf003438
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Fri, 14 Oct 2011 23:35:16 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Mark Hatle <mark.hatle@windriver.com>
Date: Fri, 14 Oct 2011 23:28:31 +0100
In-Reply-To: <4E98617D.5040501@windriver.com>
References: <4E984ACB.1080901@mlbassoc.com> <4E985E22.1080008@windriver.com>
	<1318608939.2342.37.camel@ted> <4E98617D.5040501@windriver.com>
X-Mailer: Evolution 3.1.91- 
Message-ID: <1318631320.2342.55.camel@ted>
Mime-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: Poky SDK as an external toolchain
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
X-List-Received-Date: Fri, 14 Oct 2011 22:28:48 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2011-10-14 at 11:21 -0500, Mark Hatle wrote:
> On 10/14/11 11:15 AM, Richard Purdie wrote:
> > On Fri, 2011-10-14 at 11:06 -0500, Mark Hatle wrote:
> >> On 10/14/11 9:44 AM, Gary Thomas wrote:
> >>> Premise: I'm happy with the toolchain that builds with Poky/Yocto
> >>> Problem: I'm not happy rebuilding said toolchain all the time, nor
> >>> having my customers have to rebuild it.
> >>>
> >>> Solution? I'd like to build the meta-toolchain and then be able to
> >>> use that as an external toolchain for subsequent builds.  That way,
> >>> I can create the tools and reuse them internally as well as pass
> >>> them to my customers.
> >>>
> >>> How can I make this happen?  The last time I tried anything like
> >>> this, I spent many days in the attempt only to find out that it
> >>> was never going to work...
> >>
> >> We have a similar need for our commercial products.  We allow/enable our
> >> customers to rebuild the toolchains (and use the results), but we only provide
> >> official support for our binary versions.  There are simply too many variations
> >> possible to try to support the toolchains in source format.  (Toolchains =
> >> bintuils, gcc, stock eglibc and a stock uclibc configurations...)
> >>
> >> Our intention is simply to create custom recipes that extract our binaries and
> >> use them instead of doing a by-source build.  If there is an easier way that
> >> would be nice.  (And I agree, using the results of the meta-toolchain build is
> >> the right approach for anything standard.)
> >>
> >> I'd suggest this get added as an enhancement request to the bugzilla.  We're
> >> currently working on feature planning for 1.2 so this would be a good time to
> >> add it into the bucket of possible work items.
> > 
> > We already support external toolchains just fine. You can use a
> > meta-toolchain as an external toolchain.
> 
> But we don't have a way to use OUR external toolchain directly as the toolchain
> for building, avoiding building new ones right?

We have a way of generically using external toolchains to replace our
internal self-built one. As Tom pointed out see:

http://cgit.openembedded.org/openembedded-core/tree/meta/recipes-core/meta/external-csl-toolchain_2008q3-72.bb

and also the TCMODE variable.

> > If you want to reuse the toolchain directly, we do have sstate and we
> > need to fix issues it has. We know and acknowledge they exist, we just
> > need to track down the problems and fix them. The more people who help
> > with that the sooner it will get done.
> 
> This is one case where I think sstate is only the answer for those folks who
> want to speed rebuilding.  But in the case where you've come up with a certified
> set of binary components.. there needs to be a way to inject that in without the
> weight of the sstate.  (Copy of all of the various stages of the install, build,
> packaging..)

Agreed, although I'm hoping sstate can actually be used here generically
with a brute force of the sstate hash compatibility. The whole of the
checksum infrsatructure is configurable and customisable but we've not
seen people use it much, yet

> I think this is a different usecase then the sstate.  To me sstate allows the
> use of a cache to speed up building.  This is a case where we want to use
> something external (which happens to be built by the build system -- setting the
> default format) to avoid performing any build operations.

This is exactly what ASSUME_PROVIDED is for and how our external
toolchain support works. We can do this, people just don't chose to much
at the moment...

Cheers,

Richard


