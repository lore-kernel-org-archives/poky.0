Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 799CB4C80050
	for <poky@yoctoproject.org>; Wed, 22 Dec 2010 05:11:51 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBMBD8O1023657; Wed, 22 Dec 2010 11:13:08 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id 1NxrIh8x2YHf; Wed, 22 Dec 2010 11:13:08 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBMBD2PE023653
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Wed, 22 Dec 2010 11:13:04 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Lu Jingdong <jingdong.lu@windriver.com>
In-Reply-To: <4D11CAA8.1020106@windriver.com>
References: <cover.1292925066.git.jingdong.lu@windriver.com>
	<4D11493C.6050207@linux.intel.com>  <4D11CAA8.1020106@windriver.com>
Date: Wed, 22 Dec 2010 11:11:12 +0000
Message-ID: <1293016272.25087.7418.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/3] Fix failures of LSB.
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
X-List-Received-Date: Wed, 22 Dec 2010 11:11:51 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2010-12-22 at 17:53 +0800, Lu Jingdong wrote:
> > Is the PREFIX=/usr correct?  I note in other there is a ${D} or 
> > ${D}${prefix}, please make sure you have the correct location here.
> Because the default value of PREFIX is /usr/local in Makefile, I change 
> it into /usr and give this option.

I'd suggest using PREFIX=${prefix} and then if someone wants the change
the layout using our standard variables, they can.

Cheers,

Richard


