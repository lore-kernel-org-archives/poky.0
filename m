Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id B14054C80050
	for <poky@yoctoproject.org>; Mon,  4 Apr 2011 12:03:39 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p34H3Ylo018627;
	Mon, 4 Apr 2011 18:03:34 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 18173-07; Mon,  4 Apr 2011 18:03:30 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p34H3Thp018621
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Mon, 4 Apr 2011 18:03:29 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
In-Reply-To: <201104041732.48366.paul.eggleton@linux.intel.com>
References: <4D951B0B.3010503@intel.com> <1301679250.24596.293.camel@rex>
	<4D961E29.4070807@intel.com>
	<201104041732.48366.paul.eggleton@linux.intel.com>
Date: Mon, 04 Apr 2011 18:03:26 +0100
Message-ID: <1301936606.24596.405.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: Broken dependency behavior in master?
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
X-List-Received-Date: Mon, 04 Apr 2011 17:03:40 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2011-04-04 at 17:32 +0100, Paul Eggleton wrote:
> On Friday 01 April 2011 19:49:13 Scott Garman wrote:
> > I've reproduced this now, multiple times, using builds from scratch,
> > including the fact that reverting that commit fixes the the problem for me.
> 
> I can confirm this, even though on the face of it the patch should not cause 
> any issues. 
> 
> I haven't completely isolated the cause yet, however the problem occurs in  
> sstate_task_postfunc -> sstate_install -> docbook_sgml_dtd_sstate_postinst 
> which oddly seems to be being merged into the do_populate_lic task. I'm not 
> sure but I'm assuming that these sstate functions should not be being executed 
> under these circumstances.

Some data points on this:

"bitbake docbook-sgml-dtd-3.1-native -c populate_lic"

is the reproducer and the problem is the line:

SSTATEPOSTINSTFUNCS += "docbook_sgml_dtd_sstate_postinst"

in docbook-sgml-dtd-native.inc. This is running at populate_lic time as
well as populate_sysroot when its meant to run.

The commit Scott found is just a coincidence on some task order and not
responsible for this issue. I believe Scott is going to test+send a fix
which ensures the postinst only runs for the populate_sysroot postinst.

Cheers,

Richard




