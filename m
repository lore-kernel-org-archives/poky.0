Return-Path: <srinivasan.rns@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C1AD6E00C5F; Wed, 16 Jan 2019 21:02:56 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 87376E0053F;
	Wed, 16 Jan 2019 21:02:55 -0800 (PST)
Received: by mail-oi1-f182.google.com with SMTP id j21so5156293oii.8;
	Wed, 16 Jan 2019 21:02:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=gAhz0uRmjMJXdMN3TXPUA1ATOBA64568RyKd8Shudnk=;
	b=uq2lOJbO1rMIcuK+RC7Ee9XRINX1S/+hkaYWcG2m7/KisN5Ybo/vWiaWvE3+cSEfM3
	t9QZknqLRkcU7GwrMWEvcOSxmUC6+LbFbqgc/KLrm2XaQU0+xPhOUN+vxRsRzslEP4KJ
	4JaOpDYAD2O41cT3a7tlA4Qht7bmW+x2HRpKt2gdYzpBgHMZZvlt8fa1iwzvCkWLQQID
	92gvMF4enqtA/mWUtpu6pPMlMi2k9qo48+7zPlD1okCCm7iA9pUzwAuYmbHj2SBIDcMi
	QD3bnYSnBbZBILK5YP/EOnjhty7ljM+dNjpwSpSpbTwJkJ9kTOM62/SthdHGB9HcQZcc
	8OFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=gAhz0uRmjMJXdMN3TXPUA1ATOBA64568RyKd8Shudnk=;
	b=gEfqiR5ODwtsfQ86jDMRT8DK0Uq9fpdRFQ2C9cAtntqkFoWTZEalu0cZMDnAWfZarC
	y1FGgzVXFWLGsI/jhRdB06Pll6nv+MWga/2V+tBrdNa+QdUTmcwK7e2RvpUzBHJ6x0yf
	eOVft3Wq/phA4J3+UuJKE1p1wBzdRfTWXHuacp695y5JVcV6SCjDBhyltLv8hNm7wtdk
	VUfBFA+Yd6TNq4ac00MX3qZYqDndlrGqhiSwWXdIgwWRRSSQFtx1ELgGzvItNL6JrWLA
	K5tsgCN8xE7hREB9aHgIlNULtyFoP02dTKxkhKra3E72Bv34eDoaW+myXUSk+9UOkyiM
	mV+g==
X-Gm-Message-State: AJcUukezu/ylh2PueRDVvXBaEEg2016TjT078iHcrOtSnIl4NHR26OVM
	19NN4DLpEAtZQN28g5Db+80HeqQEGNIiAiDNZvdik7oSO2A=
X-Google-Smtp-Source: ALg8bN5Xn7CbbqRQ154900uU7ePxVs4jLXqLNkkxFfDYDpd07ljxPuDPd5B7Bw5CrjI9KYDMS7WVNEuzW2W1UGvjJ9U=
X-Received: by 2002:a54:4393:: with SMTP id u19mr3427813oiv.99.1547701374411; 
	Wed, 16 Jan 2019 21:02:54 -0800 (PST)
MIME-Version: 1.0
From: srinivasan <srinivasan.rns@gmail.com>
Date: Thu, 17 Jan 2019 06:02:42 +0100
Message-ID: <CAFsTbWc_XoCN-99LXeCL1R-m0+jXGmO7DgOb-94y7a3L3ODN7Q@mail.gmail.com>
To: yocto-bsp@yoctoproject.org, yocto-builds@yoctoproject.org, 
	meta-intel@yoctoproject.org, 
	"Development list for the linux-yocto*.git Linux kernel repositories"
	<linux-yocto@yoctoproject.org>, poky@yoctoproject.org, 
	yocto-infrastructure@yoctoproject.org, yocto@yoctoproject.org, 
	meta-freescale@yoctoproject.org, meta-freescale-request@yoctoproject.org
Subject: Error: base-files/3.0.14-r89/temp/run.do_install.80432: Syntax error: Unterminated quoted string
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
X-List-Received-Date: Thu, 17 Jan 2019 05:02:56 -0000
Content-Type: text/plain; charset="UTF-8"

Dear Yocto Experts,

I am trying to customize my vendor specific Yocto BSP's to my custom
OS.  I am facing the below error, could you please do the needful or
provide me some pointers from your end for solving this issue

Error:
$ bitbake fsl-image-validation-imx
WARNING: Host distribution "ubuntu-18.04" has not been validated with
this version of the build system; you may possibly experience
unexpected failures. It is recommended that you use a tested
distribution.
Loading cache: 100%
|###############################################################################################################################################################################################################################################|
Time: 0:00:00
Loaded 3196 entries from dependency cache.
Parsing recipes: 100%
|#############################################################################################################################################################################################################################################|
Time: 0:00:02
Parsing of 2298 .bb files complete (2284 cached, 14 parsed). 3202
targets, 398 skipped, 6 masked, 0 errors.
NOTE: Resolving any missing task queue dependencies

