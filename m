Return-Path: <bcdewberry@gmail.com>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by mx1.pokylinux.org (Postfix) with ESMTP id D8CBF4C80887
	for <poky@yoctoproject.org>; Thu,  7 Apr 2011 10:32:15 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by wwd20 with SMTP id 20so3211044wwd.11
	for <poky@yoctoproject.org>; Thu, 07 Apr 2011 08:32:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:date:message-id:subject:from:to
	:content-type; bh=pzjiShYtMHcbEXCrsXiEcs2RlEj6Jkze7TduIuBi67Q=;
	b=jGek8rgKEbnmQHh2cERMV68D+k9ppDBNwJ/002eDCJqGsDWIwiXHQC/H29aHQf95F+
	sjoNDr3nNz7XKKMs0uTGQpoa0TaOO91SvjGWTQhSp8LUUZjBpolFMi4ZpXWqx+a8EdZE
	QfFzM9qe23PmxOoWJ/xPj73BBk2VB1ig2AzmY=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	b=SjBP5ah3UTHlSZ3rOhUw0BgK/1zjDJFgxR4ozDwsk7h7xTFSIsBAeHqHVIhiannYA3
	GeSdiuAUoQSe955qlYhqgT367by8cOPyJDEy2afTWhEPp6mjoCGA7xA/l6fYozUE5ziP
	VKJtn5bUDoGndksNV+6SSvWyoz1E/dwGd3q+U=
MIME-Version: 1.0
Received: by 10.227.158.2 with SMTP id d2mr1091994wbx.65.1302190329887; Thu,
	07 Apr 2011 08:32:09 -0700 (PDT)
Received: by 10.216.24.133 with HTTP; Thu, 7 Apr 2011 08:32:09 -0700 (PDT)
Date: Thu, 7 Apr 2011 10:32:09 -0500
Message-ID: <BANLkTinqdM4oADVngVyMNPZ5uUxjpwSUrQ@mail.gmail.com>
From: Chase Dewberry <bcdewberry@gmail.com>
To: poky@yoctoproject.org
Subject: Mouse issues
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
X-List-Received-Date: Thu, 07 Apr 2011 15:32:16 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hello all,
I am new to this and am running poky on a IGEPv2 development board and
i can't get the board to recognize any USB mouse. I can't seem to find
any necessary drivers and I'm currently trying to get the "Logitech
v220 cordless optical mouse for notebooks" to work that says it
supports "Linux kernel 2.6+". Any suggestions? (details greatly
appreciated)

