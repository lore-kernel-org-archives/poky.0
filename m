Return-Path: <srinivasan.rns@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 65A1BE00CED; Thu, 17 Jan 2019 19:19:17 -0800 (PST)
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
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.167.177 listed in list.dnswl.org]
Received: from mail-oi1-f177.google.com (mail-oi1-f177.google.com
	[209.85.167.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DDF3EE00CE6
	for <poky@yoctoproject.org>; Thu, 17 Jan 2019 19:19:15 -0800 (PST)
Received: by mail-oi1-f177.google.com with SMTP id w13so7926538oiw.9
	for <poky@yoctoproject.org>; Thu, 17 Jan 2019 19:19:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=TUHNL4uFh436qA2JXffz2rjvv59SErS1etSMvl0XEZE=;
	b=PStMSsX85k3YCZTSljZJ+QIlCrEI6HN/I+TtOECXF9c0a9RWt4JLKMUaDgJpuc3/Rx
	fPetUSi2RlaGUPY7/Sl0aWHUiPq+sn5H0jGXwDwxmBe2ffSlbOJ+BPShE7gReunG+IXz
	5AoL+GdqpROEKth4fv/17c5SIJCrGxPuIQSh0oNGJ8VaFLYeIa+7RfxH87woxDq8Jimu
	Biu9QrSNZ5S9xh1aK+suMbr+OsbGimghvJOlvRq+jmUPp2urvnokPKLeP44MaXL3KP7M
	H2u9B7/BTdJSO+GR630Jgy9BfMZQ0BwI7RXKO8FTmJx8emIXNGE/u+DeHxccpZFBU85G
	zKJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=TUHNL4uFh436qA2JXffz2rjvv59SErS1etSMvl0XEZE=;
	b=ETBOr8sBHC8Pc2wwQowbhAnysxaPFUMROZnKS+PyS4LA1FCrSATI5BYb95RN4MH4JY
	pweFGZ2W2+AWDwGtzPzjEGkZ4oy+rrfIWVxkzEMRS3x4f/SGKgRtyJhQTsp9JrcblfeS
	ZMr7IMUPxWsJ0egO1E0hiCx3VCBJnTokJFd+0yF1zpRQ5sg3plAa6Q43TvB1pzpiuJJM
	7SwUf1z61e1oF6RI3Z/GuVpzPmCbfhZmEKrAzWuTCFympo58ptg0oQDX/BJrE+ca+q2I
	Lq589ZCv6aj4aMXD/CwqYQnBykKN13eLUxfknC27s82Nu4Y0gVXYGKrMQJO0aDHiC3aj
	nl/A==
X-Gm-Message-State: AJcUukeiuMM6vVjJjFYf7iBEksaLNVzg2kMkIK0TTIN1db7Rs94fo0wt
	0EXBA1aB4gU1XGvZZ5agdD8QVT6AkSJX0dtcN1Vx4j5Pnms=
X-Google-Smtp-Source: ALg8bN6kH/TCJPhCM5fi8p7YnDX4/XMgDoJdR8xT/C5huSeJaqderEXp7SDbrgfI2oAQxi5YVOoOU+8ea6zJDTAfZ4U=
X-Received: by 2002:aca:ad53:: with SMTP id w80mr370163oie.148.1547781554945; 
	Thu, 17 Jan 2019 19:19:14 -0800 (PST)
MIME-Version: 1.0
References: <CAFsTbWc_XoCN-99LXeCL1R-m0+jXGmO7DgOb-94y7a3L3ODN7Q@mail.gmail.com>
	<1352415c490c46838b4e19205a85ca4c@XBOX04.axis.com>
	<CAFsTbWfEMnd4adtexbb=+R0xeCtMEfUJFmiqa6x70AtQ5aFQMQ@mail.gmail.com>
	<80a5da9d680b4ae7ba8a5d98656b7926@XBOX04.axis.com>
	<CAFsTbWcd4UWU5bY03mmmvPQpyKqp+3SnjpGNn4iGS3nvRkJo2A@mail.gmail.com>
	<CAFsTbWdZANf2rcc3FbT46L13Gv8__CyThf0z8eotzvm0kfNdyg@mail.gmail.com>
	<CAFsTbWfcqNXKgxVVe5NXYwZD=+isvZ-LaGd=MTonbVWHcdE8vw@mail.gmail.com>
	<36e0cbf2aeae40dda1a08b33b624ecf7@XBOX04.axis.com>
In-Reply-To: <36e0cbf2aeae40dda1a08b33b624ecf7@XBOX04.axis.com>
From: srinivasan <srinivasan.rns@gmail.com>
Date: Fri, 18 Jan 2019 04:19:03 +0100
Message-ID: <CAFsTbWcxev3Uh4UBcw8xe7Pfa5AgBO2SG_53zUYGW8p-r2Ruew@mail.gmail.com>
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
X-List-Received-Date: Fri, 18 Jan 2019 03:19:17 -0000
X-Groupsio-MsgNum: 11536
Content-Type: multipart/mixed; boundary="000000000000c62377057fb2f94b"

--000000000000c62377057fb2f94b
Content-Type: text/plain; charset="UTF-8"

Hi Peter,

Extremely sorry for your inconvenience caused, as I am newbie to
yocto, Now I have attached "run.do_install.2945" from my latest files
that I have

/home/srinishanmugam/NIBuild_test_rpi/nativeos/build_test_nativeosdistro/tmp/work/imx8mmevk-poky-linux/base-files/3.0.14-r89/temp/run.do_install.2945


Logs:
srinishanmugam@ni-bln-07594:~/NIBuild_test_rpi/nativeos/build_test_nativeosdistro$
bitbake core-image-minimal
NOTE: Your conf/bblayers.conf has been automatically updated.
WARNING: Host distribution "ubuntu-18.04" has not been validated with
this version of the build system; you may possibly experience
unexpected failures. It is recommended that you use a tested
distribution.
Loading cache: 100%
|####################################################################################################################################|
Time: 0:00:00
Loaded 3203 entries from dependency cache.
Parsing recipes: 100%
|##################################################################################################################################|
Time: 0:00:02
Parsing of 2302 .bb files complete (2296 cached, 6 parsed). 3208
targets, 387 skipped, 4 masked, 0 errors.
NOTE: Resolving any missing task queue dependencies

Build Configuration:
BB_VERSION           = "1.38.0"
BUILD_SYS            = "x86_64-linux"
NATIVELSBSTRING      = "ubuntu-18.04"
TARGET_SYS           = "aarch64-poky-linux"
MACHINE              = "imx8mmevk"
DISTRO               = "NativeOS-TRK"
DISTRO_VERSION       = "${NIB_DISTRO_VERSION}"
TUNE_FEATURES        = "aarch64"
TARGET_FPU           = ""
meta-traktor-imx8    = "sumo:4b25c1ee6896b5447f8502f13c28570341505360"
meta-traktor         = "sumo:818be7ec4f768ba485e437dc26beb7bdc4b8120a"
meta-qt5             = "qt-5.11:ff6127ddd318d422f595295d1c189a86b3032873"
meta-nativeos        = "sumo:d98452914e201d46a6b1360ca957d9b3e396b31f"
meta-freescale       = "HEAD:1deea6b4a2f83521ff247ea4743d09cc705ecd8e"
meta
meta-poky            = "sumo:623b77885051174d0e05198843e739110977bd18"
meta-oe
meta-python
meta-networking      = "sumo:8760facba1bceb299b3613b8955621ddaa3d4c3f"
meta-bsp
meta-sdk             = "HEAD:1de93d3d5128b8422c23a87cb8b54149e2bfb942"

Initialising tasks: 100%
|###############################################################################################################################|
Time: 0:00:01
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
ERROR: base-files-3.0.14-r89 do_install: Function failed: do_install
(log file is located at
/home/srinishanmugam/NIBuild_test_rpi/nativeos/build_test_nativeosdistro/tmp/work/imx8mmevk-poky-linux/base-files/3.0.14-r89/temp/log.do_install.2945)
ERROR: Logfile of failure stored in:
/home/srinishanmugam/NIBuild_test_rpi/nativeos/build_test_nativeosdistro/tmp/work/imx8mmevk-poky-linux/base-files/3.0.14-r89/temp/log.do_install.2945
Log data follows:
| DEBUG: Executing python function extend_recipe_sysroot
| NOTE: Direct dependencies are
['/home/srinishanmugam/NIBuild_test_rpi/nativeos/sources/poky/meta/recipes-devtools/quilt/quilt-native_0.65.bb:do_populate_sysroot',
'virtual:native:/home/srinishanmugam/NIBuild_test_rpi/nativeos/sources/poky/meta/recipes-devtools/pseudo/pseudo_git.bb:do_populate_sysroot']
| NOTE: Installed into sysroot: []
| NOTE: Skipping as already exists in sysroot: ['quilt-native', 'pseudo-native']
| DEBUG: Python function extend_recipe_sysroot finished
| DEBUG: Executing shell function do_install
| /home/srinishanmugam/NIBuild_test_rpi/nativeos/build_test_nativeosdistro/tmp/work/imx8mmevk-poky-linux/base-files/3.0.14-r89/temp/run.do_install.2945:
193: /home/srinishanmugam/NIBuild_test_rpi/nativeos/build_test_nativeosdistro/tmp/work/imx8mmevk-poky-linux/base-files/3.0.14-r89/temp/run.do_install.2945:
Syntax error: Unterminated quoted string
| WARNING: exit code 2 from a shell command.
| ERROR: Function failed: do_install (log file is located at
/home/srinishanmugam/NIBuild_test_rpi/nativeos/build_test_nativeosdistro/tmp/work/imx8mmevk-poky-linux/base-files/3.0.14-r89/temp/log.do_install.2945)
ERROR: Task (/home/srinishanmugam/NIBuild_test_rpi/nativeos/sources/poky/meta/recipes-core/base-files/base-files_3.0.14.bb:do_install)
failed with exit code '1'
NOTE: Tasks Summary: Attempted 1213 tasks of which 1086 didn't need to
be rerun and 1 failed.

Summary: 1 task failed:
  /home/srinishanmugam/NIBuild_test_rpi/nativeos/sources/poky/meta/recipes-core/base-files/base-files_3.0.14.bb:do_install
Summary: There was 1 WARNING message shown.
Summary: There was 1 ERROR message shown, returning a non-zero exit code.
srinishanmugam@ni-bln-07594:~/NIBuild_test_rpi/nativeos/build_test_nativeosdistro$
cd
srinishanmugam@ni-bln-07594:~$
/home/srinishanmugam/NIBuild_test_rpi/nativeos/build_nativeosdistro_imx8/tmp/work/imx8mmevk-poky-linux/base-files/3.0.14-r89/temp/^C
srinishanmugam@ni-bln-07594:~$ cd -
/home/srinishanmugam/NIBuild_test_rpi/nativeos/build_test_nativeosdistro
srinishanmugam@ni-bln-07594:~/NIBuild_test_rpi/nativeos/build_test_nativeosdistro$
srinishanmugam@ni-bln-07594:~/NIBuild_test_rpi/nativeos/build_test_nativeosdistro/tmp/work/imx8mmevk-poky-linux/base-files/3.0.14-r89/temp$
vim run.do_install
srinishanmugam@ni-bln-07594:~/NIBuild_test_rpi/nativeos/build_test_nativeosdistro/tmp/work/imx8mmevk-poky-linux/base-files/3.0.14-r89/temp$
srinishanmugam@ni-bln-07594:~/NIBuild_test_rpi/nativeos/build_test_nativeosdistro/tmp/work/imx8mmevk-poky-linux/base-files/3.0.14-r89/temp$
srinishanmugam@ni-bln-07594:~/NIBuild_test_rpi/nativeos/build_test_nativeosdistro/tmp/work/imx8mmevk-poky-linux/base-files/3.0.14-r89/temp$
pwd
/home/srinishanmugam/NIBuild_test_rpi/nativeos/build_test_nativeosdistro/tmp/work/imx8mmevk-poky-linux/base-files/3.0.14-r89/temp
srinishanmugam@ni-bln-07594:~/NIBuild_test_rpi/nativeos/build_test_nativeosdistro/tmp/work/imx8mmevk-poky-linux/base-files/3.0.14-r89/temp$
ls -la
total 600
drwxrwxr-x  2 srinishanmugam srinishanmugam   4096 Jan 18 04:10 .
drwxrwxr-x 12 srinishanmugam srinishanmugam   4096 Jan 18 04:07 ..
lrwxrwxrwx  1 srinishanmugam srinishanmugam     21 Jan 17 21:00
log.do_compile -> log.do_compile.103939
-rw-r--r--  1 srinishanmugam srinishanmugam    110 Jan 17 21:00
log.do_compile.103939
lrwxrwxrwx  1 srinishanmugam srinishanmugam     23 Jan 17 21:00
log.do_configure -> log.do_configure.102546
-rw-r--r--  1 srinishanmugam srinishanmugam    186 Jan 17 21:00
log.do_configure.102546
lrwxrwxrwx  1 srinishanmugam srinishanmugam     19 Jan 17 21:00
log.do_fetch -> log.do_fetch.100579
-rw-rw-r--  1 srinishanmugam srinishanmugam  99895 Jan 17 21:00
log.do_fetch.100579
lrwxrwxrwx  1 srinishanmugam srinishanmugam     19 Jan 18 04:07
log.do_install -> log.do_install.2945
-rw-r--r--  1 srinishanmugam srinishanmugam   1173 Jan 17 21:00
log.do_install.104810
-rw-r--r--  1 srinishanmugam srinishanmugam   1169 Jan 18 04:07
log.do_install.2945
lrwxrwxrwx  1 srinishanmugam srinishanmugam     19 Jan 17 21:00
log.do_patch -> log.do_patch.101289
-rw-rw-r--  1 srinishanmugam srinishanmugam 101517 Jan 17 21:00
log.do_patch.101289
lrwxrwxrwx  1 srinishanmugam srinishanmugam     34 Jan 17 21:00
log.do_populate_lic_setscene -> log.do_populate_lic_setscene.96944
-rw-rw-r--  1 srinishanmugam srinishanmugam    763 Jan 17 21:00
log.do_populate_lic_setscene.96944
lrwxrwxrwx  1 srinishanmugam srinishanmugam     36 Jan 17 21:00
log.do_prepare_recipe_sysroot -> log.do_prepare_recipe_sysroot.100716
-rw-rw-r--  1 srinishanmugam srinishanmugam    340 Jan 17 21:00
log.do_prepare_recipe_sysroot.100716
lrwxrwxrwx  1 srinishanmugam srinishanmugam     20 Jan 17 21:00
log.do_unpack -> log.do_unpack.100726
-rw-r--r--  1 srinishanmugam srinishanmugam 103479 Jan 17 21:00
log.do_unpack.100726
-rw-rw-r--  1 srinishanmugam srinishanmugam    433 Jan 18 04:07 log.task_order
-rw-rw-r--  1 srinishanmugam srinishanmugam    285 Jan 17 21:00
run.base_do_fetch.100579
-rw-r--r--  1 srinishanmugam srinishanmugam    303 Jan 17 21:00
run.base_do_unpack.100726
-rw-rw-r--  1 srinishanmugam srinishanmugam    286 Jan 17 21:00
run.clean_recipe_sysroot.100579
lrwxrwxrwx  1 srinishanmugam srinishanmugam     21 Jan 17 21:00
run.do_compile -> run.do_compile.103939
-rwxrwxr-x  1 srinishanmugam srinishanmugam  10899 Jan 17 21:00
run.do_compile.103939
lrwxrwxrwx  1 srinishanmugam srinishanmugam     23 Jan 17 21:00
run.do_configure -> run.do_configure.102546
-rwxrwxr-x  1 srinishanmugam srinishanmugam  12347 Jan 17 21:00
run.do_configure.102546
lrwxrwxrwx  1 srinishanmugam srinishanmugam     19 Jan 17 21:00
run.do_fetch -> run.do_fetch.100579
-rw-rw-r--  1 srinishanmugam srinishanmugam    341 Jan 17 21:00
run.do_fetch.100579
lrwxrwxrwx  1 srinishanmugam srinishanmugam     19 Jan 18 04:07
run.do_install -> run.do_install.2945
-rwxr-xr-x  1 srinishanmugam srinishanmugam  18751 Jan 17 21:00
run.do_install.104810
-rwxr-xr-x  1 srinishanmugam srinishanmugam  18747 Jan 18 04:07
run.do_install.2945
lrwxrwxrwx  1 srinishanmugam srinishanmugam     19 Jan 17 21:00
run.do_patch -> run.do_patch.101289
-rw-rw-r--  1 srinishanmugam srinishanmugam   2022 Jan 17 21:00
run.do_patch.101289
lrwxrwxrwx  1 srinishanmugam srinishanmugam     34 Jan 17 21:00
run.do_populate_lic_setscene -> run.do_populate_lic_setscene.96944
-rw-rw-r--  1 srinishanmugam srinishanmugam  15106 Jan 17 21:00
run.do_populate_lic_setscene.96944
lrwxrwxrwx  1 srinishanmugam srinishanmugam     36 Jan 17 21:00
run.do_prepare_recipe_sysroot -> run.do_prepare_recipe_sysroot.100716
-rw-rw-r--  1 srinishanmugam srinishanmugam  23018 Jan 17 21:00
run.do_prepare_recipe_sysroot.100716
-rw-r--r--  1 srinishanmugam srinishanmugam   4598 Jan 17 21:00
run.do_qa_configure.102546
-rw-r--r--  1 srinishanmugam srinishanmugam    365 Jan 17 21:00
run.do_qa_unpack.100726
lrwxrwxrwx  1 srinishanmugam srinishanmugam     20 Jan 17 21:00
run.do_unpack -> run.do_unpack.100726
-rw-r--r--  1 srinishanmugam srinishanmugam    361 Jan 17 21:00
run.do_unpack.100726
-rw-rw-r--  1 srinishanmugam srinishanmugam  22928 Jan 17 21:00
run.extend_recipe_sysroot.100716
-rw-rw-r--  1 srinishanmugam srinishanmugam  22928 Jan 17 21:00
run.extend_recipe_sysroot.101289
-rw-r--r--  1 srinishanmugam srinishanmugam  22928 Jan 17 21:00
run.extend_recipe_sysroot.104810
-rw-r--r--  1 srinishanmugam srinishanmugam  22928 Jan 18 04:07
run.extend_recipe_sysroot.2945
-rw-rw-r--  1 srinishanmugam srinishanmugam   1966 Jan 17 21:00
run.patch_do_patch.101289
-rw-rw-r--  1 srinishanmugam srinishanmugam   2493 Jan 17 21:00
run.sstate_hardcode_path_unpack.96944
-rwxrwxr-x  1 srinishanmugam srinishanmugam  11675 Jan 17 21:00
run.sstate_unpack_package.96944

Thanks in advance,



On Thu, Jan 17, 2019 at 11:36 PM Peter Kjellerstedt
<peter.kjellerstedt@axis.com> wrote:
>
> No, you still did not provide the file that I asked for. You need to
> provide the file called "run.do_install." followed by a number. E.g.,
> for the latest files you provided, the file we actually need would be:
>
> /home/srinishanmugam/NIBuild_test_rpi/nativeos/build_nativeosdistro_imx8/tmp/work/imx8mmevk-poky-linux/base-files/3.0.14-r89/temp/run.do_install.108169
>
> //Peter
>
> > -----Original Message-----
> > From: srinivasan <srinivasan.rns@gmail.com>
> > Sent: den 17 januari 2019 19:35
> > To: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
> > Cc: poky@yoctoproject.org
> > Subject: Re: [poky] Error: base-files/3.0.14-
> > r89/temp/run.do_install.80432: Syntax error: Unterminated quoted string
> >
> > Hi Peter,
> >
> > Could you please help me with your inputs, or please let me know if
> > any other information is required from my side please?
> >
> > Thanks in advance
> >
> >
> > On Thu, Jan 17, 2019 at 1:54 PM srinivasan <srinivasan.rns@gmail.com>
> > wrote:
> > >
> > > Hi Peter,
> > >
> > > Could you please let me know if any other information is needed from
> > my side?
> > >
> > > Many Thanks in advance
> > >
> > > On Thu, Jan 17, 2019 at 11:56 AM srinivasan
> > <srinivasan.rns@gmail.com> wrote:
> > >>
> > >> Many Thanks a lot Peter for your quick responses , I have attached
> > the sources.zip folder plus the log files now, for the errors that I am
> > facing now, kindly do the needful
> > >>
> > >>
> > >>
> > >>
> > >> Many Thanks in advance,
> > >>  test.zip
> > >>
> > >> On Thu, Jan 17, 2019 at 10:51 AM Peter Kjellerstedt
> > <peter.kjellerstedt@axis.com> wrote:
> > >>>
> > >>> Unless you have made changes to base-files_3.0.14.bb (which I
> > seriously doubt), that is not the file we need. We need the file
> > called:
> > >>>
> > >>>
> > /home/srinishanmugam/customBuild_test_rpi/custom/buid_test3_customtrk_d
> > istro_imx8/tmp/work/imx8mmevk-poky-linux/base-files/3.0.14-
> > r89/temp/run.do_install.80432
> > >>>
> > >>> That file is generated by bitbake and contains the actual shell
> > code that was run when the error occurred. It should hopefully give us
> > a clue as to what you should look for to find the actual mistake in
> > your recipe files.
> > >>>
> > >>>
> > >>>
> > >>> //Peter
> > >>>
> > >>>
> > >>>
> > >>> From: srinivasan <srinivasan.rns@gmail.com>
> > >>> Sent: den 17 januari 2019 10:42
> > >>> To: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
> > >>> Cc: poky@yoctoproject.org
> > >>> Subject: Re: [poky] Error: base-files/3.0.14-
> > r89/temp/run.do_install.80432: Syntax error: Unterminated quoted string
> > >>>
> > >>>
> > >>>
> > >>> Hi Peter,
> > >>>
> > >>>
> > >>>
> > >>> Thanks a lot for your quick responses and really appreciate it.
> > >>>
> > >>>
> > >>>
> > >>> Now I have attached both the error logs and base-files_3.0.14.bb,
> > please let me know if you require any other information from my side
> > >>>
> > >>>
> > >>>
> > >>> Many Thanks in advance
> > >>>
> > >>>
> > >>>
> > >>> On Thu, Jan 17, 2019 at 10:20 AM Peter Kjellerstedt
> > <peter.kjellerstedt@axis.com> wrote:
> > >>>
> > >>> [ Recipient list pruned to not cross-post to every Yocto related
> > mailing
> > >>>   list out there... ]
> > >>>
> > >>> > -----Original Message-----
> > >>> > From: poky-bounces@yoctoproject.org <poky-
> > bounces@yoctoproject.org> On
> > >>> > Behalf Of srinivasan
> > >>> > Sent: den 17 januari 2019 06:03
> > >>> > To: yocto-bsp@yoctoproject.org; yocto-builds@yoctoproject.org;
> > meta-
> > >>> > intel@yoctoproject.org; Development list for the linux-yocto*.git
> > Linux
> > >>> > kernel repositories <linux-yocto@yoctoproject.org>;
> > >>> > poky@yoctoproject.org; yocto-infrastructure@yoctoproject.org;
> > >>> > yocto@yoctoproject.org; meta-freescale@yoctoproject.org; meta-
> > >>> > freescale-request@yoctoproject.org
> > >>> > Subject: [poky] Error: base-files/3.0.14-
> > r89/temp/run.do_install.80432:
> > >>> > Syntax error: Unterminated quoted string
> > >>> >
> > >>> > Dear Yocto Experts,
> > >>> >
> > >>> > I am trying to customize my vendor specific Yocto BSP's to my
> > custom
> > >>> > OS.  I am facing the below error, could you please do the needful
> > or
> > >>> > provide me some pointers from your end for solving this issue
> > >>> >
> > >>> > Error:
> > >>> > $ bitbake fsl-image-validation-imx
> > >>> > WARNING: Host distribution "ubuntu-18.04" has not been validated
> > with
> > >>> > this version of the build system; you may possibly experience
> > >>> > unexpected failures. It is recommended that you use a tested
> > >>> > distribution.
> > >>> > Loading cache: 100%
> > >>> >
> > |######################################################################
> > >>> >
> > #######################################################################
> > >>> >
> > #######################################################################
> > >>> > ###########################|
> > >>> > Time: 0:00:00
> > >>> > Loaded 3196 entries from dependency cache.
> > >>> > Parsing recipes: 100%
> > >>> >
> > |######################################################################
> > >>> >
> > #######################################################################
> > >>> >
> > #######################################################################
> > >>> > #########################|
> > >>> > Time: 0:00:02
> > >>> > Parsing of 2298 .bb files complete (2284 cached, 14 parsed). 3202
> > >>> > targets, 398 skipped, 6 masked, 0 errors.
> > >>> > NOTE: Resolving any missing task queue dependencies
> > >>> >
> > >>> > Build Configuration:
> > >>> > BB_VERSION           = "1.38.0"
> > >>> > BUILD_SYS            = "x86_64-linux"
> > >>> > NATIVELSBSTRING      = "universal"
> > >>> > TARGET_SYS           = "aarch64-poky-linux"
> > >>> > MACHINE              = "imx8mmevk"
> > >>> > DISTRO               = "custom-TRK"
> > >>> > DISTRO_VERSION       = "${custom_DISTRO_VERSION}"
> > >>> > TUNE_FEATURES        = "aarch64"
> > >>> > TARGET_FPU           = ""
> > >>> > meta-traktor-imx8    =
> > "sumo:4b25c1ee6896b5447f8502f13c28570341505360"
> > >>> > meta-traktor         =
> > "sumo:818be7ec4f768ba485e437dc26beb7bdc4b8120a"
> > >>> > meta-qt5             = "qt-
> > >>> > 5.11:ff6127ddd318d422f595295d1c189a86b3032873"
> > >>> > meta-custom        =
> > "sumo:d98452914e201d46a6b1360ca957d9b3e396b31f"
> > >>> > meta-freescale       =
> > "HEAD:1deea6b4a2f83521ff247ea4743d09cc705ecd8e"
> > >>> > meta
> > >>> > meta-poky            =
> > "sumo:623b77885051174d0e05198843e739110977bd18"
> > >>> > meta-oe
> > >>> > meta-python
> > >>> > meta-networking      =
> > "sumo:8760facba1bceb299b3613b8955621ddaa3d4c3f"
> > >>> > meta-bsp
> > >>> > meta-sdk             =
> > "HEAD:1de93d3d5128b8422c23a87cb8b54149e2bfb942"
> > >>> >
> > >>> > Initialising tasks: 100%
> > >>> >
> > |######################################################################
> > >>> >
> > #######################################################################
> > >>> >
> > #######################################################################
> > >>> > ######################|
> > >>> > Time: 0:00:02
> > >>> > NOTE: Executing SetScene Tasks
> > >>> > NOTE: Executing RunQueue Tasks
> > >>> > ERROR: base-files-3.0.14-r89 do_install: Function failed:
> > do_install
> > >>> > (log file is located at
> > >>> >
> > /home/srinishanmugam/customBuild_test_rpi/custom/buid_test3_customtrk_d
> > >>> > istro_imx8/tmp/work/imx8mmevk-poky-linux/base-files/3.0.14-
> > >>> > r89/temp/log.do_install.80432)
> > >>> > ERROR: Logfile of failure stored in:
> > >>> >
> > /home/srinishanmugam/customBuild_test_rpi/custom/buid_test3_customtrk_d
> > >>> > istro_imx8/tmp/work/imx8mmevk-poky-linux/base-files/3.0.14-
> > >>> > r89/temp/log.do_install.80432
> > >>> > Log data follows:
> > >>> > | DEBUG: Executing python function extend_recipe_sysroot
> > >>> > | NOTE: Direct dependencies are
> > >>> >
> > ['/home/srinishanmugam/customBuild_test_rpi/custom/sources/poky/meta/re
> > >>> > cipes-devtools/quilt/quilt-native_0.65.bb:do_populate_sysroot',
> > >>> >
> > 'virtual:native:/home/srinishanmugam/customBuild_test_rpi/custom/source
> > >>> > s/poky/meta/recipes-
> > devtools/pseudo/pseudo_git.bb:do_populate_sysroot']
> > >>> > | NOTE: Installed into sysroot: []
> > >>> > | NOTE: Skipping as already exists in sysroot: ['quilt-native',
> > >>> > 'pseudo-native']
> > >>> > | DEBUG: Python function extend_recipe_sysroot finished
> > >>> > | DEBUG: Executing shell function do_install
> > >>> > |
> > >>> >
> > /home/srinishanmugam/customBuild_test_rpi/custom/buid_test3_customtrk_d
> > >>> > istro_imx8/tmp/work/imx8mmevk-poky-linux/base-files/3.0.14-
> > >>> > r89/temp/run.do_install.80432:
> > >>> > 176:
> > >>> >
> > /home/srinishanmugam/customBuild_test_rpi/custom/buid_test3_customtrk_d
> > >>> > istro_imx8/tmp/work/imx8mmevk-poky-linux/base-files/3.0.14-
> > >>> > r89/temp/run.do_install.80432:
> > >>> > Syntax error: Unterminated quoted string
> > >>> > | WARNING: exit code 2 from a shell command.
> > >>> > | ERROR: Function failed: do_install (log file is located at
> > >>> >
> > /home/srinishanmugam/customBuild_test_rpi/custom/buid_test3_customtrk_d
> > >>> > istro_imx8/tmp/work/imx8mmevk-poky-linux/base-files/3.0.14-
> > >>> > r89/temp/log.do_install.80432)
> > >>> > ERROR: Task
> > >>> >
> > (/home/srinishanmugam/customBuild_test_rpi/custom/sources/poky/meta/rec
> > >>> > ipes-core/base-files/base-files_3.0.14.bb:do_install)
> > >>> > failed with exit code '1'
> > >>> > NOTE: Tasks Summary: Attempted 1256 tasks of which 1204 didn't
> > need to
> > >>> > be rerun and 1 failed.
> > >>> >
> > >>> > Summary: 1 task failed:
> > >>> >
> > >>> >
> > /home/srinishanmugam/customBuild_test_rpi/custom/sources/poky/meta/reci
> > >>> > pes-core/base-files/base-files_3.0.14.bb:do_install
> > >>> > Summary: There was 1 WARNING message shown.
> > >>> > Summary: There was 1 ERROR message shown, returning a non-zero
> > exit
> > >>> > code.
> > >>> > srinishanmugam@ni-bln-
> > >>> >
> > 07594:~/customBuild_test_rpi/custom/buid_test3_customtrk_distro_imx8$
> > >>> >
> > >>> >
> > >>> > Kindly do the needful,
> > >>> > Many Thanks in advance
> > >>>
> > >>> Have you looked at the contents of
> > >>>
> > /home/srinishanmugam/customBuild_test_rpi/custom/buid_test3_customtrk_d
> > istro_imx8/tmp/work/imx8mmevk-poky-linux/base-files/3.0.14-
> > r89/temp/run.do_install.80432
> > >>> to try to determine what caused the erroneous syntax? Otherwise do
> > that,
> > >>> and if you still cannot tell what causes the problem, please attach
> > the
> > >>> file for us to look at.
> > >>>
> > >>> //Peter

--000000000000c62377057fb2f94b
Content-Type: application/octet-stream; name="run.do_install.2945"
Content-Disposition: attachment; filename="run.do_install.2945"
Content-Transfer-Encoding: base64
Content-ID: <f_jr1h49rt0>
X-Attachment-Id: f_jr1h49rt0

IyEvYmluL3NoCgojIEVtaXQgYSB1c2VmdWwgZGlhZ25vc3RpYyBpZiBzb21ldGhpbmcgZmFpbHM6
CmJiX2V4aXRfaGFuZGxlcigpIHsKICAgIHJldD0kPwogICAgY2FzZSAkcmV0IGluCiAgICAwKSAg
OzsKICAgICopICBjYXNlICRCQVNIX1ZFUlNJT04gaW4KICAgICAgICAiIikgZWNobyAiV0FSTklO
RzogZXhpdCBjb2RlICRyZXQgZnJvbSBhIHNoZWxsIGNvbW1hbmQuIjs7CiAgICAgICAgKikgIGVj
aG8gIldBUk5JTkc6ICR7QkFTSF9TT1VSQ0VbMF19OiR7QkFTSF9MSU5FTk9bMF19IGV4aXQgJHJl
dCBmcm9tICckQkFTSF9DT01NQU5EJyI7OwogICAgICAgIGVzYWMKICAgICAgICBleGl0ICRyZXQK
ICAgIGVzYWMKfQp0cmFwICdiYl9leGl0X2hhbmRsZXInIDAKc2V0IC1lCmV4cG9ydCBBUj0iYWFy
Y2g2NC1wb2t5LWxpbnV4LWFyIgpleHBvcnQgQVM9ImFhcmNoNjQtcG9reS1saW51eC1hcyAiCmV4
cG9ydCBCVUlMRF9BUj0iYXIiCmV4cG9ydCBCVUlMRF9BUz0iYXMgIgpleHBvcnQgQlVJTERfQ0M9
ImdjYyAiCmV4cG9ydCBCVUlMRF9DQ0xEPSJnY2MgIgpleHBvcnQgQlVJTERfQ0ZMQUdTPSItaXN5
c3RlbS9ob21lL3NyaW5pc2hhbm11Z2FtL05JQnVpbGRfdGVzdF9ycGkvbmF0aXZlb3MvYnVpbGRf
dGVzdF9uYXRpdmVvc2Rpc3Ryby90bXAvd29yay9pbXg4bW1ldmstcG9reS1saW51eC9iYXNlLWZp
bGVzLzMuMC4xNC1yODkvcmVjaXBlLXN5c3Jvb3QtbmF0aXZlL3Vzci9pbmNsdWRlIC1PMiAtcGlw
ZSIKZXhwb3J0IEJVSUxEX0NQUD0iZ2NjICAtRSIKZXhwb3J0IEJVSUxEX0NQUEZMQUdTPSItaXN5
c3RlbS9ob21lL3NyaW5pc2hhbm11Z2FtL05JQnVpbGRfdGVzdF9ycGkvbmF0aXZlb3MvYnVpbGRf
dGVzdF9uYXRpdmVvc2Rpc3Ryby90bXAvd29yay9pbXg4bW1ldmstcG9reS1saW51eC9iYXNlLWZp
bGVzLzMuMC4xNC1yODkvcmVjaXBlLXN5c3Jvb3QtbmF0aXZlL3Vzci9pbmNsdWRlIgpleHBvcnQg
QlVJTERfQ1hYPSJnKysgIgpleHBvcnQgQlVJTERfQ1hYRkxBR1M9Ii1pc3lzdGVtL2hvbWUvc3Jp
bmlzaGFubXVnYW0vTklCdWlsZF90ZXN0X3JwaS9uYXRpdmVvcy9idWlsZF90ZXN0X25hdGl2ZW9z
ZGlzdHJvL3RtcC93b3JrL2lteDhtbWV2ay1wb2t5LWxpbnV4L2Jhc2UtZmlsZXMvMy4wLjE0LXI4
OS9yZWNpcGUtc3lzcm9vdC1uYXRpdmUvdXNyL2luY2x1ZGUgLU8yIC1waXBlIgpleHBvcnQgQlVJ
TERfRkM9Imdmb3J0cmFuICIKZXhwb3J0IEJVSUxEX0xEPSJsZCAiCmV4cG9ydCBCVUlMRF9MREZM
QUdTPSItTC9ob21lL3NyaW5pc2hhbm11Z2FtL05JQnVpbGRfdGVzdF9ycGkvbmF0aXZlb3MvYnVp
bGRfdGVzdF9uYXRpdmVvc2Rpc3Ryby90bXAvd29yay9pbXg4bW1ldmstcG9reS1saW51eC9iYXNl
LWZpbGVzLzMuMC4xNC1yODkvcmVjaXBlLXN5c3Jvb3QtbmF0aXZlL3Vzci9saWIgLUwvaG9tZS9z
cmluaXNoYW5tdWdhbS9OSUJ1aWxkX3Rlc3RfcnBpL25hdGl2ZW9zL2J1aWxkX3Rlc3RfbmF0aXZl
b3NkaXN0cm8vdG1wL3dvcmsvaW14OG1tZXZrLXBva3ktbGludXgvYmFzZS1maWxlcy8zLjAuMTQt
cjg5L3JlY2lwZS1zeXNyb290LW5hdGl2ZS9saWIgLVdsLC1ycGF0aC1saW5rLC9ob21lL3NyaW5p
c2hhbm11Z2FtL05JQnVpbGRfdGVzdF9ycGkvbmF0aXZlb3MvYnVpbGRfdGVzdF9uYXRpdmVvc2Rp
c3Ryby90bXAvd29yay9pbXg4bW1ldmstcG9reS1saW51eC9iYXNlLWZpbGVzLzMuMC4xNC1yODkv
cmVjaXBlLXN5c3Jvb3QtbmF0aXZlL3Vzci9saWIgLVdsLC1ycGF0aC1saW5rLC9ob21lL3NyaW5p
c2hhbm11Z2FtL05JQnVpbGRfdGVzdF9ycGkvbmF0aXZlb3MvYnVpbGRfdGVzdF9uYXRpdmVvc2Rp
c3Ryby90bXAvd29yay9pbXg4bW1ldmstcG9reS1saW51eC9iYXNlLWZpbGVzLzMuMC4xNC1yODkv
cmVjaXBlLXN5c3Jvb3QtbmF0aXZlL2xpYiAtV2wsLXJwYXRoLC9ob21lL3NyaW5pc2hhbm11Z2Ft
L05JQnVpbGRfdGVzdF9ycGkvbmF0aXZlb3MvYnVpbGRfdGVzdF9uYXRpdmVvc2Rpc3Ryby90bXAv
d29yay9pbXg4bW1ldmstcG9reS1saW51eC9iYXNlLWZpbGVzLzMuMC4xNC1yODkvcmVjaXBlLXN5
c3Jvb3QtbmF0aXZlL3Vzci9saWIgLVdsLC1ycGF0aCwvaG9tZS9zcmluaXNoYW5tdWdhbS9OSUJ1
aWxkX3Rlc3RfcnBpL25hdGl2ZW9zL2J1aWxkX3Rlc3RfbmF0aXZlb3NkaXN0cm8vdG1wL3dvcmsv
aW14OG1tZXZrLXBva3ktbGludXgvYmFzZS1maWxlcy8zLjAuMTQtcjg5L3JlY2lwZS1zeXNyb290
LW5hdGl2ZS9saWIgLVdsLC1PMSIKZXhwb3J0IEJVSUxEX05NPSJubSIKZXhwb3J0IEJVSUxEX1JB
TkxJQj0icmFubGliIgpleHBvcnQgQlVJTERfU1RSSVA9InN0cmlwIgpleHBvcnQgQ0M9ImFhcmNo
NjQtcG9reS1saW51eC1nY2MgIC0tc3lzcm9vdD0vaG9tZS9zcmluaXNoYW5tdWdhbS9OSUJ1aWxk
X3Rlc3RfcnBpL25hdGl2ZW9zL2J1aWxkX3Rlc3RfbmF0aXZlb3NkaXN0cm8vdG1wL3dvcmsvaW14
OG1tZXZrLXBva3ktbGludXgvYmFzZS1maWxlcy8zLjAuMTQtcjg5L3JlY2lwZS1zeXNyb290Igpl
eHBvcnQgQ0NBQ0hFX0RJUj0iL2hvbWUvc3JpbmlzaGFubXVnYW0vLmNjYWNoZSIKZXhwb3J0IEND
TEQ9ImFhcmNoNjQtcG9reS1saW51eC1nY2MgIC0tc3lzcm9vdD0vaG9tZS9zcmluaXNoYW5tdWdh
bS9OSUJ1aWxkX3Rlc3RfcnBpL25hdGl2ZW9zL2J1aWxkX3Rlc3RfbmF0aXZlb3NkaXN0cm8vdG1w
L3dvcmsvaW14OG1tZXZrLXBva3ktbGludXgvYmFzZS1maWxlcy8zLjAuMTQtcjg5L3JlY2lwZS1z
eXNyb290IgpleHBvcnQgQ0ZMQUdTPSIgLU8yIC1waXBlIC1nIC1mZWxpbWluYXRlLXVudXNlZC1k
ZWJ1Zy10eXBlcyAtZmRlYnVnLXByZWZpeC1tYXA9L2hvbWUvc3JpbmlzaGFubXVnYW0vTklCdWls
ZF90ZXN0X3JwaS9uYXRpdmVvcy9idWlsZF90ZXN0X25hdGl2ZW9zZGlzdHJvL3RtcC93b3JrL2lt
eDhtbWV2ay1wb2t5LWxpbnV4L2Jhc2UtZmlsZXMvMy4wLjE0LXI4OT0vdXNyL3NyYy9kZWJ1Zy9i
YXNlLWZpbGVzLzMuMC4xNC1yODkgLWZkZWJ1Zy1wcmVmaXgtbWFwPS9ob21lL3NyaW5pc2hhbm11
Z2FtL05JQnVpbGRfdGVzdF9ycGkvbmF0aXZlb3MvYnVpbGRfdGVzdF9uYXRpdmVvc2Rpc3Ryby90
bXAvd29yay9pbXg4bW1ldmstcG9reS1saW51eC9iYXNlLWZpbGVzLzMuMC4xNC1yODkvcmVjaXBl
LXN5c3Jvb3Q9IC1mZGVidWctcHJlZml4LW1hcD0vaG9tZS9zcmluaXNoYW5tdWdhbS9OSUJ1aWxk
X3Rlc3RfcnBpL25hdGl2ZW9zL2J1aWxkX3Rlc3RfbmF0aXZlb3NkaXN0cm8vdG1wL3dvcmsvaW14
OG1tZXZrLXBva3ktbGludXgvYmFzZS1maWxlcy8zLjAuMTQtcjg5L3JlY2lwZS1zeXNyb290LW5h
dGl2ZT0gIgpleHBvcnQgQ1BQPSJhYXJjaDY0LXBva3ktbGludXgtZ2NjIC1FIC0tc3lzcm9vdD0v
aG9tZS9zcmluaXNoYW5tdWdhbS9OSUJ1aWxkX3Rlc3RfcnBpL25hdGl2ZW9zL2J1aWxkX3Rlc3Rf
bmF0aXZlb3NkaXN0cm8vdG1wL3dvcmsvaW14OG1tZXZrLXBva3ktbGludXgvYmFzZS1maWxlcy8z
LjAuMTQtcjg5L3JlY2lwZS1zeXNyb290ICIKZXhwb3J0IENQUEZMQUdTPSIiCmV4cG9ydCBDWFg9
ImFhcmNoNjQtcG9reS1saW51eC1nKysgIC0tc3lzcm9vdD0vaG9tZS9zcmluaXNoYW5tdWdhbS9O
SUJ1aWxkX3Rlc3RfcnBpL25hdGl2ZW9zL2J1aWxkX3Rlc3RfbmF0aXZlb3NkaXN0cm8vdG1wL3dv
cmsvaW14OG1tZXZrLXBva3ktbGludXgvYmFzZS1maWxlcy8zLjAuMTQtcjg5L3JlY2lwZS1zeXNy
b290IgpleHBvcnQgQ1hYRkxBR1M9IiAtTzIgLXBpcGUgLWcgLWZlbGltaW5hdGUtdW51c2VkLWRl
YnVnLXR5cGVzIC1mZGVidWctcHJlZml4LW1hcD0vaG9tZS9zcmluaXNoYW5tdWdhbS9OSUJ1aWxk
X3Rlc3RfcnBpL25hdGl2ZW9zL2J1aWxkX3Rlc3RfbmF0aXZlb3NkaXN0cm8vdG1wL3dvcmsvaW14
OG1tZXZrLXBva3ktbGludXgvYmFzZS1maWxlcy8zLjAuMTQtcjg5PS91c3Ivc3JjL2RlYnVnL2Jh
c2UtZmlsZXMvMy4wLjE0LXI4OSAtZmRlYnVnLXByZWZpeC1tYXA9L2hvbWUvc3JpbmlzaGFubXVn
YW0vTklCdWlsZF90ZXN0X3JwaS9uYXRpdmVvcy9idWlsZF90ZXN0X25hdGl2ZW9zZGlzdHJvL3Rt
cC93b3JrL2lteDhtbWV2ay1wb2t5LWxpbnV4L2Jhc2UtZmlsZXMvMy4wLjE0LXI4OS9yZWNpcGUt
c3lzcm9vdD0gLWZkZWJ1Zy1wcmVmaXgtbWFwPS9ob21lL3NyaW5pc2hhbm11Z2FtL05JQnVpbGRf
dGVzdF9ycGkvbmF0aXZlb3MvYnVpbGRfdGVzdF9uYXRpdmVvc2Rpc3Ryby90bXAvd29yay9pbXg4
bW1ldmstcG9reS1saW51eC9iYXNlLWZpbGVzLzMuMC4xNC1yODkvcmVjaXBlLXN5c3Jvb3QtbmF0
aXZlPSAgLWZ2aXNpYmlsaXR5LWlubGluZXMtaGlkZGVuIgp1bnNldCBESVNUUk8KZXhwb3J0IEZD
PSJhYXJjaDY0LXBva3ktbGludXgtZ2ZvcnRyYW4gIC0tc3lzcm9vdD0vaG9tZS9zcmluaXNoYW5t
dWdhbS9OSUJ1aWxkX3Rlc3RfcnBpL25hdGl2ZW9zL2J1aWxkX3Rlc3RfbmF0aXZlb3NkaXN0cm8v
dG1wL3dvcmsvaW14OG1tZXZrLXBva3ktbGludXgvYmFzZS1maWxlcy8zLjAuMTQtcjg5L3JlY2lw
ZS1zeXNyb290IgpleHBvcnQgSE9NRT0iL2hvbWUvc3JpbmlzaGFubXVnYW0iCmV4cG9ydCBMQ19B
TEw9ImVuX1VTLlVURi04IgpleHBvcnQgTEQ9ImFhcmNoNjQtcG9reS1saW51eC1sZCAtLXN5c3Jv
b3Q9L2hvbWUvc3JpbmlzaGFubXVnYW0vTklCdWlsZF90ZXN0X3JwaS9uYXRpdmVvcy9idWlsZF90
ZXN0X25hdGl2ZW9zZGlzdHJvL3RtcC93b3JrL2lteDhtbWV2ay1wb2t5LWxpbnV4L2Jhc2UtZmls
ZXMvMy4wLjE0LXI4OS9yZWNpcGUtc3lzcm9vdCAiCmV4cG9ydCBMREZMQUdTPSItV2wsLU8xIC1X
bCwtLWhhc2gtc3R5bGU9Z251IC1XbCwtLWFzLW5lZWRlZCIKZXhwb3J0IExPR05BTUU9InNyaW5p
c2hhbm11Z2FtIgp1bnNldCBNQUNISU5FCmV4cG9ydCBNQUtFPSJtYWtlIgpleHBvcnQgTk09ImFh
cmNoNjQtcG9reS1saW51eC1ubSIKZXhwb3J0IE9CSkNPUFk9ImFhcmNoNjQtcG9reS1saW51eC1v
Ympjb3B5IgpleHBvcnQgT0JKRFVNUD0iYWFyY2g2NC1wb2t5LWxpbnV4LW9iamR1bXAiCmV4cG9y
dCBQQVRIPSIvaG9tZS9zcmluaXNoYW5tdWdhbS9OSUJ1aWxkX3Rlc3RfcnBpL25hdGl2ZW9zL3Nv
dXJjZXMvcG9reS9zY3JpcHRzOi9ob21lL3NyaW5pc2hhbm11Z2FtL05JQnVpbGRfdGVzdF9ycGkv
bmF0aXZlb3MvYnVpbGRfdGVzdF9uYXRpdmVvc2Rpc3Ryby90bXAvd29yay9pbXg4bW1ldmstcG9r
eS1saW51eC9iYXNlLWZpbGVzLzMuMC4xNC1yODkvcmVjaXBlLXN5c3Jvb3QtbmF0aXZlL3Vzci9i
aW4vYWFyY2g2NC1wb2t5LWxpbnV4Oi9ob21lL3NyaW5pc2hhbm11Z2FtL05JQnVpbGRfdGVzdF9y
cGkvbmF0aXZlb3MvYnVpbGRfdGVzdF9uYXRpdmVvc2Rpc3Ryby90bXAvd29yay9pbXg4bW1ldmst
cG9reS1saW51eC9iYXNlLWZpbGVzLzMuMC4xNC1yODkvcmVjaXBlLXN5c3Jvb3QvdXNyL2Jpbi9j
cm9zc3NjcmlwdHM6L2hvbWUvc3JpbmlzaGFubXVnYW0vTklCdWlsZF90ZXN0X3JwaS9uYXRpdmVv
cy9idWlsZF90ZXN0X25hdGl2ZW9zZGlzdHJvL3RtcC93b3JrL2lteDhtbWV2ay1wb2t5LWxpbnV4
L2Jhc2UtZmlsZXMvMy4wLjE0LXI4OS9yZWNpcGUtc3lzcm9vdC1uYXRpdmUvdXNyL3NiaW46L2hv
bWUvc3JpbmlzaGFubXVnYW0vTklCdWlsZF90ZXN0X3JwaS9uYXRpdmVvcy9idWlsZF90ZXN0X25h
dGl2ZW9zZGlzdHJvL3RtcC93b3JrL2lteDhtbWV2ay1wb2t5LWxpbnV4L2Jhc2UtZmlsZXMvMy4w
LjE0LXI4OS9yZWNpcGUtc3lzcm9vdC1uYXRpdmUvdXNyL2JpbjovaG9tZS9zcmluaXNoYW5tdWdh
bS9OSUJ1aWxkX3Rlc3RfcnBpL25hdGl2ZW9zL2J1aWxkX3Rlc3RfbmF0aXZlb3NkaXN0cm8vdG1w
L3dvcmsvaW14OG1tZXZrLXBva3ktbGludXgvYmFzZS1maWxlcy8zLjAuMTQtcjg5L3JlY2lwZS1z
eXNyb290LW5hdGl2ZS9zYmluOi9ob21lL3NyaW5pc2hhbm11Z2FtL05JQnVpbGRfdGVzdF9ycGkv
bmF0aXZlb3MvYnVpbGRfdGVzdF9uYXRpdmVvc2Rpc3Ryby90bXAvd29yay9pbXg4bW1ldmstcG9r
eS1saW51eC9iYXNlLWZpbGVzLzMuMC4xNC1yODkvcmVjaXBlLXN5c3Jvb3QtbmF0aXZlL2Jpbjov
aG9tZS9zcmluaXNoYW5tdWdhbS9OSUJ1aWxkX3Rlc3RfcnBpL25hdGl2ZW9zL3NvdXJjZXMvcG9r
eS9iaXRiYWtlL2JpbjovaG9tZS9zcmluaXNoYW5tdWdhbS9OSUJ1aWxkX3Rlc3RfcnBpL25hdGl2
ZW9zL2J1aWxkX3Rlc3RfbmF0aXZlb3NkaXN0cm8vdG1wL2hvc3R0b29scyIKZXhwb3J0IFBLR19D
T05GSUdfRElSPSIvaG9tZS9zcmluaXNoYW5tdWdhbS9OSUJ1aWxkX3Rlc3RfcnBpL25hdGl2ZW9z
L2J1aWxkX3Rlc3RfbmF0aXZlb3NkaXN0cm8vdG1wL3dvcmsvaW14OG1tZXZrLXBva3ktbGludXgv
YmFzZS1maWxlcy8zLjAuMTQtcjg5L3JlY2lwZS1zeXNyb290L3Vzci9saWIvcGtnY29uZmlnIgpl
eHBvcnQgUEtHX0NPTkZJR19ESVNBQkxFX1VOSU5TVEFMTEVEPSJ5ZXMiCmV4cG9ydCBQS0dfQ09O
RklHX0xJQkRJUj0iL2hvbWUvc3JpbmlzaGFubXVnYW0vTklCdWlsZF90ZXN0X3JwaS9uYXRpdmVv
cy9idWlsZF90ZXN0X25hdGl2ZW9zZGlzdHJvL3RtcC93b3JrL2lteDhtbWV2ay1wb2t5LWxpbnV4
L2Jhc2UtZmlsZXMvMy4wLjE0LXI4OS9yZWNpcGUtc3lzcm9vdC91c3IvbGliL3BrZ2NvbmZpZyIK
ZXhwb3J0IFBLR19DT05GSUdfUEFUSD0iL2hvbWUvc3JpbmlzaGFubXVnYW0vTklCdWlsZF90ZXN0
X3JwaS9uYXRpdmVvcy9idWlsZF90ZXN0X25hdGl2ZW9zZGlzdHJvL3RtcC93b3JrL2lteDhtbWV2
ay1wb2t5LWxpbnV4L2Jhc2UtZmlsZXMvMy4wLjE0LXI4OS9yZWNpcGUtc3lzcm9vdC91c3IvbGli
L3BrZ2NvbmZpZzovaG9tZS9zcmluaXNoYW5tdWdhbS9OSUJ1aWxkX3Rlc3RfcnBpL25hdGl2ZW9z
L2J1aWxkX3Rlc3RfbmF0aXZlb3NkaXN0cm8vdG1wL3dvcmsvaW14OG1tZXZrLXBva3ktbGludXgv
YmFzZS1maWxlcy8zLjAuMTQtcjg5L3JlY2lwZS1zeXNyb290L3Vzci9zaGFyZS9wa2djb25maWci
CmV4cG9ydCBQS0dfQ09ORklHX1NZU1JPT1RfRElSPSIvaG9tZS9zcmluaXNoYW5tdWdhbS9OSUJ1
aWxkX3Rlc3RfcnBpL25hdGl2ZW9zL2J1aWxkX3Rlc3RfbmF0aXZlb3NkaXN0cm8vdG1wL3dvcmsv
aW14OG1tZXZrLXBva3ktbGludXgvYmFzZS1maWxlcy8zLjAuMTQtcjg5L3JlY2lwZS1zeXNyb290
IgpleHBvcnQgUEtHX0NPTkZJR19TWVNURU1fSU5DTFVERV9QQVRIPSIvdXNyL2luY2x1ZGUiCmV4
cG9ydCBQS0dfQ09ORklHX1NZU1RFTV9MSUJSQVJZX1BBVEg9Ii9saWI6L3Vzci9saWIiCmV4cG9y
dCBQU0VVRE9fRElTQUJMRUQ9IjAiCmV4cG9ydCBQU0VVRE9fTE9DQUxTVEFURURJUj0iL2hvbWUv
c3JpbmlzaGFubXVnYW0vTklCdWlsZF90ZXN0X3JwaS9uYXRpdmVvcy9idWlsZF90ZXN0X25hdGl2
ZW9zZGlzdHJvL3RtcC93b3JrL2lteDhtbWV2ay1wb2t5LWxpbnV4L2Jhc2UtZmlsZXMvMy4wLjE0
LXI4OS9wc2V1ZG8vIgpleHBvcnQgUFNFVURPX05PU1lNTElOS0VYUD0iMSIKZXhwb3J0IFBTRVVE
T19QQVNTV0Q9Ii9ob21lL3NyaW5pc2hhbm11Z2FtL05JQnVpbGRfdGVzdF9ycGkvbmF0aXZlb3Mv
YnVpbGRfdGVzdF9uYXRpdmVvc2Rpc3Ryby90bXAvd29yay9pbXg4bW1ldmstcG9reS1saW51eC9i
YXNlLWZpbGVzLzMuMC4xNC1yODkvcmVjaXBlLXN5c3Jvb3Q6L2hvbWUvc3JpbmlzaGFubXVnYW0v
TklCdWlsZF90ZXN0X3JwaS9uYXRpdmVvcy9idWlsZF90ZXN0X25hdGl2ZW9zZGlzdHJvL3RtcC9z
eXNyb290cy1jb21wb25lbnRzL3g4Nl82NC9wc2V1ZG8tbmF0aXZlIgpleHBvcnQgUFNFVURPX1BS
RUZJWD0iL2hvbWUvc3JpbmlzaGFubXVnYW0vTklCdWlsZF90ZXN0X3JwaS9uYXRpdmVvcy9idWls
ZF90ZXN0X25hdGl2ZW9zZGlzdHJvL3RtcC9zeXNyb290cy1jb21wb25lbnRzL3g4Nl82NC9wc2V1
ZG8tbmF0aXZlL3VzciIKZXhwb3J0IFJBTkxJQj0iYWFyY2g2NC1wb2t5LWxpbnV4LXJhbmxpYiIK
ZXhwb3J0IFJFQURFTEY9ImFhcmNoNjQtcG9reS1saW51eC1yZWFkZWxmIgp1bnNldCBTSEVMTApl
eHBvcnQgU1RSSU5HUz0iYWFyY2g2NC1wb2t5LWxpbnV4LXN0cmluZ3MiCmV4cG9ydCBTVFJJUD0i
YWFyY2g2NC1wb2t5LWxpbnV4LXN0cmlwIgp1bnNldCBUQVJHRVRfQVJDSApleHBvcnQgVEFSR0VU
X0NGTEFHUz0iIC1PMiAtcGlwZSAtZyAtZmVsaW1pbmF0ZS11bnVzZWQtZGVidWctdHlwZXMgLWZk
ZWJ1Zy1wcmVmaXgtbWFwPS9ob21lL3NyaW5pc2hhbm11Z2FtL05JQnVpbGRfdGVzdF9ycGkvbmF0
aXZlb3MvYnVpbGRfdGVzdF9uYXRpdmVvc2Rpc3Ryby90bXAvd29yay9pbXg4bW1ldmstcG9reS1s
aW51eC9iYXNlLWZpbGVzLzMuMC4xNC1yODk9L3Vzci9zcmMvZGVidWcvYmFzZS1maWxlcy8zLjAu
MTQtcjg5IC1mZGVidWctcHJlZml4LW1hcD0vaG9tZS9zcmluaXNoYW5tdWdhbS9OSUJ1aWxkX3Rl
c3RfcnBpL25hdGl2ZW9zL2J1aWxkX3Rlc3RfbmF0aXZlb3NkaXN0cm8vdG1wL3dvcmsvaW14OG1t
ZXZrLXBva3ktbGludXgvYmFzZS1maWxlcy8zLjAuMTQtcjg5L3JlY2lwZS1zeXNyb290PSAtZmRl
YnVnLXByZWZpeC1tYXA9L2hvbWUvc3JpbmlzaGFubXVnYW0vTklCdWlsZF90ZXN0X3JwaS9uYXRp
dmVvcy9idWlsZF90ZXN0X25hdGl2ZW9zZGlzdHJvL3RtcC93b3JrL2lteDhtbWV2ay1wb2t5LWxp
bnV4L2Jhc2UtZmlsZXMvMy4wLjE0LXI4OS9yZWNpcGUtc3lzcm9vdC1uYXRpdmU9ICIKZXhwb3J0
IFRBUkdFVF9DUFBGTEFHUz0iIgpleHBvcnQgVEFSR0VUX0NYWEZMQUdTPSIgLU8yIC1waXBlIC1n
IC1mZWxpbWluYXRlLXVudXNlZC1kZWJ1Zy10eXBlcyAtZmRlYnVnLXByZWZpeC1tYXA9L2hvbWUv
c3JpbmlzaGFubXVnYW0vTklCdWlsZF90ZXN0X3JwaS9uYXRpdmVvcy9idWlsZF90ZXN0X25hdGl2
ZW9zZGlzdHJvL3RtcC93b3JrL2lteDhtbWV2ay1wb2t5LWxpbnV4L2Jhc2UtZmlsZXMvMy4wLjE0
LXI4OT0vdXNyL3NyYy9kZWJ1Zy9iYXNlLWZpbGVzLzMuMC4xNC1yODkgLWZkZWJ1Zy1wcmVmaXgt
bWFwPS9ob21lL3NyaW5pc2hhbm11Z2FtL05JQnVpbGRfdGVzdF9ycGkvbmF0aXZlb3MvYnVpbGRf
dGVzdF9uYXRpdmVvc2Rpc3Ryby90bXAvd29yay9pbXg4bW1ldmstcG9reS1saW51eC9iYXNlLWZp
bGVzLzMuMC4xNC1yODkvcmVjaXBlLXN5c3Jvb3Q9IC1mZGVidWctcHJlZml4LW1hcD0vaG9tZS9z
cmluaXNoYW5tdWdhbS9OSUJ1aWxkX3Rlc3RfcnBpL25hdGl2ZW9zL2J1aWxkX3Rlc3RfbmF0aXZl
b3NkaXN0cm8vdG1wL3dvcmsvaW14OG1tZXZrLXBva3ktbGludXgvYmFzZS1maWxlcy8zLjAuMTQt
cjg5L3JlY2lwZS1zeXNyb290LW5hdGl2ZT0gIgpleHBvcnQgVEFSR0VUX0xERkxBR1M9Ii1XbCwt
TzEgLVdsLC0taGFzaC1zdHlsZT1nbnUgLVdsLC0tYXMtbmVlZGVkIgpleHBvcnQgVEVSTT0ieHRl
cm0tMjU2Y29sb3IiCmV4cG9ydCBUWj0iVVRDIgpleHBvcnQgVVNFUj0ic3JpbmlzaGFubXVnYW0i
CmV4cG9ydCBiYXNlX2JpbmRpcj0iL2JpbiIKZXhwb3J0IGJhc2VfbGliZGlyPSIvbGliIgpleHBv
cnQgYmFzZV9wcmVmaXg9IiIKZXhwb3J0IGJhc2Vfc2JpbmRpcj0iL3NiaW4iCmV4cG9ydCBiaW5k
aXI9Ii91c3IvYmluIgpleHBvcnQgZGF0YWRpcj0iL3Vzci9zaGFyZSIKZXhwb3J0IGRvY2Rpcj0i
L3Vzci9zaGFyZS9kb2MvYmFzZS1maWxlcy0zLjAuMTQiCmV4cG9ydCBleGVjX3ByZWZpeD0iL3Vz
ciIKZXhwb3J0IGluY2x1ZGVkaXI9Ii91c3IvaW5jbHVkZSIKZXhwb3J0IGluZm9kaXI9Ii91c3Iv
c2hhcmUvaW5mbyIKZXhwb3J0IGxpYmRpcj0iL3Vzci9saWIiCmV4cG9ydCBsaWJleGVjZGlyPSIv
dXNyL2xpYmV4ZWMiCmV4cG9ydCBsb2NhbHN0YXRlZGlyPSIvdmFyIgpleHBvcnQgbWFuZGlyPSIv
dXNyL3NoYXJlL21hbiIKZXhwb3J0IG5vbmFyY2hfYmFzZV9saWJkaXI9Ii9saWIiCmV4cG9ydCBu
b25hcmNoX2xpYmRpcj0iL3Vzci9saWIiCmV4cG9ydCBvbGRpbmNsdWRlZGlyPSIvdXNyL2luY2x1
ZGUiCmV4cG9ydCBwcmVmaXg9Ii91c3IiCmV4cG9ydCBzYmluZGlyPSIvdXNyL3NiaW4iCmV4cG9y
dCBzZXJ2aWNlZGlyPSIvc3J2IgpleHBvcnQgc2hhcmVkc3RhdGVkaXI9Ii9jb20iCmV4cG9ydCBz
eXNjb25mZGlyPSIvZXRjIgpleHBvcnQgc3lzdGVtZF9zeXN0ZW1fdW5pdGRpcj0iL2xpYi9zeXN0
ZW1kL3N5c3RlbSIKZXhwb3J0IHN5c3RlbWRfdW5pdGRpcj0iL2xpYi9zeXN0ZW1kIgpleHBvcnQg
c3lzdGVtZF91c2VyX3VuaXRkaXI9Ii91c3IvbGliL3N5c3RlbWQvdXNlciIKCmRvX2luc3RhbGwo
KSB7CgogICAgICAgIGJiZXJyb3IgIi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tc3JpbmkgaGVsbG8g
d29ybGQtLS0tLS0tLS0tLS0tLS1kb19pbnN0YWxsKCkiCgoJZm9yIGQgaW4gL3N5cyAvcHJvYzsg
ZG8KCQlpbnN0YWxsIC1tIDA1NTUgLWQgL2hvbWUvc3JpbmlzaGFubXVnYW0vTklCdWlsZF90ZXN0
X3JwaS9uYXRpdmVvcy9idWlsZF90ZXN0X25hdGl2ZW9zZGlzdHJvL3RtcC93b3JrL2lteDhtbWV2
ay1wb2t5LWxpbnV4L2Jhc2UtZmlsZXMvMy4wLjE0LXI4OS9pbWFnZSRkCglkb25lCglmb3IgZCBp
biAvYm9vdCAvZGV2IC9iaW4gL3NiaW4gL2xpYiAgICAgICAgICAgIC9ldGMgL2V0Yy9kZWZhdWx0
ICAgICAgICAgICAgL2V0Yy9za2VsIC9saWIgL21udCAvaG9tZS9yb290IC9ydW4gICAgICAgICAg
ICAvdXNyIC91c3IvYmluIC91c3Ivc2hhcmUvZG9jL2Jhc2UtZmlsZXMtMy4wLjE0IC91c3IvZ2Ft
ZXMgL3Vzci9pbmNsdWRlICAgICAgICAgICAgL3Vzci9saWIgL3Vzci9zYmluIC91c3Ivc2hhcmUg
ICAgICAgICAgICAvdXNyL3NoYXJlL2NvbW1vbi1saWNlbnNlcyAvdXNyL3NoYXJlL2RpY3QgL3Vz
ci9zaGFyZS9pbmZvICAgICAgICAgICAgL3Vzci9zaGFyZS9tYW4gL3Vzci9zaGFyZS9taXNjIC92
YXIgICAgICAgICAgICAvdmFyL2JhY2t1cHMgL3Zhci9saWIgICAgICAgICAgICAvdmFyL2xpYi9t
aXNjIC92YXIvc3Bvb2wgICAgICAgICAgICAvdmFyL3ZvbGF0aWxlICAgICAgICAgICAgL3Zhci92
b2xhdGlsZS9sb2cgICAgICAgICAgICAvaG9tZSAvdXNyL3NyYyAvdmFyL2xvY2FsICAgICAgICAg
ICAgL21lZGlhOyBkbwoJCWluc3RhbGwgLW0gMDc1NSAtZCAvaG9tZS9zcmluaXNoYW5tdWdhbS9O
SUJ1aWxkX3Rlc3RfcnBpL25hdGl2ZW9zL2J1aWxkX3Rlc3RfbmF0aXZlb3NkaXN0cm8vdG1wL3dv
cmsvaW14OG1tZXZrLXBva3ktbGludXgvYmFzZS1maWxlcy8zLjAuMTQtcjg5L2ltYWdlJGQKCWRv
bmUKCWZvciBkIGluIC90bXAgL3Zhci92b2xhdGlsZS90bXA7IGRvCgkJaW5zdGFsbCAtbSAxNzc3
IC1kIC9ob21lL3NyaW5pc2hhbm11Z2FtL05JQnVpbGRfdGVzdF9ycGkvbmF0aXZlb3MvYnVpbGRf
dGVzdF9uYXRpdmVvc2Rpc3Ryby90bXAvd29yay9pbXg4bW1ldmstcG9reS1saW51eC9iYXNlLWZp
bGVzLzMuMC4xNC1yODkvaW1hZ2UkZAoJZG9uZQoJZm9yIGQgaW4gOyBkbwoJCWluc3RhbGwgLW0g
Mjc3NSAtZCAvaG9tZS9zcmluaXNoYW5tdWdhbS9OSUJ1aWxkX3Rlc3RfcnBpL25hdGl2ZW9zL2J1
aWxkX3Rlc3RfbmF0aXZlb3NkaXN0cm8vdG1wL3dvcmsvaW14OG1tZXZrLXBva3ktbGludXgvYmFz
ZS1maWxlcy8zLjAuMTQtcjg5L2ltYWdlJGQKCWRvbmUKCWZvciBkIGluIGxvZyB0bXA7IGRvCgkJ
bG4gLXNmIHZvbGF0aWxlLyRkIC9ob21lL3NyaW5pc2hhbm11Z2FtL05JQnVpbGRfdGVzdF9ycGkv
bmF0aXZlb3MvYnVpbGRfdGVzdF9uYXRpdmVvc2Rpc3Ryby90bXAvd29yay9pbXg4bW1ldmstcG9r
eS1saW51eC9iYXNlLWZpbGVzLzMuMC4xNC1yODkvaW1hZ2UvdmFyLyRkCglkb25lCgoJbG4gLXNu
ZiAuLi9ydW4gL2hvbWUvc3JpbmlzaGFubXVnYW0vTklCdWlsZF90ZXN0X3JwaS9uYXRpdmVvcy9i
dWlsZF90ZXN0X25hdGl2ZW9zZGlzdHJvL3RtcC93b3JrL2lteDhtbWV2ay1wb2t5LWxpbnV4L2Jh
c2UtZmlsZXMvMy4wLjE0LXI4OS9pbWFnZS92YXIvcnVuCglsbiAtc25mIC4uL3J1bi9sb2NrIC9o
b21lL3NyaW5pc2hhbm11Z2FtL05JQnVpbGRfdGVzdF9ycGkvbmF0aXZlb3MvYnVpbGRfdGVzdF9u
YXRpdmVvc2Rpc3Ryby90bXAvd29yay9pbXg4bW1ldmstcG9reS1saW51eC9iYXNlLWZpbGVzLzMu
MC4xNC1yODkvaW1hZ2UvdmFyL2xvY2sKCglkb19pbnN0YWxsX2Jhc2VmaWxlc2lzc3VlCgoJcm90
YXRpb249YGNhdCAvaG9tZS9zcmluaXNoYW5tdWdhbS9OSUJ1aWxkX3Rlc3RfcnBpL25hdGl2ZW9z
L2J1aWxkX3Rlc3RfbmF0aXZlb3NkaXN0cm8vdG1wL3dvcmsvaW14OG1tZXZrLXBva3ktbGludXgv
YmFzZS1maWxlcy8zLjAuMTQtcjg5L3JvdGF0aW9uYAoJaWYgWyAiJHJvdGF0aW9uIiAhPSAiMCIg
XTsgdGhlbgogCQlpbnN0YWxsIC1tIDA2NDQgL2hvbWUvc3JpbmlzaGFubXVnYW0vTklCdWlsZF90
ZXN0X3JwaS9uYXRpdmVvcy9idWlsZF90ZXN0X25hdGl2ZW9zZGlzdHJvL3RtcC93b3JrL2lteDht
bWV2ay1wb2t5LWxpbnV4L2Jhc2UtZmlsZXMvMy4wLjE0LXI4OS9yb3RhdGlvbiAvaG9tZS9zcmlu
aXNoYW5tdWdhbS9OSUJ1aWxkX3Rlc3RfcnBpL25hdGl2ZW9zL2J1aWxkX3Rlc3RfbmF0aXZlb3Nk
aXN0cm8vdG1wL3dvcmsvaW14OG1tZXZrLXBva3ktbGludXgvYmFzZS1maWxlcy8zLjAuMTQtcjg5
L2ltYWdlL2V0Yy9yb3RhdGlvbgoJZmkKCglpbnN0YWxsIC1tIDA2NDQgL2hvbWUvc3JpbmlzaGFu
bXVnYW0vTklCdWlsZF90ZXN0X3JwaS9uYXRpdmVvcy9idWlsZF90ZXN0X25hdGl2ZW9zZGlzdHJv
L3RtcC93b3JrL2lteDhtbWV2ay1wb2t5LWxpbnV4L2Jhc2UtZmlsZXMvMy4wLjE0LXI4OS9mc3Rh
YiAvaG9tZS9zcmluaXNoYW5tdWdhbS9OSUJ1aWxkX3Rlc3RfcnBpL25hdGl2ZW9zL2J1aWxkX3Rl
c3RfbmF0aXZlb3NkaXN0cm8vdG1wL3dvcmsvaW14OG1tZXZrLXBva3ktbGludXgvYmFzZS1maWxl
cy8zLjAuMTQtcjg5L2ltYWdlL2V0Yy9mc3RhYgoJaW5zdGFsbCAtbSAwNjQ0IC9ob21lL3NyaW5p
c2hhbm11Z2FtL05JQnVpbGRfdGVzdF9ycGkvbmF0aXZlb3MvYnVpbGRfdGVzdF9uYXRpdmVvc2Rp
c3Ryby90bXAvd29yay9pbXg4bW1ldmstcG9reS1saW51eC9iYXNlLWZpbGVzLzMuMC4xNC1yODkv
ZmlsZXN5c3RlbXMgL2hvbWUvc3JpbmlzaGFubXVnYW0vTklCdWlsZF90ZXN0X3JwaS9uYXRpdmVv
cy9idWlsZF90ZXN0X25hdGl2ZW9zZGlzdHJvL3RtcC93b3JrL2lteDhtbWV2ay1wb2t5LWxpbnV4
L2Jhc2UtZmlsZXMvMy4wLjE0LXI4OS9pbWFnZS9ldGMvZmlsZXN5c3RlbXMKCWluc3RhbGwgLW0g
MDY0NCAvaG9tZS9zcmluaXNoYW5tdWdhbS9OSUJ1aWxkX3Rlc3RfcnBpL25hdGl2ZW9zL2J1aWxk
X3Rlc3RfbmF0aXZlb3NkaXN0cm8vdG1wL3dvcmsvaW14OG1tZXZrLXBva3ktbGludXgvYmFzZS1m
aWxlcy8zLjAuMTQtcjg5L3VzYmQgL2hvbWUvc3JpbmlzaGFubXVnYW0vTklCdWlsZF90ZXN0X3Jw
aS9uYXRpdmVvcy9idWlsZF90ZXN0X25hdGl2ZW9zZGlzdHJvL3RtcC93b3JrL2lteDhtbWV2ay1w
b2t5LWxpbnV4L2Jhc2UtZmlsZXMvMy4wLjE0LXI4OS9pbWFnZS9ldGMvZGVmYXVsdC91c2JkCglp
bnN0YWxsIC1tIDA2NDQgL2hvbWUvc3JpbmlzaGFubXVnYW0vTklCdWlsZF90ZXN0X3JwaS9uYXRp
dmVvcy9idWlsZF90ZXN0X25hdGl2ZW9zZGlzdHJvL3RtcC93b3JrL2lteDhtbWV2ay1wb2t5LWxp
bnV4L2Jhc2UtZmlsZXMvMy4wLjE0LXI4OS9wcm9maWxlIC9ob21lL3NyaW5pc2hhbm11Z2FtL05J
QnVpbGRfdGVzdF9ycGkvbmF0aXZlb3MvYnVpbGRfdGVzdF9uYXRpdmVvc2Rpc3Ryby90bXAvd29y
ay9pbXg4bW1ldmstcG9reS1saW51eC9iYXNlLWZpbGVzLzMuMC4xNC1yODkvaW1hZ2UvZXRjL3By
b2ZpbGUKCXNlZCAtaSAncyNST09USE9NRSMvaG9tZS9yb290IycgL2hvbWUvc3JpbmlzaGFubXVn
YW0vTklCdWlsZF90ZXN0X3JwaS9uYXRpdmVvcy9idWlsZF90ZXN0X25hdGl2ZW9zZGlzdHJvL3Rt
cC93b3JrL2lteDhtbWV2ay1wb2t5LWxpbnV4L2Jhc2UtZmlsZXMvMy4wLjE0LXI4OS9pbWFnZS9l
dGMvcHJvZmlsZQoJaW5zdGFsbCAtbSAwNjQ0IC9ob21lL3NyaW5pc2hhbm11Z2FtL05JQnVpbGRf
dGVzdF9ycGkvbmF0aXZlb3MvYnVpbGRfdGVzdF9uYXRpdmVvc2Rpc3Ryby90bXAvd29yay9pbXg4
bW1ldmstcG9reS1saW51eC9iYXNlLWZpbGVzLzMuMC4xNC1yODkvc2hlbGxzIC9ob21lL3NyaW5p
c2hhbm11Z2FtL05JQnVpbGRfdGVzdF9ycGkvbmF0aXZlb3MvYnVpbGRfdGVzdF9uYXRpdmVvc2Rp
c3Ryby90bXAvd29yay9pbXg4bW1ldmstcG9reS1saW51eC9iYXNlLWZpbGVzLzMuMC4xNC1yODkv
aW1hZ2UvZXRjL3NoZWxscwoJaW5zdGFsbCAtbSAwNzU1IC9ob21lL3NyaW5pc2hhbm11Z2FtL05J
QnVpbGRfdGVzdF9ycGkvbmF0aXZlb3MvYnVpbGRfdGVzdF9uYXRpdmVvc2Rpc3Ryby90bXAvd29y
ay9pbXg4bW1ldmstcG9reS1saW51eC9iYXNlLWZpbGVzLzMuMC4xNC1yODkvc2hhcmUvZG90LnBy
b2ZpbGUgL2hvbWUvc3JpbmlzaGFubXVnYW0vTklCdWlsZF90ZXN0X3JwaS9uYXRpdmVvcy9idWls
ZF90ZXN0X25hdGl2ZW9zZGlzdHJvL3RtcC93b3JrL2lteDhtbWV2ay1wb2t5LWxpbnV4L2Jhc2Ut
ZmlsZXMvMy4wLjE0LXI4OS9pbWFnZS9ldGMvc2tlbC8ucHJvZmlsZQoJaW5zdGFsbCAtbSAwNzU1
IC9ob21lL3NyaW5pc2hhbm11Z2FtL05JQnVpbGRfdGVzdF9ycGkvbmF0aXZlb3MvYnVpbGRfdGVz
dF9uYXRpdmVvc2Rpc3Ryby90bXAvd29yay9pbXg4bW1ldmstcG9reS1saW51eC9iYXNlLWZpbGVz
LzMuMC4xNC1yODkvc2hhcmUvZG90LmJhc2hyYyAvaG9tZS9zcmluaXNoYW5tdWdhbS9OSUJ1aWxk
X3Rlc3RfcnBpL25hdGl2ZW9zL2J1aWxkX3Rlc3RfbmF0aXZlb3NkaXN0cm8vdG1wL3dvcmsvaW14
OG1tZXZrLXBva3ktbGludXgvYmFzZS1maWxlcy8zLjAuMTQtcjg5L2ltYWdlL2V0Yy9za2VsLy5i
YXNocmMKCWluc3RhbGwgLW0gMDY0NCAvaG9tZS9zcmluaXNoYW5tdWdhbS9OSUJ1aWxkX3Rlc3Rf
cnBpL25hdGl2ZW9zL2J1aWxkX3Rlc3RfbmF0aXZlb3NkaXN0cm8vdG1wL3dvcmsvaW14OG1tZXZr
LXBva3ktbGludXgvYmFzZS1maWxlcy8zLjAuMTQtcjg5L25zc3dpdGNoLmNvbmYgL2hvbWUvc3Jp
bmlzaGFubXVnYW0vTklCdWlsZF90ZXN0X3JwaS9uYXRpdmVvcy9idWlsZF90ZXN0X25hdGl2ZW9z
ZGlzdHJvL3RtcC93b3JrL2lteDhtbWV2ay1wb2t5LWxpbnV4L2Jhc2UtZmlsZXMvMy4wLjE0LXI4
OS9pbWFnZS9ldGMvbnNzd2l0Y2guY29uZgoJaW5zdGFsbCAtbSAwNjQ0IC9ob21lL3NyaW5pc2hh
bm11Z2FtL05JQnVpbGRfdGVzdF9ycGkvbmF0aXZlb3MvYnVpbGRfdGVzdF9uYXRpdmVvc2Rpc3Ry
by90bXAvd29yay9pbXg4bW1ldmstcG9reS1saW51eC9iYXNlLWZpbGVzLzMuMC4xNC1yODkvaG9z
dC5jb25mIC9ob21lL3NyaW5pc2hhbm11Z2FtL05JQnVpbGRfdGVzdF9ycGkvbmF0aXZlb3MvYnVp
bGRfdGVzdF9uYXRpdmVvc2Rpc3Ryby90bXAvd29yay9pbXg4bW1ldmstcG9reS1saW51eC9iYXNl
LWZpbGVzLzMuMC4xNC1yODkvaW1hZ2UvZXRjL2hvc3QuY29uZgoJaW5zdGFsbCAtbSAwNjQ0IC9o
b21lL3NyaW5pc2hhbm11Z2FtL05JQnVpbGRfdGVzdF9ycGkvbmF0aXZlb3MvYnVpbGRfdGVzdF9u
YXRpdmVvc2Rpc3Ryby90bXAvd29yay9pbXg4bW1ldmstcG9reS1saW51eC9iYXNlLWZpbGVzLzMu
MC4xNC1yODkvbW90ZCAvaG9tZS9zcmluaXNoYW5tdWdhbS9OSUJ1aWxkX3Rlc3RfcnBpL25hdGl2
ZW9zL2J1aWxkX3Rlc3RfbmF0aXZlb3NkaXN0cm8vdG1wL3dvcmsvaW14OG1tZXZrLXBva3ktbGlu
dXgvYmFzZS1maWxlcy8zLjAuMTQtcjg5L2ltYWdlL2V0Yy9tb3RkCgoJbG4gLXNmIC9wcm9jL21v
dW50cyAvaG9tZS9zcmluaXNoYW5tdWdhbS9OSUJ1aWxkX3Rlc3RfcnBpL25hdGl2ZW9zL2J1aWxk
X3Rlc3RfbmF0aXZlb3NkaXN0cm8vdG1wL3dvcmsvaW14OG1tZXZrLXBva3ktbGludXgvYmFzZS1m
aWxlcy8zLjAuMTQtcjg5L2ltYWdlL2V0Yy9tdGFiCn0KCmJiZXJyb3IoKSB7CglpZiBbIC1wIC9o
b21lL3NyaW5pc2hhbm11Z2FtL05JQnVpbGRfdGVzdF9ycGkvbmF0aXZlb3MvYnVpbGRfdGVzdF9u
YXRpdmVvc2Rpc3Ryby90bXAvd29yay9pbXg4bW1ldmstcG9reS1saW51eC9iYXNlLWZpbGVzLzMu
MC4xNC1yODkvdGVtcC9maWZvLjI5NDUgXSA7IHRoZW4KCQlwcmludGYgIiViXDAiICJiYmVycm9y
ICQqIiA+IC9ob21lL3NyaW5pc2hhbm11Z2FtL05JQnVpbGRfdGVzdF9ycGkvbmF0aXZlb3MvYnVp
bGRfdGVzdF9uYXRpdmVvc2Rpc3Ryby90bXAvd29yay9pbXg4bW1ldmstcG9reS1saW51eC9iYXNl
LWZpbGVzLzMuMC4xNC1yODkvdGVtcC9maWZvLjI5NDUKCWVsc2UKCQllY2hvICJFUlJPUjogJCoi
CglmaQp9Cgpkb19pbnN0YWxsX2Jhc2VmaWxlc2lzc3VlKCkgewoKCiNlY2hvICItLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLXNyaW5pIGhlbGxvIHdvcmxkLS0tLS0tLS0tLS0tLS0tLS0tIGRvX2luc3Rh
bGxfYmFzZWZpbGVzaXNzdWUgKCkiCiAgICBiYmVycm9yICItLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LXNyaW5pbm5ubm5ubm5ubm4tLS0tLWRvX2luc3RhbGxfYmFzZWZpbGVzaXNzdWUoKSIKCgoJaWYg
WyAiaW14OG1tZXZrIiBdOyB0aGVuCgkJZWNobyBpbXg4bW1ldmsgPiAvaG9tZS9zcmluaXNoYW5t
dWdhbS9OSUJ1aWxkX3Rlc3RfcnBpL25hdGl2ZW9zL2J1aWxkX3Rlc3RfbmF0aXZlb3NkaXN0cm8v
dG1wL3dvcmsvaW14OG1tZXZrLXBva3ktbGludXgvYmFzZS1maWxlcy8zLjAuMTQtcjg5L2ltYWdl
L2V0Yy9ob3N0bmFtZQoJZmkKCglpbnN0YWxsIC1tIDY0NCAvaG9tZS9zcmluaXNoYW5tdWdhbS9O
SUJ1aWxkX3Rlc3RfcnBpL25hdGl2ZW9zL2J1aWxkX3Rlc3RfbmF0aXZlb3NkaXN0cm8vdG1wL3dv
cmsvaW14OG1tZXZrLXBva3ktbGludXgvYmFzZS1maWxlcy8zLjAuMTQtcjg5L2lzc3VlKiAgL2hv
bWUvc3JpbmlzaGFubXVnYW0vTklCdWlsZF90ZXN0X3JwaS9uYXRpdmVvcy9idWlsZF90ZXN0X25h
dGl2ZW9zZGlzdHJvL3RtcC93b3JrL2lteDhtbWV2ay1wb2t5LWxpbnV4L2Jhc2UtZmlsZXMvMy4w
LjE0LXI4OS9pbWFnZS9ldGMKICAgICAgICBpZiBbIC1uICJOYXRpdmVPUyBkaXN0cmlidXRpb24g
Zm9yIFRyYWt0b3IiIF07IHRoZW4KCQlwcmludGYgIk5hdGl2ZU9TIGRpc3RyaWJ1dGlvbiBmb3Ig
VHJha3RvciAiID4+IC9ob21lL3NyaW5pc2hhbm11Z2FtL05JQnVpbGRfdGVzdF9ycGkvbmF0aXZl
b3MvYnVpbGRfdGVzdF9uYXRpdmVvc2Rpc3Ryby90bXAvd29yay9pbXg4bW1ldmstcG9reS1saW51
eC9iYXNlLWZpbGVzLzMuMC4xNC1yODkvaW1hZ2UvZXRjL2lzc3VlCgkJcHJpbnRmICJOYXRpdmVP
UyBkaXN0cmlidXRpb24gZm9yIFRyYWt0b3IgIiA+PiAvaG9tZS9zcmluaXNoYW5tdWdhbS9OSUJ1
aWxkX3Rlc3RfcnBpL25hdGl2ZW9zL2J1aWxkX3Rlc3RfbmF0aXZlb3NkaXN0cm8vdG1wL3dvcmsv
aW14OG1tZXZrLXBva3ktbGludXgvYmFzZS1maWxlcy8zLjAuMTQtcjg5L2ltYWdlL2V0Yy9pc3N1
ZS5uZXQKCQlpZiBbIC1uICIke05JQl9ESVNUUk9fVkVSU0lPTn0iIF07IHRoZW4KCQkJZGlzdHJv
X3ZlcnNpb25fbm9kYXRlPSR7QCcke05JQl9ESVNUUk9fVkVSU0lPTn0nLnJlcGxhY2UoJ3NuYXBz
aG90LTIwMTkwMTE4Jywnc25hcHNob3QnKS5yZXBsYWNlKCcyMDE5MDExOCcsJycpfQoJCQlwcmlu
dGYgIiVzICIgJGRpc3Ryb192ZXJzaW9uX25vZGF0ZSA+PiAvaG9tZS9zcmluaXNoYW5tdWdhbS9O
SUJ1aWxkX3Rlc3RfcnBpL25hdGl2ZW9zL2J1aWxkX3Rlc3RfbmF0aXZlb3NkaXN0cm8vdG1wL3dv
cmsvaW14OG1tZXZrLXBva3ktbGludXgvYmFzZS1maWxlcy8zLjAuMTQtcjg5L2ltYWdlL2V0Yy9p
c3N1ZQoJCQlwcmludGYgIiVzICIgJGRpc3Ryb192ZXJzaW9uX25vZGF0ZSA+PiAvaG9tZS9zcmlu
aXNoYW5tdWdhbS9OSUJ1aWxkX3Rlc3RfcnBpL25hdGl2ZW9zL2J1aWxkX3Rlc3RfbmF0aXZlb3Nk
aXN0cm8vdG1wL3dvcmsvaW14OG1tZXZrLXBva3ktbGludXgvYmFzZS1maWxlcy8zLjAuMTQtcjg5
L2ltYWdlL2V0Yy9pc3N1ZS5uZXQKCQlmaQoJCXByaW50ZiAiXFxcbiBcXFxsXG4iID4+IC9ob21l
L3NyaW5pc2hhbm11Z2FtL05JQnVpbGRfdGVzdF9ycGkvbmF0aXZlb3MvYnVpbGRfdGVzdF9uYXRp
dmVvc2Rpc3Ryby90bXAvd29yay9pbXg4bW1ldmstcG9reS1saW51eC9iYXNlLWZpbGVzLzMuMC4x
NC1yODkvaW1hZ2UvZXRjL2lzc3VlCgkJZWNobyA+PiAvaG9tZS9zcmluaXNoYW5tdWdhbS9OSUJ1
aWxkX3Rlc3RfcnBpL25hdGl2ZW9zL2J1aWxkX3Rlc3RfbmF0aXZlb3NkaXN0cm8vdG1wL3dvcmsv
aW14OG1tZXZrLXBva3ktbGludXgvYmFzZS1maWxlcy8zLjAuMTQtcjg5L2ltYWdlL2V0Yy9pc3N1
ZQoJCWVjaG8gIiVoIiAgICA+PiAvaG9tZS9zcmluaXNoYW5tdWdhbS9OSUJ1aWxkX3Rlc3RfcnBp
L25hdGl2ZW9zL2J1aWxkX3Rlc3RfbmF0aXZlb3NkaXN0cm8vdG1wL3dvcmsvaW14OG1tZXZrLXBv
a3ktbGludXgvYmFzZS1maWxlcy8zLjAuMTQtcjg5L2ltYWdlL2V0Yy9pc3N1ZS5uZXQKCQllY2hv
ID4+IC9ob21lL3NyaW5pc2hhbm11Z2FtL05JQnVpbGRfdGVzdF9ycGkvbmF0aXZlb3MvYnVpbGRf
dGVzdF9uYXRpdmVvc2Rpc3Ryby90bXAvd29yay9pbXg4bW1ldmstcG9reS1saW51eC9iYXNlLWZp
bGVzLzMuMC4xNC1yODkvaW1hZ2UvZXRjL2lzc3VlLm5ldAogCWZpCn0KCmNkICcvaG9tZS9zcmlu
aXNoYW5tdWdhbS9OSUJ1aWxkX3Rlc3RfcnBpL25hdGl2ZW9zL2J1aWxkX3Rlc3RfbmF0aXZlb3Nk
aXN0cm8vdG1wL3dvcmsvaW14OG1tZXZrLXBva3ktbGludXgvYmFzZS1maWxlcy8zLjAuMTQtcjg5
Jwpkb19pbnN0YWxsCgojIGNsZWFudXAKcmV0PSQ/CnRyYXAgJycgMApleGl0ICRyZXQK

--000000000000c62377057fb2f94b--
