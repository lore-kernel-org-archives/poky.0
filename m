Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1E278E004D2
	for <poky@yoctoproject.org>; Fri, 30 Mar 2012 10:34:35 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 30 Mar 2012 10:34:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="147942152"
Received: from unknown (HELO helios.localnet) ([10.252.123.235])
	by fmsmga002.fm.intel.com with ESMTP; 30 Mar 2012 10:34:34 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org
Date: Fri, 30 Mar 2012 18:34:33 +0100
Message-ID: <3081444.zUNYCddb1s@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.0 (Linux/3.0.0-17-generic-pae; KDE/4.8.1; i686; ; )
In-Reply-To: <4F75E5E3.9050407@mindchasers.com>
References: <4F75E5E3.9050407@mindchasers.com>
MIME-Version: 1.0
Subject: Re: [PATCH] README.hardware for mpc8315erdb incorrectly specified a null modem serial cable
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
X-List-Received-Date: Fri, 30 Mar 2012 17:34:35 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Friday 30 March 2012 12:57:07 Bob Cochran wrote:
> I noticed this while beta testing 1.2. but patch is against master
> (latest commit: bcd4d14425cadc5bd6296f59f14733e8c39c49dd).
> 
> Instructions specified a null modem.  This isn't the case.  A straight
> serial cable is required.  I verified it with my own setup and
> Freescale's user manual.
> 
> 
> Signed-off-by: Robert Cochran<yocto@mindchasers.com>
> 
> ---
>    README.hardware |    3 +--
>   1 files changed, 1 insertions(+), 2 deletions(-)
> 
> diff --git a/README.hardware b/README.hardware
> index f72da94..1e7df76 100644
> --- a/README.hardware
> +++ b/README.hardware
> @@ -241,8 +241,7 @@ Setup instructions
>   You will need the following:
>   * NFS root setup on your workstation
>   * TFTP server installed on your workstation
> -* Null modem cable connected from your workstation to the first serial port
> -  on the board
> +* Straight-thru 9-conductor serial cable (DB9, M/F) connected from your
> PC to UART1
>   * Ethernet connected to the first ethernet port on the board
> 
>   --- Preparation ---

You're right - I've no idea how I got this wrong in the first place. Thanks!

Acked-by: Paul Eggleton <paul.eggleton@linux.intel.com>

-- 

Paul Eggleton
Intel Open Source Technology Centre

