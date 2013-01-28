Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 757ABE011AB
	for <poky@yoctoproject.org>; Mon, 28 Jan 2013 04:45:18 -0800 (PST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	r0SCnHD0029689; Mon, 28 Jan 2013 12:49:36 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id w8dMe2qlbegH; Mon, 28 Jan 2013 12:49:36 +0000 (GMT)
Received: from [192.168.3.10] (rpvlan0 [192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	r0SCnRn1029697
	(version=TLSv1/SSLv3 cipher=DHE-RSA-CAMELLIA256-SHA bits=256
	verify=NOT); Mon, 28 Jan 2013 12:49:30 GMT
Message-ID: <1359377090.22371.51.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Scott Garman <scott.a.garman@intel.com>
Date: Mon, 28 Jan 2013 12:44:50 +0000
In-Reply-To: <cover.1359330023.git.scott.a.garman@intel.com>
References: <cover.1359330023.git.scott.a.garman@intel.com>
X-Mailer: Evolution 3.6.2-0ubuntu0.1 
Mime-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/7] denzil pull request
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 28 Jan 2013 12:45:18 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sun, 2013-01-27 at 15:41 -0800, Scott Garman wrote:
> Hello,
> 
> This is a pull request for denzil. It includes a bitbake fix from
> MatthewM (poky-based tree only) and some Fedora 18 build fixes from
> Koen.
[...]
> The following changes since commit 3456295898bf157e40ea1f8c335f0b7285d3d8a7:
> 
>   build-appliance-image: Bump SRCREV (2013-01-04 22:23:43 +0000)
> 
> are available in the git repository at:
> 
>   git://git.yoctoproject.org/poky-contrib sgarman/denzil-next
>   http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=sgarman/denzil-next
> 
> Christopher Larson (1):
>   bitbake: command: add error to return of runCommand
> 
> Martin Jansa (1):
>   bison: move remove-gets.patch to BASE_SRC_URI, it's needed for
>     bison-native too if host has (e)glibc-2.16
> 
> Nitin A Kamble (1):
>   libtasn1: fix build with automake 1.12
> 
> Richard Purdie (2):
>   bitbake: command: Add missing import traceback
>   bitbake: command: Fix getCmdLineAction bugs
> 
> Saul Wold (2):
>   libtasn1: Update to 2.12
>   libtasn1: Upgrade to 2.13

Merged to denzil, thanks.

Richard


