Return-Path: <eballetbo@gmail.com>
Received: from pug.o-hand.com (3a.49.1343.static.theplanet.com [67.19.73.58])
	by mx1.pokylinux.org (Postfix) with ESMTP id AC6794C80BD4
	for <poky@lists.pokylinux.org>; Tue, 16 Nov 2010 10:21:26 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pug.o-hand.com (Postfix)
	id BCA5D12EC2F1; Tue, 16 Nov 2010 10:58:24 -0600 (CST)
Received: from mail-qw0-f44.google.com (mail-qw0-f44.google.com
	[209.85.216.44])
	by pug.o-hand.com (Postfix) with ESMTP id 93AE812EC1C5
	for <poky@o-hand.com>; Tue, 16 Nov 2010 10:58:24 -0600 (CST)
Received: by qwd7 with SMTP id 7so719730qwd.3
	for <poky@o-hand.com>; Tue, 16 Nov 2010 08:21:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:received:received:date:message-id
	:subject:from:to:content-type;
	bh=7mGX/2GNCtY7Ymnsln1dzpea08RZKNDubrcFF6kTvkI=;
	b=IGQvXx8sxtvmE6Wd2rH66m73lJO1GuMQzGLkwoucIRuSPB86rHclO3gyNlIT4ceGmD
	z5h8cms/Nb8M0DzQu1khzwWgEMU0TTBhxC3NdXa0cDmSoujT3iynu3OoUqGJjCNh5iri
	xiOFn/tCjth064yqDpFPeJ+QTkKiVdhtLnoJ0=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	b=dcXgBRfBYgyjlaUQFkFMQOygjqpuGtMJnax0kX5FTNwSGmk/+nfs754Ltk0rd4YgOc
	8Bw+gsXqYt30H0gSIeOWaD3m+DJ0Jg9gInCuUU2bbsiv6x2L1ewymZHnw2jc+N52juW+
	+xl5kjX3f9ORyrGkVSEWtX9Qi6pcUY6JBcXFY=
MIME-Version: 1.0
Received: by 10.229.109.197 with SMTP id k5mr6569855qcp.14.1289924485400; Tue,
	16 Nov 2010 08:21:25 -0800 (PST)
Received: by 10.229.182.82 with HTTP; Tue, 16 Nov 2010 08:21:25 -0800 (PST)
Date: Tue, 16 Nov 2010 17:21:25 +0100
Message-ID: <AANLkTimMW5MSHuru4wFZeLTnkY8hELr+kuOC8BtOi=MJ@mail.gmail.com>
From: =?UTF-8?Q?Enric_Balletb=C3=B2_i_Serra?= <eballetbo@gmail.com>
To: poky@o-hand.com
Subject: install and kernel directories in rootfs tarball
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
X-List-Received-Date: Tue, 16 Nov 2010 16:21:26 -0000
Content-Type: text/plain; charset=UTF-8

Hi,

After building a recent sato image using latest commits from git
repositories, the rootfs contains current directories

  $ ls
  bin  boot  dev  etc  home  install  kernel  lib  media  mnt  proc
sbin  sys  tmp  usr  var

Are the 'install' and 'kernel' included in rootfs for some reason or
it's a bug ?

Cheers,
   Enric

