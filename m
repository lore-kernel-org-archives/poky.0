Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9F5594C810F1
	for <poky@yoctoproject.org>; Thu, 23 Dec 2010 09:56:03 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBNFvPin019194; Thu, 23 Dec 2010 15:57:25 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id DaphH+iiLd+b; Thu, 23 Dec 2010 15:57:25 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBNFvLsp019190
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Thu, 23 Dec 2010 15:57:22 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Saul Wold <sgw@linux.intel.com>
In-Reply-To: <cover.1293114003.git.sgw@linux.intel.com>
References: <cover.1293114003.git.sgw@linux.intel.com>
Date: Thu, 23 Dec 2010 15:55:48 +0000
Message-ID: <1293119748.1588.971.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 00/28] Consolidated Pull & Enable LIC_FILES_CHKSUM as Error
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
X-List-Received-Date: Thu, 23 Dec 2010 15:56:04 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2010-12-23 at 06:26 -0800, Saul Wold wrote:
> This request has more of worlds building across all acrhes
> and enable the LIC_FILES_CHKSUM check as an ERROR
> 
> This also has the meta-emenlow reorg first step, next step will 
> be to move it to meta-intel
> 
> Sau!
> 
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: distro/stage
>   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=distro/stage
> 
> Thanks,
>     Saul Wold <sgw@linux.intel.com>

Merged into master, thanks!

Richard


