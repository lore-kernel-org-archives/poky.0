Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id A37F94C8016A
	for <poky@yoctoproject.org>; Thu, 26 May 2011 04:58:09 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p4Q9w6Ou011670;
	Thu, 26 May 2011 10:58:06 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 11310-03; Thu, 26 May 2011 10:58:03 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p4Q9vvX6011660
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Thu, 26 May 2011 10:57:58 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Xiaofeng Yan <xiaofeng.yan@windriver.com>
In-Reply-To: <595c61ddb06090bf1b5856f96738839d0b95db0a.1306400756.git.xiaofeng.yan@windriver.com>
References: <cover.1306400756.git.xiaofeng.yan@windriver.com>
	<595c61ddb06090bf1b5856f96738839d0b95db0a.1306400756.git.xiaofeng.yan@windriver.com>
Date: Thu, 26 May 2011 10:57:53 +0100
Message-ID: <1306403873.27470.101.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/1] sudo: Add directory "/var/lib" to sudo.inc in the stage of do_install_prepend
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
X-List-Received-Date: Thu, 26 May 2011 09:58:10 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2011-05-26 at 17:29 +0800, Xiaofeng Yan wrote:
> From: Xiaofeng Yan <xiaofeng.yan@windriver.com>
> 
> Fix bug [YOCTO #1092]
> Own a directory "/var/lib" before do_install because if there isn't this directory during installing, \
> then script "mkinstalldirs" from "sudo package" will create directory "/var/lib/sudo" by recursion with mode "0700" \
> which will cause bug [YOCTO #1092].
> 
> Signed-off-by: Xiaofeng Yan <xiaofeng.yan@windriver.com>
> ---
>  meta/recipes-extended/sudo/sudo.inc |    4 ++++
>  1 files changed, 4 insertions(+), 0 deletions(-)
> 
> diff --git a/meta/recipes-extended/sudo/sudo.inc b/meta/recipes-extended/sudo/sudo.inc
> index 6a04a9c..f2631f2 100644
> --- a/meta/recipes-extended/sudo/sudo.inc
> +++ b/meta/recipes-extended/sudo/sudo.inc
> @@ -23,6 +23,10 @@ do_configure_prepend () {
>  	fi
>  }
>  
> +do_install_prepend (){
> +	mkdir -p ${D}/${localstatedir}/lib
> +}
> +

Please put some comment in the recipe about why this is necessary as
someone could easily look at it and decide it wasn't needed.

Cheers,

Richard


