Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C7BEFE00BCC; Wed,  6 Jan 2016 17:31:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 329D1E008C8
	for <poky@yoctoproject.org>; Wed,  6 Jan 2016 17:31:15 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga104.fm.intel.com with ESMTP; 06 Jan 2016 17:31:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,531,1444719600"; d="scan'208";a="885285450"
Received: from bzhou5-mobl2.ccr.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.147.172])
	by orsmga002.jf.intel.com with ESMTP; 06 Jan 2016 17:31:12 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Prasant J <pj0585@gmail.com>
Date: Thu, 07 Jan 2016 14:31:09 +1300
Message-ID: <5302253.MIjrOEHnWu@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.2.8-300.fc23.x86_64; KDE/4.14.14; x86_64; ;
	)
In-Reply-To: <CAA2DH4sZdhuOwzqNNoSCkfAfoojMhXuzaArcp3brtzqwQ3guMA@mail.gmail.com>
References: <CAA2DH4twfBS9UKcD+c15W7YQPD=yKyN83uTpaV31Zgohs9ivzQ@mail.gmail.com>
	<CAA2DH4sZdhuOwzqNNoSCkfAfoojMhXuzaArcp3brtzqwQ3guMA@mail.gmail.com>
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: PACKAGE_EXCLUDE not working (Custom layer)
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
X-List-Received-Date: Thu, 07 Jan 2016 01:31:18 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Mon, 28 Dec 2015 20:56:37 Prasant J wrote:
> On Wed, Dec 23, 2015 at 8:51 PM, Prasant J <pj0585@gmail.com> wrote:
> > 
> > I'm creating a custom layer for my imx6 based setup.
> > 
> > In build/conf/local.conf I have added: PACKAGE_EXCLUDE = "imx-lib
> > imx-test"
> > but my custom image still tries to build these packages.
> > 
> > 
> > Can someone please point out the helpful debug commands/steps to figure
> > out
> > why these packages are being included?
> > 
> > Can PACKAGE_EXCLUDE be overridden if some other package depends on the
> > excluded packages and is included?
> > 
> > 
> > In my package exclude list I added other package groups that bring imx-lib
> > & imx-test but still its being build. Any inputs will be of help!
> 
> I excluded the packages by adding IMAGE_INSTALL_remove = " imx-test
> imx-lib " to my image recipe.

If this is actually working, and you're using your own custom image recipe why 
not just omit those packages from IMAGE_INSTALL there?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

