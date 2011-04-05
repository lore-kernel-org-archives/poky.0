Return-Path: <sgw@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2E0FD4C802F2;
	Tue,  5 Apr 2011 14:17:29 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 05 Apr 2011 12:17:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,306,1299484800"; d="scan'208";a="414283772"
Received: from unknown (HELO [10.255.12.228]) ([10.255.12.228])
	by azsmga001.ch.intel.com with ESMTP; 05 Apr 2011 12:17:14 -0700
Message-ID: <4D9B6AB9.3000408@linux.intel.com>
Date: Tue, 05 Apr 2011 12:17:13 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Yocto Project Discussion <yocto@yoctoproject.org>, 
	"poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Patch Comments and Upstream-Status
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
X-List-Received-Date: Tue, 05 Apr 2011 19:17:29 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit


Yocto Contributors:

Do you ever wonder why a patch exists?  Thought that it should be part 
of the upstream project?

Well now's your chance to help as we move forward with our next release, 
we want to improve the quality of the patch comments and ensure that 
patches that can be included in the upstream projects are. The goal is 
to reduce the total number of patches that we need to carry forward and 
maintain, this will improve the overall quality of the project.

The wiki has been updated to include information about what we would 
like to see in the patch comments, including a format for a new field
Upstream-Status.

When creating new patches, updating existing recipes, please take a few 
minutes to ensure that all the patches have the Upstream-Status field 
and if appropriate start the process of requesting the upstream project 
to accept the patch.

The format and possible status key works are as follows:

Upstream-Status:
Pending
  No determination has been made yet or not yet submitted to upstream
Submitted
  Submitted to upstream, waiting approval
Accepted
  Accepted in upstream, expect it to be removed at next update, include 
expected version info
Backport
  Backported from new upstream version, because we are at a fixed 
version, include upstream version info
Denied
  Not accepted by upstream, include reason in patch
Inappropriate [reason]
  The patch is not appropriate for upstream, include a brief reason on 
the same line enclosed with []
  Reason can be:
	native
	licensing
	enable feature
	disable feature
	bugfix (add bug url here)
	embedded specific
	other (give details in comments)

If you are a maintainer of recipes, please work through your patches and 
submit poky  pull requests and upstream patch submissions.

Wiki Page:

http://wiki.yoctoproject.org/wiki/Best_Known_Methods_%28BKMs%29_for_Package_Updating#Patch_Comments

Please let me know if you have any comments or suggestions to improve 
this process.

Thanks
     Sau!

Saul Wold
Yocto Component Wrangler @ Intel
Yocto Project / Poky Build System


