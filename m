Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 99617E0095F; Thu,  9 Apr 2015 05:42:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EF49DE008EC;
	Thu,  9 Apr 2015 05:42:41 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga101.jf.intel.com with ESMTP; 09 Apr 2015 05:42:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.11,549,1422950400"; d="scan'208";a="553518241"
Received: from kkowalsk-mobl1.ger.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.23.157])
	by orsmga003.jf.intel.com with ESMTP; 09 Apr 2015 05:42:40 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: praveen vattipalli <praveen.vatt@gmail.com>
Date: Thu, 09 Apr 2015 13:42:38 +0100
Message-ID: <2248477.ZlWdlI4YQT@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.4 (Linux/3.18.9-200.fc21.x86_64; KDE/4.14.6; x86_64; ; )
In-Reply-To: <CA+pXca1yMx9doE3079TTXqzMFRHmBzWBTzi9eV4rkEKyEHJdEQ@mail.gmail.com>
References: <CA+pXca1Wjea0jtPUH5mMcqA13E3_E_o6am4yjn28w-cJq3nYuQ@mail.gmail.com>
	<2739009.PeNPmdtyko@peggleto-mobl.ger.corp.intel.com>
	<CA+pXca1yMx9doE3079TTXqzMFRHmBzWBTzi9eV4rkEKyEHJdEQ@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto <yocto@yoctoproject.org>, poky@yoctoproject.org
Subject: Re: [yocto] error in xerces-c in yocto-dizzy-1.7.1
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
X-List-Received-Date: Thu, 09 Apr 2015 12:42:42 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday 09 April 2015 16:10:52 praveen vattipalli wrote:
> On Thu, Apr 9, 2015 at 3:39 PM, Paul Eggleton <paul.eggleton@linux.intel.com
> > wrote:
> > 
> > On Thursday 09 April 2015 15:30:40 praveen vattipalli wrote:
> > > i changed the bb file
> > > now xerces-c_3.1.1.bb <http://xerces-c_3.1.1.bb> recipe looks like this
> > > 
> > > DESCRIPTION = "Xerces-c is a validating xml parser written in C++"
> > > HOMEPAGE = "http://xerces.apache.org/xerces-c/"
> > > SECTION =  "libs"
> > > PRIORITY = "optional"
> > > LICENSE = "Apache-2.0"
> > > 
> > > LIC_FILES_CHKSUM = "file://LICENSE;md5=
> > > 3b83ef96387f14655fc854ddc3c6bd57"
> > > 
> > > SRC_URI = "http://apache.lauf-forum.at/xerces/c/3/sources/${BP}.tar.gz"
> > > 
> > > inherit autotools pkgconfig
> > > 
> > > PACKAGES = "libxerces-c \
> > > 
> > >     libxerces-c-dbg \
> > >     libxerces-c-dev \
> > >     xerces-c-samples \
> > >     xerces-c-samples-dbg \
> > > 
> > > "
> > > 
> > > FILES_libxerces-c = "${libdir}/libxerces-c-3.1.so"
> > > FILES_libxerces-c-dbg = "${libdir}/.debug/"
> > > FILES_libxerces-c-dev = "${libdir}/lib*.la  \
> > > 
> > >     ${libdir}/libxerces-c.so \
> > >     ${libdir}/pkgconfig/xerces-c.pc \
> > >     ${includedir}/xercesc \
> > > 
> > > "
> > > FILES_libxerces-c-staticdev = "${libdir}/libxerces-c.a"
> > > FILES_xerces-c-samples = "${bindir}/*  ${prefix}/src/debug"
> > > FILES_xerces-c-samples-dbg = "${bindir}/.debug/"
> > > 
> > > SRC_URI[md5sum] = "6a8ec45d83c8cfb1584c5a5345cb51ae"
> > > SRC_URI[sha256sum] =
> > > "a42785f71e0b91d5fd273831c87410ce60a73ccfdd207de1b805d26d44968736"
> > > 
> > > almost all errors have been resolved except below....
> > > 
> > > now I am getting below error
> > > 
> > > 
> > > 
> > > *ERROR: QA Issue: xerces-c: Files/directories were installed but not
> > > shipped  /usr/lib/libxerces-c.a [installed-vs-shipped]NOTE: Tasks
> > 
> > Summary:
> > > Attempted 382 tasks of which 376 didn't need to be rerun and all
> > 
> > succeeded.*
> > 
> > > Summary: There was 1 WARNING message shown.
> > > Summary: There was 1 ERROR message shown, returning a non-zero exit
> > > code.
> > 
> > You are setting FILES_libxerces-c-staticdev, but there is no
> > libxerces-c-staticdev in PACKAGES, so the file is not actually packaged,
> > hence
> > the error.
> > 
> > BTW as a general best practice for most recipes I would advise adding to
> > PACKAGES rather than setting it outright - this will of course mean your
> > library packages will be called xerces-c* rather than libxerces-c* within
> > recipe, but they are going to be renamed to libxerces-c* at runtime anyway
> > by debian.bbclass.
>
> I got struck here what should i add to .bb file to solve this error...

The quick fix: add libxerces-c-staticdev to the value of PACKAGES that you are 
setting.

OR

The proper fix: don't set PACKAGES with =, just use the default value and 
append any additional packages you want to it using += (such as 
xerces-c-samples), and do the for FILES_*.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

