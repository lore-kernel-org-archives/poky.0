Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 87E4AE00C1E; Tue, 28 Jun 2016 03:09:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 450F2E00B5F
	for <poky@yoctoproject.org>; Tue, 28 Jun 2016 03:09:05 -0700 (PDT)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id BED1B68A01D; Tue, 28 Jun 2016 11:09:04 +0100 (BST)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id 19B4C68A019;
	Tue, 28 Jun 2016 11:09:04 +0100 (BST)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id D32466740073;
	Tue, 28 Jun 2016 12:09:03 +0200 (CEST)
To: poky@yoctoproject.org
References: <5772497B.3080701@lemaker.org>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <57724CBF.1010505@mlbassoc.com>
Date: Tue, 28 Jun 2016 12:09:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.8.0
MIME-Version: 1.0
In-Reply-To: <5772497B.3080701@lemaker.org>
Subject: Re: how to set u-boot in meta-machine
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
X-List-Received-Date: Tue, 28 Jun 2016 10:09:09 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2016-06-28 11:55, tab wrote:
> Hi,
> I'm going to build a linux distro for LeMaker Guitar with yocto project and I've meet some problems, hope you can help me:
>   I refer this page(http://www.yoctoproject.org/docs/2.1/bsp-guide/bsp-guide.html) to build a layer named 'meta-guitar'
> with a custom
> kernel source (https://github.com/LeMaker/linux-actions).
> It seems nothing wrong during the building time and i get a 'meta-guitar' successfuly.
> But when i try to build a image with `bitbake core-image-minimal` i get a error:
>
> ERROR: u-boot-v2016.03+gitAUTOINC+df61a74e68-r0 do_compile: oe_runmake failed
> ERROR: u-boot-v2016.03+gitAUTOINC+df61a74e68-r0 do_compile: Function failed: do_compile (log file is located at
> /home/tab/work/yocto/build/guitar/tmp/work/guitar-poky-linux-gnueabi/u-boot/v2016.03+gitAUTOINC+df61a74e68-r0/temp/log.do_compi
> le.16108)
>
> and the logfile says: Configuration file ".config" not found.
>
> It seems that I need to do something with the u-boot while building the meta-guitar?
> But there's no more info about the u-boot while I'm building meta-guitar, such as the path of the u-boot source file?
>   How can i solve this problem?
>   Hope for your help.
>
> Tab Liu

Try looking at some of the <MACHINE>.conf files in meta-fsl-arm
where you should be able to see how to set up the U-Boot build.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

