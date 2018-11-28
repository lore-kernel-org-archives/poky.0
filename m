Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 31E1CE00C59; Wed, 28 Nov 2018 08:05:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C00E9E00B43
	for <poky@yoctoproject.org>; Wed, 28 Nov 2018 08:05:08 -0800 (PST)
Received: from hex ([192.168.3.34]) (authenticated bits=0)
	by dan.rpsys.net (8.15.2/8.15.2/Debian-10) with ESMTPSA id
	wASG55b4013185
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256
	verify=NOT); Wed, 28 Nov 2018 16:05:06 GMT
Message-ID: <e84b6d1ea75fc081b04c224ace8565a2a0c01e9f.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Michael Eden <themichaeleden@gmail.com>, poky@yoctoproject.org
Date: Wed, 28 Nov 2018 16:05:05 +0000
In-Reply-To: <CALY5Q2sMKKzGREHOsLvLiV7Bn4qrdP+BQWHL3RDZoev86Fe2jQ@mail.gmail.com>
References: <CALY5Q2sMKKzGREHOsLvLiV7Bn4qrdP+BQWHL3RDZoev86Fe2jQ@mail.gmail.com>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-Virus-Scanned: clamav-milter 0.100.2 at dan
X-Virus-Status: Clean
Subject: Re: Small Patches to Poky
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
X-List-Received-Date: Wed, 28 Nov 2018 16:05:10 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2018-11-28 at 10:45 -0500, Michael Eden wrote:
> Hi all,
> 
> Forgive me because I'm new, but I'm currently I'm maintaining 2
> patches to issues that I'd like to officially fix.
> The first is more of a convenience and changes `cp` to `cp -f` since
> I've noticed that this operation sometimes fails (if the file already
> exists):
> 
> diff --git a/meta/classes/autotools.bbclass
> b/meta/classes/autotools.bbclass
> index cc857acc3e..0e234fae42 100644
> --- a/meta/classes/autotools.bbclass
> +++ b/meta/classes/autotools.bbclass
> @@ -202,7 +202,7 @@ autotools_do_configure() {
>                         fi
>                 elif [ "${BPN}" != "gettext" ] && grep -q
> "^[[:space:]]*AM_GNU_GETTEXT" $CONFIGURE_AC; then
>                         # We'd call gettextize here if it wasn't so
> broken...
> -                       cp
> ${STAGING_DATADIR_NATIVE}/gettext/config.rpath ${AUTOTOOLS_AUXDIR}/
> +                       cp -f
> ${STAGING_DATADIR_NATIVE}/gettext/config.rpath ${AUTOTOOLS_AUXDIR}/
>                         if [ -d ${S}/po/ ]; then
>                                 cp -f
> ${STAGING_DATADIR_NATIVE}/gettext/po/Makefile.in.in ${S}/po/
>                                 if [ ! -e ${S}/po/remove-potcdate.sin 
> ]; then

The default operation of cp is to replace existing files, -f would only
help if they were readonly. Is your distro or config somehow aliasing
"cp" to "cp -n"? Which recipes are you seeing this with?

> The second is more complex and I've been using the following
> workaround:
> 
> diff --git a/meta/classes/useradd_base.bbclass
> b/meta/classes/useradd_base.bbclass
> index 551c82c322..ef27ae6cae 100644
> --- a/meta/classes/useradd_base.bbclass
> +++ b/meta/classes/useradd_base.bbclass
> @@ -34,6 +34,7 @@ perform_useradd () {
>         local username=`echo "$opts" | awk '{ print $NF }'`
>         local user_exists="`grep "^$username:" $rootdir/etc/passwd ||
> true`"
>         if test "x$user_exists" = "x"; then
> +               export LD_LIBRARY_PATH="${LD_LIBRARY_PATH}:/usr/lib"
>                 eval flock -x $rootdir${sysconfdir} -c  \"$PSEUDO
> useradd \$opts\" || true
>                 user_exists="`grep "^$username:" $rootdir/etc/passwd
> || true`"
>                 if test "x$user_exists" = "x"; then
> 
> The above is needed because useradd (native) depends on libattr.so.1
> which is _not_ built and put in the native-sysroot.
> Somewhere an attr-native dependency has to be added but I'm not sure
> where since this is a class that can be inherited into many recipes.
> I worked around this by installing attr on my machine and adding the
> correct path to LD_LIBRARY_PATH.
> 
> I'd appreciate help in debugging and submitting the updated useradd
> class to sumo.

It would help to know exactly which command is failing with the missing
library?

Cheers,

Richard


