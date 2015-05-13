Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 07CF3E0095C; Wed, 13 May 2015 08:05:03 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B1975E00820
	for <poky@yoctoproject.org>; Wed, 13 May 2015 08:04:54 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga103.fm.intel.com with ESMTP; 13 May 2015 08:04:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.13,421,1427785200"; d="scan'208";a="694340578"
Received: from drogers-mobl1.ger.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.14.115])
	by orsmga001.jf.intel.com with ESMTP; 13 May 2015 08:04:42 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
Date: Wed, 13 May 2015 16:04:41 +0100
Message-ID: <31122517.xHM3vQXfOq@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.7 (Linux/3.19.5-200.fc21.x86_64; KDE/4.14.7; x86_64; ; )
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB1237988EF45AB@ORSMSX101.amr.corp.intel.com>
References: <CACj2azstX2gWPHTh54mE-FD_BVvNWk-Y0+Gmt1g3fN_gvtod7w@mail.gmail.com>
	<3121103.EhpPnjp5rp@peggleto-mobl.ger.corp.intel.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237988EF45AB@ORSMSX101.amr.corp.intel.com>
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>,
	Nithyakala Sainath <nithisai@gmail.com>
Subject: Re: UNKNOWN_CONFIGURE_WHITELIST
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
X-List-Received-Date: Wed, 13 May 2015 15:05:03 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Adding correct Ross to CC

On Wednesday 13 May 2015 14:22:05 Rifenbark, Scott M wrote:
> Can a bug be filed for this against the docs?
> 
> >-----Original Message-----
> >From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]
> >Sent: Wednesday, May 13, 2015 7:00 AM
> >To: Nithyakala Sainath; Franke, Ross
> >Cc: Rifenbark, Scott M; poky@yoctoproject.org
> >Subject: Re: [poky] UNKNOWN_CONFIGURE_WHITELIST
> >
> >Hi Nithya,
> >
> >On Wednesday 13 May 2015 18:24:31 Nithyakala Sainath wrote:
> >> I don't understand this option of UNKNOWN_CONFIGURE_WHITELIST in
> >> several recipes like
> >> http://cgit.openembedded.org/openembedded-core/tree/meta/recipes-> >
> >graph
> >
> >> ics/xo
> >> rg-lib/xorg-lib-common.inc .
> >
> >It specifies a list of options that should not generate a warning if
> >reported by the configure script as being unknown options.
> >
> >> Where can I find documentation for that ? I couldn't find it in Google.
> >
> >It's not mentioned in the documentation. Ross can you please work with
> >Scott to get this added?
> >
> >Cheers,
> >Paul
> >
> >--
> >
> >Paul Eggleton
> >Intel Open Source Technology Centre

-- 

Paul Eggleton
Intel Open Source Technology Centre

