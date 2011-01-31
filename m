Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1E9824C80FA4
	for <poky@yoctoproject.org>; Mon, 31 Jan 2011 09:13:08 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0VFF7lw002198; Mon, 31 Jan 2011 15:15:07 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id GO7HX+qFO0kU; Mon, 31 Jan 2011 15:15:06 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0VFF2ZS002194
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Mon, 31 Jan 2011 15:15:05 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Tom Rini <tom_rini@mentor.com>
In-Reply-To: <1296248841-8015-1-git-send-email-tom_rini@mentor.com>
References: <1296248841-8015-1-git-send-email-tom_rini@mentor.com>
Date: Mon, 31 Jan 2011 15:12:52 +0000
Message-ID: <1296486772.13501.13306.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: poky@yoctoproject.org
Subject: Re: [PATCH] perl-native: Update for userelocatableinc and non-shared libperl
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
X-List-Received-Date: Mon, 31 Jan 2011 15:13:09 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2011-01-28 at 14:07 -0700, Tom Rini wrote:
> Rather than using a wrapper switch to using upstreams support for
> relocation.  While in here, bring in the mangling to use
> /usr/bin/env perl rather than /full/path/to in order to work
> in deep directory paths.
> 
> Signed-off-by: Tom Rini <tom_rini@mentor.com>
> ---
>  meta/recipes-devtools/perl/perl-native_5.12.2.bb |   25 +++++++++++++--------
>  1 files changed, 15 insertions(+), 10 deletions(-)
> 
> diff --git a/meta/recipes-devtools/perl/perl-native_5.12.2.bb b/meta/recipes-devtools/perl/perl-native_5.12.2.bb
> index 14da569..a634da5 100644
> --- a/meta/recipes-devtools/perl/perl-native_5.12.2.bb
> +++ b/meta/recipes-devtools/perl/perl-native_5.12.2.bb
> @@ -4,8 +4,7 @@ SECTION = "libs"
>  LICENSE = "Artistic|GPL"
>  LIC_FILES_CHKSUM = "file://Copying;md5=2b4c6ffbcfcbdee469f02565f253d81a \
>  		    file://Artistic;md5=f921793d03cc6d63ec4b15e9be8fd3f8"
> -DEPENDS = "virtual/db-native gdbm-native"
> -PR = "r2"
> +PR = "r3"

Dropping DEPENDS like this needs an explanation. I've happened to read
the OE patch but could we add something here for the record please?

Cheers,

Richard


