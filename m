Return-Path: <ulfalizer@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 27115E00DAB; Wed, 13 Jul 2016 06:03:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.66 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (ulfalizer[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f66.google.com (mail-vk0-f66.google.com
	[209.85.213.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 71C52E00D7B
	for <poky@yoctoproject.org>; Wed, 13 Jul 2016 06:03:52 -0700 (PDT)
Received: by mail-vk0-f66.google.com with SMTP id r135so3096432vkf.3
	for <poky@yoctoproject.org>; Wed, 13 Jul 2016 06:03:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to;
	bh=iwq3u6vSV0IBm8fbKprXMf5Uv+2/8a7BJ0WCFEtL8gQ=;
	b=VBJMvDru82bxoU5eGcczkza1Y8f5rICdFzcmQfMfCppmRjFQGkzjLDMDiCFrf1xijb
	XH8D0dPIXnMIpgSjJkQtSofM5pF6wUiUWkxi39hbi1kOqFkynf0u3pgok/Y887bVkezk
	7YDr1uaNmnshLCWdrRjgDisAOkCdsu2RFJV9fqYcNjALbDdfRsh50DQ3W9N+CI1mo353
	Crb1jCDUV7U4adLPICzEZWjYeFQFvHctJnwAESoxpju6aS02yudzRRI6DMQieVdq3ALa
	8rGbvZgApDe4QklwQNfdFVz8ONctFR1qkJq8sI9TuamFIsdWoX4L5rb/eT649Pvs2NYr
	Ce9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=iwq3u6vSV0IBm8fbKprXMf5Uv+2/8a7BJ0WCFEtL8gQ=;
	b=ZdmUaxzCBiJMZbaykj/NX/YQZ/BeCKFSBntPT2+J2wBBAFq52gHWQD0/v8vpQZFe8s
	XvTIjPBpAoYY8v7OBU3cyaojN2Vwl4au+LEawD5F3xtLMMWxnxvkuSZaHciP6QZbIQRd
	o4ki4x2CHsljIPZgV3ROtLs+u65ggtrWbRIEKd31S6bPpLeERNhqDQM0/fMAvlw7IPKC
	gfbop8oUyE8AXfwXekAVjTXUfTh3uZkofZV44YKWfiJLFV2Zebnvhm0N9NUYpn1u+Pj9
	0Vf+3+2S8GpGmars8EbF9+lze4wdfad66BvczbQTqA31LG8QhtVNDrDG3VzupR8RXeut
	OMAw==
X-Gm-Message-State: ALyK8tIwd1bVPknK6Zuzfk3yjr5TG2zy7/HXf3Ybi4FW2KSOdOjtWW6DeM5rGxoyJyb0xcrvKoBI3V2yFhveog==
X-Received: by 10.31.53.75 with SMTP id c72mr3755603vka.62.1468415032222; Wed,
	13 Jul 2016 06:03:52 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.124.70 with HTTP; Wed, 13 Jul 2016 06:03:51 -0700 (PDT)
From: Ulf Magnusson <ulfalizer@gmail.com>
Date: Wed, 13 Jul 2016 15:03:51 +0200
Message-ID: <CAFkk2KQA_2_zp_vWZ-QPUdxQisebZt2rfy_EZF3cYcFQGm7m8w@mail.gmail.com>
To: poky@yoctoproject.org
Subject: gcc-crosssdk fails to detect Stack Smash Protector support in glibc, causing linking issues
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
X-List-Received-Date: Wed, 13 Jul 2016 13:03:55 -0000
Content-Type: text/plain; charset=UTF-8

Hello,

GCC's SSP (Stack Smashing Protector, enabled with -fstack-protector)
is implemented either through glibc support or by linking against a
helper library (libssp). The default is to use the glibc support if
available.

The ./gcc/configure script in the GCC source tree checks if SSP
support is available by looking at the installed glibc headers.
Currently, it doesn't find the headers in the gcc-crosssdk case, and
so configures GCC to use libssp:

  In tmp/work/x86_64-linux/gcc-crosssdk-x86_64/6.1.1-r0/gcc-6.1.1/build.x86_64-linux.x86_64-pokysdk-linux/gcc/config.log:
  configure:28452: checking __stack_chk_fail in target C library
  configure:28508: result: no

This is because the headers are searched for in the wrong location:
<sysroot>/usr/include instead of
<sysroot>/opt/poky/2.1+snapshot/sysroots/x86_64-pokysdk-linux/usr/include.
/usr/include is the default value of native_system_header_dir from
gcc/config.gcc, which is what gets used in the first case.

I've seen this cause undefined references to __stack_chk_guard in
libraries, because they expect to be linked against libssp.

One fix is to add

  EXTRA_OECONF += "--with-native-system-header-dir=${SYSTEMHEADERS}"

to the end of meta/recipes-devtools/gcc/gcc-crosssdk.inc.

There is a related "fix" in a do_configure_prepend in
meta/recipes-devtools/gcc/gcc-configure-common.inc as well, but it
doesn't seem to work in this case.

Cheers,
Ulf

