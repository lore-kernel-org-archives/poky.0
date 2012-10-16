Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DE655E00292
	for <poky@yoctoproject.org>; Mon, 15 Oct 2012 19:33:11 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 15 Oct 2012 19:33:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,593,1344236400"; d="scan'208";a="235480700"
Received: from unknown (HELO [10.255.14.132]) ([10.255.14.132])
	by fmsmga002.fm.intel.com with ESMTP; 15 Oct 2012 19:33:10 -0700
Message-ID: <1350354790.27257.21.camel@empanada>
From: Tom Zanussi <tom.zanussi@intel.com>
To: Saul Wold <sgw@linux.intel.com>
Date: Mon, 15 Oct 2012 21:33:10 -0500
In-Reply-To: <507CA199.2000509@linux.intel.com>
References: <cover.1350070372.git.tom.zanussi@intel.com>
	<83af67a8e717a631355c0deed80cf64969b8ae99.1350070372.git.tom.zanussi@intel.com>
	<507CA199.2000509@linux.intel.com>
X-Mailer: Evolution 3.4.1 (3.4.1-2.fc17) 
Mime-Version: 1.0
Cc: dvhart@linux.intel.com, poky@yoctoproject.org
Subject: Re: [PATCH 1/1] packagegroup-core-tools-profile: replace 'legacy' lttng with lttng 2.0
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
X-List-Received-Date: Tue, 16 Oct 2012 02:33:12 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2012-10-15 at 16:51 -0700, Saul Wold wrote:
> On 10/12/2012 12:53 PM, tom.zanussi@intel.com wrote:
> > From: Tom Zanussi <tom.zanussi@intel.com>
> >
> > packagegroup-core-tools-profile currently pulls in the 'legacy' lttng
> > packages, which are useless without legacy lttng support in the kernel.
> >
> > This makes packagegroup-core-tools-profile pull in the lttng 2.0
> > packages instead, which don't need any kernel modifications to work.
> >
> > Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
> > ---
> >   .../packagegroups/packagegroup-core-tools-profile.bb             | 9 +++++----
> >   1 file changed, 5 insertions(+), 4 deletions(-)
> >
> > diff --git a/meta/recipes-core/packagegroups/packagegroup-core-tools-profile.bb b/meta/recipes-core/packagegroups/packagegroup-core-tools-profile.bb
> > index 1035036..bf6e16e 100644
> > --- a/meta/recipes-core/packagegroups/packagegroup-core-tools-profile.bb
> > +++ b/meta/recipes-core/packagegroups/packagegroup-core-tools-profile.bb
> > @@ -5,7 +5,7 @@
> >   SUMMARY = "Profiling tools"
> >   LICENSE = "MIT"
> >
> > -PR = "r1"
> > +PR = "r2"
> >
> >   inherit packagegroup
> >
> > @@ -29,8 +29,9 @@ PROFILETOOLS = "\
> >       oprofileui-server \
> >       powertop \
> >       latencytop \
> > -    lttng-control \
> > -    lttng-viewer"
> > +    lttng-tools \
> > +    lttng-modules \
> > +    babeltrace"
> >
> Not sure this will work since babeltrace is not buildable for mips machines.
> 

Yeah, I guess things like this are another reason it hasn't been
switched over (though I wouldn't have expected a userspace translation
tool to be the thing that choked on mips).

So might as well hold off on this until I can test lttng on all the
arches.

Tom

> Sau!
> 
> >   # systemtap needs elfutils which is not fully buildable on uclibc
> >   # hence we exclude it from uclibc based builds
> > @@ -44,7 +45,7 @@ SYSTEMTAP_mips = ""
> >   # which means we can not use syscall() to call it. So we ignore
> >   # it for x86_64/uclibc
> >
> > -LTTNGUST = "lttng-ust"
> > +LTTNGUST = "lttng2-ust"
> >   LTTNGUST_libc-uclibc = ""
> >   LTTNGUST_mips = ""
> >
> >



