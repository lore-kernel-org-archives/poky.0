Return-Path: <scott.a.garman@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id E4B2C4C811BC
	for <poky@yoctoproject.org>; Fri, 12 Nov 2010 13:05:39 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 12 Nov 2010 11:05:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,188,1288594800"; d="scan'208";a="348058369"
Received: from rrsmsx603.amr.corp.intel.com ([10.31.0.57])
	by azsmga001.ch.intel.com with ESMTP; 12 Nov 2010 11:05:38 -0800
Received: from [10.255.13.72] (10.255.13.72) by rrsmsx603.amr.corp.intel.com
	(10.31.0.57) with Microsoft SMTP Server (TLS) id 8.2.254.0;
	Fri, 12 Nov 2010 12:05:36 -0700
Message-ID: <4CDD8FFF.6090707@intel.com>
Date: Fri, 12 Nov 2010 11:05:35 -0800
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.12) Gecko/20101027 Lightning/1.0b2 Thunderbird/3.1.6
MIME-Version: 1.0
To: <poky@yoctoproject.org>
References: <AANLkTinE-MSLQ4FGC-2QA3QyNpmxKtdJAPET67bRkyHM@mail.gmail.com>
In-Reply-To: <AANLkTinE-MSLQ4FGC-2QA3QyNpmxKtdJAPET67bRkyHM@mail.gmail.com>
Subject: Re: newbie recipe question
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
X-List-Received-Date: Fri, 12 Nov 2010 19:05:40 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11/12/2010 08:49 AM, Marc wrote:
> Hello, I'm a newbie in creating recipes for poky and I'm running through
> a series of problems.
> I'm trying to make a recipe in order to build an ipk package containing
> a series of webpages and scripts, I have them at a subversion repository.
> For now it works simply by pointing at the svn repository and specifiing
> at do_install every directories files to their destination. like this:
> =======================================================================
> SRCREV = "${AUTOREV}"
> PR = "${SRCREV}"
>
> SRC_URI = "svn://server/svn/;module=webpackage;proto=http "
>
> S = "${WORKDIR}"
>
> do_install(){
> install -m 0755 -d ${D}/etc/
> install -m 0755 -d ${D}/www/
> install -m 0755 -d ${D}/www/images
> install -m 0755 -d ${D}/www/cgi-bin
> install -m 0755 -d ${D}/www/includes
> install -m 0755 ${S}/*.htm${D}/www/
> install -m 0755 ${S}/*.css${D}/www/
> install -m 0755 ${S}/includes/* ${D}/www/includes/
> install -m 0755 ${S}/cgi-bin/* ${D}/www/cgi-bin/
> install -m 0755 ${S}/images/* ${D}/www/images/
>
> }
> =================================================================
>
> Is there any other way to do this without having to specify the whole
> subdirectory structure and every file extension? ( * is not working)
> Since I'm adding and deleting files to my repository pretty frequently I
> don't wan't having to modify the recipe each time.

I haven't tested this locally, but I believe file globbing is supposed 
to work. Have you tried *.*?

Scott

-- 
Scott Garman
Embedded Linux Distro Engineer - Yocto Project

