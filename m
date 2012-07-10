Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ABC39E00280
	for <poky@yoctoproject.org>; Tue, 10 Jul 2012 00:52:09 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 10 Jul 2012 00:52:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="120645988"
Received: from unknown (HELO helios.localnet) ([10.252.121.7])
	by AZSMGA002.ch.intel.com with ESMTP; 10 Jul 2012 00:52:08 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Iorga, Cristian" <cristian.iorga@intel.com>
Date: Tue, 10 Jul 2012 08:52:07 +0100
Message-ID: <2005498.qfgcbCYeBx@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.4 (Linux/3.2.0-26-generic-pae; KDE/4.8.4; i686; ; )
In-Reply-To: <4FF72CFB.7030209@linux.intel.com>
References: <1341585314-3345-1-git-send-email-cristian.iorga@intel.com>
	<969F26A8BAB325438E7EB80D3C3134FB16165C71@IRSMSX102.ger.corp.intel.com>
	<4FF72CFB.7030209@linux.intel.com>
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: [PATCH] Upstream tracking partial updates - observations while doing the updates
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
X-List-Received-Date: Tue, 10 Jul 2012 07:52:09 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Cristian,

On Friday 06 July 2012 11:22:51 Saul Wold wrote:
> On 07/06/2012 07:44 AM, Iorga, Cristian wrote:
> > 1.I don't know how to proceed with matchbox-keyboard.
> 
> Not sure I understand the question, what's the issue your trying to
> procced with?

 I think Ross may be able to help if there's specific issues with this.

> > 7. libgsmd not updated; needs to be checked via SVN. Is deprecated ->
> > should be replaced with something else; please advise
> Well, here's where your involvement with the community comes into play,
> can you advise me what you would replace it with?  Do you know who uses
> it ?  Do other distributions like SHR or Angstrom depend on libgsmd?
> Are there other layers that depend on it?  Ask in oe-devel.

libgsmd (not to be confused with libgsm) is well and truly dead, and I'm not 
convinced it worked particularly well in the first place. I've sent a patch to 
remove it and replace its usage with ofono (sorry Cristian I should have 
notified you first; this was something that had been on my todo list for a 
while.)

> > 8. tinylogin is now integrated into busybox; please advise.
> 
> I seem to remember something about that, there was a reason, but I can't
> recall why we have a separate version, Richard, Paul or Ross might have
> some insight as to why we have it separate, maybe due to the
> functionality it offers, you can look at the code for both and see if
> there is a difference.

This is a tricky one - IIRC, the problem is upstream has merged it into 
busybox but that means the busybox executable has to be suid root. The BusyBox 
developers claim that's not a problem because busybox drops privileges as soon 
as it figures out it doesn't need them, but many are not satisfied by this. Thus 
we've kept tinylogin separate. Long term this may become a problem 
maintenance-wise, I'm not sure what the plan to address that is. FYI there was 
a discussion about this on the OE-Core mailing list some months ago - have a 
search for it and if you're still unsure, send something out to the OE-Core 
list asking about it.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

