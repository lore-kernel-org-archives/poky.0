Return-Path: <josh@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6C388E00502
	for <poky@yoctoproject.org>; Mon, 21 Nov 2011 10:47:29 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 21 Nov 2011 10:47:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="78483523"
Received: from unknown (HELO [10.7.199.61]) ([10.7.199.61])
	by orsmga001.jf.intel.com with ESMTP; 21 Nov 2011 10:47:29 -0800
Message-ID: <4ECA9CC1.4020002@linux.intel.com>
Date: Mon, 21 Nov 2011 10:47:29 -0800
From: Joshua Lock <josh@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0.1) Gecko/20110930 Thunderbird/7.0.1
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <cover.1321402302.git.josh@linux.intel.com>
In-Reply-To: <cover.1321402302.git.josh@linux.intel.com>
Subject: Re: [RFC PATCH 0/1] Can we drop Clutter bbappends?
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 21 Nov 2011 18:47:29 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 15/11/11 16:16, Joshua Lock wrote:
> All,
> 
> The subject says it all. My reading of recent changes in oe-core around X and
> clutter lead me to believe that our bbappend is redundant so I'm proposing we
> drop it.
> 
> Both virtual/libgl being in DEPENDS and passing the --with-flavour=glx option
> are part of the standard clutter.inc now.
> 
> I may well be wrong but I like patches as a way to start discussion.

Any discusser's?

Cheers,
Joshua
-- 
Joshua Lock
        Yocto Project "Johannes factotum"
        Intel Open Source Technology Centre

