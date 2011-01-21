Return-Path: <scott.a.garman@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2FE7A4C81065;
	Fri, 21 Jan 2011 12:22:47 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 21 Jan 2011 10:22:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,359,1291622400"; d="scan'208";a="649778195"
Received: from rrsmsx603.amr.corp.intel.com ([10.31.0.57])
	by fmsmga002.fm.intel.com with ESMTP; 21 Jan 2011 10:22:46 -0800
Received: from [10.255.14.91] (10.255.14.91) by rrsmsx603.amr.corp.intel.com
	(10.31.0.57) with Microsoft SMTP Server (TLS) id 8.2.254.0;
	Fri, 21 Jan 2011 11:22:46 -0700
Message-ID: <4D39CEF5.2020006@intel.com>
Date: Fri, 21 Jan 2011 10:22:45 -0800
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101208 Thunderbird/3.1.7
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <AANLkTi=XdyonrJRV03znEbLf5r67rVWOLBiAJrWoYE8E@mail.gmail.com>	<9AFCD584B0B67B48AE8D8585BE30BA9504ED88CD@orsmsx504.amr.corp.intel.com>	<AANLkTinm1j+_J_7=dsjEx=rnsOhQH1vwfKZPzPsdP7++@mail.gmail.com>	<9AFCD584B0B67B48AE8D8585BE30BA9504ED898A@orsmsx504.amr.corp.intel.com>	<AANLkTik0yFXOtDnXQaC2z7htnF0ak8g++GhzKLaL7RJ-@mail.gmail.com>	<9AFCD584B0B67B48AE8D8585BE30BA950678BE2C@orsmsx504.amr.corp.intel.com>	<AANLkTi=65w99wt1kxGLY4qEUApXdYBCg-Mj15z1cm4Ni@mail.gmail.com>
	<AANLkTiks-wWMBvFdYnDC7-PacX62ge0oOSXa7zYqZTw0@mail.gmail.com>
In-Reply-To: <AANLkTiks-wWMBvFdYnDC7-PacX62ge0oOSXa7zYqZTw0@mail.gmail.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [yocto] Eclipse Plugin Yocto Project Settings
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
X-List-Received-Date: Fri, 21 Jan 2011 18:22:47 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 01/21/2011 01:48 AM, Diego Sueiro wrote:
> Jessica,
>
> Here is the first output messages from poky-extract-sdk command:
>
>     Creating directory qemuarm
>     Extracting rootfs tarball using pseudo...
>     /home/dev/yocto/poky-4.0-build/tmp/sysroots/i686-linux/usr/bin/pseudo -P
>     /home/dev/yocto/poky-4.0-build/tmp/sysroots/i686-linux/usr tar -C
>     "qemuarm" -xjf
>     "poky-4.0-build/tmp/deploy/images/poky-image-sato-qemuarm.tar.bz2"
>     pseudo: Couldn't open qemuarm/var/pseudo/pseudo.pid: No such file or
>     directory

Thanks Diego for this information. You've uncovered a bug which I've 
just filed:

http://bugzilla.pokylinux.org/show_bug.cgi?id=670

...and hope to have fixed by the end of today in Poky master (and queued 
for inclusion in the Laverne point-release coming up).

As a workaround, you should be able to use a full pathname when 
specifying the installation directory to the poky-extract-sdk script. 
Relative paths are broken.

Scott

-- 
Scott Garman
Embedded Linux Distro Engineer - Yocto Project

