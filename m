Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 137804C80052
	for <poky@yoctoproject.org>; Fri, 20 May 2011 18:40:21 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 20 May 2011 16:40:20 -0700
X-ExtLoop1: 1
Received: from unknown (HELO [10.255.12.76]) ([10.255.12.76])
	by orsmga002.jf.intel.com with ESMTP; 20 May 2011 16:40:20 -0700
Message-ID: <4DD6FBE2.4080403@linux.intel.com>
Date: Fri, 20 May 2011 16:40:18 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110424 Lightning/1.0b2 Thunderbird/3.1.10
MIME-Version: 1.0
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: fetch2/git: questions on read-tree and checkout-index
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
X-List-Received-Date: Fri, 20 May 2011 23:40:21 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi Ke,

As I ran into http://bugzilla.yoctoproject.org/show_bug.cgi?id=1089 today
working with Saul to validate bug 1029, I spent some time reading through the
fetch2/git source and the commit history. I had a couple questions regarding the
rationale for the use of "read-tree" and "checkout-index" in the unpack routine:

runfetchcmd("git clone -s -n %s %s" % (ud.clonedir, destdir), d)
if not ud.nocheckout:
    os.chdir(destdir)
    runfetchcmd("%s read-tree %s%s" % (ud.basecmd, ud.revisions[ud.names[0]], readpathspec), d)
    runfetchcmd("%s checkout-index -q -f -a" % ud.basecmd, d)

As I understand it this would be equivalent to checking out HEAD and then
overwriting everything in the tree with the contents of the repository at
ud.revisions[ud.names[0]]. This results in all the modifications listed with git
status but doesn't add any of the changes back to the index, so the log still
appears to be at HEAD (with a lot of local changes). This seems unnecessary for
the majority of use cases. The one where it seems potentially useful would be
the subdir case. Is that the only motivator for using this method?

If so, what is the motivation for checkout out of a subdir - as opposed to just
changing the recipe to build within that subdir?

From what I could tell we were not using the ability to merge multiple trees
with the read-tree, which I could see as being useful to generate a tree like
the linux-yocto tree with the meta branch included in the bsp source - but even
that could be done using standard merge commands.

Unless I'm missing a use-case (quite likely as there are next to no comments
articulating the rationale and approach taken) I think it would make more sense
to just checkout the required hash into a detached head for the build and update
any recipes that make use of the subdir option to build within than subdir.
Alternatively, doing a checkout for the non subdir case would make most of the
recipes get this behavior while allowing the subdir users to remain untouched.

Thanks,

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

