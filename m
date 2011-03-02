Return-Path: <kubera.samrat@gmail.com>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by mx1.pokylinux.org (Postfix) with ESMTP id 107FB4C800A4
	for <poky@yoctoproject.org>; Tue,  1 Mar 2011 22:54:11 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by wwi18 with SMTP id 18so6600332wwi.11
	for <poky@yoctoproject.org>; Tue, 01 Mar 2011 20:54:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:date:message-id:subject:from:to
	:content-type; bh=aHt/AJz/u2MHMPijf84ZSvZw8uZDcR2iQIksIxL6W6o=;
	b=xeH8pqbJCy9MZWuf3+qVuCAK6+m4+q0epoJeOgD5asQmMwojXltvCjgSRFf5g1LXbf
	2vrJSgiRPVWdX5VqA3YrRIXmCNabZyESafP69TUjinnxv6kyc9Je0XkE8NyTcstuHa2J
	4z9qLPbn1qa19jpE14D7+92mVYJkD3egWV/Eo=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	b=XuQEAqaMZ09br5YnW3Cr+8q+7G8klLUyxQIyoWkR1FmV11+4sxRNDdkPqIUy/50hk5
	97qUzs3wXOho/fKT3Z7MVsebTN8mmPK1lEmaDbAz0N0Jfey91gkmGtXrmDt6sOfeQbt1
	00KtxPnEiLXTj2pdl+77U8p051Oxb23s1XAMM=
MIME-Version: 1.0
Received: by 10.216.120.143 with SMTP id p15mr810049weh.42.1299041650483; Tue,
	01 Mar 2011 20:54:10 -0800 (PST)
Received: by 10.216.69.83 with HTTP; Tue, 1 Mar 2011 20:54:10 -0800 (PST)
Date: Wed, 2 Mar 2011 10:24:10 +0530
Message-ID: <AANLkTin-pd-81NcxwooNGHr2XzSjWcHqduXmofy+BwUL@mail.gmail.com>
From: kubera samrat <kubera.samrat@gmail.com>
To: poky@yoctoproject.org
Subject: Reg: Got error while pulling alsa-tools
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
X-List-Received-Date: Wed, 02 Mar 2011 04:54:12 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi,
        I have succefully pulled alsa-lib and alsa-utils, but while
pulling alsa-tools I got the error stated below.

| ./configure: line 4246: syntax error near unexpected token `1.0.0'
| ./configure: line 4246: `AM_PATH_ALSA(1.0.0)'
| make: *** [all] Error 1
| FATAL: oe_runmake failed
| ERROR: Task failed: ('function do_compile failed',
'/home/kuberasamrat/poky-chrome/build/tmp/work/core2-poky-linux/alsa-tools-1.0.20-r0/temp/log.do_compile.2696')
NOTE: package alsa-tools-1.0.20-r0: task do_compile: Failed
ERROR: Task 1080
(/home/kuberasamrat/poky-chrome/meta/recipes-multimedia/alsa/alsa-tools_1.0.20.bb,
do_compile) failed with 1
ERROR: '/home/kuberasamrat/poky-chrome/meta/recipes-multimedia/alsa/alsa-tools_1.0.20.bb'
failed



Please help in solving the problem.

Thanks and regards
-- 
Kubera Samrat

