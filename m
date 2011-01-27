Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 58A584C8006D
	for <poky@yoctoproject.org>; Thu, 27 Jan 2011 15:55:39 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0RLvZoa022862; Thu, 27 Jan 2011 21:57:35 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id OMjSIZaw4u3P; Thu, 27 Jan 2011 21:57:35 +0000 (GMT)
Received: from [192.168.1.45] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0RLvTft022843
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Thu, 27 Jan 2011 21:57:31 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Saul Wold <sgw@linux.intel.com>
In-Reply-To: <4D41CF20.3070107@linux.intel.com>
References: <4D41CF20.3070107@linux.intel.com>
Date: Thu, 27 Jan 2011 21:55:05 +0000
Message-ID: <1296165305.27814.8774.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PULL] Consolidated Pull Request
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
X-List-Received-Date: Thu, 27 Jan 2011 21:55:39 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2011-01-27 at 12:01 -0800, Saul Wold wrote:
> This updates the gtk+ to the stable versions, along with some other 
> fixes and package updates.
> 
> Sau!
> 
> 
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: distro/master
>    Browse: 
> http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=distro/master
> 
> Thanks,
>      Saul Wold <sgw@linux.intel.com>
> ---
> 
> 
> Mark Hatle (1):
>    BerkleyDB: Uprev db from 4.2 to 5.1.19
> 
> Saul Wold (1):
>    ofono: Fix missing dependency on udev
> 
> Yu Ke (2):
>    iputils: upgrade to s20101006
>    xf86-video-omapfb: upgrade to 044617665d6737f4909aab96
> 
> Zhai Edwin (4):
>    gtk+: Update to 2.22.1
>    gtk+: clean up old version after upgrading gtk+
>    eds-dbus: Do not disable old API after upgrading gtk+
>    webkit-gtk: upgrade to 1.3.7

Hi Saul,

Ke posted a new version of the xf86-video-omapfb change so I didn't take
that. I also didn't take the gtk+ version clear out as there are still
some older gtk+ patches like the filechooser that we've not resolved
yet. I did take everything else.

Cheers,

Richard


