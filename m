Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8C59DE00310
	for <poky@yoctoproject.org>; Mon, 29 Apr 2013 09:13:43 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 29 Apr 2013 09:13:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,574,1363158000"; d="scan'208";a="305066008"
Received: from unknown (HELO helios.localnet) ([10.255.12.140])
	by orsmga001.jf.intel.com with ESMTP; 29 Apr 2013 09:13:42 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Andrei Dinu <andrei.adrianx.dinu@intel.com>
Date: Mon, 29 Apr 2013 17:13:39 +0100
Message-ID: <3526520.WNlfyizyOl@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.2 (Linux/3.8.0-19-generic; KDE/4.10.2; i686; ; )
In-Reply-To: <1367246505-20742-1-git-send-email-andrei.adrianx.dinu@intel.com>
References: <1367246505-20742-1-git-send-email-andrei.adrianx.dinu@intel.com>
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: [PATCH v4] SLiRP support in runqemu
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
X-List-Received-Date: Mon, 29 Apr 2013 16:13:43 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Andrei,

On Monday 29 April 2013 17:41:45 Andrei Dinu wrote:
> runqemu script now takes argument "slirp" in order to
> run networking on the qemu machine, without root privileges.
> 
> changed the runqemu-internal script in order not to activate
> the tap devices if the option is set. Also trimmed the
> cleanup function so that after the image is closed, no
> tap releases warnings showed up.
> 
> [YOCTO #1474]
> 
> Signed-off-by: Andrei Dinu <andrei.adrianx.dinu@intel.com>
> ---
>  scripts/runqemu          |    3 +
>  scripts/runqemu-internal |  220

This should be sent to the OE-Core mailing list since that is where 
scripts/runqemu* are located.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

