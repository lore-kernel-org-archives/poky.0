Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 717ACE008B3; Fri, 31 Oct 2014 04:46:28 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0AC77E007BA
	for <poky@yoctoproject.org>; Fri, 31 Oct 2014 04:46:14 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 31 Oct 2014 04:46:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.07,294,1413270000"; d="scan'208";a="624097114"
Received: from kcathuko-mobl.gar.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.122.50])
	by fmsmga002.fm.intel.com with ESMTP; 31 Oct 2014 04:46:02 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Johnny Vestergaard <jkv@unixcluster.dk>
Date: Fri, 31 Oct 2014 11:46 +0000
Message-ID: <3848381.aJ2N9BMdoM@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.2 (Linux/3.16.6-203.fc20.x86_64; KDE/4.14.2; x86_64; ; )
In-Reply-To: <CAO+iiFx2h3Ufga3QTdw4bNdm0-dFCiK1pPT=ngRrJXAoGDz-qQ@mail.gmail.com>
References: <CAO+iiFx2h3Ufga3QTdw4bNdm0-dFCiK1pPT=ngRrJXAoGDz-qQ@mail.gmail.com>
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: Auto loading nls-iso8859-1kernel module
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
X-List-Received-Date: Fri, 31 Oct 2014 11:46:28 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Johnny,

On Friday 31 October 2014 12:43:08 Johnny Vestergaard wrote:
> I have a basic image where i inherit from core-image and add a few custom
> packages - nothing fancy, but I am having problems auto loading a module.
> 
> The module in question is the nls-cp437 module which i can load manually
> from the root prompt.
> To be able to auto load it i tried adding
> 
> module_autoload_nls-cp437 = "nls-cp437"
> 
> to my one of my package recipes, but not luck.
> 
> In which recipe exactly are you suppose to add module_autoload?

It needs to be either in the kernel recipe or set globally (i.e. in your 
machine config / distro config / local.conf).

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

