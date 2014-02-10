Return-Path: <olof.johansson@axis.com>
Received: from ra.se.axis.com (ra.se.axis.com [195.60.68.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AA4B6E00744
	for <poky@yoctoproject.org>; Mon, 10 Feb 2014 01:46:10 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by ra.se.axis.com (Postfix) with ESMTP id 0790B3F20DC
	for <poky@yoctoproject.org>; Mon, 10 Feb 2014 10:46:08 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at ra.se.axis.com
Received: from ra.se.axis.com ([127.0.0.1])
	by localhost (ra.se.axis.com [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id uicksuNszJDh for <poky@yoctoproject.org>;
	Mon, 10 Feb 2014 10:46:07 +0100 (CET)
Received: from boulder.se.axis.com (boulder.se.axis.com [10.0.2.104])
	by ra.se.axis.com (Postfix) with ESMTP id 5F5743F20C2
	for <poky@yoctoproject.org>; Mon, 10 Feb 2014 10:46:07 +0100 (CET)
Received: from boulder.se.axis.com (localhost [127.0.0.1])
	by postfix.imss71 (Postfix) with ESMTP id 1A6E2BF0
	for <poky@yoctoproject.org>; Mon, 10 Feb 2014 10:46:07 +0100 (CET)
Received: from thoth.se.axis.com (thoth.se.axis.com [10.0.2.173])
	by boulder.se.axis.com (Postfix) with ESMTP id 0D8AABB4
	for <poky@yoctoproject.org>; Mon, 10 Feb 2014 10:46:07 +0100 (CET)
Received: from xmail2.se.axis.com (xmail2.se.axis.com [10.0.5.74])
	by thoth.se.axis.com (Postfix) with ESMTP id 0B99A34005
	for <poky@yoctoproject.org>; Mon, 10 Feb 2014 10:46:07 +0100 (CET)
Received: from axis.com (10.92.17.1) by xmail2.se.axis.com (10.0.5.74) with
	Microsoft SMTP Server (TLS) id 8.2.255.0;
	Mon, 10 Feb 2014 10:46:06 +0100
Date: Mon, 10 Feb 2014 10:46:05 +0100
From: Olof Johansson <olof.johansson@axis.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Message-ID: <20140210094605.GI23583@axis.com>
References: <1392025053-22406-1-git-send-email-olof.johansson@axis.com>
MIME-Version: 1.0
In-Reply-To: <1392025053-22406-1-git-send-email-olof.johansson@axis.com>
User-Agent: Mutt/1.5.22 (2013-10-16)
Subject: Re: [PATCH] poky.conf: Add Debian-7.4 to SANITY_TESTED_DISTROS
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
X-List-Received-Date: Mon, 10 Feb 2014 09:46:11 -0000
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline

On 14-02-10 10:37 +0100, Olof Johansson wrote:
> Signed-off-by: Olof Johansson <olof.johansson@axis.com>
> ---
>  meta-yocto/conf/distro/poky.conf | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
> index 9f45b6c..b04c597 100644
> --- a/meta-yocto/conf/distro/poky.conf
> +++ b/meta-yocto/conf/distro/poky.conf
> @@ -86,6 +86,7 @@ SANITY_TESTED_DISTROS ?= " \
>              Debian-7.1 \n \
>              Debian-7.2 \n \
>              Debian-7.3 \n \
> +            Debian-7.4 \n \
>              SUSE-LINUX-12.2 \n \
>              openSUSE-project-12.3 \n \
>              "

Is somebody working on wildcards in SANITY_TESTED_DISTROS? Would
be nice for Debian-7.x :-).

https://bugzilla.yoctoproject.org/show_bug.cgi?id=5265

-- 
olofjn

