Return-Path: <leonardo.sandoval.gonzalez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4F15DE00D24; Tue, 14 Nov 2017 12:30:32 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DE2F4E00D07
	for <poky@yoctoproject.org>; Tue, 14 Nov 2017 12:30:30 -0800 (PST)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	14 Nov 2017 12:30:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.44,396,1505804400"; 
   d="scan'208";a="1883849"
Received: from $_hostname.zpn.intel.com (HELO lsandov1-mobl2.zpn.intel.com)
	([10.219.128.134])
	by FMSMGA003.fm.intel.com with ESMTP; 14 Nov 2017 12:30:28 -0800
Date: Tue, 14 Nov 2017 14:40:58 -0600
From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
To: Florin Ionut <samentu1@gmail.com>
Message-ID: <20171114144058.0ba7536d@lsandov1-mobl2.zpn.intel.com>
In-Reply-To: <CAM4Jt4nLwD-_wHsKP2ZuKK==vGXxE8oRPgW2tDU9_H9kPJ+OFA@mail.gmail.com>
References: <CAM4Jt4=U9jYX5VF8TwDY-7nF0g3DERgkUT7pc+usT1cA5dJmTw@mail.gmail.com>
	<20171113153334.75430507@lsandov1-mobl2.zpn.intel.com>
	<CAM4Jt4nLwD-_wHsKP2ZuKK==vGXxE8oRPgW2tDU9_H9kPJ+OFA@mail.gmail.com>
X-Mailer: Claws Mail 3.14.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: [pyro] Backport request for meta/recipes-devtools/gcc version 6.3
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
X-List-Received-Date: Tue, 14 Nov 2017 20:30:32 -0000
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Tue, 14 Nov 2017 04:30:09 +0200
Florin Ionut <samentu1@gmail.com> wrote:

> Hi,
> thanks for the suggestion. I had combined the 2 commits into 1 and sent it
> there too:
> http://lists.openembedded.org/pipermail/openembedded-core/2017-November/144283.html
> 

Great. Feel free to backport to other stable branches!


> On Mon, Nov 13, 2017 at 11:33 PM, Leonardo Sandoval <
> leonardo.sandoval.gonzalez@linux.intel.com> wrote:  
> 
> > On Mon, 13 Nov 2017 14:28:49 +0200
> > Florin Ionut <samentu1@gmail.com> wrote:
> >  
> > > Hi,
> > > can dc3b3a8df3297367e9386dd3ac098b64f7f46d06 and
> > > c08247e3c7c004a40281d4010186a9ace86e0e47 from master be backported to  
> > the  
> > > pyro branch please?
> > >  
> >
> > I have not seen the commits in detail but you can propose to be backported
> > sending to patches to the openembeded core mailing list. On a local branch,
> > backport these then git format-patch -2 --subject-prefix='PATCH][pyro'.
> >
> >  
> > > Thank you  
> >  

