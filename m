Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5CC1AE004D1
	for <poky@yoctoproject.org>; Thu, 15 Sep 2011 03:28:01 -0700 (PDT)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p8FAY3XH026136; Thu, 15 Sep 2011 11:34:03 +0100
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id vBR7yPNXXiLN; Thu, 15 Sep 2011 11:34:03 +0100 (BST)
Received: from [192.168.1.36] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p8FAXu0t026131
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Thu, 15 Sep 2011 11:33:58 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Date: Thu, 15 Sep 2011 11:27:44 +0100
In-Reply-To: <cover.1316013940.git.paul.eggleton@linux.intel.com>
References: <cover.1316013940.git.paul.eggleton@linux.intel.com>
X-Mailer: Evolution 3.1.91- 
Message-ID: <1316082473.25993.12.camel@ted>
Mime-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/3] Remove remaining emenlow references from meta-yocto
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
X-List-Received-Date: Thu, 15 Sep 2011 10:28:01 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2011-09-15 at 10:51 +0100, Paul Eggleton wrote:
> The following changes since commit ce66e2c6bd117d1a40b547b10b376524f9276d16:
> 
>   core-image-minimal: Add missing POKY_EXTRA_IMAGE variable (2011-09-14 01:29:30 +0100)
> 
> are available in the git repository at:
>   git://git.pokylinux.org/poky-contrib paule/emenlow-tidy
>   http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=paule/emenlow-tidy
> 
> Paul Eggleton (3):
>   local.conf.sample: remove emenlow from example machines
>   qt4-x11-free: remove emenlow reference from meta-yocto bbappend
>   linux-yocto: remove emenlow from meta-yocto bbappend (2.6.37 version)
> 

Merged to master, thanks.

Richard


