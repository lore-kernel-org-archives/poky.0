Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 213A04C800A3
	for <poky@yoctoproject.org>; Tue,  1 Feb 2011 08:55:17 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p11EvIGI021223; Tue, 1 Feb 2011 14:57:19 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id 30G8n5hljNrd; Tue,  1 Feb 2011 14:57:18 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p11EvEwh021159
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Tue, 1 Feb 2011 14:57:16 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Tom Zanussi <tom.zanussi@intel.com>
In-Reply-To: <cover.1296531081.git.tom.zanussi@intel.com>
References: <cover.1296531081.git.tom.zanussi@intel.com>
Date: Tue, 01 Feb 2011 14:55:01 +0000
Message-ID: <1296572101.13501.19497.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] x86_64 compile error fix
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
X-List-Received-Date: Tue, 01 Feb 2011 14:55:18 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2011-01-31 at 21:34 -0600, Tom Zanussi wrote:
> From: Tom Zanussi <tom.zanussi@intel.com>
> 
> This patch fixes a rpm 5.4.0 error in configure.  Please pull.
> 
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: tzanussi/sitefix
>   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=tzanussi/sitefix
> 
> Thanks,
>     Tom Zanussi <tom.zanussi@intel.com>
> ---
> 
> 
> Tom Zanussi (1):
>   site/x86_x64: add entry to fix x86_64 compile errors

Merged to master, thanks.

Richard


