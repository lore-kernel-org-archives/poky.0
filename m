Return-Path: <vsailub4u@gmail.com>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 011CB4C800B1
	for <poky@yoctoproject.org>; Fri, 25 Feb 2011 00:55:38 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pzk28 with SMTP id 28so256758pzk.35
	for <poky@yoctoproject.org>; Thu, 24 Feb 2011 22:55:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:date:message-id:subject:from:to
	:content-type; bh=yh3jTDLm00mSHkIeQWEQGEfCVVb/vysDuf1VOXMuNbE=;
	b=fKROC/hDMOTujnSLSdrLxuK1DXK4aUGXPoZ8wDXND97GRwErLGR3g+qeeofs27h8Xq
	qryU2QivyUJKFpUa0o0uRXHSZQxOXYh8ygiZ/2d+ivQsZdE+oN+VFKcoRd8O/8PYZ4LW
	HaTgEfCHfBKDdE9srUTm5fR1m+iV43gN65RpU=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	b=D0Zr5g9BBm6dek+Tkz6tUY5CxHS2sr/Qd+E5lZjF0qoL6XG8P5DZbjjrEHofQKRNC2
	bSYGQQsdnTG8jjtu4e57jtZROHHibSeM2CFjGVtHcYIV2xOfbean/z9aNIehWi0AG5Aj
	vZlQSDSeRYwLp0SddN0uWkCR1m9HE7pmPkuhU=
MIME-Version: 1.0
Received: by 10.142.201.3 with SMTP id y3mr1402335wff.365.1298616938324; Thu,
	24 Feb 2011 22:55:38 -0800 (PST)
Received: by 10.142.170.3 with HTTP; Thu, 24 Feb 2011 22:55:38 -0800 (PST)
Date: Fri, 25 Feb 2011 12:25:38 +0530
Message-ID: <AANLkTin31iKNweKt-KET12gm6Fw4v4FJay+p1aE-ZkV_@mail.gmail.com>
From: v sailaja <vsailub4u@gmail.com>
To: poky@yoctoproject.org
Subject: problems while building an image uasing poky
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
X-List-Received-Date: Fri, 25 Feb 2011 06:55:40 -0000
Content-Type: multipart/alternative; boundary=000e0cd32f1e4ee2a2049d15d12f

--000e0cd32f1e4ee2a2049d15d12f
Content-Type: text/plain; charset=ISO-8859-1

Hi,


I am trying to build an image on poky platform. I didn't find some packages
like* krb and directfb*, so I copied those packages from open-embedded. but
I am getting an *error* like
 *package krb5-1.6.3-r6: task do_install: Failed*

Can anyone help me to fix this problem.

Thanks & Regards,
SAI

--000e0cd32f1e4ee2a2049d15d12f
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi,<br><br><br>I am trying to build an image on poky platform. I didn&#39;t=
 find some packages like<b> krb and directfb</b>, so I copied those package=
s from open-embedded. but I am getting an <b>error</b> like=A0=A0 <br>=A0<b=
>package krb5-1.6.3-r6: task do_install: Failed</b><br>
<br>Can anyone help me to fix this problem.<br><br>Thanks &amp; Regards,<br=
>SAI<br><br><br><br><br><br><br>

--000e0cd32f1e4ee2a2049d15d12f--
