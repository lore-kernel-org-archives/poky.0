Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5C3EB4C810C1
	for <poky@yoctoproject.org>; Mon, 31 Jan 2011 15:37:45 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0VLdji3018835; Mon, 31 Jan 2011 21:39:46 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id Xku22RgYy2Wc; Mon, 31 Jan 2011 21:39:45 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0VLdcpA018831
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Mon, 31 Jan 2011 21:39:40 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Lianhao Lu <lianhao.lu@intel.com>
In-Reply-To: <c00770ba3d5adbda2e1164735e3bde13b4b15362.1296375580.git.lianhao.lu@intel.com>
References: <cover.1296375580.git.lianhao.lu@intel.com>
	<c00770ba3d5adbda2e1164735e3bde13b4b15362.1296375580.git.lianhao.lu@intel.com>
Date: Mon, 31 Jan 2011 21:37:28 +0000
Message-ID: <1296509848.13501.15224.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/8] image/package_xx/rootfs_xx.bbclass: move rootfs_xx_log_check().
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
X-List-Received-Date: Mon, 31 Jan 2011 21:37:45 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sun, 2011-01-30 at 16:22 +0800, Lianhao Lu wrote:
> From: Lianhao Lu <lianhao.lu@intel.com>
> 
> Move function rootfs_xx_log_check() from rootfs_xx.bbclass to relevant
> package_xx.bbclass. (Where xx is rpm/ipk/deb).
> 
> Signed-off-by: Lianhao Lu <lianhao.lu@intel.com>
> ---
>  meta/classes/image.bbclass       |    5 +----
>  meta/classes/package_deb.bbclass |   20 ++++++++++++++++++++
>  meta/classes/package_ipk.bbclass |   20 ++++++++++++++++++++
>  meta/classes/package_rpm.bbclass |   20 ++++++++++++++++++++
>  meta/classes/rootfs_deb.bbclass  |   20 --------------------
>  meta/classes/rootfs_ipk.bbclass  |   20 --------------------
>  meta/classes/rootfs_rpm.bbclass  |   20 --------------------
>  7 files changed, 61 insertions(+), 64 deletions(-)

I've merged this to master since it is an improvement, thanks. Given the
similarity between the functions it would be nice to perhaps just define
a list of error strings in the package_xxx.bbclass and then have the
code to search for those strings in a shared core function?

Cheers,

Richard


