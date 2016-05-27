Return-Path: <joshua.g.lock@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BBB29E00E29; Fri, 27 May 2016 01:40:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8A623E00DEE
	for <poky@yoctoproject.org>; Fri, 27 May 2016 01:40:40 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga103.fm.intel.com with ESMTP; 27 May 2016 01:40:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,373,1459839600"; d="scan'208";a="815939529"
Received: from jlock-mobl2.ger.corp.intel.com ([10.252.15.125])
	by orsmga003.jf.intel.com with ESMTP; 27 May 2016 01:40:38 -0700
Message-ID: <1464338437.3484.3.camel@linux.intel.com>
From: Joshua G Lock <joshua.g.lock@linux.intel.com>
To: star@gmx.li, poky@yoctoproject.org
Date: Fri, 27 May 2016 09:40:37 +0100
In-Reply-To: <trinity-c97069ff-4043-4992-a7b5-01692cfa5eac-1464326605415@3capp-gmx-bs48>
References: <trinity-c97069ff-4043-4992-a7b5-01692cfa5eac-1464326605415@3capp-gmx-bs48>
X-Mailer: Evolution 3.18.5.2 (3.18.5.2-1.fc23) 
Mime-Version: 1.0
Subject: Re: lib-sdl issue with qemu
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
X-List-Received-Date: Fri, 27 May 2016 08:40:44 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Fri, 2016-05-27 at 07:23 +0200, star@gmx.li wrote:
> Tried a "bitbake core-image-minimal" with included xilinx meta-layer
> and machine "qemuzynq".
> I get the above mentioned error on an Ubuntu 1604, but with already
> installed libsdl.
> 
> See below: 
> 
> ...
> > 
> > ERROR: User requested feature sdl
> >        configure was not able to find it.
> >        Install SDL devel
> > 
> > WARNING: exit code 1 from a shell command.
> > ERROR: Function failed: do_configure (log file is located at
> > /home/user/yocto_qemu/tmp/work/x86_64-linux/qemu-native/2.4.0-
> > r1/temp/log.do_configure.3236)
> ERROR: Task 72 (virtual:native:/home/user/yocto/poky/meta/recipes-
> devtools/qemu/qemu_2.4.0.bb, do_configure) failed with exit code '1'
> 

Which version of the poky are you using?

There was a change to stop relying on the host to provide an SDL
implementation and instead we build sdl-native, this change is
available in the krogoth release (2.1) and has been backported to
jethro (available in 2.0.2) and fido (available in 1.8.2).

However if you have an old local.conf you'll need to remove the
ASSUME_PROVIDED entry for sdl-native.

Regards,

Joshua

