Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 065564C811AA
	for <poky@yoctoproject.org>; Wed, 15 Dec 2010 03:12:54 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBF9E6f0025207; Wed, 15 Dec 2010 09:14:07 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id 4vHhvZlhCMVe; Wed, 15 Dec 2010 09:14:06 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBF9Dx6L025200
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Wed, 15 Dec 2010 09:14:01 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Lu Jingdong <jingdong.lu@windriver.com>
In-Reply-To: <1292317109.2240.1.camel@eric-desktop>
References: <1292317109.2240.1.camel@eric-desktop>
Date: Wed, 15 Dec 2010 09:12:29 +0000
Message-ID: <1292404349.26558.1587.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: poky <poky@yoctoproject.org>
Subject: Re: [PATCH 9/9] ed: Change bin path
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
X-List-Received-Date: Wed, 15 Dec 2010 09:12:55 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2010-12-14 at 16:58 +0800, Lu Jingdong wrote:
> Subject: [PATCH 9/9] ed: Change bin path
> 
> Change bin path of ed from usr/bin into bin for LSB.
> 
> Signed-off-by: Jingdong Lu <jingdong.lu@windriver.com>
> ---
>  meta/recipes-extended/ed/ed_1.5.bb |    4 ++--
>  1 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/meta/recipes-extended/ed/ed_1.5.bb
> b/meta/recipes-extended/ed/ed_1.5.bb
> index 2242ffa..a609f42 100644
> --- a/meta/recipes-extended/ed/ed_1.5.bb
> +++ b/meta/recipes-extended/ed/ed_1.5.bb
> @@ -8,7 +8,7 @@ LIC_FILES_CHKSUM =
> "file://COPYING;md5=f27defe1e96c2e1ecd4e0c9be8967949 \
> 
> file://main.c;endline=24;md5=177fe82d0649e545591a13fdce5733e8"
> 
>  SECTION = "base"
> -PR = "r0"
> +PR = "r1"
> 
>  SRC_URI = "${GNU_MIRROR}/ed/ed-${PV}.tar.gz \
>             file://ed-1.2-build.patch"
> @@ -18,5 +18,5 @@ do_configure() {
>  }
> 
>  do_install() {
> -       oe_runmake 'DESTDIR=${D}' install
> +       oe_runmake 'DESTDIR=${D}' bindir=/bin install
>  }

This at the very least needs a strong comment about why we're doing
this.

I'd suggest adding something like to the recipe instead:

# LSB states that ed should be in /bin/
bindir = "${base_bindir}"

Cheers,

Richard



