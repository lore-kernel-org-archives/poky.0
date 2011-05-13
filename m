Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 81AE74C804CC
	for <poky@yoctoproject.org>; Fri, 13 May 2011 08:27:35 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 13 May 2011 06:27:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,364,1301900400"; d="scan'208";a="435596955"
Received: from unknown (HELO [10.255.12.106]) ([10.255.12.106])
	by azsmga001.ch.intel.com with ESMTP; 13 May 2011 06:27:34 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: Gary Thomas <gary@mlbassoc.com>
In-Reply-To: <4DCD1F2F.7030805@mlbassoc.com>
References: <4DCD1F2F.7030805@mlbassoc.com>
Date: Fri, 13 May 2011 08:27:05 -0500
Message-ID: <1305293225.30469.151.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: meta-intel
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
X-List-Received-Date: Fri, 13 May 2011 13:27:36 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2011-05-13 at 05:08 -0700, Gary Thomas wrote:
> I'm using meta-intel (git://git.pokylinux.org/meta-intel.git) to
> test Poky on my Atom-PC (emenlow works fine).
> 
> Where is the best place to ask for help with this?  Perhaps there
> should be a README in the layer to give such guidance?
> 

Yeah, good point - it would make sense to add 'owner' contact info in
the BSP READMEs.  I'll do that for all the BSPs in meta-intel.

> Now, to my actual question.  I'm trying to understand the strange
> network behaviour I see when running qemu (see yesterday's thread).
> When I build for qemuXXX, I build & run core-image-sato.  On the
> real hardware (emenlow), I built core-image-sato-live, so I would
> think the only difference would be the USB-live packaging.  So
> why do I see such a different set of tasks running, once I log
> in via X?  See attached files.
> 

Actually, the set of tasks doesn't look all that different to me.  But
they're also different BSPs (qemu vs emenlow) so I wouldn't expect them
to be exactly the same (different config options, additional packages,
etc).

Tom

> Interestingly, the network on the real system (emenlow) works
> properly.  The only problem I have is that /etc/resolv.conf is
> still wrong, even though I get my network address via DHCP and
> the DHCP server provides DNS info.
> 