Build Configuration:
BB_VERSION           = "1.38.0"
BUILD_SYS            = "x86_64-linux"
NATIVELSBSTRING      = "universal"
TARGET_SYS           = "aarch64-poky-linux"
MACHINE              = "imx8mmevk"
DISTRO               = "custom-TRK"
DISTRO_VERSION       = "${custom_DISTRO_VERSION}"
TUNE_FEATURES        = "aarch64"
TARGET_FPU           = ""
meta-traktor-imx8    = "sumo:4b25c1ee6896b5447f8502f13c28570341505360"
meta-traktor         = "sumo:818be7ec4f768ba485e437dc26beb7bdc4b8120a"
meta-qt5             = "qt-5.11:ff6127ddd318d422f595295d1c189a86b3032873"
meta-custom        = "sumo:d98452914e201d46a6b1360ca957d9b3e396b31f"
meta-freescale       = "HEAD:1deea6b4a2f83521ff247ea4743d09cc705ecd8e"
meta
meta-poky            = "sumo:623b77885051174d0e05198843e739110977bd18"
meta-oe
meta-python
meta-networking      = "sumo:8760facba1bceb299b3613b8955621ddaa3d4c3f"
meta-bsp
meta-sdk             = "HEAD:1de93d3d5128b8422c23a87cb8b54149e2bfb942"

Initialising tasks: 100%
|##########################################################################################################################################################################################################################################|
Time: 0:00:02
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
ERROR: base-files-3.0.14-r89 do_install: Function failed: do_install
(log file is located at
/home/srinishanmugam/customBuild_test_rpi/custom/buid_test3_customtrk_distro_imx8/tmp/work/imx8mmevk-poky-linux/base-files/3.0.14-r89/temp/log.do_install.80432)
ERROR: Logfile of failure stored in:
/home/srinishanmugam/customBuild_test_rpi/custom/buid_test3_customtrk_distro_imx8/tmp/work/imx8mmevk-poky-linux/base-files/3.0.14-r89/temp/log.do_install.80432
Log data follows:
| DEBUG: Executing python function extend_recipe_sysroot
| NOTE: Direct dependencies are
['/home/srinishanmugam/customBuild_test_rpi/custom/sources/poky/meta/recipes-devtools/quilt/quilt-native_0.65.bb:do_populate_sysroot',
'virtual:native:/home/srinishanmugam/customBuild_test_rpi/custom/sources/poky/meta/recipes-devtools/pseudo/pseudo_git.bb:do_populate_sysroot']
| NOTE: Installed into sysroot: []
| NOTE: Skipping as already exists in sysroot: ['quilt-native', 'pseudo-native']
| DEBUG: Python function extend_recipe_sysroot finished
| DEBUG: Executing shell function do_install
| /home/srinishanmugam/customBuild_test_rpi/custom/buid_test3_customtrk_distro_imx8/tmp/work/imx8mmevk-poky-linux/base-files/3.0.14-r89/temp/run.do_install.80432:
176: /home/srinishanmugam/customBuild_test_rpi/custom/buid_test3_customtrk_distro_imx8/tmp/work/imx8mmevk-poky-linux/base-files/3.0.14-r89/temp/run.do_install.80432:
Syntax error: Unterminated quoted string
| WARNING: exit code 2 from a shell command.
| ERROR: Function failed: do_install (log file is located at
/home/srinishanmugam/customBuild_test_rpi/custom/buid_test3_customtrk_distro_imx8/tmp/work/imx8mmevk-poky-linux/base-files/3.0.14-r89/temp/log.do_install.80432)
ERROR: Task (/home/srinishanmugam/customBuild_test_rpi/custom/sources/poky/meta/recipes-core/base-files/base-files_3.0.14.bb:do_install)
failed with exit code '1'
NOTE: Tasks Summary: Attempted 1256 tasks of which 1204 didn't need to
be rerun and 1 failed.

Summary: 1 task failed:
  /home/srinishanmugam/customBuild_test_rpi/custom/sources/poky/meta/recipes-core/base-files/base-files_3.0.14.bb:do_install
Summary: There was 1 WARNING message shown.
Summary: There was 1 ERROR message shown, returning a non-zero exit code.
srinishanmugam@ni-bln-07594:~/customBuild_test_rpi/custom/buid_test3_customtrk_distro_imx8$


Kindly do the needful,
Many Thanks in advance

