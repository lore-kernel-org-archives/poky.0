Return-Path: <ed.bartosh@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EAAFBE009D8; Wed, 12 Oct 2016 03:36:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2B11E00839
	for <poky@yoctoproject.org>; Wed, 12 Oct 2016 03:36:06 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga103.jf.intel.com with ESMTP; 12 Oct 2016 03:36:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,333,1473145200"; d="scan'208";a="1069389911"
Received: from linux.intel.com ([10.54.29.200])
	by fmsmga002.fm.intel.com with ESMTP; 12 Oct 2016 03:36:06 -0700
Received: from linux.intel.com (vmed.fi.intel.com [10.237.72.68])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by linux.intel.com (Postfix) with ESMTP id 5FE716A4006;
	Wed, 12 Oct 2016 03:35:34 -0700 (PDT)
Date: Wed, 12 Oct 2016 13:10:40 +0300
From: Ed Bartosh <ed.bartosh@linux.intel.com>
To: Christopher Larson <clarson@kergoth.com>
Message-ID: <20161012101040.GA32185@linux.intel.com>
References: <1476110630-18460-1-git-send-email-ed.bartosh@linux.intel.com>
	<CABcZANkSRxXwBRcC_2Jrqq-X61Vhx3OJj6fzgE0ThOF8gL+-FA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CABcZANkSRxXwBRcC_2Jrqq-X61Vhx3OJj6fzgE0ThOF8gL+-FA@mail.gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH] genericx86-common.inc: add dependency do_image_wic -> do_bootimg
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
X-List-Received-Date: Wed, 12 Oct 2016 10:36:10 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Oct 10, 2016 at 12:07:10PM -0700, Christopher Larson wrote:
> On Mon, Oct 10, 2016 at 7:43 AM, Ed Bartosh <ed.bartosh@linux.intel.com>
> wrote:
> 
> > do_image_wic depends on do_bootimg on genericx86 machines as it
> > copies files from hddimg/EFI/BOOT directory to boot partition.
> >
> > Signed-off-by: Ed Bartosh <ed.bartosh@linux.intel.com>
> >
> 
> Thoughts on adding
> https://github.com/MentorEmbedded/meta-mentor/blob/master/meta-mentor-staging/classes/bootimg-wic.bbclass
> to
> image.bbclass? I think we can assume the existence of do_bootimg means we
> should depend on it, as the class was inherited.

Thank you for the idea! I was looking for something like that.

BTW, even adding dependency without checking anything would work:
 do_image_wic[file-checksums] += "${WKS_FILE_CHECKSUM}"
+do_image_wic[recrdeptask] += "do_bootimg"

but it's too implicit. Your suggestion is much better.

I'll send a patch soon.

--
Regards,
Ed

