Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 68CBAE00A39; Sun,  6 May 2018 16:17:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5E15CE009B9
	for <poky@yoctoproject.org>; Sun,  6 May 2018 16:17:11 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	06 May 2018 16:17:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.49,371,1520924400"; d="scan'208";a="48747892"
Received: from xuanthon-mobl.ccr.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.249.69.224])
	by orsmga003.jf.intel.com with ESMTP; 06 May 2018 16:17:07 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Aditya Tayade <Aditya.Tayade@kpit.com>
Date: Mon, 07 May 2018 11:17:04 +1200
Message-ID: <1763084.ZQ2QF9n8Sy@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
In-Reply-To: <CAMKF1sq_NrvEe4OnHGnSXP_J=Q01KzVah7KfeYjU-=miSoyaNw@mail.gmail.com>
References: <MAXPR01MB0348B611A9993EAC201769B4918F0@MAXPR01MB0348.INDPRD01.PROD.OUTLOOK.COM>
	<CAMKF1sq_NrvEe4OnHGnSXP_J=Q01KzVah7KfeYjU-=miSoyaNw@mail.gmail.com>
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: ./mosquitto_internal.h:40:20: fatal error: ares.h: No such file or directory
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
X-List-Received-Date: Sun, 06 May 2018 23:17:12 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Sunday, 29 April 2018 8:16:04 AM NZST Khem Raj wrote:
> On Wed, Apr 25, 2018 at 7:05 AM Aditya Tayade <Aditya.Tayade@kpit.com>
> wrote:
> > I was facing subject line issue while building mosquitto 1.14.14
> >
> > Modified config.mk file so that it should not build with SRV lookup
> > support.
> > from WITH_SRV:=yes to WITH_SRV:=no which resolved error.
> >
> > If it is valid, request to patch the same to upstream.
> >
> 
> I suppose its missing a dependency on c-ares

The dependency is supposed to be optional - by default unless you modify 
PACKAGECONFIG to contain "dns-srv" we are passing "WITH_SRV=no" on the command 
line. When I build it here, it builds just fine without c-ares and it 
definitely is disabling the SRV support, so there is clearly something more to 
this.

Aditya, are you making any change to the build configuration for mosquitto 
that would explain this?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre



