Return-Path: <kubera.samrat@gmail.com>
Received: from mail-wy0-f176.google.com (mail-wy0-f176.google.com
	[74.125.82.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 48D2A4C803BA
	for <poky@yoctoproject.org>; Wed,  2 Mar 2011 22:24:06 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by wya21 with SMTP id 21so919398wya.35
	for <poky@yoctoproject.org>; Wed, 02 Mar 2011 20:24:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:date:message-id:subject:from:to
	:content-type; bh=+/3TXMgOLsMWrWSRXCDt6ymy7b0fi6S9IwPhaUJzHPE=;
	b=k1JwlH4mwvJcVCUUfYN2m+hOLM6/jWZKALO47nwCm7qaIlo/zoS9FIGArytRXzHgU3
	CTBmWA5gkU0SlLJpqDMZwRCF81NYmaUB3/q42T3OY0IQK2srZtnSn3aRkZvmjFtMM5md
	48LtTnC7Xhjt9YrFKTNjTaExnzhzqrU8qsq3U=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	b=oi6kno2Cfm6YKPXLUnWAe5LytP8oGlkkx5Nq7DSA9v07+HvHDp2EMi8rH3CGtbeZsl
	0Q5AA1Ng6D6SgUnqt++vAn5IESv3+y5PsSPk4AIw90i9wLjBfcBLpkGxVRE8kZgWlBwR
	B8jWrf0G8chwdSti0c8kC+HAD89L2u6Mk0+GE=
MIME-Version: 1.0
Received: by 10.216.17.204 with SMTP id j54mr166115wej.32.1299126245081; Wed,
	02 Mar 2011 20:24:05 -0800 (PST)
Received: by 10.216.69.83 with HTTP; Wed, 2 Mar 2011 20:24:05 -0800 (PST)
Date: Thu, 3 Mar 2011 09:54:05 +0530
Message-ID: <AANLkTi=XgciNC_9dy3zocW8GzBj6sbg5RjfbJe-OuhJM@mail.gmail.com>
From: kubera samrat <kubera.samrat@gmail.com>
To: poky@yoctoproject.org
Subject: Reg:problem while Adding libgcc_s
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
X-List-Received-Date: Thu, 03 Mar 2011 04:24:06 -0000
Content-Type: text/plain; charset=ISO-8859-1

hi,
         I am using Ubuntu (10.04) on 64 bit machine. I have pulled in
gcc but I am unable to find libgcc_s. Can any one help me in
integrating this to poky.
Your help will be greatly appreciated.

--
Thanks and regards
V kubera Samrat

