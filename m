Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 456984C810C0
	for <poky@yoctoproject.org>; Tue, 21 Dec 2010 08:44:32 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBLEjlXS013331; Tue, 21 Dec 2010 14:45:47 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id cpYV-vcNhDdS; Tue, 21 Dec 2010 14:45:47 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBLEjgAR013303
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Tue, 21 Dec 2010 14:45:44 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <aa49242ff7d85c698c7e9db1946c6bbf8924d2c6.1292920702.git.raj.khem@gmail.com>
References: <cover.1292920700.git.raj.khem@gmail.com>
	<aa49242ff7d85c698c7e9db1946c6bbf8924d2c6.1292920702.git.raj.khem@gmail.com>
Date: Tue, 21 Dec 2010 14:43:56 +0000
Message-ID: <1292942636.25087.6133.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/3] gcc: Upgrade recipes from 4.5.1 -> 4.5.2
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
X-List-Received-Date: Tue, 21 Dec 2010 14:44:32 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi Khem,

On Tue, 2010-12-21 at 01:27 -0800, Khem Raj wrote:
> * Generate libgcc_s.so as a linker stub irrespective
>   of whatever is generated during gcc build

To help with review can you do one thing per commit please? This patch
upgrades the gcc version, rewrites the poison patch and changes the
linker stub all in one when these can be separate changes.

Cheers,

Richard





