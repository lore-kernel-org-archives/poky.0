Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6D5D64C808B0
	for <poky@yoctoproject.org>; Tue, 21 Dec 2010 08:43:49 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBLEi8k0013271; Tue, 21 Dec 2010 14:44:08 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id wpZWSdt146rs; Tue, 21 Dec 2010 14:44:08 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBLEi1cA013265
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Tue, 21 Dec 2010 14:44:03 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Joshua Lock <josh@linux.intel.com>
In-Reply-To: <cover.1292928497.git.josh@linux.intel.com>
References: <cover.1292928497.git.josh@linux.intel.com>
Date: Tue, 21 Dec 2010 14:42:15 +0000
Message-ID: <1292942535.25087.6129.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] Embrace BBCLASSEXTEND
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
X-List-Received-Date: Tue, 21 Dec 2010 14:43:49 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2010-12-21 at 10:49 +0000, Joshua Lock wrote:
> My last change to gnome-doc-utils introduced a separate file for the -native
> variant. This change removes that and uses BBCLASSEXTEND.
> 
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: josh/make-382
>   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=josh/make-382
> 
> Thanks,
>     Joshua Lock <josh@linux.intel.com>
> ---
> 
> 
> Joshua Lock (1):
>   gnome-doc-utils: use BBCLASSEXTEND for native variant

Merged to master, thanks.

Richard


