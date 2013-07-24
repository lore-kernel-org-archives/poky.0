Return-Path: <biannm@cn.fujitsu.com>
Received: from song.cn.fujitsu.com (unknown [222.73.24.84])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 78F9CE01525
	for <poky@yoctoproject.org>; Tue, 23 Jul 2013 23:57:31 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="4.89,733,1367942400"; 
   d="scan'208";a="8003163"
Received: from unknown (HELO tang.cn.fujitsu.com) ([10.167.250.3])
	by song.cn.fujitsu.com with ESMTP; 24 Jul 2013 14:54:28 +0800
Received: from fnstmail02.fnst.cn.fujitsu.com (tang.cn.fujitsu.com [127.0.0.1])
	by tang.cn.fujitsu.com (8.14.3/8.13.1) with ESMTP id r6O6vPsJ006611;
	Wed, 24 Jul 2013 14:57:27 +0800
Received: from [127.0.0.1] ([10.167.226.190])
	by fnstmail02.fnst.cn.fujitsu.com (Lotus Domino Release 8.5.3)
	with ESMTP id 2013072414552426-81749 ;
	Wed, 24 Jul 2013 14:55:24 +0800 
Message-ID: <51EF7AD7.7080009@cn.fujitsu.com>
Date: Wed, 24 Jul 2013 14:57:27 +0800
From: Bian Naimeng <biannm@cn.fujitsu.com>
User-Agent: Mozilla/5.0 (Windows; U; Windows NT 5.1; zh-CN;
	rv:1.9.2.28) Gecko/20120306 Lightning/1.0b2 Thunderbird/3.1.20
MIME-Version: 1.0
To: richard.purdie@linuxfoundation.org
X-MIMETrack: Itemize by SMTP Server on mailserver/fnst(Release 8.5.3|September
	15, 2011) at 2013/07/24 14:55:24,
	Serialize by Router on mailserver/fnst(Release 8.5.3|September 15,
	2011) at 2013/07/24 14:55:26,
	Serialize complete at 2013/07/24 14:55:26
Cc: poky@yoctoproject.org
Subject: Why we release yocto on different branch
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
X-List-Received-Date: Wed, 24 Jul 2013 06:57:33 -0000
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset=UTF-8

Hi all,

Why we release yocto on different branch?
 
 Yocto Project 1.2: denzil
 Yocto Project 1.3: danny
 Yocto Project 1.4: dylan

Some questions.
1. Do we always create a new branch to release the next Yocto Project?
2. If so, which branch/commit the new branch start from?
3. What's the relation between these branch?

Thanks,
 bian


