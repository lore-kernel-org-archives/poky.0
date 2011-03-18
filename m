Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id C04364C805A8
	for <poky@yoctoproject.org>; Thu, 17 Mar 2011 20:45:29 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p2I1jQHh031076;
	Fri, 18 Mar 2011 01:45:26 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 30693-06; Fri, 18 Mar 2011 01:45:22 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p2I1jFLW031057
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Fri, 18 Mar 2011 01:45:18 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Kang Kai <kai.kang@windriver.com>
In-Reply-To: <3404b336e81764d15f546279aa594bd30587836f.1300411762.git.kai.kang@windriver.com>
References: <cover.1300411762.git.kai.kang@windriver.com>
	<3404b336e81764d15f546279aa594bd30587836f.1300411762.git.kai.kang@windriver.com>
Date: Fri, 18 Mar 2011 01:44:59 +0000
Message-ID: <1300412699.30423.2180.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/1] msmtp: add link sendmail for lsb command check
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
X-List-Received-Date: Fri, 18 Mar 2011 01:45:30 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2011-03-18 at 09:34 +0800, Kang Kai wrote:
> From: Kang Kai <kai.kang@windriver.com>
> 
> LSB command check will test the exist of sendmail, so make sendmail
> link to msmtp in order to pass the test.
> 
> Related to [YOCTO #520]
> 
> Signed-off-by: Kang Kai <kai.kang@windriver.com>

Shouldn't this be using the update-alternatives mechanism?

Cheers,

Richard

>  meta/recipes-extended/msmtp/msmtp_1.4.23.bb |   12 +++++++++++-
>  1 files changed, 11 insertions(+), 1 deletions(-)
> 
> diff --git a/meta/recipes-extended/msmtp/msmtp_1.4.23.bb b/meta/recipes-extended/msmtp/msmtp_1.4.23.bb
> index cb3d83c..5fc4060 100644
> --- a/meta/recipes-extended/msmtp/msmtp_1.4.23.bb
> +++ b/meta/recipes-extended/msmtp/msmtp_1.4.23.bb
> @@ -6,7 +6,7 @@ SECTION = "console/network"
>  PRIORITY = "required"
>  LICENSE = "GPLv3"
>  DEPENDS = "zlib gnutls"
> -PR = "r0"
> +PR = "r1"
>  
> 
>  #COPYING or Licence
> @@ -19,3 +19,13 @@ SRC_URI[md5sum] = "5fb7ae88186624cdb125d3efad3fdc16"
>  SRC_URI[sha256sum] = "269cd30eeb867167c6a599e23399f4fc24196fcdef3bac5b120d806b3b421810"
>  
>  inherit gettext autotools
> +
> +pkg_postinst_${PN} () {
> +    if [ "x$D" != "x" ] ; then
> +        exit 1
> +    fi
> +
> +    if [ ! -e ${sbindir}/sendmail ]; then
> +        ln -sf ${bindir}/msmtp ${sbindir}/sendmail
> +    fi
> +}



