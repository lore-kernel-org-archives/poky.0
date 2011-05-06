Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 40AF24C80186
	for <poky@yoctoproject.org>; Fri,  6 May 2011 13:48:27 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 06 May 2011 11:48:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,327,1301900400"; d="scan'208";a="639118841"
Received: from unknown (HELO [10.255.12.39]) ([10.255.12.39])
	by orsmga002.jf.intel.com with ESMTP; 06 May 2011 11:48:26 -0700
Message-ID: <4DC4427D.5040608@linux.intel.com>
Date: Fri, 06 May 2011 11:48:29 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.14) Gecko/20110223 Lightning/1.0b2 Thunderbird/3.1.8
MIME-Version: 1.0
To: Adrian Alonso <aalonso@secretlab.ca>
References: <cover.1304621382.git.aalonso@secretlab.ca>	<7577bb0da8badabce577bf8ebd453e6fa7f3bd50.1304621382.git.aalonso@secretlab.ca>	<4DC42DAF.3080605@linux.intel.com>	<BANLkTi=xgBnjob=1U7yaPFyT-y075odAvA@mail.gmail.com>
	<BANLkTin4cKVhNh1s3kCd3sGyTS4k7gj69Q@mail.gmail.com>
In-Reply-To: <BANLkTin4cKVhNh1s3kCd3sGyTS4k7gj69Q@mail.gmail.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 6/7] package_rpm: use target vendor information
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
X-List-Received-Date: Fri, 06 May 2011 18:48:27 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 05/06/2011 10:58 AM, Adrian Alonso wrote:
> Op forgot replay all
> 
> ---------- Forwarded message ----------
> From: *Adrian Alonso* <aalonso@secretlab.ca <mailto:aalonso@secretlab.ca>>
> Date: Fri, May 6, 2011 at 12:49 PM
> Subject: Re: [poky] [PATCH 6/7] package_rpm: use target vendor information
> To: Darren Hart <dvhart@linux.intel.com <mailto:dvhart@linux.intel.com>>
> 
> 
> Hi Darren,
> 
> In poky-default.inc target vendor is set as:
> 
> TARGET_VENDOR="-poky"
> 
> In xilinx-meta layer is set as
> 
> TARGET_VENDOR="-unknown"

ew... embedded delimiters.


> 
> So the result string is correct if TARGET_VENDOR assignment is consistent
> as in poky-default.inc

OK, works as it did before I suppose.

--
Darren


> 
> Regards
> 
> 
> On Fri, May 6, 2011 at 12:19 PM, Darren Hart <dvhart@linux.intel.com
> <mailto:dvhart@linux.intel.com>> wrote:
> 
>     Hi Adrian,
> 
>     One issue below:
> 
>     On 05/05/2011 12:11 PM, Adrian Alonso wrote:
>     > * Instead of hardcoding target vendor string "-poky"
>     >   use TARGET_VENDOR information in case of using external
>     >   toolchains
>     >
>     > Signed-off-by: Adrian Alonso <aalonso@secretlab.ca
>     <mailto:aalonso@secretlab.ca>>
>     > ---
>     >  meta/classes/package_rpm.bbclass |    3 ++-
>     >  1 files changed, 2 insertions(+), 1 deletions(-)
>     >
>     > diff --git a/meta/classes/package_rpm.bbclass
>     b/meta/classes/package_rpm.bbclass
>     > index 70170d1..1cf9f79 100644
>     > --- a/meta/classes/package_rpm.bbclass
>     > +++ b/meta/classes/package_rpm.bbclass
>     > @@ -761,13 +761,14 @@ python do_package_rpm () {
>     >       # Setup the rpmbuild arguments...
>     >       rpmbuild = bb.data.getVar('RPMBUILD', d, True)
>     >       targetsys = bb.data.getVar('TARGET_SYS', d, True)
>     > +     targetvendor = bb.data.getVar('TARGET_VENDOR', d, True)
>     >       pkgwritedir =
>     bb.data.expand('${PKGWRITEDIRRPM}/${PACKAGE_ARCH}', d)
>     >       pkgarch = bb.data.expand('${PACKAGE_ARCH}', d)
>     >       bb.mkdirhier(pkgwritedir)
>     >       os.chmod(pkgwritedir, 0755)
>     >
>     >       cmd = rpmbuild
>     > -     cmd = cmd + " --nodeps --short-circuit --target " + pkgarch
>     + "-poky-linux-gnu --buildroot " + pkgd
>     > +     cmd = cmd + " --nodeps --short-circuit --target " + pkgarch
>     + targetvendor + "-linux-gnu --buildroot " + pkgd
> 
>     You need:
>      + "-" + targetvendor
> 
>     otherwise you'll merge pkgarch and targetvendor together without a
>     delimiter.
>     Better yet, just format the string in one go and reduce the
>     potential for error:
> 
>     cmd = "%s --nodeps --short-circuit --target %s-%s-linux-gnu
>     --buildroot %s" % \
>          (rpmbuild, pkgarch, targetvendor, pkgd)
> 
>     --
>     Darren Hart
>     Intel Open Source Technology Center
>     Yocto Project - Linux Kernel
> 
> 
> 
> 
> -- 
> Adrian Alonso
> Secret Lab Technologies Ltd.
> 
> 
> 
> -- 
> Adrian Alonso
> Secret Lab Technologies Ltd.
> 
> 
> 
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

