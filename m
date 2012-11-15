Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E9351E0051E
	for <poky@yoctoproject.org>; Thu, 15 Nov 2012 03:03:22 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 15 Nov 2012 03:03:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.83,255,1352102400"; d="scan'208";a="242619089"
Received: from unknown (HELO helios.localnet) ([10.252.122.197])
	by orsmga002.jf.intel.com with ESMTP; 15 Nov 2012 03:03:01 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Bryan Evenson <bevenson@melinkcorp.com>
Date: Thu, 15 Nov 2012 11:03:01 +0000
Message-ID: <18536739.oUeeJqhr6W@helios>
Organization: Intel Corporation
User-Agent: KMail/4.9.2 (Linux/3.2.0-32-generic-pae; KDE/4.9.2; i686; ; )
In-Reply-To: <91586D499ADFD74FBCFB8425266A5DE4012C7CF328B4@pluto.melinkcorp.local>
References: <91586D499ADFD74FBCFB8425266A5DE4012C7CE153F8@pluto.melinkcorp.local>
	<7874263.lvMpyGKaak@helios>
	<91586D499ADFD74FBCFB8425266A5DE4012C7CF328B4@pluto.melinkcorp.local>
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: Errors attempting to build AT91SAM9x5 BSP
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
X-List-Received-Date: Thu, 15 Nov 2012 11:03:23 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 13 November 2012 14:17:06 Bryan Evenson wrote:
> Thanks for the information.  From my reading of the BSP manual I'd thought I
> was supposed to increment the LCONF_VERSION each time I made a change to
> the bblayers.conf file; I appreciate the clarification.

Could you suggest a change to the BSP manual that would help avoid this 
confusion?
 
> I searched for the error message I was getting, and I think it was
> originating in this section of sanity.bbclass:
> 
>     # Check bblayers.conf is valid
>     current_lconf = sanity_data.getVar('LCONF_VERSION', True)
>     lconf_version = sanity_data.getVar('LAYER_CONF_VERSION', True)
>     if current_lconf != lconf_version:
>         try:
>             bb.build.exec_func("check_bblayers_conf", sanity_data)
>             if sanity_data.getVar("SANITY_USE_EVENTS", True) == "1":
>                 bb.event.fire(bb.event.SanityCheckFailed("Your
> conf/bblayers.conf has been automatically updated. Please close and
> re-run."), sanity_data) return
>             else:
>                 bb.note("Your conf/bblayers.conf has been automatically
> updated. Please re-run %s." % os.path.basename(sys.argv[0])) sys.exit(0)
>         except Exception:
>             messages = messages + "Your version of bblayers.conf was
> generated from an older version of bblayers.conf.sample and there have been
> updates made to this file. Please compare the two files and merge any
> changes before continuing.\nMatching the version numbers will remove this
> message.\n\"meld conf/bblayers.conf
> ${COREBASE}/meta*/conf/bblayers.conf.sample\" is a good way to visualise
> the changes.\n"

Right, I guess (without having tested it recently) what I expected to happen 
was the check_bblayers_conf function would have raised an exception if it 
couldn't do anything with the file; currently it doesn't.

> Would it be helpful if the current_lconf != lconf_version check changed to
> have different messages when current_lconf > lconf_version and when
> current_lcong < lconf_version?

I think that would be a good idea, yes.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

