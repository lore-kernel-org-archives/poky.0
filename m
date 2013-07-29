Return-Path: <ross.burton@intel.com>
Received: from mail-wi0-f174.google.com (mail-wi0-f174.google.com
	[209.85.212.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 48CA6E013DE
	for <poky@yoctoproject.org>; Mon, 29 Jul 2013 09:23:08 -0700 (PDT)
Received: by mail-wi0-f174.google.com with SMTP id j17so2713487wiw.1
	for <poky@yoctoproject.org>; Mon, 29 Jul 2013 09:23:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=from:to:subject:date:message-id:x-mailer:x-gm-message-state;
	bh=zjBC7bgeAftebnVJ6Mayt8+Mh30PHySYvlus+0KphBA=;
	b=FmjR7BXhCJum7KO3dZuGcRBS3FbcPp0qwF6PDWePc2cn4PYxeklhkeY+NfsAG3XKzv
	M30kXqyatzcONp8u8e9rNCbJZ7cxfs7H0DoPjvvRMrVKc+CUuvsKch9t7lVfRtGFcHis
	E9yqqwMXmt/hyMZMy2oXCUSXgeEX7GydPcRTrYR4NDrLazs77IMAFTeN2kZqJFRwAhba
	drvLq0tDkwMTgwHvK5ksocj5huYxnlVcNbvzrRNfz2v60Bec6R0ibHfbys1XWJEA5vE5
	ymTwVD9DbKlSE5L+Rz+pd94ZP4M1I2lOI394O5mkcz5X+vYeZA5FF+cyNNoUYVlPrfGe
	s1GA==
X-Received: by 10.194.3.78 with SMTP id a14mr9944982wja.77.1375114987511;
	Mon, 29 Jul 2013 09:23:07 -0700 (PDT)
Received: from melchett.burtonini.com (35.106.2.81.in-addr.arpa. [81.2.106.35])
	by mx.google.com with ESMTPSA id e7sm3679164wiy.4.2013.07.29.09.23.06
	for <poky@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 29 Jul 2013 09:23:06 -0700 (PDT)
From: Ross Burton <ross.burton@intel.com>
To: poky@yoctoproject.org
Date: Mon, 29 Jul 2013 17:22:53 +0100
Message-Id: <1375114978-28831-1-git-send-email-ross.burton@intel.com>
X-Mailer: git-send-email 1.7.10.4
X-Gm-Message-State: ALoCoQnadfcduw+OorsNhWJafInTMSu0pBwA1Fs9v74LbrdcHUvViIYIKUW2124ZtQmkkBXwMfG5
Subject: [PATCH] genericx86 BSP
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 29 Jul 2013 16:23:09 -0000

Hi,

This is a slightly tweaked version of my "super BSP" to replace atom-pc in the
long-term.  More kernel work is pending, but that can wait post-M3.

Ross

