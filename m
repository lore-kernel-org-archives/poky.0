Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 63A3D4C810C1
	for <poky@yoctoproject.org>; Mon, 31 Jan 2011 10:31:20 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0VGXIM8006267; Mon, 31 Jan 2011 16:33:18 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id 2ENNSPd1jZv0; Mon, 31 Jan 2011 16:33:18 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0VGXF1X006262
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Mon, 31 Jan 2011 16:33:17 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Tom Rini <tom_rini@mentor.com>
In-Reply-To: <1296242899-7406-1-git-send-email-tom_rini@mentor.com>
References: <1296242899-7406-1-git-send-email-tom_rini@mentor.com>
Date: Mon, 31 Jan 2011 16:31:05 +0000
Message-ID: <1296491465.13501.13624.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: poky@yoctoproject.org
Subject: Re: [PATCH] poky-{glibc, uclibc}.inc: Add libc-foo OVERRIDES
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
X-List-Received-Date: Mon, 31 Jan 2011 16:31:20 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2011-01-28 at 12:28 -0700, Tom Rini wrote:
> This brings things back in sync with OpenEmbedded and will
> help with recipe porting.
> 
> Signed-off-by: Tom Rini <tom_rini@mentor.com>

Merged to master, thanks.

Richard


