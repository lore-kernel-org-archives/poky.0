Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2BF19E0137C
	for <poky@yoctoproject.org>; Fri, 23 Mar 2012 07:18:46 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 23 Mar 2012 07:18:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="120905572"
Received: from unknown (HELO helios.localnet) ([10.252.123.207])
	by orsmga001.jf.intel.com with ESMTP; 23 Mar 2012 07:18:45 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Gary Thomas <gary@mlbassoc.com>
Date: Fri, 23 Mar 2012 14:18:43 +0000
Message-ID: <1481101.ZDnJmjzgkO@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.0 (Linux/3.0.0-16-generic-pae; KDE/4.8.1; i686; ; )
In-Reply-To: <4F6C76FD.4010004@mlbassoc.com>
References: <4F6C76FD.4010004@mlbassoc.com>
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: zypper help
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
X-List-Received-Date: Fri, 23 Mar 2012 14:18:46 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Friday 23 March 2012 07:13:33 Gary Thomas wrote:
> I didn't find this in a quick search of the documentation,
> is there a zypper equivalent of
>    rpm -qif <some-file-name>
> not unlike
>    opkg search <some-file-name>

I don't think this feature has been implemented in zypper yet:

https://features.opensuse.org/308437

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

