Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id CD97F4C8009D
	for <poky@yoctoproject.org>; Fri, 18 Mar 2011 04:56:50 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p2I9umhx004153;
	Fri, 18 Mar 2011 09:56:48 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 03978-03; Fri, 18 Mar 2011 09:56:44 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p2I9uibD004147
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Fri, 18 Mar 2011 09:56:44 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Kang Kai <Kai.Kang@windriver.com>
In-Reply-To: <4D831F31.3000004@windriver.com>
References: <cover.1300411762.git.kai.kang@windriver.com>
	<3404b336e81764d15f546279aa594bd30587836f.1300411762.git.kai.kang@windriver.com>
	<1300412699.30423.2180.camel@rex>  <4D831F31.3000004@windriver.com>
Date: Fri, 18 Mar 2011 09:56:27 +0000
Message-ID: <1300442187.30423.2191.camel@rex>
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
X-List-Received-Date: Fri, 18 Mar 2011 09:56:51 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2011-03-18 at 17:00 +0800, Kang Kai wrote:
> From: Kang Kai <kai.kang@windriver.com>
> 
> LSB command check will test the exist of sendmail, so make sendmail
> link to msmtp in order to pass the test.
> 
> Related to [YOCTO #520]
> 
> Signed-off-by: Kang Kai <kai.kang@windriver.com>
> ---
>   meta/recipes-extended/msmtp/msmtp_1.4.23.bb |   10 +++++++++-
>   1 files changed, 9 insertions(+), 1 deletions(-)
> 
> diff --git a/meta/recipes-extended/msmtp/msmtp_1.4.23.bb 
> b/meta/recipes-extended/msmtp/msmtp_1.4.23.bb
> index cb3d83c..b3500d0 100644
> --- a/meta/recipes-extended/msmtp/msmtp_1.4.23.bb
> +++ b/meta/recipes-extended/msmtp/msmtp_1.4.23.bb
> @@ -6,7 +6,7 @@ SECTION = "console/network"
>   PRIORITY = "required"
>   LICENSE = "GPLv3"
>   DEPENDS = "zlib gnutls"
> -PR = "r0"
> +PR = "r1"
> 
> 
>   #COPYING or Licence
> @@ -19,3 +19,11 @@ SRC_URI[md5sum] = "5fb7ae88186624cdb125d3efad3fdc16"
>   SRC_URI[sha256sum] = 
> "269cd30eeb867167c6a599e23399f4fc24196fcdef3bac5b120d806b3b421810"
> 
>   inherit gettext autotools
> +
> +pkg_postinst_${PN} () {
> +    update-alternatives --install ${sbindir}/sendmail sendmail 
> ${bindir}/msmtp 100
> +}
> +
> +pkg_prerm_${PN} () {
> +    update-alternatives --remove sendmail ${bindir}/msmtp
> +}

Instead of doing this directly could you use the update-alternatives
class please? meta/recipes-connectivity/iproute2/iproute2.inc shows an
example of this. I think it should be something like:

inherit update-alternatives

ALTERNATIVE_NAME = "sendmail"
ALTERNATIVE_PATH = "${sbindir}/mstmp"
ALTERNATIVE_LINK = "${sbindir}/sendmail"
ALTERNATIVE_PRIORITY = "100"

Thanks,

Richard




