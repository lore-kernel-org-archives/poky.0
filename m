Return-Path: <Jingdong.Lu@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 373C74C811F6
	for <poky@pokylinux.org>; Tue, 23 Nov 2010 23:03:55 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oAO53rb2008706;
	Tue, 23 Nov 2010 21:03:54 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Tue, 23 Nov 2010 21:03:53 -0800
Received: from [128.224.162.176] ([128.224.162.176]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Tue, 23 Nov 2010 21:03:53 -0800
From: Lu Jingdong <jingdong.lu@windriver.com>
To: Saul Wold <saul.wold@intel.com>
In-Reply-To: <4CEAB2F0.2030700@intel.com>
References: <4CCE94E0.50903@windriver.com>  <4CEAB2F0.2030700@intel.com>
Date: Wed, 24 Nov 2010 13:05:25 +0800
Message-ID: <1290575125.1858.99.camel@eric-desktop>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-OriginalArrivalTime: 24 Nov 2010 05:03:53.0642 (UTC)
	FILETIME=[FD9B38A0:01CB8B94]
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
X-List-Received-Date: Wed, 24 Nov 2010 05:03:55 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2010-11-22 at 10:14 -0800, Saul Wold wrote:
> On 11/01/2010 03:22 AM, Lu Jingdong wrote:
> > Note:<commit_id>  parameter assumed as 'HEAD'
> >
> >    meta/recipes-devtools/perl/perl-5.8.8/config.sh                                     |    8
> >    meta/recipes-devtools/perl/perl-5.8.8/perl-enable-gdbm.patch                        |   17 +
> >    meta/recipes-devtools/perl/perl_5.8.8.bb                                            |    2
> >
> Jingdong,
> 
> We have not forgotten about your changes, we are trying to determine the 
> impact of the changes you are suggesting.  Can you please let us know 
> what the size difference would of perl by adding this change?  Is it 
> just a simple perl module?  What additional dependencies occur when you 
> add this patch and their impact on size.
> 
> Sau!

Saul,
I think there is less influence on perl by enabling gdbm except that we
get a dynamic extend module. We compiled perl with gdbm enabled, we can
get "perl-module-gdbm-file" package and it provides the following files:
/usr/lib/perl/5.8.8/GDBM_File.pm
/usr/lib/perl/5.8.8/auto
/usr/lib/perl/5.8.8/auto/GDBM_File
/usr/lib/perl/5.8.8/auto/GDBM_File/GDBM_File.bs
/usr/lib/perl/5.8.8/auto/GDBM_File/GDBM_File.so

I add dependency of perl "+DEPENDS += "gdbm", because compiling gdbm
module of perl needs the "gdbm.h" provided by gdbm-dev.

-- 
Lu Jingdong
jingdong.lu@windriver.com
China, Wind River


