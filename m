Return-Path: <saul.wold@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id D70164C80132
	for <poky@pokylinux.org>; Mon,  1 Nov 2010 13:20:05 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 01 Nov 2010 11:20:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.58,274,1286175600"; d="scan'208";a="569300511"
Received: from unknown (HELO [10.255.12.117]) ([10.255.12.117])
	by orsmga002.jf.intel.com with ESMTP; 01 Nov 2010 11:20:05 -0700
Message-ID: <4CCF04B5.4030606@intel.com>
Date: Mon, 01 Nov 2010 18:19:33 +0000
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: poky@pokylinux.org
References: <4CCE94E0.50903@windriver.com>
In-Reply-To: <4CCE94E0.50903@windriver.com>
Subject: Re: [PULL]Fix adding GDBM_File module for perl
X-BeenThere: poky@pokylinux.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.pokylinux.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/poky>,
	<mailto:poky-request@pokylinux.org?subject=unsubscribe>
List-Archive: <http://lists.pokylinux.org/pipermail/poky>
List-Post: <mailto:poky@pokylinux.org>
List-Help: <mailto:poky-request@pokylinux.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/poky>,
	<mailto:poky-request@pokylinux.org?subject=subscribe>
X-List-Received-Date: Mon, 01 Nov 2010 18:20:06 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11/01/2010 10:22 AM, Lu Jingdong wrote:
> Note:<commit_id>  parameter assumed as 'HEAD'
>
>    meta/recipes-devtools/perl/perl-5.8.8/config.sh                                     |    8
>    meta/recipes-devtools/perl/perl-5.8.8/perl-enable-gdbm.patch                        |   17 +
>    meta/recipes-devtools/perl/perl_5.8.8.bb                                            |    2
>
This patch looks OK to me and I will pull it.
(Nitin, please take note of this config change for your work).

>    meta/recipes-extended/texinfo/texinfo-4.13a/texinfo-4.12-zlib.patch                 |  169 ++++++++++
>    meta/recipes-extended/texinfo/texinfo-4.13a/texinfo-4.13a-data_types.patch          |   32 +
>    meta/recipes-extended/texinfo/texinfo-4.13a/texinfo-4.13a-help-index-segfault.patch |   23 +
>    meta/recipes-extended/texinfo/texinfo-4.13a/texinfo-4.13a-mosdo-crash.patch         |   11
>    meta/recipes-extended/texinfo/texinfo-4.13a/texinfo-4.13a-powerpc.patch             |   12
>    meta/recipes-extended/texinfo/texinfo_4.13a.bb                                      |   57 +++

I am just reviewing the textinfo patch at this point and first comment 
is that you need to comment the patches, there is no information about 
their origin and why they are needed.

As we are adding a new recipe, is this based on the existing 
OpenEmbedded recipe and if so, you need to credit OE.  I noticed in OE 
that they have a different set of depends and patches, so I wanted to 
verify this.

Minor nit: for SRC_URI, you could use ${PN} as follows:
    http://ftp.gnu.org/gnu/${PN}/${PN}-${PV}.tar.gz

Sau!




>    9 files changed, 327 insertions(+), 4 deletions(-)
>
> Jingdong Lu (2):
>         texinfo: Add new package
>         Fix adding GDBM_File module for LSB test.
>
> Pull URL:
> http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=jingdonglu/distro
>


