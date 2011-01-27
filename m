Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 105E04C811AA
	for <poky@yoctoproject.org>; Thu, 27 Jan 2011 09:29:31 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0RFVS09007000; Thu, 27 Jan 2011 15:31:28 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id 8M+UnUT1g2WO; Thu, 27 Jan 2011 15:31:28 +0000 (GMT)
Received: from [192.168.1.45] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0RFVKpP006982
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Thu, 27 Jan 2011 15:31:22 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Joshua Lock <josh@linux.intel.com>
In-Reply-To: <cover.1296133552.git.josh@linux.intel.com>
References: <cover.1296133552.git.josh@linux.intel.com>
Date: Thu, 27 Jan 2011 15:28:57 +0000
Message-ID: <1296142137.27814.7848.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] Make external-python-tarball useful again
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
X-List-Received-Date: Thu, 27 Jan 2011 15:29:32 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2011-01-27 at 13:09 +0000, Joshua Lock wrote:
> From: Joshua Lock <josh@linux.intel.com>
> 
> The attached patch adds the multiprocessing module to the external Python
> tarball. This is quite useful as we use multiprocessing at recipe parse time
> now.

Merged into master, thanks!

> This raises two questions:
> 1) Should we do some testing around the use of multiprocessing?

In what way?

> 2) Who can update a new external-python-tarball to the public download?

Beth+me should both have access.

> Finally, we should probably document the existence of this tarball somewhere
> other than this mailing list. Ideas?
> 
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: josh/master
>   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=josh/master
> 
> Thanks,
>     Joshua Lock <josh@linux.intel.com>

Cheers,

Richard


