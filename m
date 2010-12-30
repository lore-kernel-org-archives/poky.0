Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5DEE64C81003
	for <poky@yoctoproject.org>; Thu, 30 Dec 2010 05:21:28 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBUBMtBo004307; Thu, 30 Dec 2010 11:22:55 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id c-1XG56DwfDr; Thu, 30 Dec 2010 11:22:55 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBUBMnEO004303
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Thu, 30 Dec 2010 11:22:50 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Darren Hart <dvhart@linux.intel.com>
In-Reply-To: <4D1A879E.6060702@linux.intel.com>
References: <4D1A8103.2030501@linux.intel.com>
	<AANLkTinj7sVzHzDX9b09H+BQy4HDUvs-5kt8gehhOiZ2@mail.gmail.com>
	<4D1A879E.6060702@linux.intel.com>
Date: Thu, 30 Dec 2010 11:21:09 +0000
Message-ID: <1293708069.17519.10063.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: Chris Larson <clarson@kergoth.com>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: Library paths for Makefile based recipes
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
X-List-Received-Date: Thu, 30 Dec 2010 11:21:29 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2010-12-28 at 16:58 -0800, Darren Hart wrote:
> Turns out the project Makefile is doing this:
> 
> CC = $(CROSS_COMPILE)gcc
> AR = $(CROSS_COMPILE)ar
> 
> Removing those lines from the Makefile allows the project to build.

You could also set CROSS_COMPILE to the right value (TARGET_PREFIX?) and
things should work. This looks very similar to how we cross compile the
kernel.

Cheers,

Richard


