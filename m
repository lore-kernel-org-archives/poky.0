Return-Path: <saul.wold@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 91AC04C80052
	for <poky@pokylinux.org>; Mon, 22 Nov 2010 12:14:14 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 22 Nov 2010 10:14:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,237,1288594800"; d="scan'208";a="629241753"
Received: from unknown (HELO [10.255.13.171]) ([10.255.13.171])
	by fmsmga002.fm.intel.com with ESMTP; 22 Nov 2010 10:14:12 -0800
Message-ID: <4CEAB2F0.2030700@intel.com>
Date: Mon, 22 Nov 2010 10:14:08 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Lu Jingdong <jingdong.lu@windriver.com>
References: <4CCE94E0.50903@windriver.com>
In-Reply-To: <4CCE94E0.50903@windriver.com>
Cc: "poky@pokylinux.org" <poky@pokylinux.org>
Subject: Re: [PULL]Fix adding GDBM_File module for perl
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
X-List-Received-Date: Mon, 22 Nov 2010 18:14:14 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11/01/2010 03:22 AM, Lu Jingdong wrote:
> Note:<commit_id>  parameter assumed as 'HEAD'
>
>    meta/recipes-devtools/perl/perl-5.8.8/config.sh                                     |    8
>    meta/recipes-devtools/perl/perl-5.8.8/perl-enable-gdbm.patch                        |   17 +
>    meta/recipes-devtools/perl/perl_5.8.8.bb                                            |    2
>
Jingdong,

We have not forgotten about your changes, we are trying to determine the 
impact of the changes you are suggesting.  Can you please let us know 
what the size difference would of perl by adding this change?  Is it 
just a simple perl module?  What additional dependencies occur when you 
add this patch and their impact on size.

Sau!
>    meta/recipes-extended/texinfo/texinfo-4.13a/texinfo-4.12-zlib.patch                 |  169 ++++++++++
>    meta/recipes-extended/texinfo/texinfo-4.13a/texinfo-4.13a-data_types.patch          |   32 +
>    meta/recipes-extended/texinfo/texinfo-4.13a/texinfo-4.13a-help-index-segfault.patch |   23 +
>    meta/recipes-extended/texinfo/texinfo-4.13a/texinfo-4.13a-mosdo-crash.patch         |   11
>    meta/recipes-extended/texinfo/texinfo-4.13a/texinfo-4.13a-powerpc.patch             |   12
>    meta/recipes-extended/texinfo/texinfo_4.13a.bb                                      |   57 +++
>    9 files changed, 327 insertions(+), 4 deletions(-)
>
> Jingdong Lu (2):
>         texinfo: Add new package
>         Fix adding GDBM_File module for LSB test.
>
> Pull URL:
> http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=jingdonglu/distro
>


