Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7E595E00BE9; Tue, 10 Apr 2018 16:41:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.120 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D22A4E00AD8
	for <poky@yoctoproject.org>; Tue, 10 Apr 2018 16:41:04 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	10 Apr 2018 16:41:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.48,434,1517904000"; d="scan'208";a="41049240"
Received: from ngocanhm-suna7.ccr.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.249.67.104])
	by FMSMGA003.fm.intel.com with ESMTP; 10 Apr 2018 16:41:01 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Erdmann, Jens" <Jens.Erdmann@auerswald.de>
Date: Wed, 11 Apr 2018 11:40:57 +1200
Message-ID: <2405485.rjGM1RfBcv@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
In-Reply-To: <e8c188e7eb8e4f03a9ec5b544145334c@auerswald.de>
References: <bcd607cf3fb44128b1233e50c96add58@auerswald.de>
	<e8c188e7eb8e4f03a9ec5b544145334c@auerswald.de>
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: [PATCH] externalsrc: Change absolute symlinks to relative ones
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
X-List-Received-Date: Tue, 10 Apr 2018 23:41:05 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Jens,

On Thursday, 5 April 2018 2:46:00 AM NZST Erdmann, Jens wrote:
> In 3eee8e99 sstate got changed to refuse absolute symlinks. Externalsrc
> creates absolute symlinks for oe-logs and oe-workdir which causes
> errors at do_populate_sysroot.
> Changing symlinks to relative paths will make externalsrc comply with sstate
> changesi and will avoid those errors.

This implies that you (or more precisely, the build system of whatever your 
recipe is building) is installing these symlinks to ${D} from the source tree 
- I would recommend avoiding that, since those symlinks are of no use on the 
target or indeed the sysroot, and making them relative means they will 
definitely be broken when moved elsewhere in any case.

Which recipe(s) are you experiencing this issue with? If they are custom ones, 
how is what happens during do_install defined there?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre



