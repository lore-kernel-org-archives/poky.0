Return-Path: <martin.jansa@gmail.com>
Received: from mail-yi0-f48.google.com (mail-yi0-f48.google.com
	[209.85.218.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2F44B4C80581
	for <poky@yoctoproject.org>; Mon,  4 Apr 2011 16:37:58 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by yia28 with SMTP id 28so3055225yia.35
	for <poky@yoctoproject.org>; Mon, 04 Apr 2011 14:37:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=dDIx7O3W27rifrbqWHXKwpvXnw4d0LOZgVZK5O3zQFk=;
	b=RD4Jf1hMt89WBuktNDqgkFDOMOfg7/5IiWWaF9MNgpEq2zh7HRWpZTRt22xmaQQmQf
	cHmTRbqs0wrtWwzL8bgh2HMs6zugBUt/qfC47hcMOqoGv6QwTCFhy0IwDWyidho9aHxc
	Pchom24N8d/RskTmFaslQGwyvJRAlMSc2UUlM=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=GXGXLkg+8VvowO2LkTACHFAP1cKu+mY0TlNLVp2x42LRsf6icB7UtTUntwOVzxBZFb
	wrb+yGQBI1NukXOgrOHjmMB8mBVw3QgHUiEwQGc0XW5AWXgi/E25nvrCUSrFz2bltQ52
	pE7QQz3SqYJIROGHZ33O5Gj5pzcnD8hNvGwQ8=
MIME-Version: 1.0
Received: by 10.150.240.17 with SMTP id n17mr7333371ybh.277.1301953077600;
	Mon, 04 Apr 2011 14:37:57 -0700 (PDT)
Received: by 10.147.171.12 with HTTP; Mon, 4 Apr 2011 14:37:57 -0700 (PDT)
In-Reply-To: <8d834327e2d84b8d4ad72b9c617d261ab8b206e2.1301664697.git.josh@linux.intel.com>
References: <cover.1301664697.git.josh@linux.intel.com>
	<8d834327e2d84b8d4ad72b9c617d261ab8b206e2.1301664697.git.josh@linux.intel.com>
Date: Mon, 4 Apr 2011 23:37:57 +0200
Message-ID: <BANLkTi=etDyw_wqyqbErqoR92cwOXw3R4A@mail.gmail.com>
From: Martin Jansa <martin.jansa@gmail.com>
To: Joshua Lock <josh@linux.intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/7] elfutils: fix builds with gcc 4.6
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
X-List-Received-Date: Mon, 04 Apr 2011 21:37:58 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Fri, Apr 1, 2011 at 3:40 PM, Joshua Lock <josh@linux.intel.com> wrote:
> From: Joshua Lock <josh@linux.intel.com>
>
> gcc 4.6 (as used in Fedora 15) adds some extra warnings which are
> included with Werror. The new unused-but-set variable warning causes
> an error in libasm of elfutils. Work around this by removing
> unused-but-set from Werror.
>
> Signed-off-by: Joshua Lock <josh@linux.intel.com>
> ---
> =A0meta/recipes-devtools/elfutils/elfutils_0.148.bb | =A0 =A04 ++++
> =A01 files changed, 4 insertions(+), 0 deletions(-)
>
> diff --git a/meta/recipes-devtools/elfutils/elfutils_0.148.bb b/meta/reci=
pes-devtools/elfutils/elfutils_0.148.bb
> index b2f700e..c395be8 100644
> --- a/meta/recipes-devtools/elfutils/elfutils_0.148.bb
> +++ b/meta/recipes-devtools/elfutils/elfutils_0.148.bb
> @@ -40,6 +40,10 @@ SRC_URI +=3D "\
>
> =A0inherit autotools
>
> +# GCC 4.6.0 raises an unused-but-set warning in libasm, for now remove
> +# this warning from Werror
> +CFLAGS_virtclass-native +=3D "-Wno-error=3Dunused-but-set-variable"
> +
> =A0EXTRA_OECONF =3D "--program-prefix=3Deu-"

this breaks all other distros not yet using gcc-4.6..


configure:2892: checking whether the C compiler works
configure:2914: gcc -Wno-error=3Dunused-but-set-variable
-isystem/OE/shr-core/tmp/sysroots/x86_64-linux/usr/include
-L/OE/shr-core/tmp/sysroots/x86_64-linux/usr/lib
-Wl,-rpath-link,/OE/shr-core/tmp/sysroots/x86_64-linux/usr/lib
-Wl,-rpath,/OE/shr-core/tmp/sysroots/x86_64-linux/usr/lib -Wl,-O1
conftest.c  >&5
cc1: error: -Werror=3Dunused-but-set-variable: No option -Wunused-but-set-v=
ariable
configure:2918: $? =3D 1
configure:2956: result: no
configure: failed program was:
| /* confdefs.h */
| #define PACKAGE_NAME "Red Hat elfutils"
| #define PACKAGE_TARNAME "elfutils"
| #define PACKAGE_VERSION "0.148"
| #define PACKAGE_STRING "Red Hat elfutils 0.148"
| #define PACKAGE_BUGREPORT "http://bugzilla.redhat.com/bugzilla/"
| #define PACKAGE_URL ""
| #define PACKAGE "elfutils"
| #define VERSION "0.148"
| #define MODVERSION "Build on jama 2011-04-04T23:34:25+0200"
| /* end confdefs.h.  */
|
| int
| main ()
| {
|
|   ;
|   return 0;
| }
configure:2961: error: in
`/OE/shr-core/tmp/work/x86_64-linux/elfutils-native-0.148-r1/elfutils-0.148=
':
configure:2965: error: C compiler cannot create executables
See `config.log' for more details.

Regards,

>
> =A0do_configure_prepend() {
> --
> 1.7.4.1
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>

