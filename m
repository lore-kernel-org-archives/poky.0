Return-Path: <joshua.g.lock@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7D227E00DC2; Mon, 11 Apr 2016 01:30:27 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0442CE00C46
	for <poky@yoctoproject.org>; Mon, 11 Apr 2016 01:30:24 -0700 (PDT)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by fmsmga101.fm.intel.com with ESMTP; 11 Apr 2016 01:30:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,462,1455004800"; d="scan'208";a="82863369"
Received: from jlock-mobl1.gar.corp.intel.com ([10.252.9.96])
	by fmsmga004.fm.intel.com with ESMTP; 11 Apr 2016 01:30:22 -0700
Message-ID: <1460363420.3398.4.camel@linux.intel.com>
From: Joshua G Lock <joshua.g.lock@linux.intel.com>
To: Holger Freyther <holger@freyther.de>, poky@yoctoproject.org
Date: Mon, 11 Apr 2016 09:30:20 +0100
In-Reply-To: <5D2DC2E7-EE57-4EC4-B9BD-72F0DB7F45C7@freyther.de>
References: <5D2DC2E7-EE57-4EC4-B9BD-72F0DB7F45C7@freyther.de>
X-Mailer: Evolution 3.18.5.2 (3.18.5.2-1.fc23) 
Mime-Version: 1.0
Subject: Re: taskhash mismatch and what's next?
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
X-List-Received-Date: Mon, 11 Apr 2016 08:30:27 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2016-04-04 at 21:15 +0200, Holger Freyther wrote:
> Hi,
> 
> todays internal built failed and I am greeted with:
> 
> ERROR: meta-toolchain-osmo-1.0-r7 do_populate_sdk: Taskhash mismatch
> fb8cf0ab1d25eb3c1105f6d05e761f9d verses
> 51c3b8fae61b34daeacae493fe7458d8 for meta-telephony/recipes-
> osmocom/meta/meta-toolchain-osmo.bb.do_populate_sdk
> NOTE: recipe meta-toolchain-osmo-1.0-r7: task do_populate_sdk:
> Succeeded
> ERROR: Taskhash mismatch fb8cf0ab1d25eb3c1105f6d05e761f9d verses
> 51c3b8fae61b34daeacae493fe7458d8 for meta-telephony/recipes-
> osmocom/meta/meta-toolchain-osmo.bb.do_populate_sdk

I suspect this is the use of DATETIME in the recipe resulting in the
taskhash changing at the different times the checksum is created, i.e.

http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=fab626cdf387c
5b4a4838074294cade1e6129a4f

Regards,

Joshua

> 
> Now I understand that my meta-toolchain-osmo recipe[1] is to blame
> but what would be super nice is an extended error message. E.g. point
> to a piece of documentation that explains what is being hashed, which
> two hashes are being compared, when was the first computed, when the
> second one. Maybe even point to a recipe fix as an example?
> 
> 
> thanks a lot for your consideration
> 	holger
> 
> 
> 
> [1] https://github.com/sysmocom/meta-telephony/blob/master/recipes-os
> mocom/meta/meta-toolchain-osmo.bb

