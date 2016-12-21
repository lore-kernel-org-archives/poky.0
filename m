Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 79849E010AA; Wed, 21 Dec 2016 04:32:43 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D4AD5E010A4
	for <poky@yoctoproject.org>; Wed, 21 Dec 2016 04:32:42 -0800 (PST)
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by fmsmga101.fm.intel.com with ESMTP; 21 Dec 2016 04:32:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,383,1477983600"; d="scan'208";a="45566284"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by fmsmga006.fm.intel.com with ESMTP; 21 Dec 2016 04:32:41 -0800
To: poky@yoctoproject.org
References: <CA+pXca0z1fZbtrcwiNgcrTyhaNvA=8dGeXxifBoRR4cjQPN=9Q@mail.gmail.com>
	<1482155710.9843.36.camel@linuxfoundation.org>
	<CA+pXca2-nKt1+meqcxLsWz1H37fiDKUxCn7ZfiijkJfp5_TOrQ@mail.gmail.com>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <36324bab-6f4f-59a7-6c12-d1662d609312@linux.intel.com>
Date: Wed, 21 Dec 2016 14:32:44 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Icedove/45.4.0
MIME-Version: 1.0
In-Reply-To: <CA+pXca2-nKt1+meqcxLsWz1H37fiDKUxCn7ZfiijkJfp5_TOrQ@mail.gmail.com>
Subject: Re: error while compiling hello_2.7.bb
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
X-List-Received-Date: Wed, 21 Dec 2016 12:32:43 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 12/21/2016 12:52 PM, praveen vattipalli wrote:
> in build/conf/local.conf
>
> INHERIT += "externalsrc"
> EXTERNALSRC_pn-hello =
> "/home/rajesh/Downloads/poky-krogoth-15.0.2/meta/recipes-extended/hello/hello_2.7"
> EXTERNALSRC_BUILD_pn-hello =
> "/home/rajesh/Downloads/poky-krogoth-15.0.2/meta/recipes-extended/hello/hello_2.7"
>
> in hello_2.7.bb <http://hello_2.7.bb>
>
> EXTERNALSRC =
> "/home/rajesh/Downloads/poky-krogoth-15.0.2/meta/recipes-extended/hello/hello_2.7"
> EXTERNALSRC_BUILD =
> "/home/rajesh/Downloads/poky-krogoth-15.0.2/meta/recipes-extended/hello/hello_2.7"
>
> now i could compile.

I don't see why you would need to modify the global local.conf. Just put 
'inherit externalsrc' to the recipe file.

Alex


