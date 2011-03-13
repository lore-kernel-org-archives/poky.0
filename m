Return-Path: <embedded.yogesh@gmail.com>
Received: from mail-pv0-f176.google.com (mail-pv0-f176.google.com
	[74.125.83.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id D7A6D4C800A7
	for <poky@yoctoproject.org>; Sun, 13 Mar 2011 01:56:17 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pvg6 with SMTP id 6so920286pvg.35
	for <poky@yoctoproject.org>; Sat, 12 Mar 2011 23:56:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:message-id:date:from:user-agent:mime-version:to
	:subject:content-type:content-transfer-encoding;
	bh=B9ckjjkmNmVm2wIWOwSojGrG3K/CRG0xKZP5iIDYQUk=;
	b=EpPtwNe8HsPTeln35aPelsa1zgDCLaL/fPYb9xYbQzd33EkgwmaykvwxxPxa20kTq0
	rZEjBdJNIy5ZJnIz9yswDJwmuxuJ3SOhObRb3JuNzFozZegOmOiXccDSp4WTBEI69fuL
	a91ZKMeZZZsrXr2KfAPaWOi5JJI4qPctSqJ7c=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	b=U0SVCM+N0CRFfZlIavX1vp71HfdUHU4JHTfQHzscK1ufM+xwABYEkSziHvzdZma8uX
	/eQDfl6ABzJfMXuVKotbtdgtsoo50W8lUsBMBwWe51jMfYSJ0DUWcbSGJpzdLPS1J1Ed
	qqCx8XhcC3jxIyoH4tydgmkVBAuNfiP3vrlPc=
Received: by 10.142.232.20 with SMTP id e20mr9362460wfh.119.1300002972404;
	Sat, 12 Mar 2011 23:56:12 -0800 (PST)
Received: from [192.168.11.118] ([115.111.25.162])
	by mx.google.com with ESMTPS id m10sm8240910wfl.11.2011.03.12.23.56.09
	(version=SSLv3 cipher=OTHER); Sat, 12 Mar 2011 23:56:11 -0800 (PST)
Message-ID: <4D7C7897.2040702@gmail.com>
Date: Sun, 13 Mar 2011 13:26:07 +0530
From: "embedded.yogesh" <embedded.yogesh@gmail.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.15pre) Gecko/20110207 Shredder/3.1.9pre
MIME-Version: 1.0
To: poky@yoctoproject.org
Subject: unpacking of archive failed
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
X-List-Received-Date: Sun, 13 Mar 2011 07:56:18 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

I am getting following error again and again, can any one guide how to 
resolve this .

"error: unpacking of archive failed on file /var/cache: cpio: rename failed - Inappropriate ioctl for device"


---
Yogesh

