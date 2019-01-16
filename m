Return-Path: <Randy.MacLeod@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 75F31E00C6D; Wed, 16 Jan 2019 08:39:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4DEE9E0053F
	for <poky@yoctoproject.org>; Wed, 16 Jan 2019 08:39:03 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x0GGcFML010535
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 16 Jan 2019 08:38:30 -0800
Received: from [128.224.56.218] (128.224.56.218) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.408.0;
	Wed, 16 Jan 2019 08:38:16 -0800
From: Randy MacLeod <randy.macleod@windriver.com>
To: Aditya Tayade <Aditya.Tayade@kpit.com>, "poky@yoctoproject.org"
	<poky@yoctoproject.org>
References: <BM1PR0101MB170066F2CE87FD5FA7CE641D91820@BM1PR0101MB1700.INDPRD01.PROD.OUTLOOK.COM>
Message-ID: <107596e1-ad81-0267-3566-dd2e2f85b359@windriver.com>
Date: Wed, 16 Jan 2019 11:38:03 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.2.1
MIME-Version: 1.0
In-Reply-To: <BM1PR0101MB170066F2CE87FD5FA7CE641D91820@BM1PR0101MB1700.INDPRD01.PROD.OUTLOOK.COM>
X-Originating-IP: [128.224.56.218]
Subject: Re: [tiff] Issue in do_package_qa: found library in wrong location
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 16 Jan 2019 16:39:04 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-GB

On 1/15/19 9:52 PM, Aditya Tayade wrote:
> Can any one help to resolve below issues
> ERROR: tiff-4.0.9-r0 do_package_qa: QA Issue: non -dev/-dbg/nativesdk- 
> package contains symlink .so: tiff-mytest path 
> '/work/pathto/tiff/4.0.9-r0/packages-split/tiff-mytest/usr/share/tiff/mytest/libtiff/.libs/libtiff.so'
> non -dev/-dbg/nativesdk- package contains symlink .so: tiff-mytest 
> path 
> '/work/pathto/tiff/4.0.9-r0/packages-split/mytest/usr/share/tiff/mytest/libtiff/.libs/libtiffxx.so' 
> [dev-so]
> ERROR: tiff-4.0.9-r0 do_package_qa: QA Issue: non -staticdev package 
> contains static .a library: tiff-mytest path 
> '/work/pathto/tiff/4.0.9-r0/packages-split/tiff-mytest/usr/share/tiff/mytest/port/.libs/libport.a'
> non -staticdev package contains static .a library: tiff-mytest path 
> '/work/pathto/tiff/4.0.9-r0/packages-split/tiff-mytest/usr/share/tiff/mytest/port/.libs/libport.a' 
> [staticdev]
>
As you probably appreciate, the QA check is complaining that you have:

  .so symlink  in a non -dev/-dbg/nativesdk- package

  .a file in a non -staticdev package


What release are you seeing this in?

Can you reproduce it with just the oe-core layer? (using the master branch?)


With a Windriver distro, based on something close to master/head:

    ccb638d446 libassuan: update to 2.5.2

I don't see either problem:

$ grep symlink 
tmp-glibc/work/core2-64-wrs-linux/tiff/4.0.10-r0/temp/log.do_package_qa
$ grep "contains static" 
tmp-glibc/work/core2-64-wrs-linux/tiff/4.0.10-r0/temp/log.do_package_qa
$

../Randy

>
> Regards,
> Aditya Tayade


-- 
# Randy MacLeod
# Wind River Linux


