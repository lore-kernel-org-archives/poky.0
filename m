Return-Path: <qing.he@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8E56B4C803A5
	for <poky@yoctoproject.org>; Mon, 29 Nov 2010 19:49:28 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 29 Nov 2010 17:49:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,277,1288594800"; d="scan'208";a="578831551"
Received: from qhe2-db.sh.intel.com ([10.239.13.31])
	by orsmga002.jf.intel.com with ESMTP; 29 Nov 2010 17:49:27 -0800
Received: from qhe2 by qhe2-db.sh.intel.com with local (Exim 4.71)
	(envelope-from <qing.he@intel.com>)
	id 1PNFGd-0001j5-JZ; Tue, 30 Nov 2010 09:44:27 +0800
Date: Tue, 30 Nov 2010 09:44:27 +0800
From: Qing He <qing.he@intel.com>
To: Richard Purdie <rpurdie@linux.intel.com>
Message-ID: <20101130014427.GA6584@qhe2-db>
References: <cover.1289982751.git.qing.he@intel.com>
	<a03c4017a13bda3f20b8f39a4c099cb28f349968.1289982751.git.qing.he@intel.com>
	<1290954166.27143.217.camel@rex>
	<625BA99ED14B2D499DC4E29D8138F1504D42C686F3@shsmsx502.ccr.corp.intel.com>
	<AANLkTi=oxv9goiEMAfpkDAvq7n_GfGUMSXsonXDdzixd@mail.gmail.com>
	<1291033557.14277.944.camel@rex>
MIME-Version: 1.0
In-Reply-To: <1291033557.14277.944.camel@rex>
User-Agent: Mutt/1.5.20 (2009-06-14)
Cc: Chris Larson <clarson@kergoth.com>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 1/1] curl: fix native dependency
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
X-List-Received-Date: Tue, 30 Nov 2010 01:49:28 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, 2010-11-29 at 20:25 +0800, Richard Purdie wrote:
> On Sun, 2010-11-28 at 22:53 -0700, Chris Larson wrote:
> > On Sun, Nov 28, 2010 at 10:26 PM, Tian, Kevin <kevin.tian@intel.com> wrote:
> > > This also confuses me a bit. When virtclass-native is expanded, EXTRA_OECONF_append
> > > is simply a variable. In that case the expanded value should override the 1st assignment
> > > of EXTRA_OECONF_append, and then we should get:
> > >
> > > EXTRA_OECONF_append = " --without-gnutls "
> > >
> > > and then that's what we expect.
> > >
> > > I guess I may still overlook something here, and really appreciate your explanation
> > > on the whole flow which is helpful. :-)
> > 
> > No, EXTRA_OECONF_append is never a variable.  _append/_prepend are
> > operations, not part of the name.  The value gets set aside in a list
> > of appends for that variable.  One _append cannot override/replace
> > another on the same variable, its always cumulative.
> 
> Right.
> 
> Interestingly though, if I add this to curl*.bb:
> 
> FOO = "A"
> FOO_append = "B"
> FOO_append_virtclass-native = "C"
> 
> and then "bitbake curl-native -e | grep FOO" (he recipe has a
> BBCLASSEXTEND native) what should I see?
> 
> I see FOO = "AB" which is not what I thought it would do...

This is very interesting, I didn't see "AC" when preparing the patch
so went the other way. After seeing your experiment, I also tried this:

FOO = "A"
FOO_virtclass-native = "B"
FOO_virtclass-native_append = "C"

Then for curl-native, FOO = "BC", and there is an explicit variable
FOO_virtclass-native = "BC", this does not exist in RP's test.
So it's more clear to me now what "*_append is never a variable" means.


However, the gut feeling is that this construct introduces some
inconsistency. If "_append" is never a variable, but "_virtclass-native"
is, how is bitbake supposed to handle FOO_append_virtclass-native and
translate it into a FOO_virtclass-native variable?

To be more specific, if append is to be handled earlier than virtclass,
FOO may not be able to be evaluated at the time when append/prepend is
processed, as the following test case:

FOO = "A"
FOO_virtclass-native = "B"
FOO_append = "C"
FOO_append_virtclass-nativesdk = "D"

How should it be handled?

Thanks,
Qing

