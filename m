Return-Path: <stefan@herbrechtsmeier.net>
Received: from dd20036.kasserver.com (dd20036.kasserver.com [85.13.140.69])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 76C9FE0044A
	for <poky@yoctoproject.org>; Mon, 14 May 2012 02:48:28 -0700 (PDT)
Received: from [129.70.144.11] (hooge.TechFak.Uni-Bielefeld.DE [129.70.144.11])
	by dd20036.kasserver.com (Postfix) with ESMTPSA id F01CCE00C0
	for <poky@yoctoproject.org>; Mon, 14 May 2012 11:48:26 +0200 (CEST)
Message-ID: <4FB0D4EA.2030309@herbrechtsmeier.net>
Date: Mon, 14 May 2012 11:48:26 +0200
From: Stefan Herbrechtsmeier <stefan@herbrechtsmeier.net>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:12.0) Gecko/20120428 Thunderbird/12.0.1
MIME-Version: 1.0
To: poky@yoctoproject.org
Subject: Empty git2_git.yoctoproject.org.linux-yocto-3.0.tar.gz on source mirror
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
X-List-Received-Date: Mon, 14 May 2012 09:48:28 -0000
Content-Type: text/plain; charset=ISO-8859-15; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

the tast do_fetch of linux-yocto-3.0 failed because the size of the tar 
on the sources mirror is zero.

Regards,
     Stefan


