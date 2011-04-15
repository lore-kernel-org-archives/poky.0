Return-Path: <srifenbark@gmail.com>
Received: from mail-gy0-f176.google.com (mail-gy0-f176.google.com
	[209.85.160.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0F80C4C800A3
	for <poky@yoctoproject.org>; Fri, 15 Apr 2011 08:09:50 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by gya6 with SMTP id 6so1166545gya.35
	for <poky@yoctoproject.org>; Fri, 15 Apr 2011 06:09:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:message-id:old-date:subject:date:to:cc:from;
	bh=6wh5CPdu7TNI0mNM/IEDMMKb5hBMZaKg9O+IMxKrnuI=;
	b=I/vmBJeNjZuBitndBZdKzRsBYil8rYyEvJuV3WeYUtoQ6ivjgW5T8RAzrMScyCg1SF
	vVJNZ8VqvDL1AJPoPKLjugOHfSwxEumHBQ8GS9TBaiFbsjizvb0LdT4vjA7DwCmM420I
	CQBambBNcfwnOkUhQ04XP9ikqsgwdcMDO2xMs=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=message-id:old-date:subject:date:to:cc:from;
	b=jDQW8SzaVULJdoyl1SGK2MiAJSkmIkVlejPIil+6i2A/bdHvXf3b4eLRVxvEtlNDJJ
	xYkrSGII08LebTxiQ43xylEADh82q2fGHmECC/GOIjSwMbUzYPxw67Z+6+YCD/Ggnv8i
	X8Cxr1hynjEM1ss0XKYvOWD2ytLzfHCksgku4=
Received: by 10.150.254.1 with SMTP id b1mr2497270ybi.324.1302872988568;
	Fri, 15 Apr 2011 06:09:48 -0700 (PDT)
Received: from localhost (h227.63.117.75.dynamic.ip.windstream.net
	[75.117.63.227])
	by mx.google.com with ESMTPS id q29sm1260976yba.2.2011.04.15.06.09.47
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 15 Apr 2011 06:09:48 -0700 (PDT)
Message-Id: <cover.1302872863.git.scott.m.rifenbark@intel.com>
Old-Date: Fri, 15 Apr 2011 08:07:43 -0500
Date: Fri, 15 Apr 2011 06:09:48 -0700 (PDT)
To: poky@yoctoproject.org
CC: 
From: Scott Rifenbark <srifenbark@gmail.com>
Subject: [PATCH 0/1] [DOCS] Kernel Manual update for pokylinux.org links
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
X-List-Received-Date: Fri, 15 Apr 2011 13:09:50 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

I replaced the 'pokylinux.org' string with 'yoctoproject.org' in two 
URLs.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: srifenbark/kernel-work
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=srifenbark/kernel-work

Thanks,
    Scott Rifenbark <scott.m.rifenbark@intel.com>
---


Scott Rifenbark (1):
  documentation/kernel-manual/kernel-how-to.xml: replaced 'pokylinux'
    with 'yoctoproject'

 documentation/kernel-manual/kernel-how-to.xml |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)


