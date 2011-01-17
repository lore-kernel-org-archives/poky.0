Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 446E14C80BEF
	for <poky@yoctoproject.org>; Mon, 17 Jan 2011 16:42:28 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0HMiF5J010728; Mon, 17 Jan 2011 22:44:15 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id lvZpPzRkqpb9; Mon, 17 Jan 2011 22:44:15 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0HMiAqH010695
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Mon, 17 Jan 2011 22:44:12 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Dongxiao Xu <dongxiao.xu@intel.com>
In-Reply-To: <a84ff52c94c4299e9c6093539ba25bc5df7769e6.1295042140.git.dongxiao.xu@intel.com>
References: <cover.1295042138.git.dongxiao.xu@intel.com>
	<a84ff52c94c4299e9c6093539ba25bc5df7769e6.1295042140.git.dongxiao.xu@intel.com>
Date: Mon, 17 Jan 2011 22:42:13 +0000
Message-ID: <1295304133.14388.15857.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/5] staging: Use relative path in sysroot-destdir for target recipes
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
X-List-Received-Date: Mon, 17 Jan 2011 22:42:28 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi Dongxaio,

I agree with this patch as you know and I want to merge it but I'm not
entirely sure its 100% right yet.

On Sat, 2011-01-15 at 06:14 +0800, Dongxiao Xu wrote:
> diff --git a/meta/classes/staging.bbclass b/meta/classes/staging.bbclass
> index 8432565..4d2991b 100644
> --- a/meta/classes/staging.bbclass
> +++ b/meta/classes/staging.bbclass
> @@ -45,25 +45,25 @@ sysroot_stage_dirs() {
>  	from="$1"
>  	to="$2"
>  
> -	sysroot_stage_dir $from${includedir} $to${STAGING_INCDIR}
> +	sysroot_stage_dir $from${includedir} $to${includedir}
>  	if [ "${BUILD_SYS}" = "${HOST_SYS}" ]; then
> -		sysroot_stage_dir $from${bindir} $to${STAGING_DIR_HOST}${bindir}
> -		sysroot_stage_dir $from${sbindir} $to${STAGING_DIR_HOST}${sbindir}
> -		sysroot_stage_dir $from${base_bindir} $to${STAGING_DIR_HOST}${base_bindir}
> -		sysroot_stage_dir $from${base_sbindir} $to${STAGING_DIR_HOST}${base_sbindir}
> -		sysroot_stage_dir $from${libexecdir} $to${STAGING_DIR_HOST}${libexecdir}
> -		sysroot_stage_dir $from${sysconfdir} $to${STAGING_DIR_HOST}${sysconfdir}
> -		sysroot_stage_dir $from${localstatedir} $to${STAGING_DIR_HOST}${localstatedir}
> +		sysroot_stage_dir $from${bindir} $to${bindir}
> +		sysroot_stage_dir $from${sbindir} $to${sbindir}
> +		sysroot_stage_dir $from${base_bindir} $to${base_bindir}
> +		sysroot_stage_dir $from${base_sbindir} $to${base_sbindir}
> +		sysroot_stage_dir $from${libexecdir} $to${libexecdir}
> +		sysroot_stage_dir $from${sysconfdir} $to${sysconfdir}
> +		sysroot_stage_dir $from${localstatedir} $to${localstatedir}
>  	fi
>  	if [ -d $from${libdir} ]
>  	then
> -		sysroot_stage_libdir $from/${libdir} $to${STAGING_LIBDIR}
> +		sysroot_stage_libdir $from/${libdir} $to${libdir}
>  	fi
>  	if [ -d $from${base_libdir} ]
>  	then
> -		sysroot_stage_libdir $from${base_libdir} $to${STAGING_DIR_HOST}${base_libdir}
> +		sysroot_stage_libdir $from${base_libdir} $to${base_libdir}
>  	fi
> -	sysroot_stage_dir $from${datadir} $to${STAGING_DATADIR}
> +	sysroot_stage_dir $from${datadir} $to${datadir}
>  }
>  
>  sysroot_stage_all() {
> @@ -76,6 +76,7 @@ do_populate_sysroot[dirs] = "${STAGING_DIR_TARGET}/${bindir} ${STAGING_DIR_TARGE
>  			     ${STAGING_INCDIR_NATIVE} \
>  			     ${STAGING_DATADIR} \
>                               ${SYSROOT_DESTDIR}${STAGING_DIR_TARGET} \
> +                             ${SYSROOT_DESTDIR}${base_prefix} \
>  			     ${S} ${B}"
>  
>  # Could be compile but populate_sysroot and do_install shouldn't run at the same time
> @@ -103,8 +104,8 @@ python do_populate_sysroot () {
>  
>  SSTATETASKS += "do_populate_sysroot"
>  do_populate_sysroot[sstate-name] = "populate-sysroot"
> -do_populate_sysroot[sstate-inputdirs] = "${SYSROOT_DESTDIR}/${STAGING_DIR}"
> -do_populate_sysroot[sstate-outputdirs] = "${TMPDIR}/sysroots"
> +do_populate_sysroot[sstate-inputdirs] = "${SYSROOT_DESTDIR}/${base_prefix}"
> +do_populate_sysroot[sstate-outputdirs] = "${STAGING_DIR_HOST}/"


The reason why is I'm still not 100% comfortable with the two lines
above. They look unbalanced and should really be paired to match such
that they'd either be:

do_populate_sysroot[sstate-inputdirs] = "${SYSROOT_DESTDIR}/${base_prefix}"
do_populate_sysroot[sstate-outputdirs] = "${STAGING_DIR_HOST}/${base_prefix}"

or

do_populate_sysroot[sstate-inputdirs] = "${SYSROOT_DESTDIR}"
do_populate_sysroot[sstate-outputdirs] = "${STAGING_DIR_HOST}"

but just looking at code I'm having trouble working out whether either,
both or neither of these would work and in which cases.

The cross/crosssdk recipes are a mess as they install into two different
sysroots. Dexuan is working on some changes to improve that so I'm least
worried about those two classes and the patch I just merged for libgcc
is going to help. I'm therefore aiming for this to work for the
target/native/nativesdk/cross-canadian cases and the cross/crosssdk one
is secondary and can be messy for now if needed.

I feel most comfortable aiming for the latter of my two options above,
does that work assuming we hack cross/crosssdk to do whatever is needed
to make them work with it? Can the others then remain unaltered?

The other minor thing I'm thinking about is adding a definition of:

bindir_crossscripts = "${bindir}/crossscripts"

to bitbake.conf (near the top next to bindir_cross) and using that in
the sysroot functions.

Cheers,

Richard



