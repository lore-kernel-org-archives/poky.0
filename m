Return-Path: <sgw@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3310A4C81146
	for <poky@yoctoproject.org>; Tue, 21 Dec 2010 01:28:06 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 20 Dec 2010 23:28:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,207,1291622400"; d="scan'208";a="364522192"
Received: from unknown (HELO [10.255.13.77]) ([10.255.13.77])
	by azsmga001.ch.intel.com with ESMTP; 20 Dec 2010 23:28:05 -0800
Message-ID: <4D105704.2050504@linux.intel.com>
Date: Mon, 20 Dec 2010 23:28:04 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Scott Rifenbark <scott.m.rifenbark@intel.com>
References: <cover.1292876262.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1292876262.git.scott.m.rifenbark@intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 00/29] Docs - BSP Guide Updates for changes to the	BSP template
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
X-List-Received-Date: Tue, 21 Dec 2010 07:28:06 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 12/20/2010 12:17 PM, Scott Rifenbark wrote:
> This group of commits represents the work done to the BSP Guide with Tom Z.
> and Saul W.  I have updated the template to match a more generic standard
> that is based on the crownbay BSP that Tom has created.  The rest of the
> work reflects re-writing the individual sections to match changes in the template.
> There were several iterations to the work between Tom and I.
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: srifenbark/bsp-work
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=srifenbark/bsp-work
>
Scott,

Did you push your changes?  The bsp-work branch does not seem to exist.

Sau!


> Thanks,
>      Scott Rifenbark<scott.m.rifenbark@intel.com>
> ---
>
>
> Scott Rifenbark (29):
>    documentation/bsp-guide/bsp.xml:  Changed meta naming convention
>    documentation/bsp-guide/bsp.xml:  Added note qualifying BSP file
>      structure.
>    documentation/bsp-guide/bsp.xml:  Fixed typo
>    documentation/bsp-guide/bsp.xml:  Added information about /binary
>    documentation/bsp-guide/bsp.xml:  Created better BSP example base
>      names
>    documentation/bsp-guide/bsp.xml:  Inserted text before the file
>      structure example
>    documentation/bsp-guide/bsp.xml:  Updated common form for file
>      structure.
>    documentation/bsp-work/bsp.xml:  Added crownbay BSP example to
>      section 1.1.
>    documentation/bsp-guide/bsp.xml:  Updated the introductary paragraph
>      to the sections.
>    documentation/bsp-guide/bsp.xml:  Added new "License Files" section.
>    documentation/bsp-guide/bsp.xml:  Added the README section.
>    documentation/bsp-guide/bsp.xml:  Updated the Pre-built User Binaries
>      section.
>    documenation/bsp-guide/bsp.xml:  Updated the Layer Configuration File
>      section.
>    documentation/bsp-guide/bsp.xml:  Updated the Hardware Configuration
>      Options section
>    documentation/bsp-guide/bsp.xml:  Added a Miscellaneous Recipe Files
>      section
>    documentation/bsp-guide/bsp.xml:  Removed the recipes-bsp/formfactor
>      directory from the common structure.
>    documentation/bsp-guide/bsp.xml: Added a Display Support Files
>      section.
>    documentation/bsp-guide/bsp.xml:  Updated Linux Kernel Configuration
>      section.
>    documentation/bsp-guide/bsp.xml:  Commented out three sections.
>    documentation/bsp-guide/bsp.xml:  Changed numbering scheme.
>    documentation/bsp-guide/bsp.xml: Updated Layer Configuration File
>      Section
>    documentation/bsp-guild/bsp.xml: Updated Miscellaneous Recipe Files
>      section
>    documentation/bsp-guide/bsp.xml:  Updated Display Support Files
>      section.
>    documentation/bsp-guide/bsp.xml:  Updated Linux Kernel Configuration
>      section.
>    documentation/bsp-guide/bsp.xml: Added reference to Kernel
>      documentation.
>    documentation/bsp-guide/bsp.xml:  Updated the Linux Kernel
>      Configuration section
>    documentation/bsp-guide/bsp.xml:  replaced the append file line in
>      the template
>    documentation/bsp-guide/bsp.xml:  Updated Linux Kernel Configuration
>      section.
>    documentation/bsp-guide/bsp.xml:  Spell checked the file.
>
>   documentation/bsp-guide/bsp.xml |  324 ++++++++++++++++++++++++++++++---------
>   1 files changed, 250 insertions(+), 74 deletions(-)
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>


