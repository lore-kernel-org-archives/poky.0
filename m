Return-Path: <Qi.Chen@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 993FFE0147F
	for <poky@yoctoproject.org>; Tue,  8 Jan 2013 18:16:26 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id r092GRbe016764
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Tue, 8 Jan 2013 18:16:27 -0800 (PST)
Received: from [128.224.163.154] (128.224.163.154) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.2.318.4;
	Tue, 8 Jan 2013 18:16:26 -0800
Message-ID: <50ECD310.90504@windriver.com>
Date: Wed, 9 Jan 2013 10:16:48 +0800
From: ChenQi <Qi.Chen@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: <poky@yoctoproject.org>
References: <1357690719-3136-1-git-send-email-eu@felipetonello.com>
In-Reply-To: <1357690719-3136-1-git-send-email-eu@felipetonello.com>
X-Originating-IP: [128.224.163.154]
Subject: Re: [PATCH] initscripts: added save-rtc to runlevel S
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
X-List-Received-Date: Wed, 09 Jan 2013 02:16:26 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 01/09/2013 08:18 AM, eu@felipetonello.com wrote:
> From: "Felipe F. Tonello" <ftonello@cercacor.com>
>
> It is necessary to add save-rtc.sh to runlevel S so the system is updated when
> it boots up.
Hi ftonello,
What do you mean by "system is updated"?

Besides, this patch should be sent to oe-core.

Cheers,
Chen Qi

> Signed-off-by: Felipe F. Tonello <ftonello@cercacor.com>
> ---
>   meta/recipes-core/initscripts/initscripts_1.0.bb |    1 +
>   1 file changed, 1 insertion(+)
>
> diff --git a/meta/recipes-core/initscripts/initscripts_1.0.bb b/meta/recipes-core/initscripts/initscripts_1.0.bb
> index 39be9a8..24fa940 100644
> --- a/meta/recipes-core/initscripts/initscripts_1.0.bb
> +++ b/meta/recipes-core/initscripts/initscripts_1.0.bb
> @@ -113,6 +113,7 @@ do_install () {
>   	ln -sf		../init.d/umountfs	${D}${sysconfdir}/rc0.d/S40umountfs
>   	# udev will run at S55 if installed
>   	ln -sf		../init.d/halt		${D}${sysconfdir}/rc0.d/S90halt
> +	ln -sf		../init.d/save-rtc.sh	${D}${sysconfdir}/rcS.d/S25save-rtc.sh
>   	ln -sf		../init.d/save-rtc.sh	${D}${sysconfdir}/rc0.d/S25save-rtc.sh
>   	ln -sf		../init.d/save-rtc.sh	${D}${sysconfdir}/rc6.d/S25save-rtc.sh
>   	ln -sf		../init.d/banner.sh	${D}${sysconfdir}/rcS.d/S02banner.sh


