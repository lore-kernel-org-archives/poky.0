Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2A8AEE00A39; Sun,  6 May 2018 14:07:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CA9CAE009B9
	for <poky@yoctoproject.org>; Sun,  6 May 2018 14:07:28 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	06 May 2018 14:07:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.49,371,1520924400"; d="scan'208";a="48733082"
Received: from xuanthon-mobl.ccr.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.249.69.224])
	by orsmga003.jf.intel.com with ESMTP; 06 May 2018 14:07:24 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Vignesh Rajendran (RBEI/ECF3)" <Vignesh.Rajendran@in.bosch.com>
Date: Mon, 07 May 2018 09:07:21 +1200
Message-ID: <1629880.DQ0fgycisi@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
In-Reply-To: <b6a73324a44a4077bf4eb2212635e8d5@in.bosch.com>
References: <cover.1522820703.git.vignesh.rajendran@in.bosch.com>
	<75d2165150c64b62937d261b91d33dff@in.bosch.com>
	<b6a73324a44a4077bf4eb2212635e8d5@in.bosch.com>
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: [PULL] package.bbclass: provide debug sources in externalsrc	-dbg packages
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
X-List-Received-Date: Sun, 06 May 2018 21:07:29 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Rajendran,

On Wednesday, 2 May 2018 6:27:42 PM NZST Vignesh Rajendran (RBEI/ECF3) wrote:
> Do I have to split my changes in externalsrc.bbclass to submit to OE-core?

I don't think any splitting should be needed, but you should send your patch 
to the OE-Core list, yes (with all corrections merged in).

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre



