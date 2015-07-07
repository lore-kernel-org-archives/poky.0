Return-Path: <tanu.kaskinen@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 70C5EE009FD; Tue,  7 Jul 2015 03:40:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A0802E009E6
	for <poky@yoctoproject.org>; Tue,  7 Jul 2015 03:40:09 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga101.fm.intel.com with ESMTP; 07 Jul 2015 03:40:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.15,422,1432623600"; d="scan'208";a="520102395"
Received: from tkkaskin-mobl3.ger.corp.intel.com (HELO [10.252.2.187])
	([10.252.2.187])
	by FMSMGA003.fm.intel.com with ESMTP; 07 Jul 2015 03:40:08 -0700
Message-ID: <1436265606.2486.11.camel@tkkaskin-mobl3.ger.corp.intel.com>
From: Tanu Kaskinen <tanu.kaskinen@linux.intel.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Date: Tue, 07 Jul 2015 13:40:06 +0300
In-Reply-To: <1436208581.27597.67.camel@linuxfoundation.org>
References: <1436200247-9112-1-git-send-email-tanu.kaskinen@linux.intel.com>
	<559AAE9D.5010500@linux.intel.com>
	<1436202135.2486.7.camel@tkkaskin-mobl3.ger.corp.intel.com>
	<1436208581.27597.67.camel@linuxfoundation.org>
Organization: Intel Finland Oy - BIC 0357606-4 - PL 281, 00181 Helsinki
X-Mailer: Evolution 3.10.4 (3.10.4-4.fc20) 
Mime-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: [PATCH] maintainers.inc: reassign audio recipe maintainership
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
X-List-Received-Date: Tue, 07 Jul 2015 10:40:17 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2015-07-06 at 19:49 +0100, Richard Purdie wrote:
> On Mon, 2015-07-06 at 20:02 +0300, Tanu Kaskinen wrote:
> > On Mon, 2015-07-06 at 19:36 +0300, Alexander Kanavin wrote:
> > > On 07/06/2015 07:30 PM, Tanu Kaskinen wrote:
> > > b) will you continue to maintain the recipes?
> > 
> > I'd like to, but I haven't agreed about it with anyone. If the Yocto
> > project wishes to keep the recipe maintenance within Intel/Windriver,
> > that's fine by me.
> 
> There is no rule which says maintainers have to be Intel/Windriver. We
> have several people who are not and the Yocto Project actively
> encourages that (Khem comes to mind as a good example but there are
> others).

Good! There should be no problems then with me continuing to maintain
the audio stack as an independent volunteer.

> What we do ask is that people involved as maintainers do look
> after the recipes they're associated with. 

Of course :)

-- 
Tanu


