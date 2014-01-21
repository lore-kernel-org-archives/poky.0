Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EC82CE0087A
	for <poky@yoctoproject.org>; Tue, 21 Jan 2014 01:52:09 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 21 Jan 2014 01:52:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.95,695,1384329600"; d="scan'208";a="442157745"
Received: from mmckenna-mobl2.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.122.212])
	by orsmga001.jf.intel.com with ESMTP; 21 Jan 2014 01:52:07 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Roseville House <championoaks@gmail.com>
Date: Tue, 21 Jan 2014 09:52:06 +0000
Message-ID: <13904635.0BzHFl3jmg@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.11.5 (Linux/3.12.8-300.fc20.x86_64; KDE/4.11.5; x86_64; ; )
In-Reply-To: <CAOqG5mw2znFmrSW72P7Dt+twjmTcfwh8h6hrV9x1-OqAMWO0_A@mail.gmail.com>
References: <CAOqG5mwi7Rcpe+Le5btBg8SKMf1WF4uLVzo3tmYc3C3UGhoMbA@mail.gmail.com>
	<CAOqG5myC7zb_Bo1SrcDwULKkMOHYGJTX-tcXN-8bcczVbuQyYA@mail.gmail.com>
	<CAOqG5mw2znFmrSW72P7Dt+twjmTcfwh8h6hrV9x1-OqAMWO0_A@mail.gmail.com>
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: build issues when behind a proxy
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
X-List-Received-Date: Tue, 21 Jan 2014 09:52:12 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 21 January 2014 00:47:21 Roseville House wrote:
> When I commented out socat in git-proxy I made some progress but still
> failed on following  URLs

Er, socat is what does the work in that script. Why did you comment it out?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

