Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9BBF0E00A21; Thu, 10 Nov 2016 07:45:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F018FE00924
	for <poky@yoctoproject.org>; Thu, 10 Nov 2016 07:45:26 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id uAAFjOY5029593
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Thu, 10 Nov 2016 07:45:24 -0800
Received: from [128.224.56.48] (128.224.56.48) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.294.0;
	Thu, 10 Nov 2016 07:45:23 -0800
To: ali raza <aliraza.1766@gmail.com>, <kexin.hao@windriver.com>,
	<poky@yoctoproject.org>
References: <CANGmBbe4EcAZ+3nvN7ZVVqxHC=wq+dEFUwU5_jb0uWDnj1FKyA@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <adefbe8b-a39b-2c37-3442-97410415dec8@windriver.com>
Date: Thu, 10 Nov 2016 10:45:22 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <CANGmBbe4EcAZ+3nvN7ZVVqxHC=wq+dEFUwU5_jb0uWDnj1FKyA@mail.gmail.com>
Subject: Re: Help/question regarding Building the Yocto GENIVI Baseline hardware image for imx6qsabrelite
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
X-List-Received-Date: Thu, 10 Nov 2016 15:45:31 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 2016-11-10 10:31 AM, ali raza wrote:
> Hi,
>
> I am trying to build Yocto GENIVI Baseline hardware for imx6qsabrelite
> and I am stuck at one point for which I need little help. I will
> appreciate if someone can guide me in the right direction.
>
> I can begin by showing what I have done so far.
>
> The hardware that I have is: *NXP SABRE LITE
> *
> https://www.element14.com/community/docs/DOC-49013?ICID=designcenter-sabre-space
>
> I am following the blog by Christian but had changed to version numbers
> recommended but git hub meta-ivi,
>
> https://github.com/GENIVI/meta-ivi:
> https://www.jann.cc/2014/12/18/building_the_yocto_genivi_baseline.html#id2
>
> So here are the steps I did:
>
> aliraza@aliraza-VirtualBox:~/genivi-baseline$ git clone git://git.yoctoproject.org/poky <http://git.yoctoproject.org/poky>
> aliraza@aliraza-VirtualBox:~/genivi-baseline$ cd poky
> aliraza@aliraza-VirtualBox:~/genivi-baseline/poky$ git checkout aad7166704021d82ad3a5ec468552f8f10360d41; cd -
> aliraza@aliraza-VirtualBox:~/genivi-baseline$ git clone git://git.openembedded.org/meta-openembedded
> <http://git.openembedded.org/meta-openembedded> cd -
> aliraza@aliraza-VirtualBox:~/genivi-baseline$ cd meta-openembedded/
> aliraza@aliraza-VirtualBox:~/genivi-baseline/meta-openembedded$ git checkout 247b1267bbe95719cd4877d2d3cfbaf2a2f4865a
> aliraza@aliraza-VirtualBox:~/genivi-baseline/meta-openembedded$ cd ..
> aliraza@aliraza-VirtualBox:~/genivi-baseline$ git clone git://git.yoctoproject.org/meta-ivi <http://git.yoctoproject.org/meta-ivi>
> aliraza@aliraza-VirtualBox:~/genivi-baseline/meta-openembedded$ cd ..
> aliraza@aliraza-VirtualBox:~/genivi-baseline$ git clone git://git.yoctoproject.org/meta-ivi <http://git.yoctoproject.org/meta-ivi>
> aliraza@aliraza-VirtualBox:~/genivi-baseline$ echo $TEMPLATECONF
> /home/aliraza/genivi-baseline/meta-ivi/meta-ivi/conf
>
> aliraza@aliraza-VirtualBox:~/genivi-baseline$ source poky/oe-init-build-env
> aliraza@aliraza-VirtualBox:~/genivi-baseline/build/conf$ gedit local.conf
>
> and from this page added:
> https://community.nxp.com/docs/DOC-1616#jive_content_id_iMX6_Sabre_Lite_Board_
>
> Edit conf/local.conf user config file and set i.MX6 Sabrelite board machine and enable parallel build features
> MACHINE ?= "imx6qsabrelite"
> BB_NUMBER_THREADS = "4"
> PARALLEL_MAKE = "-j 4"
>
>
> aliraza@aliraza-VirtualBox:~/genivi-baseline/build$ bitbake miranda-image
> ERROR: OE-core's config sanity checker detected a potential
> misconfiguration.
> Either fix the cause of this error or at your own risk disable the
> checker (see sanity.conf).
> Following is the list of potential problems / advisories:
>
> Please set a valid MACHINE in your local.conf or environment
>
>
> Summary: There was 1 ERROR message shown, returning a non-zero exit code.
>
> Three questions:
>
> 1- Is it not possible to build for SABRE LITE??


Not with the layers that you are currently cloning. You also need to add
a layer that provides the BSP.

The layer index can provide information on what you need:

https://layers.openembedded.org/layerindex/branch/master/machines/?q=imx6qsabrelite

>
> in the README.hardware it says:
>   * Freescale MPC8315E-RDB (mpc8315e-rdb)
>
> 2- if I build for "mpc8315e-rdb", will that work for SABRE LITE board?

It won't. Since that BSP is specific to the 8315.

>
> 3- Am I missing something?

Yep, you need a BSP layer. I pointed to one above.

Bruce

>
>
> --
> Regards
> Ali Raza
>
>


