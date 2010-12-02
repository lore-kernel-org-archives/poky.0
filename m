Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id F050C4C80052
	for <poky@yoctoproject.org>; Thu,  2 Dec 2010 08:36:18 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 02 Dec 2010 06:36:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,288,1288594800"; d="scan'208";a="863588380"
Received: from unknown (HELO helios.localnet) ([10.255.16.35])
	by fmsmga001.fm.intel.com with ESMTP; 02 Dec 2010 06:36:17 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
Organization: Intel Corporation (UK)
To: poky@yoctoproject.org
Date: Thu, 2 Dec 2010 14:36:16 +0000
User-Agent: KMail/1.13.5 (Linux/2.6.35-22-generic-pae; KDE/4.5.1; i686; ; )
References: <cover.1291135878.git.paul.eggleton@linux.intel.com>
	<201012021413.15532.paul.eggleton@linux.intel.com>
	<4CF7AA43.2070503@mlbassoc.com>
In-Reply-To: <4CF7AA43.2070503@mlbassoc.com>
MIME-Version: 1.0
Message-Id: <201012021436.16462.paul.eggleton@linux.intel.com>
Subject: Re: [PATCH 1/1] sanity.bbclass: add check for creation of long filenames
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
X-List-Received-Date: Thu, 02 Dec 2010 14:36:19 -0000
Content-Type: Text/Plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: 7bit

On Thursday 02 December 2010 14:16:35 Gary Thomas wrote:
> On 12/02/2010 07:13 AM, Paul Eggleton wrote:
> > On Thursday 02 December 2010 12:21:06 Gary Thomas wrote:
> >> Is this information cached?  It's seems quite the burden
> >> to have to create/remove ~400 files each time on startup.
> >
> > I'm not sure what you mean - this check (well, all sanity checks) should only occur once per invocation of bitbake.
> 
> Precisely what I mean.  The computed max length won't change
> unless you move the tmp or sstate-cache directories, so recomputing
> it every time you run bitbake is a horrible overhead.

It would also change if the filesystem where TMPDIR or SSTATE_DIR is stored changes, which could occur without the path itself changing, e.g. someone switches over their home directory to be encrypted. It would be possible to cache this check based on the filesystem and path, but is it really worth it given that we would have to read the disk to check if these had changed anyway? I do understand we have to be careful about items we add to the sanity checks, but in this instance we're talking about writing one file - something that should take a matter of milliseconds.

Cheers,
Paul

