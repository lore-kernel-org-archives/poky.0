Return-Path: <saul.wold@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0DB444C80A5B
	for <poky@yoctoproject.org>; Mon, 18 Apr 2011 16:48:40 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 18 Apr 2011 14:48:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,235,1301900400"; d="scan'208";a="680761937"
Received: from unknown (HELO [10.255.13.48]) ([10.255.13.48])
	by fmsmga002.fm.intel.com with ESMTP; 18 Apr 2011 14:48:40 -0700
Message-ID: <4DACB1B8.90700@intel.com>
Date: Mon, 18 Apr 2011 14:48:40 -0700
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Scott Rifenbark <srifenbark@gmail.com>
References: <cover.1302871028.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1302871028.git.scott.m.rifenbark@intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/5] [DOCS] ADT Manual Updates
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
X-List-Received-Date: Mon, 18 Apr 2011 21:48:41 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 04/15/2011 05:44 AM, Scott Rifenbark wrote:
> From: Scott Rifenbark<scott.m.rifenbark@intel.com>
>
> Several fixes here.  Two URLs fixed so they don't have 'pokylinux.org'
> and now have 'yoctoproject.org'.  The URL for the Yocto Eclipse Plug-in
> further specified with a '1.0' on the end.  The Makefile updated to
> include the PDF version of the manual in the tarball.
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: srifenbark/adt-work
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=srifenbark/adt-work
>
> Thanks,
>      Scott Rifenbark<scott.m.rifenbark@intel.com>
> ---
>
>
> Scott Rifenbark (5):
>    documentation/adt-manual/adt-eclipse.xml:  Updated repo URL for
>      Eclipse Plug-in
>    documentation/adt-manual/Makefile: Added PDF file to the tarball
These 2 patches need to be rebased to the updated oe-core (or master)

>    documentation/adt-manual/adt-eclipse.xml: Fixed link to autotools.
>    documentation/adt-manual/adt-prepare.xml: Fixed URL for nightly
>      builds
>    documentation/adt-manual/adt-eclipse.xml: Fixed URL with
>      pokylinux.org
>
These have been pulled into oe-core and master

Thanks
	Sau!


> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>


