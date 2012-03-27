Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C11C4E0070C
	for <poky@yoctoproject.org>; Tue, 27 Mar 2012 07:52:27 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 27 Mar 2012 07:52:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="122232445"
Received: from unknown (HELO [10.255.12.50]) ([10.255.12.50])
	by orsmga001.jf.intel.com with ESMTP; 27 Mar 2012 07:52:27 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: Gary Thomas <gary@mlbassoc.com>
In-Reply-To: <4F71D17B.2030200@mlbassoc.com>
References: <4F71D17B.2030200@mlbassoc.com>
Date: Tue, 27 Mar 2012 09:52:53 -0500
Message-ID: <1332859973.3854.15.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: Strange file names
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
X-List-Received-Date: Tue, 27 Mar 2012 14:52:27 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2012-03-27 at 08:40 -0600, Gary Thomas wrote:
> I just did a pull on poky master and now have a lot of files
> with strange names like these:
>    poky/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == "linux-yocto-rt_3.0": }} linux-yocto-rt_3.0.bbappend
>    poky/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == "linux-yocto-rt_3.2": }} linux-yocto-rt_3.2.bbappend
>    poky/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == "linux-yocto_3.0": }} linux-yocto_3.0.bbappend
>    poky/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-kernel/linux/{{ if kernel_choice == "linux-yocto_3.2": }} linux-yocto_3.2.bbappend
> 
> Is this right?  What are they all about?
> 

These are part of the new Yocto BSP Tools (yocto-bsp) and all the files
under 'scripts/lib/bsp/substrate' are template files for the tool.

The template files can contain inline Python between {{ tags }} that
gets used as logic when generating the BSP.  The inline Python can also
be used in the filne names themselves for that purpose.  In this case,
it's used to only include one of the .bbappend files depending on the
value of the kernel_choice variable.

It may seem strange, but filenames are just text after all, and I wanted
to avoid having separate 'meta-files' describing that same logic that
would also have to be kept in sync, so decided it would be less
error-prone to keep that information in the filenames themselves.

I'm in the process of writing all this up to put in the BSP manual, but
not quite there yet...

Tom




