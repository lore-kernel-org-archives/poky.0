Return-Path: <raj.khem@gmail.com>
Received: from mail-ie0-f178.google.com (mail-ie0-f178.google.com
	[209.85.223.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 77D4CE017BC
	for <poky@yoctoproject.org>; Wed, 30 Oct 2013 20:08:01 -0700 (PDT)
Received: by mail-ie0-f178.google.com with SMTP id x13so3981163ief.9
	for <poky@yoctoproject.org>; Wed, 30 Oct 2013 20:08:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=tsMm46vuJsAcVYxfDeo65tNovxZTAu8KZamINi5ygvQ=;
	b=SDf3oPvmeUBDJFfYGSDpO84lRHg0K6hq98fI+bQ6LtIGbJZAfTjGe2SlY5jbCiSU+U
	Vn20azoD759sEzOTtFEdL2nuel9KoPeYAI3ppcAqPak8oOkkdPhHB4RX7BYTdEhzRYQ0
	x5BnaXaG8rNqJqp4ElDxYaAB5vNOa77lnoNI1ZGVHBu5mbqWsuLvA9Rk2Jn6NDnLSgSy
	fS59Rm/l7qmBIIF+DI7ga+1v/BNH2vG2joEdH0VGdLaZnjlce2fXTFmQTzH7AZMSRR2X
	lK4wETEJ7q7m4UYs6aYLv5Sd3FBXeywdbdFriOIMwcHpM4S4zMrYCVfKX9bV+GAREhkM
	cnAA==
X-Received: by 10.43.172.4 with SMTP id nw4mr493705icc.25.1383188881014; Wed,
	30 Oct 2013 20:08:01 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.219.195 with HTTP; Wed, 30 Oct 2013 20:07:30 -0700 (PDT)
In-Reply-To: <7BDD69127112414F90CF3FED4711BF150D15B25C51@IAD2MBX05.mex02.mlsrvr.com>
References: <7BDD69127112414F90CF3FED4711BF150D15B25C51@IAD2MBX05.mex02.mlsrvr.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 30 Oct 2013 20:07:30 -0700
Message-ID: <CAMKF1sr5S+_zD2D=t6q-Bvud61r8q4pZ=cV3sKoEEmVYybbeKA@mail.gmail.com>
To: Michael Davis <mdavis@planetaryresources.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: Defconfig mods, Zynq-zx3 netmodule
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
X-List-Received-Date: Thu, 31 Oct 2013 03:08:02 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 30, 2013 at 7:17 PM, Michael Davis
<mdavis@planetaryresources.com> wrote:
> Hi David,
>
>
>
> I am currently using the netmodule meta layer in yocto to build a kernel =
and
> ramdisk for my zynq zx3 on a starter board.  I need to enable kernel
> function tracing and a few other configurations in my build.  I need help=
 on
> the correct way to enable kernel configurations (specifically I need
> CONFIG_FTRACE and CONFIG_PROFILING) using the meta layer.
>
>  My attempts have been based on the KERNEL_DEFCONFIG_zynq_zx3_starter
> variable in recipes-kernel/linux/linux-zynq-git.bb.  I have tried specify=
ing
> my own patch to create this file as well as pointing it to my own modifie=
d
> copy of the defconfig created by the patches in meta-netmodule.  After
> building, the modified defconfig file with the flags shows up in my work
> directory as .config but no changes ever appear in /proc/config.gz after
> booting my image.  I am able to verify that the =E2=80=98make zynq_zx3_de=
fconfig=E2=80=99
> step was run.  I wonder if the steps to do this are different here using =
the
> linux-zynq recipe as opposed to linux-yocto.  Any input on the correct wa=
y
> to do this would be greatly appreciated.

looking at the layer it seems that you have to store it in defconfig
for the machine you are interested in. There are few ways to go about
it. So go to the configured kernel tree and use make menuconfig to add
options you need to add and then do 'make savedefconfig' which should
create a new defconfig with your changes in it which then you can save
along side other machine defconfigs in kernel tree via a patch or may
be keep it in metadata
and add changes to recipe to use it for your machine.

>
> Thanks for the help in advance.
>
>
>
> -Mike
>
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>

