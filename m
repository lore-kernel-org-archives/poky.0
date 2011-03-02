Return-Path: <kubera.samrat@gmail.com>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by mx1.pokylinux.org (Postfix) with ESMTP id DAF684C800A7
	for <poky@yoctoproject.org>; Tue,  1 Mar 2011 23:24:07 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by wwi18 with SMTP id 18so6615835wwi.11
	for <poky@yoctoproject.org>; Tue, 01 Mar 2011 21:24:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:content-type:content-transfer-encoding;
	bh=aFn6g8i8MQxW/sE4QGYNBD3HOslEF4yqMbRBVA0ywGg=;
	b=WjdPatpRwuK4AJ9qxpAWp7Tx6YabYf1G0fiDq4We5hhA2hl7heyYhFtQ8WvAbRh4/J
	Cdchj4CkuLBFv1sDsdheZOQHZB5uAZybsWmWBnxor0pMa1JrmGONFrq6fzAGPy6/fPQj
	eZ9n5G3+mrKgoJY4hjmdndfS+lUnwbsPiRv9c=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type:content-transfer-encoding;
	b=aPEHczPq4+f/3S63wrnr6yOCX7BT5xHEdUVfmbdLAYo+mBVRpscYBw92QMr+HyyBiN
	rFfcMh9gtm99gwvE9Ex5tfLimbEjuakRiVmLk+h8n3aGTzRzoqlhm9o2g3dZwYNrX7LY
	3UHowlnt5XOBgoJCrR036IIFNAWD9GINQDPOs=
MIME-Version: 1.0
Received: by 10.216.165.85 with SMTP id d63mr6877691wel.12.1299043446951; Tue,
	01 Mar 2011 21:24:06 -0800 (PST)
Received: by 10.216.69.83 with HTTP; Tue, 1 Mar 2011 21:24:06 -0800 (PST)
In-Reply-To: <AANLkTin-pd-81NcxwooNGHr2XzSjWcHqduXmofy+BwUL@mail.gmail.com>
References: <AANLkTin-pd-81NcxwooNGHr2XzSjWcHqduXmofy+BwUL@mail.gmail.com>
Date: Wed, 2 Mar 2011 10:54:06 +0530
Message-ID: <AANLkTin9-t7sFAfNsyoGZSm5tf7vYJp9nEbFH-ZE7zUW@mail.gmail.com>
From: kubera samrat <kubera.samrat@gmail.com>
To: poky@yoctoproject.org
Subject: Re: Reg: Got error while pulling alsa-tools
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
X-List-Received-Date: Wed, 02 Mar 2011 05:24:08 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi,
          I forgot to mention that my ubuntu version is 10.04.


On Wed, Mar 2, 2011 at 10:24 AM, kubera samrat <kubera.samrat@gmail.com> wr=
ote:
> Hi,
> =A0 =A0 =A0 =A0I have succefully pulled alsa-lib and alsa-utils, but whil=
e
> pulling alsa-tools I got the error stated below.
>
> | ./configure: line 4246: syntax error near unexpected token `1.0.0'
> | ./configure: line 4246: `AM_PATH_ALSA(1.0.0)'
> | make: *** [all] Error 1
> | FATAL: oe_runmake failed
> | ERROR: Task failed: ('function do_compile failed',
> '/home/kuberasamrat/poky-chrome/build/tmp/work/core2-poky-linux/alsa-tool=
s-1.0.20-r0/temp/log.do_compile.2696')
> NOTE: package alsa-tools-1.0.20-r0: task do_compile: Failed
> ERROR: Task 1080
> (/home/kuberasamrat/poky-chrome/meta/recipes-multimedia/alsa/alsa-tools_1=
.0.20.bb,
> do_compile) failed with 1
> ERROR: '/home/kuberasamrat/poky-chrome/meta/recipes-multimedia/alsa/alsa-=
tools_1.0.20.bb'
> failed
>
>

 Please help in solving the problem.

 Thanks and regards
Kubera Samrat

