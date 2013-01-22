Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 46549E00726
	for <poky@yoctoproject.org>; Tue, 22 Jan 2013 09:01:54 -0800 (PST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	r0MH5eg4031913; Tue, 22 Jan 2013 17:05:40 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id caM5iKUqTUWn; Tue, 22 Jan 2013 17:05:40 +0000 (GMT)
Received: from [192.168.3.10] (rpvlan0 [192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	r0MH5Zb2031909
	(version=TLSv1/SSLv3 cipher=DHE-RSA-CAMELLIA256-SHA bits=256
	verify=NOT); Tue, 22 Jan 2013 17:05:38 GMT
Message-ID: <1358874090.6356.10.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Radu Moisan <radu.moisan@intel.com>
Date: Tue, 22 Jan 2013 17:01:30 +0000
In-Reply-To: <1358868589-2359-1-git-send-email-radu.moisan@intel.com>
References: <1358868589-2359-1-git-send-email-radu.moisan@intel.com>
X-Mailer: Evolution 3.6.2-0ubuntu0.1 
Mime-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: [PATCH] local.conf.sample: Add DISTRO_FEATURES_INITMAN
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
X-List-Received-Date: Tue, 22 Jan 2013 17:01:54 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2013-01-22 at 17:29 +0200, Radu Moisan wrote:
> Default option is sysvinit
> 
> Signed-off-by: Radu Moisan <radu.moisan@intel.com>
> ---
>  meta-yocto/conf/local.conf.sample |    3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/meta-yocto/conf/local.conf.sample b/meta-yocto/conf/local.conf.sample
> index 200b4af..273e0eb 100644
> --- a/meta-yocto/conf/local.conf.sample
> +++ b/meta-yocto/conf/local.conf.sample
> @@ -243,3 +243,6 @@ BB_DISKMON_DIRS = "\
>  # track the version of this file when it was generated. This can safely be ignored if
>  # this doesn't mean anything to you.
>  CONF_VERSION = "1"
> +
> +# set default init manager: sysvinit or systemd
> +DISTRO_FEATURES_INITMAN ?= "sysvinit"

Please put this in the sample.extended file. This isn't something a
brand new user needs to see right away.

Cheers,

Richard


