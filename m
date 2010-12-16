Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8822A4C80B71
	for <poky@pokylinux.org>; Thu, 16 Dec 2010 09:40:21 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBGFfXvZ030607; Thu, 16 Dec 2010 15:41:34 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id e3FD375nCOhs; Thu, 16 Dec 2010 15:41:33 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBGFfS1N030590
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Thu, 16 Dec 2010 15:41:29 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Kevin Tian <kevin.tian@intel.com>
In-Reply-To: <0d30dc$kfrh4k@orsmga001.jf.intel.com>
References: <0d30dc$kfrh4k@orsmga001.jf.intel.com>
Date: Thu, 16 Dec 2010 15:39:59 +0000
Message-ID: <1292513999.26558.4022.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: paul.eggleton@linux.intel.com, poky@pokylinux.org
Subject: Re: [PATCH 2/3] kernel.bbclass: rename do_deploy and add vardepsexclusive accordingly
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
X-List-Received-Date: Thu, 16 Dec 2010 15:40:21 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2010-12-16 at 16:56 +0800, Kevin Tian wrote:
> rename do_deploy to kernel_do_deploy and export it. Then add exclusive
> list for two variables it refers to:
> 
> +kernel_do_deploy[vardepsexclude] = "DATETIME"
> +KERNEL_IMAGE_BASE_NAME[vardepsexclude] = "DATETIME"
> 
> This avoids the last road block linux-yocto for sstate.
> 
> Signed-off-by: Kevin Tian <kevin.tian@intel.com>

In the interests of getting this resolved, I've split this commit into
two and pushed the pieces I think are needed, I'm hoping you don't mind.

If we need any further changes, please let me know.

Cheers,

Richard


