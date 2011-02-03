Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 815F94C800A3
	for <poky@yoctoproject.org>; Thu,  3 Feb 2011 05:22:25 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p13BOQOm020856; Thu, 3 Feb 2011 11:24:27 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id 5DkRYZBLzW67; Thu,  3 Feb 2011 11:24:26 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p13BOJq6020839
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Thu, 3 Feb 2011 11:24:21 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Mark Hatle <mark.hatle@windriver.com>
In-Reply-To: <1296656936.1544.3387.camel@rex>
References: <1296520080.13501.15996.camel@rex>
	<1296520850.13501.16052.camel@rex> <4D476541.7040703@windriver.com>
	<1296558321.13501.18568.camel@rex>  <4D4828F0.9020203@windriver.com>
	<1296656936.1544.3387.camel@rex>
Date: Thu, 03 Feb 2011 11:22:03 +0000
Message-ID: <1296732123.1544.8429.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: poky <poky@yoctoproject.org>
Subject: Re: Quick hack for profiling tasks
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
X-List-Received-Date: Thu, 03 Feb 2011 11:22:26 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-02-02 at 14:28 +0000, Richard Purdie wrote:
> On Tue, 2011-02-01 at 09:38 -0600, Mark Hatle wrote:
> > I'm still used to the RPM world where locales are included in the main package
> > and "tagged" so they will or won't be included automatically.  I forget they are
> > separated out in Poky by default.
> > 
> > So skipping them makes sense to me...
> 
> Some further numbers to backup my comments:
> 
> "time bitbake poky-image-sato -k"
> 
> Before patch:
> 
> real 129m40.482s
> user 480m16.520s
> sys 66m9.170s
> 
> After patch:
> 
> real 117m7.704s
> user 455m40.330s
> sys 55m1.390s

and just for reference, with the recent fetcher improvements:

real	113m39.607s
user	458m25.570s
sys	55m15.250s

I'm doubting the accuracy of the user figure there but the build should
be faster overall due to less taring/untaring of tarballs and it looks
like it is. It would be possible to really show an improvement by
specifically profiling the kernel/linux-libc-headers recipes.

Cheers,

Richard


