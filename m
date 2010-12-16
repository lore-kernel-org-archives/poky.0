Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id D06284C80B71
	for <poky@yoctoproject.org>; Thu, 16 Dec 2010 09:44:49 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBGFk2UR030818; Thu, 16 Dec 2010 15:46:02 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id Eb09pI5QHO3f; Thu, 16 Dec 2010 15:46:02 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBGFjwCv030815
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Thu, 16 Dec 2010 15:45:59 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Yocto Project Discussions <yocto@linux.intel.com>
In-Reply-To: <4D095AB5.6060805@linux.intel.com>
References: <4D095AB5.6060805@linux.intel.com>
Date: Thu, 16 Dec 2010 15:44:29 +0000
Message-ID: <1292514269.26558.4031.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [Yocto] RFC: README.hardware: Intel Atom device documentation
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
X-List-Received-Date: Thu, 16 Dec 2010 15:44:50 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2010-12-15 at 16:17 -0800, Darren Hart wrote:
> I ran across some issues working with USB keys while booting a couple
> different Intel Atom based devices. I drafted the following documenting
> what I learned from the process. I'd like to add this (or something
> similar) to README.hardware.
> 
> Thoughts/Comments?

I think we should add it, please send it completed as a patch!

Ultimately I'm not sure what we do with this file (would it be better on
the wiki?) but having appropriate info there is certainly desirable.

Cheers,

Richard



