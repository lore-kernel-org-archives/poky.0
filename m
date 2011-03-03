Return-Path: <kubera.samrat@gmail.com>
Received: from mail-wy0-f176.google.com (mail-wy0-f176.google.com
	[74.125.82.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4D6DF4C800A3
	for <poky@yoctoproject.org>; Thu,  3 Mar 2011 01:09:13 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by wya21 with SMTP id 21so1005157wya.35
	for <poky@yoctoproject.org>; Wed, 02 Mar 2011 23:09:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=d+QHOpU9C7+7q9iCCnsicm5XFWG7hM8Ui0NTy4QsaqQ=;
	b=duXaACsn3obme3AXlbds9VnbvwZNz7hASOG5WAanXD2X1CCF/p8JBe/9rZ5GjRptx4
	bv1ytEBfzQcczIFqzwHe5dpVwbjJCvVZOk58yA9B1WgBjsnOzJ4RpWbHWB/lFWhtqAl/
	EATuIZCY66IdHs3fYfKt+kjH/ETtxyWAWSd3A=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=nYUGv0QC63fe7Uw+HoHQkVWfo/PF+boGd5xVNxnfWXK4ArHuDxT9YibvLIrJiqJ225
	bl/GQe7ilsYyaXd/R8HhgtqfUIrTJuN2S5IEOJtkVj3RTrTPGb5PCB/lYsNSho6E42/N
	gfpi8n8RudiZwWC4F9a+5d9osg/CmsRRLWJr8=
MIME-Version: 1.0
Received: by 10.216.183.209 with SMTP id q59mr581397wem.17.1299136152066; Wed,
	02 Mar 2011 23:09:12 -0800 (PST)
Received: by 10.216.69.83 with HTTP; Wed, 2 Mar 2011 23:09:12 -0800 (PST)
In-Reply-To: <1865303E0DED764181A9D882DEF65FB6866D365FBB@shsmsx502.ccr.corp.intel.com>
References: <AANLkTi=XgciNC_9dy3zocW8GzBj6sbg5RjfbJe-OuhJM@mail.gmail.com>
	<1865303E0DED764181A9D882DEF65FB6866D365FBA@shsmsx502.ccr.corp.intel.com>
	<AANLkTi=YH3OH89E8viucBekQcSxvM0ZAyNcCnfFottwB@mail.gmail.com>
	<1865303E0DED764181A9D882DEF65FB6866D365FBB@shsmsx502.ccr.corp.intel.com>
Date: Thu, 3 Mar 2011 12:39:12 +0530
Message-ID: <AANLkTimpVtH=M9TDqGY+QfWnq+0LokG1XLcpKg=H_PbA@mail.gmail.com>
From: kubera samrat <kubera.samrat@gmail.com>
To: "Cui, Dexuan" <dexuan.cui@intel.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: Reg:problem while Adding libgcc_s
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
X-List-Received-Date: Thu, 03 Mar 2011 07:09:13 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi,
          Thanks a lot. Now i can see gcc_s. Now I got problem while
adding alsa.
I got an error as stated below.

ERROR: Task failed: ('function do_compile failed',
'/home/kuberasamrat/poky-chrome/build/tmp/work/core2-poky-linux/alsa-tools-=
1.0.20-r0/temp/log.do_compile.24942')
ERROR: Logfile of failure stored in:
/home/kuberasamrat/poky-chrome/build/tmp/work/core2-poky-linux/alsa-tools-1=
.0.20-r0/temp/log.do_compile.24942
Log data follows:
| NOTE: make
| ./ac3dec
| configure.in:18: warning: macro `AM_PATH_ALSA' not found in library
| configure.in:18: error: possibly undefined macro: AM_PATH_ALSA
|       If this token and others are legitimate, please use m4_pattern_allo=
w.
|       See the Autoconf documentation.
| make: *** [all] Error 1
| FATAL: oe_runmake failed
| ERROR: Task failed: ('function do_compile failed',
'/home/kuberasamrat/poky-chrome/build/tmp/work/core2-poky-linux/alsa-tools-=
1.0.20-r0/temp/log.do_compile.24942')
NOTE: package alsa-tools-1.0.20-r0: task do_compile: Failed
ERROR: Task 1140
(/home/kuberasamrat/poky-chrome/meta/recipes-multimedia/alsa/alsa-tools_1.0=
.20.bb,
do_compile) failed with 1
ERROR: '/home/kuberasamrat/poky-chrome/meta/recipes-multimedia/alsa/alsa-to=
ols_1.0.20.bb'
failed


Can you give suggest me a solution for this.

On Thu, Mar 3, 2011 at 11:39 AM, Cui, Dexuan <dexuan.cui@intel.com> wrote:
> kubera samrat wrote:
>> Hi Dexuan,
>> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 I have pulled in gcc into poky(using
>> meta/recipes-devtools/gcc/libgcc_4.5.1.bb). But I couldn't find
>> libgcc_s.so in target image. Do I have to change any configure options
>> to get gcc_s ?
>> or else suggest me approproate solution
> Hi Kubera,
> I build poky with "bitbake poky-image-sato-sdk" and in the target image, =
I can find
> /lib/libgcc_s.so.1
> /lib/libgcc_s.so.
> /usr/bin/gcc.
>
> I'm still not clear how you "pulled in" something.
>
> Thanks,
> -- Dexuan



Thanks and regards
V kubera Samrat

