Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id D6D024C80044
	for <poky@pokylinux.org>; Mon,  1 Nov 2010 14:32:11 -0500 (CDT)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oA1JWBdr005262
	for <poky@pokylinux.org>; Mon, 1 Nov 2010 12:32:11 -0700 (PDT)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Mon, 1 Nov 2010 12:32:10 -0700
Received: from Macintosh-5.local ([172.25.36.227]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Mon, 1 Nov 2010 12:32:10 -0700
Message-ID: <4CCF15BA.6070108@windriver.com>
Date: Mon, 01 Nov 2010 14:32:10 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.12) Gecko/20101027 Thunderbird/3.1.6
MIME-Version: 1.0
To: poky@pokylinux.org
References: <4CCE94E0.50903@windriver.com>
In-Reply-To: <4CCE94E0.50903@windriver.com>
X-OriginalArrivalTime: 01 Nov 2010 19:32:11.0326 (UTC)
	FILETIME=[7ABEADE0:01CB79FB]
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
X-List-Received-Date: Mon, 01 Nov 2010 19:32:12 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I've been doing some thinking about how various perl and related components 
should be implemented if they do potentially optional things.

My concern is that by adding gdbm to the build, that other components will 
change and potentially require more disk space.  We really need a way to 
optionally use gdbm, if available in these configurations.  I'm really not sure 
if there is currently a way to tell bitbake:

I really want gdbm, but if nothing else wants it.. I don't want it.  Then for 
LSB specific builds, we manually require gdbm as an LSB requirement (due to the 
gdbm perl module requirements.)

Richard, any suggestions on how to work with this?

--Mark

On 11/1/10 5:22 AM, Lu Jingdong wrote:
> Note:<commit_id>  parameter assumed as 'HEAD'
>
>    meta/recipes-devtools/perl/perl-5.8.8/config.sh                                     |    8
>    meta/recipes-devtools/perl/perl-5.8.8/perl-enable-gdbm.patch                        |   17 +
>    meta/recipes-devtools/perl/perl_5.8.8.bb                                            |    2
>
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


