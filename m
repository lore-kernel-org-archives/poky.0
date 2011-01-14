Return-Path: <josh@openedhand.com>
Received: from pug.o-hand.com (3a.49.1343.static.theplanet.com [67.19.73.58])
	by mx1.pokylinux.org (Postfix) with ESMTP id 397C74C80039
	for <poky@yoctoproject.org>; Fri, 14 Jan 2011 06:34:58 -0600 (CST)
Received: from [192.168.1.88] (unknown [83.217.123.106])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by pug.o-hand.com (Postfix) with ESMTP id A07D212EC27F
	for <poky@yoctoproject.org>; Fri, 14 Jan 2011 07:15:10 -0600 (CST)
From: Joshua Lock <josh@openedhand.com>
To: poky@yoctoproject.org
In-Reply-To: <1295007038-1119-1-git-send-email-koen@dominion.thruhere.net>
References: <1295007038-1119-1-git-send-email-koen@dominion.thruhere.net>
Date: Fri, 14 Jan 2011 12:34:45 +0000
Message-ID: <1295008485.2509.11.camel@scimitar>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.1 (2.32.1-1.fc14) 
Subject: Re: [PATCH] external-python-tarball: add LIC_FILES_CHKSUM
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
X-List-Received-Date: Fri, 14 Jan 2011 12:34:58 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Good catch!

On Fri, 2011-01-14 at 13:10 +0100, Koen Kooi wrote:
> Signed-off-by: Koen Kooi <koen@dominion.thruhere.net>

Acked-by: Joshua Lock <josh@linux.intel.com>

> ---
>  meta/recipes-core/meta/external-python-tarball.bb |    3 +++
>  1 files changed, 3 insertions(+), 0 deletions(-)
> 
> diff --git a/meta/recipes-core/meta/external-python-tarball.bb b/meta/recipes-core/meta/external-python-tarball.bb
> index 494b21c..eef93fd 100644
> --- a/meta/recipes-core/meta/external-python-tarball.bb
> +++ b/meta/recipes-core/meta/external-python-tarball.bb
> @@ -1,5 +1,8 @@
>  DESCRIPTION = "Meta package for building a standalone python tarball"
>  LICENSE = "MIT"
> +LIC_FILES_CHKSUM = "file://${POKYBASE}/LICENSE;md5=3f40d7994397109285ec7b81fdeb3b58 \
> +                    file://${POKYBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
> +
>  DEPENDS = "opkg-native opkg-utils-native virtual/fakeroot-native sed-native"
>  
>  inherit meta

-- 
Joshua Lock
        Intel Open Source Technology Centre


