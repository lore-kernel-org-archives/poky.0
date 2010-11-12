Return-Path: <dvhart@linux.intel.com>
Received: from pug.o-hand.com (3a.49.1343.static.theplanet.com [67.19.73.58])
	by mx1.pokylinux.org (Postfix) with ESMTP id DA67E4C8108C
	for <poky@lists.pokylinux.org>; Fri, 12 Nov 2010 11:52:07 -0600 (CST)
Received: by pug.o-hand.com (Postfix)
	id D700812EC3D2; Fri, 12 Nov 2010 12:28:52 -0600 (CST)
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by pug.o-hand.com (Postfix) with ESMTP id A8C6F12EC117
	for <poky@o-hand.com>; Fri, 12 Nov 2010 12:28:52 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 12 Nov 2010 09:52:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,188,1288594800"; d="scan'208";a="348029401"
Received: from doubt.jf.intel.com (HELO [10.24.141.45]) ([10.24.141.45])
	by azsmga001.ch.intel.com with ESMTP; 12 Nov 2010 09:52:06 -0800
Message-ID: <4CDD7EC6.6050804@linux.intel.com>
Date: Fri, 12 Nov 2010 09:52:06 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.12) Gecko/20101027 Lightning/1.0b2 Thunderbird/3.1.6
MIME-Version: 1.0
To: Marc <mbalcells@gmail.com>
References: <AANLkTinE-MSLQ4FGC-2QA3QyNpmxKtdJAPET67bRkyHM@mail.gmail.com>
In-Reply-To: <AANLkTinE-MSLQ4FGC-2QA3QyNpmxKtdJAPET67bRkyHM@mail.gmail.com>
Cc: poky@o-hand.com
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
X-List-Received-Date: Fri, 12 Nov 2010 17:52:08 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
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
>

I'm no expert on this aspect of the build, but one option would be to 
use autotools to have a "make install" target and the poky recipe could 
use that. Alternatively I don't see any reason why you couldn't write an 
install script as part of your repository and just have do_install() 
call that.

You're right, you don't want to have much in the way of install logic in 
the recipe.

-- 
Darren Hart
Yocto Linux Kernel

