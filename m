Return-Path: <srinivasan.rns@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7D41CE00CDF; Thu, 17 Jan 2019 10:34:44 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (srinivasan.rns[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.47 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com
	[209.85.210.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 21EF1E00C91
	for <poky@yoctoproject.org>; Thu, 17 Jan 2019 10:34:42 -0800 (PST)
Received: by mail-ot1-f47.google.com with SMTP id n8so12026217otl.6
	for <poky@yoctoproject.org>; Thu, 17 Jan 2019 10:34:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=dhjlsWW9akaF0I8sr8udr3e59qZGq/SSpPR9Y2oSHAU=;
	b=H8WPA04OWuyzj2UmnyC0vKoFjVvKdTC+aVZ+/x2LbbgLrbyytwB8m39WNoalCKOcgM
	6HXnLImuFQgRJZsUbsk5Ldlz7HxG647GdFhmzlmnkRncd0DuI3EtafWASODtBBtvwxyb
	a23BDSd5nhZ3yvQDmYikAUf8OdCrR0AJyr5mpEECkiSf7Tvebc78UsvzaEZmdLD/TGQc
	rUxAQ496/gsQ8/LTjxottakT7aJcScX5hFTbPZvk4rD7IFqZL2ETEO8PeJA3OyRFa1DK
	dswLFPRZByGzfbZ+RsoYh5Bt+Z4gR6L3tleNQ6bU8R/ipeBtDs8OxvFvi1NZuEsmkcQn
	JWXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=dhjlsWW9akaF0I8sr8udr3e59qZGq/SSpPR9Y2oSHAU=;
	b=Sb7RNxsP9SbZfDjAiAT7OkZ6LHxNWNUhsyByaZosmtFa6YRflcswjksUeXKidz65An
	YOfjdY0kkxdj6uYdsUWyFuA9okIxcCS52ySw1B2BaXdlHCigzSV3vYIOx2NRgVZ/jCv9
	hXEmx4xHR63NvC8B6ezqPWwoniWYT/FgMRXKMevLgmBaZa1RARzNCWMbkFe5x39awUiT
	Pv7hL4hbxRDd60PsYyromro4Lys/xoOlzdsR679uufz9N+rfFijTtuZhkVNv7IZ6rOBQ
	XX6lgfUPQFJjBGfnQUpbkTarDz2tk7SydgVeqwspiUWmdSHR84r8Lnci3GR1wWSJoWIp
	h3MQ==
X-Gm-Message-State: AJcUukdOeOvRpLunDeopGmbRn6ICTEotqhAc3XkKqpW0guLw8+cDMxxi
	UeVMJxRiLeWCozlzoy2W4ihUT04Txy5B/ogjsbAHgNeN
X-Google-Smtp-Source: ALg8bN636o9NW8V9et0WVIQVMmFp1sphlxiougWp3Qz46doP6DTfPNYvACYEAZuntB2bwBgDiFo2ai9dbMWsVTKTVH8=
X-Received: by 2002:a9d:58cb:: with SMTP id s11mr9293257oth.161.1547750082073; 
	Thu, 17 Jan 2019 10:34:42 -0800 (PST)
MIME-Version: 1.0
References: <CAFsTbWc_XoCN-99LXeCL1R-m0+jXGmO7DgOb-94y7a3L3ODN7Q@mail.gmail.com>
	<1352415c490c46838b4e19205a85ca4c@XBOX04.axis.com>
	<CAFsTbWfEMnd4adtexbb=+R0xeCtMEfUJFmiqa6x70AtQ5aFQMQ@mail.gmail.com>
	<80a5da9d680b4ae7ba8a5d98656b7926@XBOX04.axis.com>
	<CAFsTbWcd4UWU5bY03mmmvPQpyKqp+3SnjpGNn4iGS3nvRkJo2A@mail.gmail.com>
	<CAFsTbWdZANf2rcc3FbT46L13Gv8__CyThf0z8eotzvm0kfNdyg@mail.gmail.com>
In-Reply-To: <CAFsTbWdZANf2rcc3FbT46L13Gv8__CyThf0z8eotzvm0kfNdyg@mail.gmail.com>
From: srinivasan <srinivasan.rns@gmail.com>
Date: Thu, 17 Jan 2019 19:34:30 +0100
Message-ID: <CAFsTbWfcqNXKgxVVe5NXYwZD=+isvZ-LaGd=MTonbVWHcdE8vw@mail.gmail.com>
To: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: Error: base-files/3.0.14-r89/temp/run.do_install.80432: Syntax error: Unterminated quoted string
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
X-List-Received-Date: Thu, 17 Jan 2019 18:34:44 -0000
Content-Type: text/plain; charset="UTF-8"

Hi Peter,

Could you please help me with your inputs, or please let me know if
any other information is required from my side please?

Thanks in advance


On Thu, Jan 17, 2019 at 1:54 PM srinivasan <srinivasan.rns@gmail.com> wrote:
>
> Hi Peter,
>
> Could you please let me know if any other information is needed from my side?
>
> Many Thanks in advance
>
> On Thu, Jan 17, 2019 at 11:56 AM srinivasan <srinivasan.rns@gmail.com> wrote:
>>
>> Many Thanks a lot Peter for your quick responses , I have attached the sources.zip folder plus the log files now, for the errors that I am facing now, kindly do the needful
>>
>>
>>
>>
>> Many Thanks in advance,
>>  test.zip
>>
>> On Thu, Jan 17, 2019 at 10:51 AM Peter Kjellerstedt <peter.kjellerstedt@axis.com> wrote:
>>>
>>> Unless you have made changes to base-files_3.0.14.bb (which I seriously doubt), that is not the file we need. We need the file called:
>>>
>>> /home/srinishanmugam/customBuild_test_rpi/custom/buid_test3_customtrk_distro_imx8/tmp/work/imx8mmevk-poky-linux/base-files/3.0.14-r89/temp/run.do_install.80432
>>>
>>> That file is generated by bitbake and contains the actual shell code that was run when the error occurred. It should hopefully give us a clue as to what you should look for to find the actual mistake in your recipe files.
>>>
>>>
>>>
>>> //Peter
>>>
>>>
>>>
>>> From: srinivasan <srinivasan.rns@gmail.com>
>>> Sent: den 17 januari 2019 10:42
>>> To: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
>>> Cc: poky@yoctoproject.org
>>> Subject: Re: [poky] Error: base-files/3.0.14-r89/temp/run.do_install.80432: Syntax error: Unterminated quoted string
>>>
>>>
>>>
>>> Hi Peter,
>>>
>>>
>>>
>>> Thanks a lot for your quick responses and really appreciate it.
>>>
>>>
>>>
>>> Now I have attached both the error logs and base-files_3.0.14.bb, please let me know if you require any other information from my side
>>>
>>>
>>>
>>> Many Thanks in advance
>>>
>>>
>>>
>>> On Thu, Jan 17, 2019 at 10:20 AM Peter Kjellerstedt <peter.kjellerstedt@axis.com> wrote:
>>>
>>> [ Recipient list pruned to not cross-post to every Yocto related mailing
>>>   list out there... ]
>>>
>>> > -----Original Message-----
>>> > From: poky-bounces@yoctoproject.org <poky-bounces@yoctoproject.org> On
>>> > Behalf Of srinivasan
>>> > Sent: den 17 januari 2019 06:03
>>> > To: yocto-bsp@yoctoproject.org; yocto-builds@yoctoproject.org; meta-
>>> > intel@yoctoproject.org; Development list for the linux-yocto*.git Linux
>>> > kernel repositories <linux-yocto@yoctoproject.org>;
>>> > poky@yoctoproject.org; yocto-infrastructure@yoctoproject.org;
>>> > yocto@yoctoproject.org; meta-freescale@yoctoproject.org; meta-
>>> > freescale-request@yoctoproject.org
>>> > Subject: [poky] Error: base-files/3.0.14-r89/temp/run.do_install.80432:
>>> > Syntax error: Unterminated quoted string
>>> >
>>> > Dear Yocto Experts,
>>> >
>>> > I am trying to customize my vendor specific Yocto BSP's to my custom
>>> > OS.  I am facing the below error, could you please do the needful or
>>> > provide me some pointers from your end for solving this issue
>>> >
>>> > Error:
>>> > $ bitbake fsl-image-validation-imx
>>> > WARNING: Host distribution "ubuntu-18.04" has not been validated with
>>> > this version of the build system; you may possibly experience
>>> > unexpected failures. It is recommended that you use a tested
>>> > distribution.
>>> > Loading cache: 100%
>>> > |######################################################################
>>> > #######################################################################
>>> > #######################################################################
>>> > ###########################|
>>> > Time: 0:00:00
>>> > Loaded 3196 entries from dependency cache.
>>> > Parsing recipes: 100%
>>> > |######################################################################
>>> > #######################################################################
>>> > #######################################################################
>>> > #########################|
>>> > Time: 0:00:02
>>> > Parsing of 2298 .bb files complete (2284 cached, 14 parsed). 3202
>>> > targets, 398 skipped, 6 masked, 0 errors.
>>> > NOTE: Resolving any missing task queue dependencies
>>> >
>>> > Build Configuration:
>>> > BB_VERSION           = "1.38.0"
>>> > BUILD_SYS            = "x86_64-linux"
>>> > NATIVELSBSTRING      = "universal"
>>> > TARGET_SYS           = "aarch64-poky-linux"
>>> > MACHINE              = "imx8mmevk"
>>> > DISTRO               = "custom-TRK"
>>> > DISTRO_VERSION       = "${custom_DISTRO_VERSION}"
>>> > TUNE_FEATURES        = "aarch64"
>>> > TARGET_FPU           = ""
>>> > meta-traktor-imx8    = "sumo:4b25c1ee6896b5447f8502f13c28570341505360"
>>> > meta-traktor         = "sumo:818be7ec4f768ba485e437dc26beb7bdc4b8120a"
>>> > meta-qt5             = "qt-
>>> > 5.11:ff6127ddd318d422f595295d1c189a86b3032873"
>>> > meta-custom        = "sumo:d98452914e201d46a6b1360ca957d9b3e396b31f"
>>> > meta-freescale       = "HEAD:1deea6b4a2f83521ff247ea4743d09cc705ecd8e"
>>> > meta
>>> > meta-poky            = "sumo:623b77885051174d0e05198843e739110977bd18"
>>> > meta-oe
>>> > meta-python
>>> > meta-networking      = "sumo:8760facba1bceb299b3613b8955621ddaa3d4c3f"
>>> > meta-bsp
>>> > meta-sdk             = "HEAD:1de93d3d5128b8422c23a87cb8b54149e2bfb942"
>>> >
>>> > Initialising tasks: 100%
>>> > |######################################################################
>>> > #######################################################################
>>> > #######################################################################
>>> > ######################|
>>> > Time: 0:00:02
>>> > NOTE: Executing SetScene Tasks
>>> > NOTE: Executing RunQueue Tasks
>>> > ERROR: base-files-3.0.14-r89 do_install: Function failed: do_install
>>> > (log file is located at
>>> > /home/srinishanmugam/customBuild_test_rpi/custom/buid_test3_customtrk_d
>>> > istro_imx8/tmp/work/imx8mmevk-poky-linux/base-files/3.0.14-
>>> > r89/temp/log.do_install.80432)
>>> > ERROR: Logfile of failure stored in:
>>> > /home/srinishanmugam/customBuild_test_rpi/custom/buid_test3_customtrk_d
>>> > istro_imx8/tmp/work/imx8mmevk-poky-linux/base-files/3.0.14-
>>> > r89/temp/log.do_install.80432
>>> > Log data follows:
>>> > | DEBUG: Executing python function extend_recipe_sysroot
>>> > | NOTE: Direct dependencies are
>>> > ['/home/srinishanmugam/customBuild_test_rpi/custom/sources/poky/meta/re
>>> > cipes-devtools/quilt/quilt-native_0.65.bb:do_populate_sysroot',
>>> > 'virtual:native:/home/srinishanmugam/customBuild_test_rpi/custom/source
>>> > s/poky/meta/recipes-devtools/pseudo/pseudo_git.bb:do_populate_sysroot']
>>> > | NOTE: Installed into sysroot: []
>>> > | NOTE: Skipping as already exists in sysroot: ['quilt-native',
>>> > 'pseudo-native']
>>> > | DEBUG: Python function extend_recipe_sysroot finished
>>> > | DEBUG: Executing shell function do_install
>>> > |
>>> > /home/srinishanmugam/customBuild_test_rpi/custom/buid_test3_customtrk_d
>>> > istro_imx8/tmp/work/imx8mmevk-poky-linux/base-files/3.0.14-
>>> > r89/temp/run.do_install.80432:
>>> > 176:
>>> > /home/srinishanmugam/customBuild_test_rpi/custom/buid_test3_customtrk_d
>>> > istro_imx8/tmp/work/imx8mmevk-poky-linux/base-files/3.0.14-
>>> > r89/temp/run.do_install.80432:
>>> > Syntax error: Unterminated quoted string
>>> > | WARNING: exit code 2 from a shell command.
>>> > | ERROR: Function failed: do_install (log file is located at
>>> > /home/srinishanmugam/customBuild_test_rpi/custom/buid_test3_customtrk_d
>>> > istro_imx8/tmp/work/imx8mmevk-poky-linux/base-files/3.0.14-
>>> > r89/temp/log.do_install.80432)
>>> > ERROR: Task
>>> > (/home/srinishanmugam/customBuild_test_rpi/custom/sources/poky/meta/rec
>>> > ipes-core/base-files/base-files_3.0.14.bb:do_install)
>>> > failed with exit code '1'
>>> > NOTE: Tasks Summary: Attempted 1256 tasks of which 1204 didn't need to
>>> > be rerun and 1 failed.
>>> >
>>> > Summary: 1 task failed:
>>> >
>>> > /home/srinishanmugam/customBuild_test_rpi/custom/sources/poky/meta/reci
>>> > pes-core/base-files/base-files_3.0.14.bb:do_install
>>> > Summary: There was 1 WARNING message shown.
>>> > Summary: There was 1 ERROR message shown, returning a non-zero exit
>>> > code.
>>> > srinishanmugam@ni-bln-
>>> > 07594:~/customBuild_test_rpi/custom/buid_test3_customtrk_distro_imx8$
>>> >
>>> >
>>> > Kindly do the needful,
>>> > Many Thanks in advance
>>>
>>> Have you looked at the contents of
>>> /home/srinishanmugam/customBuild_test_rpi/custom/buid_test3_customtrk_distro_imx8/tmp/work/imx8mmevk-poky-linux/base-files/3.0.14-r89/temp/run.do_install.80432
>>> to try to determine what caused the erroneous syntax? Otherwise do that,
>>> and if you still cannot tell what causes the problem, please attach the
>>> file for us to look at.
>>>
>>> //Peter

