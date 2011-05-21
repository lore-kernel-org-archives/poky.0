Return-Path: <wd@denx.de>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.10])
	by mx1.pokylinux.org (Postfix) with ESMTP id 015B74C8024E
	for <poky@yoctoproject.org>; Sat, 21 May 2011 13:48:57 -0500 (CDT)
Received: from frontend1.mail.m-online.net (frontend1.mail.intern.m-online.net
	[192.168.8.180])
	by mail-out.m-online.net (Postfix) with ESMTP id 3EE98188B58F;
	Sat, 21 May 2011 20:48:55 +0200 (CEST)
X-Auth-Info: fA8bkmfqlWYYB7kDdSD9FYJDlMbXFva9m9Vru2T7+e4=
Received: from diddl.denx.de (host-80-81-18-216.customer.m-online.net
	[80.81.18.216])
	by smtp-auth.mnet-online.de (Postfix) with ESMTPA id 494D91C00048;
	Sat, 21 May 2011 20:48:55 +0200 (CEST)
Received: from gemini.denx.de (unknown [10.0.0.2])
	by diddl.denx.de (Postfix) with ESMTP id 2A45C321041F;
	Sat, 21 May 2011 20:48:55 +0200 (CEST)
Received: from gemini.denx.de (localhost.localdomain [127.0.0.1])
	by gemini.denx.de (Postfix) with ESMTP id 1248D1499BF2;
	Sat, 21 May 2011 20:48:55 +0200 (CEST)
To: Xiaofeng Yan <xiaofeng.yan@windriver.com>
From: Wolfgang Denk <wd@denx.de>
MIME-Version: 1.0
In-reply-to: <d448b57c57fec346230d40fadc08625bd8c83224.1305972143.git.xiaofeng.yan@windriver.com>
References: <cover.1305972143.git.xiaofeng.yan@windriver.com>
	<d448b57c57fec346230d40fadc08625bd8c83224.1305972143.git.xiaofeng.yan@windriver.com>
Comments: In-reply-to Xiaofeng Yan <xiaofeng.yan@windriver.com>
	message dated "Sat, 21 May 2011 18:12:02 +0800."
Date: Sat, 21 May 2011 20:48:55 +0200
Message-Id: <20110521184855.1248D1499BF2@gemini.denx.de>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/1] sudo: Modify ownership for directory "/var/lib"
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
X-List-Received-Date: Sat, 21 May 2011 18:48:58 -0000
Content-type: text/plain; charset=ISO-8859-1
Content-transfer-encoding: 8bit

Dear Xiaofeng Yan,

In message <d448b57c57fec346230d40fadc08625bd8c83224.1305972143.git.xiaofeng.yan@windriver.com> you wrote:
> From: Xiaofeng Yan <xiaofeng.yan@windriver.com>
> 
> [YOCTO #1092]
> Solve access permission for directory "/var/lib".
> Makefile from package sudo change the ownership incorrectly.
> 
> Signed-off-by: Xiaofeng Yan <xiaofeng.yan@windriver.com>
> ---
>  meta/recipes-extended/sudo/sudo.inc |    1 +
>  1 files changed, 1 insertions(+), 0 deletions(-)
> 
> diff --git a/meta/recipes-extended/sudo/sudo.inc b/meta/recipes-extended/sudo/sudo.inc
> index 6a04a9c..5ea089c 100644
> --- a/meta/recipes-extended/sudo/sudo.inc
> +++ b/meta/recipes-extended/sudo/sudo.inc
> @@ -30,4 +30,5 @@ pkg_postinst_${PN} () {
>  
>  	chmod 4111 /usr/bin/sudo
>  	chmod 0440 /etc/sudoers
> +	chmod 0755 /var/lib

Sorry, but this commit message is misleading.  You don't change the
ownership here, but the file permissions.

Best regards,

Wolfgang Denk

-- 
DENX Software Engineering GmbH,     MD: Wolfgang Denk & Detlev Zundel
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-10 Fax: (+49)-8142-66989-80 Email: wd@denx.de
Never put off until tomorrow what you can put off indefinitely.

