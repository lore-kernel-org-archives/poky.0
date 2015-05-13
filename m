Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BBAE9E0095D; Wed, 13 May 2015 07:00:27 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 41C07E008DC
	for <poky@yoctoproject.org>; Wed, 13 May 2015 07:00:25 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 13 May 2015 07:00:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.13,421,1427785200"; d="scan'208";a="725309005"
Received: from drogers-mobl1.ger.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.14.115])
	by fmsmga002.fm.intel.com with ESMTP; 13 May 2015 07:00:24 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Nithyakala Sainath <nithisai@gmail.com>, Ross Burton <ross@intel.com>
Date: Wed, 13 May 2015 15:00:22 +0100
Message-ID: <3121103.EhpPnjp5rp@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.7 (Linux/3.19.5-200.fc21.x86_64; KDE/4.14.7; x86_64; ; )
In-Reply-To: <CACj2azstX2gWPHTh54mE-FD_BVvNWk-Y0+Gmt1g3fN_gvtod7w@mail.gmail.com>
References: <CACj2azstX2gWPHTh54mE-FD_BVvNWk-Y0+Gmt1g3fN_gvtod7w@mail.gmail.com>
MIME-Version: 1.0
Cc: poky@yoctoproject.org
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
X-List-Received-Date: Wed, 13 May 2015 14:00:27 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Nithya,

On Wednesday 13 May 2015 18:24:31 Nithyakala Sainath wrote:
> I don't understand this option of UNKNOWN_CONFIGURE_WHITELIST in several
> recipes like
> http://cgit.openembedded.org/openembedded-core/tree/meta/recipes-graphics/xo
> rg-lib/xorg-lib-common.inc .

It specifies a list of options that should not generate a warning if reported 
by the configure script as being unknown options.

> Where can I find documentation for that ? I couldn't find it in Google.

It's not mentioned in the documentation. Ross can you please work with Scott 
to get this added?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

