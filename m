Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 217774C81081
	for <poky@yoctoproject.org>; Thu, 23 Dec 2010 10:16:00 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBNGHNw2019790; Thu, 23 Dec 2010 16:17:23 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id wQ5Z7JKAEze9; Thu, 23 Dec 2010 16:17:23 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBNGHHF0019786
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Thu, 23 Dec 2010 16:17:19 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1293116495.git.paul.eggleton@linux.intel.com>
References: <cover.1293116495.git.paul.eggleton@linux.intel.com>
Date: Thu, 23 Dec 2010 16:15:45 +0000
Message-ID: <1293120945.1588.992.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/4] Qt4 application fixes
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
X-List-Received-Date: Thu, 23 Dec 2010 16:16:01 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2010-12-23 at 15:10 +0000, Paul Eggleton wrote:
> Fix Qt4 runtime dependencies for all of our current Qt4 applications.
> Addresses [BUGID: 524].
> 
> Some notes:
> * qmmp is now building with cmake. This took quite a few additions to 
>   EXTRA_OECMAKE and I suspect there is a case for having a "qt4cmake" bbclass
>   or similar to make this reusable - further discussion needed.
> * qmmp packaging is not perfect, there are still quite a few unpackaged 
>   files; however it should at least now be usable. How much further to go 
>   really depends on the purpose of having it in poky.
> 
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: paule/qt-fixes
>   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=paule/qt-fixes

These look good to me, merged into master, thanks!

Richard


