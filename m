Return-Path: <josh@openedhand.com>
Received: from pug.o-hand.com (3a.49.1343.static.theplanet.com [67.19.73.58])
	by mx1.pokylinux.org (Postfix) with ESMTP id D0EF54C8110B
	for <poky@yoctoproject.org>; Mon, 24 Jan 2011 12:21:04 -0600 (CST)
Received: from [192.168.1.88] (unknown [83.217.123.106])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by pug.o-hand.com (Postfix) with ESMTP id 737F112EC1CC
	for <poky@yoctoproject.org>; Mon, 24 Jan 2011 13:01:57 -0600 (CST)
From: Joshua Lock <josh@openedhand.com>
To: poky@yoctoproject.org
In-Reply-To: <64ac534c8289b299af0a473882300ece12844563.1295892490.git.dexuan.cui@intel.com>
References: <cover.1295892490.git.dexuan.cui@intel.com>
	<64ac534c8289b299af0a473882300ece12844563.1295892490.git.dexuan.cui@intel.com>
Date: Mon, 24 Jan 2011 18:20:54 +0000
Message-ID: <1295893254.2561.9.camel@scimitar>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.1 (2.32.1-1.fc14) 
Subject: Re: [PATCH 1/1] gnome-doc-utils: add gettext into DEPENDS
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
X-List-Received-Date: Mon, 24 Jan 2011 18:21:05 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2011-01-25 at 02:10 +0800, Dexuan Cui wrote:
> This is to fix the following failure:
> 
> configure.in:44: warning: AM_NLS is m4_require'd but not m4_defun'd
> | aclocal.m4:1826: IT_PROG_INTLTOOL is expanded from...
> | configure.in:44: the top level
> | configure:3327: error: possibly undefined macro: AM_NLS
> 
> Signed-off-by: Dexuan Cui <dexuan.cui@intel.com>
> ---
>  meta/recipes-gnome/gnome/gnome-doc-utils.inc |    4 ++--
>  1 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/meta/recipes-gnome/gnome/gnome-doc-utils.inc b/meta/recipes-gnome/gnome/gnome-doc-utils.inc
> index 7328c59..126c16b 100644
> --- a/meta/recipes-gnome/gnome/gnome-doc-utils.inc
> +++ b/meta/recipes-gnome/gnome/gnome-doc-utils.inc
> @@ -1,6 +1,6 @@
>  LICENSE = "GPL LGPL"
> -DEPENDS = "libxml2 libxslt libxslt-native gnome-doc-utils-native"
> -DEPENDS_virtclass-native = "libxml2-native libxslt-native"
> +DEPENDS = "libxml2 libxslt gettext libxslt-native gnome-doc-utils-native"
> +DEPENDS_virtclass-native = "libxml2-native libxslt-native gettext-native"
>  
>  inherit gnome

We have a convenience class which adds the right gettext for your recipe variant, 
can you use this instead please by adding gettext to the recipes inherits and 
dropping the explicit DEPENDS additions?
 
Thanks,
Joshua
-- 
Joshua Lock
        Intel Open Source Technology Centre


