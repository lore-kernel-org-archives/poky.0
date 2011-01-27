Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id AF4874C8121A
	for <poky@yoctoproject.org>; Thu, 27 Jan 2011 05:27:08 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0RBT5kK026806; Thu, 27 Jan 2011 11:29:05 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id cHUWpj5T1yLz; Thu, 27 Jan 2011 11:29:04 +0000 (GMT)
Received: from [192.168.1.45] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0RBT1m7026799
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Thu, 27 Jan 2011 11:29:03 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Dongxiao Xu <dongxiao.xu@intel.com>
In-Reply-To: <51b9e841709c65989647c04502670e26aff0010d.1296115229.git.dongxiao.xu@intel.com>
References: <cover.1296115229.git.dongxiao.xu@intel.com>
	<51b9e841709c65989647c04502670e26aff0010d.1296115229.git.dongxiao.xu@intel.com>
Date: Thu, 27 Jan 2011 11:26:39 +0000
Message-ID: <1296127599.27814.7114.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 3/3] perl: Remove ${MACHINE} dependency in compile and package.
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
X-List-Received-Date: Thu, 27 Jan 2011 11:27:09 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2011-01-27 at 16:04 +0800, Dongxiao Xu wrote:
> From: Dongxiao Xu <dongxiao.xu@intel.com>
> 
> The judgement on ${MACHINE} is meaningless, remove it in order to avoid
> being rebuild on second machine.
> 
> Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>

I've merged this into master, thanks!

Richard


