Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9391A4C80039
	for <poky@yoctoproject.org>; Mon, 17 Jan 2011 16:05:53 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0HM7dCR009491; Mon, 17 Jan 2011 22:07:40 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id p9rQyC2AKf04; Mon, 17 Jan 2011 22:07:39 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0HM7a7v009487
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Mon, 17 Jan 2011 22:07:38 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Dexuan Cui <dexuan.cui@intel.com>
In-Reply-To: <cover.1295241502.git.dexuan.cui@intel.com>
References: <cover.1295241502.git.dexuan.cui@intel.com>
Date: Mon, 17 Jan 2011 22:05:39 +0000
Message-ID: <1295301939.14388.15760.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: poky@yoctoproject.org
Subject: Re: [PATCH v2 0/2] upgrade libc-package.bbclass; add libgcc
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
X-List-Received-Date: Mon, 17 Jan 2011 22:05:54 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2011-01-17 at 13:23 +0800, Dexuan Cui wrote:
> The "libgcc: ..." patch is re-made to fix "the crt*.* and libgcc_s*.so* are
> not installed into target image" -- previously I didn't define
> PREFERRED_PROVIDER and PROVIDES properly. I tested building sato on qemumips,
> and I can verify the files are installed into target image now.
> 
> The "libc-package.bbclass: ..." patch is the same as the one I sent last time.
> 
> Please review the patches and pull.

Merged into master, thanks!

Richard


