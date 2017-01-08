Return-Path: <ed.bartosh@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 418FDE0053F; Sun,  8 Jan 2017 12:18:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9D802E004A0
	for <poky@yoctoproject.org>; Sun,  8 Jan 2017 12:18:25 -0800 (PST)
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by fmsmga102.fm.intel.com with ESMTP; 08 Jan 2017 12:18:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,337,1477983600"; d="scan'208";a="50670390"
Received: from linux.intel.com ([10.54.29.200])
	by orsmga005.jf.intel.com with ESMTP; 08 Jan 2017 12:18:25 -0800
Received: from linux.intel.com (vmed.fi.intel.com [10.237.72.38])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by linux.intel.com (Postfix) with ESMTP id 0EACB6A4006;
	Sun,  8 Jan 2017 12:17:30 -0800 (PST)
Date: Sun, 8 Jan 2017 22:05:13 +0200
From: Ed Bartosh <ed.bartosh@linux.intel.com>
To: "Burton, Ross" <ross.burton@intel.com>
Message-ID: <20170108200513.GA11382@linux.intel.com>
References: <1482441297-14120-1-git-send-email-ed.bartosh@linux.intel.com>
	<CAJTo0LaR_uQkS8xP8a7KnxwiLH95F7TH9SkLq7v=tMQjR5JebQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAJTo0LaR_uQkS8xP8a7KnxwiLH95F7TH9SkLq7v=tMQjR5JebQ@mail.gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: [PATCH] beaglebone: add beaglebone.wks
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: ed.bartosh@linux.intel.com
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sun, 08 Jan 2017 20:18:29 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Jan 06, 2017 at 11:49:06AM +0000, Burton, Ross wrote:
> On 22 December 2016 at 21:14, Ed Bartosh <ed.bartosh@linux.intel.com> wrote:
> 
> > Currently beaglebone machine uses sdimage-bootpart.wks from
> > scripts/lib/wic/canned-wks. It'd be easier to find this file
> > if it's name contains machine name and it's located in the same
> > layer.
> >
> > Added beaglebone.wks to meta-yocto-bsp/wic/ to make it independent
> > on changes in oe-core and easier to maintain.
> >
> 
> This broke on the autobuilder in ross/mut:
> 
> DEBUG: Executing shell function do_image_wic
> ERROR: No kickstart files from WKS_FILES were found: beaglebone.wks
> core-image-minimal.wks. Please set WKS_FILE or WKS_FILES appropriately.
> 
> (The image_types patch extending the search path is already merged)

This patch depends on oe-core
patch:http://lists.openembedded.org/pipermail/openembedded-core/2016-December/130585.html

please merge it after oe-core patch is merged.

--
Regards,
Ed

