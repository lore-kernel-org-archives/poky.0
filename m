Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0FD4AE01443
	for <poky@yoctoproject.org>; Fri, 22 Jun 2012 06:05:11 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 22 Jun 2012 06:05:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="157116587"
Received: from unknown (HELO helios.localnet) ([10.252.120.123])
	by orsmga001.jf.intel.com with ESMTP; 22 Jun 2012 06:05:10 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Gary Thomas <gary@mlbassoc.com>
Date: Fri, 22 Jun 2012 14:05:07 +0100
Message-ID: <1665284.yNCLAGgIcC@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.3 (Linux/3.2.0-25-generic-pae; KDE/4.8.3; i686; ; )
In-Reply-To: <21623227.IdSUJJ2Hr3@helios>
References: <4FE220B8.2080903@mlbassoc.com> <4FE45BE3.3090200@mlbassoc.com>
	<21623227.IdSUJJ2Hr3@helios>
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: New warning
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
X-List-Received-Date: Fri, 22 Jun 2012 13:05:11 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Friday 22 June 2012 14:01:39 Paul Eggleton wrote:
> Rather than ${MACHINE}.patch, the traditional way to do this is to have a
> generic name for the file and then use a MACHINE-named subdirectory within
> your BSP layers to define the machine-specific version. You can always make
> the dummy patch not apply or specifically check for some aspect added by
> the dummy in do_configure.

(Assuming you use a dummy file that is - with the COMPATIBLE_MACHINE fix I 
suggested this is not necessary; this was from an earlier edit of my message.)

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

