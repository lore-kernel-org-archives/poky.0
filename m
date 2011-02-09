Return-Path: <scott.a.garman@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9385B4C800A3
	for <poky@yoctoproject.org>; Tue,  8 Feb 2011 18:35:50 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 08 Feb 2011 16:35:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,444,1291622400"; 
	d="scan'208,223";a="885673093"
Received: from unknown (HELO [10.255.14.206]) ([10.255.14.206])
	by fmsmga001.fm.intel.com with ESMTP; 08 Feb 2011 16:35:49 -0800
Message-ID: <4D51E164.4080509@intel.com>
Date: Tue, 08 Feb 2011 16:35:48 -0800
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101208 Thunderbird/3.1.7
MIME-Version: 1.0
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Prelink documentation system appears to be obsolete.
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
X-List-Received-Date: Wed, 09 Feb 2011 00:35:51 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

 From my attempts to get documentation building correctly for prelink, 
it's becoming clear to me that the package's documentation system uses a 
number of deprecated teTeX elements and needs updating at a "big 
picture" level. From what I understand, TeXLive is the new hotness and 
requires some migration.

In doc/prelink.tex, build errors lead me to suggest the following changes:

Change \usepackage{fancyheadings} to \usepackage{fancyhdr}:
http://us.generation-nt.com/bug-421071-ftbfs-latex-error-file-fancyheadings-sty-not-found-help-164921921.html

Change [make|print]glossary to [make|print]nomenclature:
http://pleasemakeanote.blogspot.com/2009/02/latex-undefined-control-sequence.html

Don't define \ifpdf manually, \usepackage{ifpdf}:
http://old.nabble.com/Package-ifpdf-error:-name-clash---%5Cifpdf-is-already-defined-td18730554.html

After resolving these issues, I still end up with a failure building the 
docs - but this time there's no clear error message to give me clues on 
what needs fixing. My gut feeing is that the migration process from 
teTeX to TeXLive needs to be done by someone more familiar with it than I.

Until that happens (or I suddenly become a TeX guru), I'm currently 
advising that we keep the workaround in the prelink recipe which 
prevents documentation from being built. Then I can move on to 
addressing documentation builds in other packages.

Scott

-- 
Scott Garman
Embedded Linux Distro Engineer - Yocto Project
Intel Open Source Technology Center

