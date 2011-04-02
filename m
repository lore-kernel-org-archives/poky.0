Return-Path: <josh@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0DE2D4C8032C
	for <poky@yoctoproject.org>; Sat,  2 Apr 2011 11:59:20 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 02 Apr 2011 09:59:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,288,1299484800"; d="scan'208";a="412842733"
Received: from unknown (HELO [10.255.12.213]) ([10.255.12.213])
	by azsmga001.ch.intel.com with ESMTP; 02 Apr 2011 09:59:19 -0700
From: Joshua Lock <josh@linux.intel.com>
To: poky@yoctoproject.org
Date: Sat, 02 Apr 2011 17:59:18 +0100
In-Reply-To: <4D972642.80400@intel.com>
References: <4D971BF9.7050707@intel.com> <4D971D4C.60109@mlbassoc.com>
	<4D972642.80400@intel.com>
X-Mailer: Evolution 2.91.92 (2.91.92-2.fc15) 
Message-ID: <1301763560.2398.14.camel@scimitar>
Mime-Version: 1.0
Subject: Re: How to append inc file
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
X-List-Received-Date: Sat, 02 Apr 2011 16:59:21 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sat, 2011-04-02 at 21:36 +0800, Yu Ke wrote:
> on 2011-4-2 20:57, Gary Thomas wrote:
> > On 04/02/2011 06:52 AM, Yu Ke wrote:
> >> Hi,
> >>
> >> bbappend file can be used to append content to bb file, and it is very
> >> useful in BSP meta data. Today I just find the *.inc file is also need
> >> to be appended, so I wonder if there
> >> is similar incappend file that can append content to inc file?
> >>
> >> I meet this requirement when trying to fix bug 896
> >> (http://bugzilla.yoctoproject.org/show_bug.cgi?id=896). To make
> >> poky-image-clutter build pass in n450, the clutter.inc need to be
> >> appended to change the COMPATIBLE_MACHINE.
> >
> > Why can't you just put the change in the .bbappend file (since it's
> > already recipe/target specific)?
> >
> 
> currently there is clutter 1.4 and clutter 1.6 which both use the 
> clutter.inc. and yes, It is also fine to use duplicate bbappend to 
> append clutter 1.4 and clutter 1.6 respectively. But if clutter.inc can 
> be appended, then it will reduce the duplicate code. Also inc file 
> append has another benefit, when clutter 1.8 is out in the future, the 
> BSP append code don't need any change.

IIRC the common way to handle this now is to have shared code across
versions in clutter.inc then have inc files for the major releases that
require them (clutter-1.4.inc, clutter-1.6.inc, etc) and then have the
version inc file include the core inc file.
The recipes would then include the appropriate inc file for the major
version (1.6, etc) which they build.

Joshua
-- 
Joshua Lock
        Yocto Build System Monkey
        Intel Open Source Technology Centre


