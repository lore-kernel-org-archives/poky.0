Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (unknown [93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3EBED4C8009D
	for <poky@yoctoproject.org>; Fri, 18 Mar 2011 07:10:31 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p2ICA8oK005275;
	Fri, 18 Mar 2011 12:10:08 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 05126-02; Fri, 18 Mar 2011 12:10:04 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p2ICA3F1005263
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Fri, 18 Mar 2011 12:10:04 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Lianhao Lu <lianhao.lu@intel.com>
In-Reply-To: <cover.1300440492.git.lianhao.lu@intel.com>
References: <cover.1300440492.git.lianhao.lu@intel.com>
Date: Fri, 18 Mar 2011 12:09:47 +0000
Message-ID: <1300450187.30423.2201.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] Bug #908: Added sysroot to CPPFLAGS
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
X-List-Received-Date: Fri, 18 Mar 2011 12:10:31 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2011-03-18 at 17:30 +0800, Lianhao Lu wrote:
> From: Lianhao Lu <lianhao.lu@intel.com>
> 
> Added CPPFLAGS into environment files and added --sysroot to it.
> 
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: llu/bug908
>   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=llu/bug908
> 
> Thanks,
>     Lianhao Lu <lianhao.lu@intel.com>
> ---
> 
> 
> Lianhao Lu (1):
>   toolchain-scripts.bbclass: Added --sysroot to CPPFLAGS.

Merged to master, thanks.

Richard


