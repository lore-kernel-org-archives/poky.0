Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A4AE5E00AB3; Tue,  4 Sep 2018 19:51:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 41BE2E00A54;
	Tue,  4 Sep 2018 19:51:53 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	04 Sep 2018 19:51:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.53,331,1531810800"; d="scan'208";a="78037708"
Received: from rchittur-mobl.gar.corp.intel.com (HELO localhost.localdomain)
	([10.255.165.91])
	by FMSMGA003.fm.intel.com with ESMTP; 04 Sep 2018 19:49:57 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: srinivasan <srinivasan.rns@gmail.com>
Date: Wed, 05 Sep 2018 14:49:54 +1200
Message-ID: <2275019.nIMUWJAHk9@localhost.localdomain>
Organization: Intel Corporation
In-Reply-To: <CAFsTbWeUj6zXkpKQ+LeFjZf6w2Xzv11nFWA=3S7D2XNOKOnP=w@mail.gmail.com>
References: <CAFsTbWdWMce5h_MBbNiUgsJ+Pcdu=V3jJqf6StSFxJ0d82Z6WQ@mail.gmail.com>
	<CAMKF1sp7e_JZE68Cs29RC+jBRQUktj8C3-XfO_itQJT+ObQx=A@mail.gmail.com>
	<CAFsTbWeUj6zXkpKQ+LeFjZf6w2Xzv11nFWA=3S7D2XNOKOnP=w@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto-bsp@yoctoproject.org,
	"Development list for the linux-yocto*.git Linux kernel repositories"
	<linux-yocto@yoctoproject.org>, yocto-infrastructure@yoctoproject.org,
	yocto-builds@yoctoproject.org, meta-intel@yoctoproject.org,
	poky@yoctoproject.org
Subject: Re: Yocto kernel compilation issues
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
X-List-Received-Date: Wed, 05 Sep 2018 02:51:53 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday, 5 September 2018 1:44:22 PM NZST srinivasan wrote:
> Adding the "DEPENDS += "xz-native bc-native" in the "linux-srini_4.14.bb"
> did the trick

FYI the main issue with your kernel recipe is it does not "inherit kernel" 
which takes care of this (and many other things) for you. I guess you based 
your recipe on linux-dummy.bb, but that recipe is special and shouldn't be 
used as a template for a real kernel.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre



