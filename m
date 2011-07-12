Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id CCBF24C800A9
	for <poky@yoctoproject.org>; Tue, 12 Jul 2011 08:12:38 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 12 Jul 2011 06:12:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,521,1304319600"; d="scan'208";a="26731022"
Received: from unknown (HELO helios.localnet) ([10.255.17.183])
	by orsmga001.jf.intel.com with ESMTP; 12 Jul 2011 06:12:36 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org
Date: Tue, 12 Jul 2011 14:12:20 +0100
User-Agent: KMail/1.13.6 (Linux/2.6.38-8-generic-pae; KDE/4.6.2; i686; ; )
References: <4E1C32B3.8090708@mlbassoc.com> <4E1C429E.7010506@mlbassoc.com>
In-Reply-To: <4E1C429E.7010506@mlbassoc.com>
MIME-Version: 1.0
Message-Id: <201107121412.20663.paul.eggleton@linux.intel.com>
Subject: Re: BusyBox features not working
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
X-List-Received-Date: Tue, 12 Jul 2011 13:12:39 -0000
Content-Type: Text/Plain;
  charset="iso-8859-15"
Content-Transfer-Encoding: 7bit

On Tuesday 12 July 2011 13:48:30 Gary Thomas wrote:
> Weird.  I just ran through this, first with the default value for
> DISTRO_FEATURES, then with the same value but 'ipv4' placed at the front
> of that list.  If 'ipv4' is somewhere in the middle, busybox is not
> configured correctly.  If it's at the front, it works properly.

Hmm, a quick test shows that you're right, it doesn't seem to be working as 
expected. Not sure what's going on yet but I will investigate further.

> Note: I printed the value of DISTRO_FEATURES by modifying base.bbclass.  Is
> there an easier way to see the value of such variables being used by the
> recipes?  I gave the bitbake manual a look, but didn't find any hints...

The option you want is -e, for example:

bitbake -e busybox | grep DISTRO_FEATURES

or, to be more strict:

bitbake -e busybox | grep ^DISTRO_FEATURES

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

