Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 55E4C4C80A7E
	for <poky@yoctoproject.org>; Tue,  1 Mar 2011 10:05:11 -0600 (CST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p21G58SV012460
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 1 Mar 2011 08:05:08 -0800 (PST)
Received: from Macintosh-5.local (172.25.36.227) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Tue, 1 Mar 2011 08:05:07 -0800
Message-ID: <4D6D192E.6090801@windriver.com>
Date: Tue, 1 Mar 2011 10:05:02 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.13) Gecko/20101207 Thunderbird/3.1.7
MIME-Version: 1.0
To: v sailaja <vsailub4u@gmail.com>
References: <AANLkTi=CVPBSLQ_8345OrL_YKde=Mf3bqrxRZru75vSR@mail.gmail.com>
In-Reply-To: <AANLkTi=CVPBSLQ_8345OrL_YKde=Mf3bqrxRZru75vSR@mail.gmail.com>
X-Originating-IP: [172.25.36.227]
Cc: poky@yoctoproject.org
Subject: Re: got error while trying to pull the krb5 package into poky
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
X-List-Received-Date: Tue, 01 Mar 2011 16:05:11 -0000
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: 8bit

On 3/1/11 4:45 AM, v sailaja wrote:
> Hi,
> 
> I tried with the following
>                       
> 
>               bitbake krb5  -c cleanall  
>               bitbake krb5
> But again I am getting the same error and krb5 rpm file is not generated at 
> tmp/deploy/rpm.
> 
> 
>  The value is
> 
> *PACKAGE_CLASSES ?= "package_rpm package_ipk"*
> 
> *
> error:*
>  Generating solve db for /home/sailaja/poky-chrome/build/tmp/deploy/rpm/atom-pc...
> |    total:               1      0.000000 MB      0.871674 secs
> |    order:               1      0.000000 MB      0.090471 secs
> |    fingerprint:       537      0.007286 MB      0.081155 secs
> |    install:           278      0.000000 MB      0.179576 secs
> |    dbadd:             278      0.000000 MB      0.081411 secs
> |    dbget:            8678      1.128312 MB      0.016757 secs
> |    dbput:            5035      2.213572 MB      0.020290 secs
> |    readhdr:          2781      2.267168 MB      0.206626 secs
> |    hdrload:        194461    256.103876 MB      1.118980 secs
> |    hdrget:        3861605      0.000000 MB      6.181097 secs
> | *Processing krb5...
> | Unable to find package krb5!
> | ERROR: Task failed: ('function do_rootfs failed',

The error may not be completely clear, but this means that there is no package
in tmp/deploy/rpm/* called "krb5".  In otherwords, there is a package
requirement that is not being met.

Figure out where the requirement is coming from and that will lead you toward a
possible cause.

rpm --qf "[%{NAME} %{REQUIRES}\n]" -qp <packages>

That will list the name of the package, followed by a requirement.  This should
allow you to figure out what is requiring krb5..

--Mark

> '/home/sailaja/poky-chrome/build/tmp/work/atom-pc-poky-linux/poky-image-minimal-akshat-1.0-r0/temp/log.do_rootfs.9313')
> NOTE: package poky-image-minimal-akshat-1.0-r0: task do_rootfs: Failed*
> ERROR: Task 179
> (/home/sailaja/poky-chrome/meta/recipes-core/images/poky-image-minimal-akshat.bb
> <http://poky-image-minimal-akshat.bb/>, do_rootfs) failed with 1
> ERROR:
> '/home/sailaja/poky-chrome/meta/recipes-core/images/poky-image-minimal-akshat.bb
> <http://poky-image-minimal-akshat.bb/>' failed
> 
> 
> 
> Please help me in finding the solution.
> Any help  would be greatly apprecited.
> 
> Thanks & Regards,
> SAI
> 
> 
> 
> 
> 
> 
> 
> 
>     Hi SAI,
> 
>      
> 
>     Please try the following to rebuild the krb5 to see if the rpm is generated:
> 
>      
> 
>     -          bitbake krb5  -c cleanall
> 
>     -          bitbake krb5
> 
>      
> 
>     This should generate the rpm file under the directory of “tmp/deploy/rpm”.
> 
>      
> 
>     b.t.w. what’s the value set to the variable PACKAGE_CLASSES in your
>     conf/local.conf?
> 
>      
> 
>     Best Regards,
> 
>     Lianhao Lu
> 
> 
> 
> 
> 
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


