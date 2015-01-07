Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 078D9E004F2; Wed,  7 Jan 2015 08:43:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DE67CE002F9
	for <poky@yoctoproject.org>; Wed,  7 Jan 2015 08:43:30 -0800 (PST)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga103.jf.intel.com with ESMTP; 07 Jan 2015 08:40:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.04,691,1406617200"; d="scan'208";a="508824688"
Received: from unknown (HELO peggleto-mobl5.ger.corp.intel.com)
	([10.252.3.155])
	by orsmga003.jf.intel.com with ESMTP; 07 Jan 2015 08:37:46 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Carlos A. M. dos Santos" <unixmania@gmail.com>
Date: Wed, 07 Jan 2015 16:43:28 +0000
Message-ID: <2573434.Lmxb6VDTFB@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.3 (Linux/3.17.7-200.fc20.x86_64; KDE/4.14.3; x86_64; ; )
In-Reply-To: <CAJ4jsafnFXUzJPrbddMquazKYU3spqLDWjcxMmj0JZr1GZctRA@mail.gmail.com>
References: <1420641211-30820-1-git-send-email-paul.eggleton@linux.intel.com>
	<CAJ4jsafnFXUzJPrbddMquazKYU3spqLDWjcxMmj0JZr1GZctRA@mail.gmail.com>
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: [PATCH] poky.conf: mark all CentOS 6 versions as compatible
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
X-List-Received-Date: Wed, 07 Jan 2015 16:43:39 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 07 January 2015 14:22:16 Carlos A. M. dos Santos wrote:
> On Wed, Jan 7, 2015 at 12:33 PM, Paul Eggleton
> 
> <paul.eggleton@linux.intel.com> wrote:
> > It's rather unlikely with a distribution such as CentOS that they would
> > introduce changes that would cause us issues that we would not be
> > prepared to fix; therefore use a wildcard to suppress the warning (in
> > any case, CentOS 6.6 is now the current version.)
> 
> Are there plans to add RHEL-{6,7} and CentOS-7 to that list?

CentOS 7, certainly - we run regular builds on at least one of the Yocto 
Project autobuilder machines that is running CentOS 7. As for RHEL, we don't 
have a policy of testing on RHEL currently, hence why we haven't listed RHEL 
releases as part of this list. We could add them to the list, but at this 
point that would only be based on the assumption that CentOS and RHEL are the 
same at a particular release; most of the time I'm sure that would be a fair 
assumption to make, but it would be an assumption nonetheless.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

