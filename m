Return-Path: <joshua.g.lock@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2462DE00E1B; Thu, 13 Oct 2016 07:32:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [192.55.52.120 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DD715E00E17
	for <poky@yoctoproject.org>; Thu, 13 Oct 2016 07:32:51 -0700 (PDT)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by fmsmga104.fm.intel.com with ESMTP; 13 Oct 2016 07:32:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,340,1473145200"; d="scan'208";a="179476881"
Received: from jlock-mobl1.ger.corp.intel.com ([10.252.27.1])
	by fmsmga004.fm.intel.com with ESMTP; 13 Oct 2016 07:32:43 -0700
Message-ID: <1476369161.3034.5.camel@linux.intel.com>
From: Joshua Lock <joshua.g.lock@linux.intel.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Date: Thu, 13 Oct 2016 15:32:41 +0100
In-Reply-To: <CAK18fxHGB8FEzUrXUjryZ=mgZECW0kCNTYXf=GC0eOvosQT1Jg@mail.gmail.com>
References: <1476305279-11158-1-git-send-email-joshua.g.lock@intel.com>
	<CAK18fxHGB8FEzUrXUjryZ=mgZECW0kCNTYXf=GC0eOvosQT1Jg@mail.gmail.com>
X-Mailer: Evolution 3.20.5 (3.20.5-1.fc24) 
Mime-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: [PATCH] local.conf.sample.extended: remove RM_OLD_IMAGE
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
X-List-Received-Date: Thu, 13 Oct 2016 14:32:53 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Wed, 2016-10-12 at 23:31 +0100, Andrei Gherzan wrote:
> On Wed, Oct 12, 2016 at 9:47 PM, Joshua Lock <joshua.g.lock@intel.com
> > wrote:
> > 
> > RM_OLD_IMAGE has been removed so don't include this variable in
> > sample local.conf
> > 
> 
> Can we have a reference where was this removed?

I proposed removal of the variable in OE-Core because the change to use
sstate to deploy images made the behaviour of removing old images the
default.

You can find the patches for OE-Core here:
http://lists.openembedded.org/pipermail/openembedded-core/2016-October/
127532.html


A bit of background and several related links can be found in the Yocto
Project bugzilla: https://bugzilla.yoctoproject.org/show_bug.cgi?id=104
19

Thanks,

Joshua

> 
> > 
> > Signed-off-by: Joshua Lock <joshua.g.lock@intel.com>
> > ---
> >  meta-poky/conf/local.conf.sample.extended | 3 ---
> >  1 file changed, 3 deletions(-)
> > 
> > diff --git a/meta-poky/conf/local.conf.sample.extended b/meta-
> > poky/conf/local.conf.sample.extended
> > index 118ed62..d407ffb 100644
> > --- a/meta-poky/conf/local.conf.sample.extended
> > +++ b/meta-poky/conf/local.conf.sample.extended
> > @@ -265,9 +265,6 @@
> >  #COPYLEFT_RECIPE_TYPES = 'target'
> >  #
> > 
> > -# Remove the old image before the new one generated to save disk
> > space
> > -#RM_OLD_IMAGE = "1"
> > -
> >  #
> >  # GCC/LD FLAGS to enable more secure code generation
> >  #
> > --
> > 2.7.4
> > 
> > --
> > _______________________________________________
> > poky mailing list
> > poky@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/poky
> 
> 
> --
> Andrei Gherzan

