Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 22DCE4C808E6
	for <poky@yoctoproject.org>; Mon, 25 Jul 2011 10:37:52 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 25 Jul 2011 08:37:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,262,1309762800"; d="scan'208";a="31183936"
Received: from unknown (HELO helios.localnet) ([10.255.17.240])
	by azsmga001.ch.intel.com with ESMTP; 25 Jul 2011 08:37:50 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org
Date: Mon, 25 Jul 2011 16:37:50 +0100
User-Agent: KMail/1.13.6 (Linux/2.6.38-8-generic-pae; KDE/4.6.2; i686; ; )
References: <cover.1311603837.git.paul.eggleton@linux.intel.com>
	<dfaafb2683125950f8ba7a4d873058f30b2a1dfb.1311603837.git.paul.eggleton@linux.intel.com>
	<4E2D8C3D.4070008@linux.intel.com>
In-Reply-To: <4E2D8C3D.4070008@linux.intel.com>
MIME-Version: 1.0
Message-Id: <201107251637.50168.paul.eggleton@linux.intel.com>
Subject: Re: [PATCH 3/6] meta-yocto/conf/local.conf.sample: move advanced settings to extended sample file
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
X-List-Received-Date: Mon, 25 Jul 2011 15:37:52 -0000
Content-Type: Text/Plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: 7bit

On Monday 25 July 2011 16:31:09 Saul Wold wrote:
> On 07/25/2011 07:28 AM, Paul Eggleton wrote:
> >   #TERMCMD = "${KONSOLE_TERMCMD}"
> >   #TERMCMDRUN = "${KONSOLE_TERMCMDRUN}"
> 
> I noticed the TERMCMD* here and realized that maybe we need to update
> this default with XTERM_* or SCREEN_*, rather than KONSOLE, I realize
> that this is an example.

You're probably right, and actually this reminds me, I meant to add a comment 
that KONSOLE_TERMCMD will only work with Konsole from KDE 3.x as well.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

