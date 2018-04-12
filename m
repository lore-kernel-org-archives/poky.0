Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 81679E00A04; Wed, 11 Apr 2018 19:05:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 26BA6E00529
	for <poky@yoctoproject.org>; Wed, 11 Apr 2018 19:05:20 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	11 Apr 2018 19:05:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.48,439,1517904000"; d="scan'208";a="42671050"
Received: from laitheng-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.249.65.72])
	by orsmga003.jf.intel.com with ESMTP; 11 Apr 2018 19:05:14 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Erdmann, Jens" <Jens.Erdmann@auerswald.de>
Date: Thu, 12 Apr 2018 14:05:07 +1200
Message-ID: <12698254.5abjYqtIGj@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
In-Reply-To: <ce823c4534ba4af089bd6f00a0f4056b@auerswald.de>
References: <bcd607cf3fb44128b1233e50c96add58@auerswald.de>
	<2405485.rjGM1RfBcv@peggleto-mobl.ger.corp.intel.com>
	<ce823c4534ba4af089bd6f00a0f4056b@auerswald.de>
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: [PATCH] externalsrc: Change absolute symlinks to relative ones
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
X-List-Received-Date: Thu, 12 Apr 2018 02:05:21 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday, 11 April 2018 8:10:18 PM NZST Erdmann, Jens wrote:
> >Which recipe(s) are you experiencing this issue with? If they are custom
> >ones, how is what happens during do_install defined there?
> 
> Thanks for your reply. The problem occured after altering custom recipes
> with devtool. We worked on a native and on a nonnative recipe and got
> following messages:
> 
> NOTE: api-gen-native: compiling from external source tree /home/erdmann/yocto/build/workspace/sources/api-gen-native
> ERROR: api-gen-native-1.0.0+git999-r0 do_populate_sysroot: sstate found an absolute path symlink /home/erdmann/yocto/build/tmp/work/x86_64-linux/api-gen-native/1.0.0+git999-r0/sysroot-destdir/home/erdmann/yocto/build/tmp/work/x86_64-linux/api-gen-native/1.0.0+git999-r0/recipe-sysroot-native/usr/lib/api-gen-native/oe-workdir pointing at /home/erdmann/yocto/build/tmp/work/x86_64-linux/api-gen-native/1.0.0+git999-r0. Please replace this with a relative link.
> ERROR: api-gen-native-1.0.0+git999-r0 do_populate_sysroot: sstate found an absolute path symlink /home/erdmann/yocto/build/tmp/work/x86_64-linux/api-gen-native/1.0.0+git999-r0/sysroot-destdir/home/erdmann/yocto/build/tmp/work/x86_64-linux/api-gen-native/1.0.0+git999-r0/recipe-sysroot-native/usr/lib/api-gen-native/oe-logs pointing at /home/erdmann/yocto/build/tmp/work/x86_64-linux/api-gen-native/1.0.0+git999-r0/temp. Please replace this with a relative link.
> 
> I tried to double check and am quite conviced we did not try to install
> these symlinks. I hope these informations draw a more clear picture of the
> problem which lead to this attempt to fix this.

I'd need to see exactly how do_install is working to be sure - generally,
anything that do_populate_sysroot is able to process must have been
installed during do_install. I would imagine what's happening is that 
${B}==${S} and the entire contents of ${S} is being installed to ${D} and 
thus if the symlinks are present in the source tree, they get installed.

Even in the absence of this issue I would recommend that you check
what's going on during do_install because if what I described above is the
case, it's possible it is installing a whole bunch of files that it shouldn't be.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre



