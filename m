Return-Path: <srinivasan.rns@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 95AD4E00C91; Fri, 18 Jan 2019 07:59:00 -0800 (PST)
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
	*      [209.85.167.182 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-oi1-f182.google.com (mail-oi1-f182.google.com
	[209.85.167.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6CC16E00C77
	for <poky@yoctoproject.org>; Fri, 18 Jan 2019 07:58:58 -0800 (PST)
Received: by mail-oi1-f182.google.com with SMTP id x23so9330267oix.3
	for <poky@yoctoproject.org>; Fri, 18 Jan 2019 07:58:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=9msVcU9ex4aqx95S0Vz2jS4Jh2UOBlYME89bSwNEcr0=;
	b=I7G3J7Vrvhvm5eE0GuJ6nHpbWA3aYnFZmFWM/+NpygSYLpIPIVm/8iofHvulXZw/P9
	tz19jEKEKpp24Tdtr5XA0pxnZw+FtIVeyAir2zCFuPcumklulrLsyeTVU6uNEMkIIIg4
	Ei25plnvGfHF+Y41MQi9CvKddLsyKYfR1aUkNa7OCTT4LyYt+e10eWWCFIGBpWqm6vnu
	JG0UfhWz0mIth71014kUkSgZ4WbMzj0e2M0mr8hnbQn9m51Z1hoazVCHvibshnoS/02D
	V3j1SM1u4NEEPigQlfdT6+HiE/ndpfEmQ9XdtJun/VAjlzkRztH2QQ6PJLuPBJvbFZpe
	VNZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=9msVcU9ex4aqx95S0Vz2jS4Jh2UOBlYME89bSwNEcr0=;
	b=VW5oZR8MOiyjn05iM+uUfGFtWX32Xq+eeytbwnx+yaIgZ+0fC780UXYylnmwHrjsYB
	pFmaO3bxH8M8z5WscMzWpghw9ugna2Nip01p6lD9sdTEoA87dg8t5hDHcT40RgjLDI0l
	OvWiPjRQ0+Cu2UB/u04W1uCQNjWlD8ryik9N5SMO865mPBSQJdPAZTv3TTVqkgD8Y6Nl
	hW/+Rr29E11MG6CaN5VuqcU2zxIlB74xB1kdbd3NyVZgT04dC+xuXOiqwKEZtHK7+cz3
	cjpaOqD8/Q8miGkkvxolQMlVGh/nqsLHqJu4MBFjR25iNvJfkCpQvYivNIJU5wYHHN4D
	y0ww==
X-Gm-Message-State: AJcUukfYZ7q9oFpiHlIEfE8+j2ub5j1eN5hJXG6f5Wyap59J3KCX1o1o
	nj7MNCfoAuoR4hqgGnBm5tpJeQFkCmK40XWwCvn2stky
X-Google-Smtp-Source: ALg8bN5362lwgvAwgvVHXLeIrtz6g9BDnhddUJpG00BUl0eEzC3HHXSZvKytPvEbcddla3NFGmrIE/Pt5KiezhRdJmI=
X-Received: by 2002:aca:ad53:: with SMTP id w80mr566983oie.148.1547827136946; 
	Fri, 18 Jan 2019 07:58:56 -0800 (PST)
MIME-Version: 1.0
References: <CAFsTbWc_XoCN-99LXeCL1R-m0+jXGmO7DgOb-94y7a3L3ODN7Q@mail.gmail.com>
	<1352415c490c46838b4e19205a85ca4c@XBOX04.axis.com>
	<CAFsTbWfEMnd4adtexbb=+R0xeCtMEfUJFmiqa6x70AtQ5aFQMQ@mail.gmail.com>
	<80a5da9d680b4ae7ba8a5d98656b7926@XBOX04.axis.com>
	<CAFsTbWcd4UWU5bY03mmmvPQpyKqp+3SnjpGNn4iGS3nvRkJo2A@mail.gmail.com>
	<CAFsTbWdZANf2rcc3FbT46L13Gv8__CyThf0z8eotzvm0kfNdyg@mail.gmail.com>
	<CAFsTbWfcqNXKgxVVe5NXYwZD=+isvZ-LaGd=MTonbVWHcdE8vw@mail.gmail.com>
	<36e0cbf2aeae40dda1a08b33b624ecf7@XBOX04.axis.com>
	<CAFsTbWcxev3Uh4UBcw8xe7Pfa5AgBO2SG_53zUYGW8p-r2Ruew@mail.gmail.com>
	<08cfceee566046bdb7cb649f4183d7b1@XBOX04.axis.com>
In-Reply-To: <08cfceee566046bdb7cb649f4183d7b1@XBOX04.axis.com>
From: srinivasan <srinivasan.rns@gmail.com>
Date: Fri, 18 Jan 2019 16:58:45 +0100
Message-ID: <CAFsTbWc7F5nom01u-a3BQYZF0ua=ocNjton9iSXc1GbH9OTG_A@mail.gmail.com>
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
X-List-Received-Date: Fri, 18 Jan 2019 15:59:00 -0000
Content-Type: text/plain; charset="UTF-8"

HI Peter,

Excellent Awesome, even I was suspecting about the same

Many Thanks a lot for your support


On Fri, Jan 18, 2019 at 4:53 PM Peter Kjellerstedt
<peter.kjellerstedt@axis.com> wrote:
>
> Ok, the problem appears to be that you have DISTRO_VERSION defined
> to "${NIB_DISTRO_VERSION}", but have not defined NIB_DISTRO_VERSION.
> This results in the string ${NIB_DISTRO_VERSION} making it into the
> generated shell code. This in itself is not a problem, as it just
> appears as an unset shell variable to the shell. But additionally,
> the following line from the recipe:
>
>         distro_version_nodate=${@'${DISTRO_VERSION}'.replace('snapshot-${DATE}','snapshot').replace('${DATE}','')}
>
> makes it into the generated shell code as:
>
>         distro_version_nodate=${@'${NIB_DISTRO_VERSION}'.replace('snapshot-20190118','snapshot').replace('20190118','')}
>
> I.e., the Python code within ${@ ... } is not replaced as expected,
> which I assume is due to the undefined NIB_DISTRO_VERSION variable.
> This will lead to the syntax error you are seeing, if /bin/sh is dash
> (with bash, distro_version_nodate just becomes an empty string).
>
> So, to avoid the problem, make sure NIB_DISTRO_VERSION is set (or
> define DISTRO_VERSION to something that does not rely on an undefined
> variable).
>
> I have also sent a patch to openembedded-core@lists.openembedded.org to
> avoid this problem in the future.
>
> //Peter
>
> > -----Original Message-----
> > From: srinivasan <srinivasan.rns@gmail.com>
> > Sent: den 18 januari 2019 04:19
> > To: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
> > Cc: poky@yoctoproject.org
> > Subject: Re: [poky] Error: base-files/3.0.14-
> > r89/temp/run.do_install.80432: Syntax error: Unterminated quoted string
> >
> > Hi Peter,
> >
> > Extremely sorry for your inconvenience caused, as I am newbie to
> > yocto, Now I have attached "run.do_install.2945" from my latest files
> > that I have
> >
> > /home/srinishanmugam/NIBuild_test_rpi/nativeos/build_test_nativeosdistr
> > o/tmp/work/imx8mmevk-poky-linux/base-files/3.0.14-
> > r89/temp/run.do_install.2945
> >
> >
> > Logs:
> > srinishanmugam@ni-bln-
> > 07594:~/NIBuild_test_rpi/nativeos/build_test_nativeosdistro$
> > bitbake core-image-minimal
> > NOTE: Your conf/bblayers.conf has been automatically updated.
> > WARNING: Host distribution "ubuntu-18.04" has not been validated with
> > this version of the build system; you may possibly experience
> > unexpected failures. It is recommended that you use a tested
> > distribution.
> > Loading cache: 100%
> > |######################################################################
> > ##############################################################|
> > Time: 0:00:00
> > Loaded 3203 entries from dependency cache.
> > Parsing recipes: 100%
> > |######################################################################
> > ############################################################|
> > Time: 0:00:02
> > Parsing of 2302 .bb files complete (2296 cached, 6 parsed). 3208
> > targets, 387 skipped, 4 masked, 0 errors.
> > NOTE: Resolving any missing task queue dependencies
> >
> > Build Configuration:
> > BB_VERSION           = "1.38.0"
> > BUILD_SYS            = "x86_64-linux"
> > NATIVELSBSTRING      = "ubuntu-18.04"
> > TARGET_SYS           = "aarch64-poky-linux"
> > MACHINE              = "imx8mmevk"
> > DISTRO               = "NativeOS-TRK"
> > DISTRO_VERSION       = "${NIB_DISTRO_VERSION}"
> > TUNE_FEATURES        = "aarch64"
> > TARGET_FPU           = ""
> > meta-traktor-imx8    = "sumo:4b25c1ee6896b5447f8502f13c28570341505360"
> > meta-traktor         = "sumo:818be7ec4f768ba485e437dc26beb7bdc4b8120a"
> > meta-qt5             = "qt-
> > 5.11:ff6127ddd318d422f595295d1c189a86b3032873"
> > meta-nativeos        = "sumo:d98452914e201d46a6b1360ca957d9b3e396b31f"
> > meta-freescale       = "HEAD:1deea6b4a2f83521ff247ea4743d09cc705ecd8e"
> > meta
> > meta-poky            = "sumo:623b77885051174d0e05198843e739110977bd18"
> > meta-oe
> > meta-python
> > meta-networking      = "sumo:8760facba1bceb299b3613b8955621ddaa3d4c3f"
> > meta-bsp
> > meta-sdk             = "HEAD:1de93d3d5128b8422c23a87cb8b54149e2bfb942"
> >
> > Initialising tasks: 100%
> > |######################################################################
> > #########################################################|
> > Time: 0:00:01
> > NOTE: Executing SetScene Tasks
> > NOTE: Executing RunQueue Tasks
> > ERROR: base-files-3.0.14-r89 do_install: Function failed: do_install
> > (log file is located at
> > /home/srinishanmugam/NIBuild_test_rpi/nativeos/build_test_nativeosdistr
> > o/tmp/work/imx8mmevk-poky-linux/base-files/3.0.14-
> > r89/temp/log.do_install.2945)
> > ERROR: Logfile of failure stored in:
> > /home/srinishanmugam/NIBuild_test_rpi/nativeos/build_test_nativeosdistr
> > o/tmp/work/imx8mmevk-poky-linux/base-files/3.0.14-
> > r89/temp/log.do_install.2945
> > Log data follows:
> > | DEBUG: Executing python function extend_recipe_sysroot
> > | NOTE: Direct dependencies are
> > ['/home/srinishanmugam/NIBuild_test_rpi/nativeos/sources/poky/meta/reci
> > pes-devtools/quilt/quilt-native_0.65.bb:do_populate_sysroot',
> > 'virtual:native:/home/srinishanmugam/NIBuild_test_rpi/nativeos/sources/
> > poky/meta/recipes-devtools/pseudo/pseudo_git.bb:do_populate_sysroot']
> > | NOTE: Installed into sysroot: []
> > | NOTE: Skipping as already exists in sysroot: ['quilt-native',
> > 'pseudo-native']
> > | DEBUG: Python function extend_recipe_sysroot finished
> > | DEBUG: Executing shell function do_install
> > |
> > /home/srinishanmugam/NIBuild_test_rpi/nativeos/build_test_nativeosdistr
> > o/tmp/work/imx8mmevk-poky-linux/base-files/3.0.14-
> > r89/temp/run.do_install.2945:
> > 193:
> > /home/srinishanmugam/NIBuild_test_rpi/nativeos/build_test_nativeosdistr
> > o/tmp/work/imx8mmevk-poky-linux/base-files/3.0.14-
> > r89/temp/run.do_install.2945:
> > Syntax error: Unterminated quoted string
> > | WARNING: exit code 2 from a shell command.
> > | ERROR: Function failed: do_install (log file is located at
> > /home/srinishanmugam/NIBuild_test_rpi/nativeos/build_test_nativeosdistr
> > o/tmp/work/imx8mmevk-poky-linux/base-files/3.0.14-
> > r89/temp/log.do_install.2945)
> > ERROR: Task
> > (/home/srinishanmugam/NIBuild_test_rpi/nativeos/sources/poky/meta/recip
> > es-core/base-files/base-files_3.0.14.bb:do_install)
> > failed with exit code '1'
> > NOTE: Tasks Summary: Attempted 1213 tasks of which 1086 didn't need to
> > be rerun and 1 failed.
> >
> > Summary: 1 task failed:
> >
> > /home/srinishanmugam/NIBuild_test_rpi/nativeos/sources/poky/meta/recipe
> > s-core/base-files/base-files_3.0.14.bb:do_install
> > Summary: There was 1 WARNING message shown.
> > Summary: There was 1 ERROR message shown, returning a non-zero exit
> > code.
> > srinishanmugam@ni-bln-
> > 07594:~/NIBuild_test_rpi/nativeos/build_test_nativeosdistro$
> > cd
> > srinishanmugam@ni-bln-07594:~$
> > /home/srinishanmugam/NIBuild_test_rpi/nativeos/build_nativeosdistro_imx
> > 8/tmp/work/imx8mmevk-poky-linux/base-files/3.0.14-r89/temp/^C
> > srinishanmugam@ni-bln-07594:~$ cd -
> > /home/srinishanmugam/NIBuild_test_rpi/nativeos/build_test_nativeosdistr
> > o
> > srinishanmugam@ni-bln-
> > 07594:~/NIBuild_test_rpi/nativeos/build_test_nativeosdistro$
> > srinishanmugam@ni-bln-
> > 07594:~/NIBuild_test_rpi/nativeos/build_test_nativeosdistro/tmp/work/im
> > x8mmevk-poky-linux/base-files/3.0.14-r89/temp$
> > vim run.do_install
> > srinishanmugam@ni-bln-
> > 07594:~/NIBuild_test_rpi/nativeos/build_test_nativeosdistro/tmp/work/im
> > x8mmevk-poky-linux/base-files/3.0.14-r89/temp$
> > srinishanmugam@ni-bln-
> > 07594:~/NIBuild_test_rpi/nativeos/build_test_nativeosdistro/tmp/work/im
> > x8mmevk-poky-linux/base-files/3.0.14-r89/temp$
> > srinishanmugam@ni-bln-
> > 07594:~/NIBuild_test_rpi/nativeos/build_test_nativeosdistro/tmp/work/im
> > x8mmevk-poky-linux/base-files/3.0.14-r89/temp$
> > pwd
> > /home/srinishanmugam/NIBuild_test_rpi/nativeos/build_test_nativeosdistr
> > o/tmp/work/imx8mmevk-poky-linux/base-files/3.0.14-r89/temp
> > srinishanmugam@ni-bln-
> > 07594:~/NIBuild_test_rpi/nativeos/build_test_nativeosdistro/tmp/work/im
> > x8mmevk-poky-linux/base-files/3.0.14-r89/temp$
> > ls -la
> > total 600
> > drwxrwxr-x  2 srinishanmugam srinishanmugam   4096 Jan 18 04:10 .
> > drwxrwxr-x 12 srinishanmugam srinishanmugam   4096 Jan 18 04:07 ..
> > lrwxrwxrwx  1 srinishanmugam srinishanmugam     21 Jan 17 21:00
> > log.do_compile -> log.do_compile.103939
> > -rw-r--r--  1 srinishanmugam srinishanmugam    110 Jan 17 21:00
> > log.do_compile.103939
> > lrwxrwxrwx  1 srinishanmugam srinishanmugam     23 Jan 17 21:00
> > log.do_configure -> log.do_configure.102546
> > -rw-r--r--  1 srinishanmugam srinishanmugam    186 Jan 17 21:00
> > log.do_configure.102546
> > lrwxrwxrwx  1 srinishanmugam srinishanmugam     19 Jan 17 21:00
> > log.do_fetch -> log.do_fetch.100579
> > -rw-rw-r--  1 srinishanmugam srinishanmugam  99895 Jan 17 21:00
> > log.do_fetch.100579
> > lrwxrwxrwx  1 srinishanmugam srinishanmugam     19 Jan 18 04:07
> > log.do_install -> log.do_install.2945
> > -rw-r--r--  1 srinishanmugam srinishanmugam   1173 Jan 17 21:00
> > log.do_install.104810
> > -rw-r--r--  1 srinishanmugam srinishanmugam   1169 Jan 18 04:07
> > log.do_install.2945
> > lrwxrwxrwx  1 srinishanmugam srinishanmugam     19 Jan 17 21:00
> > log.do_patch -> log.do_patch.101289
> > -rw-rw-r--  1 srinishanmugam srinishanmugam 101517 Jan 17 21:00
> > log.do_patch.101289
> > lrwxrwxrwx  1 srinishanmugam srinishanmugam     34 Jan 17 21:00
> > log.do_populate_lic_setscene -> log.do_populate_lic_setscene.96944
> > -rw-rw-r--  1 srinishanmugam srinishanmugam    763 Jan 17 21:00
> > log.do_populate_lic_setscene.96944
> > lrwxrwxrwx  1 srinishanmugam srinishanmugam     36 Jan 17 21:00
> > log.do_prepare_recipe_sysroot -> log.do_prepare_recipe_sysroot.100716
> > -rw-rw-r--  1 srinishanmugam srinishanmugam    340 Jan 17 21:00
> > log.do_prepare_recipe_sysroot.100716
> > lrwxrwxrwx  1 srinishanmugam srinishanmugam     20 Jan 17 21:00
> > log.do_unpack -> log.do_unpack.100726
> > -rw-r--r--  1 srinishanmugam srinishanmugam 103479 Jan 17 21:00
> > log.do_unpack.100726
> > -rw-rw-r--  1 srinishanmugam srinishanmugam    433 Jan 18 04:07
> > log.task_order
> > -rw-rw-r--  1 srinishanmugam srinishanmugam    285 Jan 17 21:00
> > run.base_do_fetch.100579
> > -rw-r--r--  1 srinishanmugam srinishanmugam    303 Jan 17 21:00
> > run.base_do_unpack.100726
> > -rw-rw-r--  1 srinishanmugam srinishanmugam    286 Jan 17 21:00
> > run.clean_recipe_sysroot.100579
> > lrwxrwxrwx  1 srinishanmugam srinishanmugam     21 Jan 17 21:00
> > run.do_compile -> run.do_compile.103939
> > -rwxrwxr-x  1 srinishanmugam srinishanmugam  10899 Jan 17 21:00
> > run.do_compile.103939
> > lrwxrwxrwx  1 srinishanmugam srinishanmugam     23 Jan 17 21:00
> > run.do_configure -> run.do_configure.102546
> > -rwxrwxr-x  1 srinishanmugam srinishanmugam  12347 Jan 17 21:00
> > run.do_configure.102546
> > lrwxrwxrwx  1 srinishanmugam srinishanmugam     19 Jan 17 21:00
> > run.do_fetch -> run.do_fetch.100579
> > -rw-rw-r--  1 srinishanmugam srinishanmugam    341 Jan 17 21:00
> > run.do_fetch.100579
> > lrwxrwxrwx  1 srinishanmugam srinishanmugam     19 Jan 18 04:07
> > run.do_install -> run.do_install.2945
> > -rwxr-xr-x  1 srinishanmugam srinishanmugam  18751 Jan 17 21:00
> > run.do_install.104810
> > -rwxr-xr-x  1 srinishanmugam srinishanmugam  18747 Jan 18 04:07
> > run.do_install.2945
> > lrwxrwxrwx  1 srinishanmugam srinishanmugam     19 Jan 17 21:00
> > run.do_patch -> run.do_patch.101289
> > -rw-rw-r--  1 srinishanmugam srinishanmugam   2022 Jan 17 21:00
> > run.do_patch.101289
> > lrwxrwxrwx  1 srinishanmugam srinishanmugam     34 Jan 17 21:00
> > run.do_populate_lic_setscene -> run.do_populate_lic_setscene.96944
> > -rw-rw-r--  1 srinishanmugam srinishanmugam  15106 Jan 17 21:00
> > run.do_populate_lic_setscene.96944
> > lrwxrwxrwx  1 srinishanmugam srinishanmugam     36 Jan 17 21:00
> > run.do_prepare_recipe_sysroot -> run.do_prepare_recipe_sysroot.100716
> > -rw-rw-r--  1 srinishanmugam srinishanmugam  23018 Jan 17 21:00
> > run.do_prepare_recipe_sysroot.100716
> > -rw-r--r--  1 srinishanmugam srinishanmugam   4598 Jan 17 21:00
> > run.do_qa_configure.102546
> > -rw-r--r--  1 srinishanmugam srinishanmugam    365 Jan 17 21:00
> > run.do_qa_unpack.100726
> > lrwxrwxrwx  1 srinishanmugam srinishanmugam     20 Jan 17 21:00
> > run.do_unpack -> run.do_unpack.100726
> > -rw-r--r--  1 srinishanmugam srinishanmugam    361 Jan 17 21:00
> > run.do_unpack.100726
> > -rw-rw-r--  1 srinishanmugam srinishanmugam  22928 Jan 17 21:00
> > run.extend_recipe_sysroot.100716
> > -rw-rw-r--  1 srinishanmugam srinishanmugam  22928 Jan 17 21:00
> > run.extend_recipe_sysroot.101289
> > -rw-r--r--  1 srinishanmugam srinishanmugam  22928 Jan 17 21:00
> > run.extend_recipe_sysroot.104810
> > -rw-r--r--  1 srinishanmugam srinishanmugam  22928 Jan 18 04:07
> > run.extend_recipe_sysroot.2945
> > -rw-rw-r--  1 srinishanmugam srinishanmugam   1966 Jan 17 21:00
> > run.patch_do_patch.101289
> > -rw-rw-r--  1 srinishanmugam srinishanmugam   2493 Jan 17 21:00
> > run.sstate_hardcode_path_unpack.96944
> > -rwxrwxr-x  1 srinishanmugam srinishanmugam  11675 Jan 17 21:00
> > run.sstate_unpack_package.96944
> >
> > Thanks in advance,
> >
> >
> >
> > On Thu, Jan 17, 2019 at 11:36 PM Peter Kjellerstedt
> > <peter.kjellerstedt@axis.com> wrote:
> > >
> > > No, you still did not provide the file that I asked for. You need to
> > > provide the file called "run.do_install." followed by a number. E.g.,
> > > for the latest files you provided, the file we actually need would
> > be:
> > >
> > >
> > /home/srinishanmugam/NIBuild_test_rpi/nativeos/build_nativeosdistro_imx
> > 8/tmp/work/imx8mmevk-poky-linux/base-files/3.0.14-
> > r89/temp/run.do_install.108169
> > >
> > > //Peter
> > >
> > > > -----Original Message-----
> > > > From: srinivasan <srinivasan.rns@gmail.com>
> > > > Sent: den 17 januari 2019 19:35
> > > > To: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
> > > > Cc: poky@yoctoproject.org
> > > > Subject: Re: [poky] Error: base-files/3.0.14-
> > > > r89/temp/run.do_install.80432: Syntax error: Unterminated quoted
> > string
> > > >
> > > > Hi Peter,
> > > >
> > > > Could you please help me with your inputs, or please let me know if
> > > > any other information is required from my side please?
> > > >
> > > > Thanks in advance
> > > >
> > > >
> > > > On Thu, Jan 17, 2019 at 1:54 PM srinivasan
> > <srinivasan.rns@gmail.com>
> > > > wrote:
> > > > >
> > > > > Hi Peter,
> > > > >
> > > > > Could you please let me know if any other information is needed
> > from
> > > > my side?
> > > > >
> > > > > Many Thanks in advance
> > > > >
> > > > > On Thu, Jan 17, 2019 at 11:56 AM srinivasan
> > > > <srinivasan.rns@gmail.com> wrote:
> > > > >>
> > > > >> Many Thanks a lot Peter for your quick responses , I have
> > attached
> > > > the sources.zip folder plus the log files now, for the errors that
> > I am
> > > > facing now, kindly do the needful
> > > > >>
> > > > >>
> > > > >>
> > > > >>
> > > > >> Many Thanks in advance,
> > > > >>  test.zip
> > > > >>
> > > > >> On Thu, Jan 17, 2019 at 10:51 AM Peter Kjellerstedt
> > > > <peter.kjellerstedt@axis.com> wrote:
> > > > >>>
> > > > >>> Unless you have made changes to base-files_3.0.14.bb (which I
> > > > seriously doubt), that is not the file we need. We need the file
> > > > called:
> > > > >>>
> > > > >>>
> > > >
> > /home/srinishanmugam/customBuild_test_rpi/custom/buid_test3_customtrk_d
> > > > istro_imx8/tmp/work/imx8mmevk-poky-linux/base-files/3.0.14-
> > > > r89/temp/run.do_install.80432
> > > > >>>
> > > > >>> That file is generated by bitbake and contains the actual shell
> > > > code that was run when the error occurred. It should hopefully give
> > us
> > > > a clue as to what you should look for to find the actual mistake in
> > > > your recipe files.
> > > > >>>
> > > > >>>
> > > > >>>
> > > > >>> //Peter
> > > > >>>
> > > > >>>
> > > > >>>
> > > > >>> From: srinivasan <srinivasan.rns@gmail.com>
> > > > >>> Sent: den 17 januari 2019 10:42
> > > > >>> To: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
> > > > >>> Cc: poky@yoctoproject.org
> > > > >>> Subject: Re: [poky] Error: base-files/3.0.14-
> > > > r89/temp/run.do_install.80432: Syntax error: Unterminated quoted
> > string
> > > > >>>
> > > > >>>
> > > > >>>
> > > > >>> Hi Peter,
> > > > >>>
> > > > >>>
> > > > >>>
> > > > >>> Thanks a lot for your quick responses and really appreciate it.
> > > > >>>
> > > > >>>
> > > > >>>
> > > > >>> Now I have attached both the error logs and base-
> > files_3.0.14.bb,
> > > > please let me know if you require any other information from my
> > side
> > > > >>>
> > > > >>>
> > > > >>>
> > > > >>> Many Thanks in advance
> > > > >>>
> > > > >>>
> > > > >>>
> > > > >>> On Thu, Jan 17, 2019 at 10:20 AM Peter Kjellerstedt
> > > > <peter.kjellerstedt@axis.com> wrote:
> > > > >>>
> > > > >>> [ Recipient list pruned to not cross-post to every Yocto
> > related
> > > > mailing
> > > > >>>   list out there... ]
> > > > >>>
> > > > >>> > -----Original Message-----
> > > > >>> > From: poky-bounces@yoctoproject.org <poky-
> > > > bounces@yoctoproject.org> On
> > > > >>> > Behalf Of srinivasan
> > > > >>> > Sent: den 17 januari 2019 06:03
> > > > >>> > To: yocto-bsp@yoctoproject.org; yocto-
> > builds@yoctoproject.org;
> > > > meta-
> > > > >>> > intel@yoctoproject.org; Development list for the linux-
> > yocto*.git
> > > > Linux
> > > > >>> > kernel repositories <linux-yocto@yoctoproject.org>;
> > > > >>> > poky@yoctoproject.org; yocto-infrastructure@yoctoproject.org;
> > > > >>> > yocto@yoctoproject.org; meta-freescale@yoctoproject.org;
> > meta-
> > > > >>> > freescale-request@yoctoproject.org
> > > > >>> > Subject: [poky] Error: base-files/3.0.14-
> > > > r89/temp/run.do_install.80432:
> > > > >>> > Syntax error: Unterminated quoted string
> > > > >>> >
> > > > >>> > Dear Yocto Experts,
> > > > >>> >
> > > > >>> > I am trying to customize my vendor specific Yocto BSP's to my
> > > > custom
> > > > >>> > OS.  I am facing the below error, could you please do the
> > needful
> > > > or
> > > > >>> > provide me some pointers from your end for solving this issue
> > > > >>> >
> > > > >>> > Error:
> > > > >>> > $ bitbake fsl-image-validation-imx
> > > > >>> > WARNING: Host distribution "ubuntu-18.04" has not been
> > validated
> > > > with
> > > > >>> > this version of the build system; you may possibly experience
> > > > >>> > unexpected failures. It is recommended that you use a tested
> > > > >>> > distribution.
> > > > >>> > Loading cache: 100%
> > > > >>> >
> > > >
> > |######################################################################
> > > > >>> >
> > > >
> > #######################################################################
> > > > >>> >
> > > >
> > #######################################################################
> > > > >>> > ###########################|
> > > > >>> > Time: 0:00:00
> > > > >>> > Loaded 3196 entries from dependency cache.
> > > > >>> > Parsing recipes: 100%
> > > > >>> >
> > > >
> > |######################################################################
> > > > >>> >
> > > >
> > #######################################################################
> > > > >>> >
> > > >
> > #######################################################################
> > > > >>> > #########################|
> > > > >>> > Time: 0:00:02
> > > > >>> > Parsing of 2298 .bb files complete (2284 cached, 14 parsed).
> > 3202
> > > > >>> > targets, 398 skipped, 6 masked, 0 errors.
> > > > >>> > NOTE: Resolving any missing task queue dependencies
> > > > >>> >
> > > > >>> > Build Configuration:
> > > > >>> > BB_VERSION           = "1.38.0"
> > > > >>> > BUILD_SYS            = "x86_64-linux"
> > > > >>> > NATIVELSBSTRING      = "universal"
> > > > >>> > TARGET_SYS           = "aarch64-poky-linux"
> > > > >>> > MACHINE              = "imx8mmevk"
> > > > >>> > DISTRO               = "custom-TRK"
> > > > >>> > DISTRO_VERSION       = "${custom_DISTRO_VERSION}"
> > > > >>> > TUNE_FEATURES        = "aarch64"
> > > > >>> > TARGET_FPU           = ""
> > > > >>> > meta-traktor-imx8    =
> > > > "sumo:4b25c1ee6896b5447f8502f13c28570341505360"
> > > > >>> > meta-traktor         =
> > > > "sumo:818be7ec4f768ba485e437dc26beb7bdc4b8120a"
> > > > >>> > meta-qt5             = "qt-
> > > > >>> > 5.11:ff6127ddd318d422f595295d1c189a86b3032873"
> > > > >>> > meta-custom        =
> > > > "sumo:d98452914e201d46a6b1360ca957d9b3e396b31f"
> > > > >>> > meta-freescale       =
> > > > "HEAD:1deea6b4a2f83521ff247ea4743d09cc705ecd8e"
> > > > >>> > meta
> > > > >>> > meta-poky            =
> > > > "sumo:623b77885051174d0e05198843e739110977bd18"
> > > > >>> > meta-oe
> > > > >>> > meta-python
> > > > >>> > meta-networking      =
> > > > "sumo:8760facba1bceb299b3613b8955621ddaa3d4c3f"
> > > > >>> > meta-bsp
> > > > >>> > meta-sdk             =
> > > > "HEAD:1de93d3d5128b8422c23a87cb8b54149e2bfb942"
> > > > >>> >
> > > > >>> > Initialising tasks: 100%
> > > > >>> >
> > > >
> > |######################################################################
> > > > >>> >
> > > >
> > #######################################################################
> > > > >>> >
> > > >
> > #######################################################################
> > > > >>> > ######################|
> > > > >>> > Time: 0:00:02
> > > > >>> > NOTE: Executing SetScene Tasks
> > > > >>> > NOTE: Executing RunQueue Tasks
> > > > >>> > ERROR: base-files-3.0.14-r89 do_install: Function failed:
> > > > do_install
> > > > >>> > (log file is located at
> > > > >>> >
> > > >
> > /home/srinishanmugam/customBuild_test_rpi/custom/buid_test3_customtrk_d
> > > > >>> > istro_imx8/tmp/work/imx8mmevk-poky-linux/base-files/3.0.14-
> > > > >>> > r89/temp/log.do_install.80432)
> > > > >>> > ERROR: Logfile of failure stored in:
> > > > >>> >
> > > >
> > /home/srinishanmugam/customBuild_test_rpi/custom/buid_test3_customtrk_d
> > > > >>> > istro_imx8/tmp/work/imx8mmevk-poky-linux/base-files/3.0.14-
> > > > >>> > r89/temp/log.do_install.80432
> > > > >>> > Log data follows:
> > > > >>> > | DEBUG: Executing python function extend_recipe_sysroot
> > > > >>> > | NOTE: Direct dependencies are
> > > > >>> >
> > > >
> > ['/home/srinishanmugam/customBuild_test_rpi/custom/sources/poky/meta/re
> > > > >>> > cipes-devtools/quilt/quilt-
> > native_0.65.bb:do_populate_sysroot',
> > > > >>> >
> > > >
> > 'virtual:native:/home/srinishanmugam/customBuild_test_rpi/custom/source
> > > > >>> > s/poky/meta/recipes-
> > > > devtools/pseudo/pseudo_git.bb:do_populate_sysroot']
> > > > >>> > | NOTE: Installed into sysroot: []
> > > > >>> > | NOTE: Skipping as already exists in sysroot: ['quilt-
> > native',
> > > > >>> > 'pseudo-native']
> > > > >>> > | DEBUG: Python function extend_recipe_sysroot finished
> > > > >>> > | DEBUG: Executing shell function do_install
> > > > >>> > |
> > > > >>> >
> > > >
> > /home/srinishanmugam/customBuild_test_rpi/custom/buid_test3_customtrk_d
> > > > >>> > istro_imx8/tmp/work/imx8mmevk-poky-linux/base-files/3.0.14-
> > > > >>> > r89/temp/run.do_install.80432:
> > > > >>> > 176:
> > > > >>> >
> > > >
> > /home/srinishanmugam/customBuild_test_rpi/custom/buid_test3_customtrk_d
> > > > >>> > istro_imx8/tmp/work/imx8mmevk-poky-linux/base-files/3.0.14-
> > > > >>> > r89/temp/run.do_install.80432:
> > > > >>> > Syntax error: Unterminated quoted string
> > > > >>> > | WARNING: exit code 2 from a shell command.
> > > > >>> > | ERROR: Function failed: do_install (log file is located at
> > > > >>> >
> > > >
> > /home/srinishanmugam/customBuild_test_rpi/custom/buid_test3_customtrk_d
> > > > >>> > istro_imx8/tmp/work/imx8mmevk-poky-linux/base-files/3.0.14-
> > > > >>> > r89/temp/log.do_install.80432)
> > > > >>> > ERROR: Task
> > > > >>> >
> > > >
> > (/home/srinishanmugam/customBuild_test_rpi/custom/sources/poky/meta/rec
> > > > >>> > ipes-core/base-files/base-files_3.0.14.bb:do_install)
> > > > >>> > failed with exit code '1'
> > > > >>> > NOTE: Tasks Summary: Attempted 1256 tasks of which 1204
> > didn't
> > > > need to
> > > > >>> > be rerun and 1 failed.
> > > > >>> >
> > > > >>> > Summary: 1 task failed:
> > > > >>> >
> > > > >>> >
> > > >
> > /home/srinishanmugam/customBuild_test_rpi/custom/sources/poky/meta/reci
> > > > >>> > pes-core/base-files/base-files_3.0.14.bb:do_install
> > > > >>> > Summary: There was 1 WARNING message shown.
> > > > >>> > Summary: There was 1 ERROR message shown, returning a non-
> > zero
> > > > exit
> > > > >>> > code.
> > > > >>> > srinishanmugam@ni-bln-
> > > > >>> >
> > > >
> > 07594:~/customBuild_test_rpi/custom/buid_test3_customtrk_distro_imx8$
> > > > >>> >
> > > > >>> >
> > > > >>> > Kindly do the needful,
> > > > >>> > Many Thanks in advance
> > > > >>>
> > > > >>> Have you looked at the contents of
> > > > >>>
> > > >
> > /home/srinishanmugam/customBuild_test_rpi/custom/buid_test3_customtrk_d
> > > > istro_imx8/tmp/work/imx8mmevk-poky-linux/base-files/3.0.14-
> > > > r89/temp/run.do_install.80432
> > > > >>> to try to determine what caused the erroneous syntax? Otherwise
> > do
> > > > that,
> > > > >>> and if you still cannot tell what causes the problem, please
> > attach
> > > > the
> > > > >>> file for us to look at.
> > > > >>>
> > > > >>> //Peter

