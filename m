Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1B8BE4C800BA
	for <poky@yoctoproject.org>; Mon, 21 Mar 2011 12:10:45 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 21 Mar 2011 10:10:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,220,1299484800"; d="scan'208";a="615747795"
Received: from unknown (HELO helios.localnet) ([10.255.12.193])
	by orsmga002.jf.intel.com with ESMTP; 21 Mar 2011 10:10:43 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
Organization: Intel Corporation (UK)
To: poky@yoctoproject.org
Date: Mon, 21 Mar 2011 17:10:40 +0000
User-Agent: KMail/1.13.5 (Linux/2.6.35-27-generic-pae; KDE/4.6.1; i686; ; )
References: <4D876DD3.5070106@mlbassoc.com> <4D877E6B.9000007@mlbassoc.com>
	<4D87843C.8030600@windriver.com>
In-Reply-To: <4D87843C.8030600@windriver.com>
MIME-Version: 1.0
Message-Id: <201103211710.40627.paul.eggleton@linux.intel.com>
Subject: Re: Using RPM with Poky
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
X-List-Received-Date: Mon, 21 Mar 2011 17:10:45 -0000
Content-Type: Text/Plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: 7bit

On Monday 21 March 2011 17:00:44 Mark Hatle wrote:
> On 3/21/11 11:35 AM, Gary Thomas wrote:
> > Also, is there documentation on how to use zypper, how to set up
> > repositories, etc?
> 
> There is no documentation yet on how to use Zypper.  Below is how I've been
> using it to test things:
> 
> 
> On the host:
> 
> 1) Build the environment -- full set of rpm packages you want available
> 
> 2) Build "createrepo-native"
> 
> 3) Copy tmp/deploy/rpm and contents of somewhere it can be accessed via
> HTTP, such as /var/www/html.
> 
> 4) Create the repository database:
> 
> <poky directory>/scripts/poky-setup-rpmrepo /var/www/html/rpm
> 
> On the target:
> 
> (assuming qemu)
> 
> 1) zypper addrepo http://192.167.7.1/rpm main
> 
> 2) zypper refresh
> 
> 3) zypper install <package>
> 
> 
> 
> Some other useful commands:
> 
> zypper info <package>
> 
> This will give you basic info on a package, and tell you if it's already
> installed (@System repository) or which remote repository it's stored in.
> 
> zypper remove <package>
> 
> This will remove a package, and clean up any other packages that are
> dependent upon it.
> 

Mark, you beat me to it :) I just finished copying this onto the wiki:

 https://wiki.yoctoproject.org/wiki/Zypper_Repository_Setup

We could probably do with this in the documentation in reworked form. Scott R, 
what do you think?

Cheers,
Paul

