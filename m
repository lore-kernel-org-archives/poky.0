Received: from smtp2.axis.com (smtp2.axis.com [195.60.68.18])
 by mx.groups.io with SMTP id smtpd.web09.10683.1633181679627844197
 for <poky@lists.yoctoproject.org>;
 Sat, 02 Oct 2021 06:34:40 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@axis.com header.s=axis-central1 header.b=NJLHPFmj;
 spf=pass (domain: axis.com, ip: 195.60.68.18, mailfrom: peter.kjellerstedt@axis.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=axis.com; q=dns/txt; s=axis-central1; t=1633181679;
  x=1664717679;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-transfer-encoding:mime-version;
  bh=Kt3K6fIauhZz/kkrwa563Cl6sO5WKN9XBvFiSAAS8GA=;
  b=NJLHPFmjDjgxefAyMfdoNPGhZOC03kmThvyMTd49Li1yJ0JwlGU6+Ga5
   WVW3+xP1Qt/E0Nv6rAm16lzgDnYIts1F+FD6+leDbEyVbACdP9QZ0JZir
   LFIMtMWSEJ0kCUEsIB8Efa2e+Ia+FyMEy8Vtb6r+9BbtS76ftvQ4hBoNP
   6+pp18BI5evdSCd97KDfjWhPhr+3gkAwWXSP6TkaIqgcWkgXHJy8YmO2D
   i+c5DZGUTBn/0v8OH1ggD5FQv/QpgeMQxRdHzmw2ALQenaL0pYUA/KZPg
   LJE8DhEACZ+Oeu2gInR6Jk40Cq0JQ3f4D2pyMO0v4m50jmg2gHB0LLdYi
   A==;
From: "Peter Kjellerstedt" <peter.kjellerstedt@axis.com>
To: "hkleynhans@fb.com" <hkleynhans@fb.com>, "poky@lists.yoctoproject.org"
	<poky@lists.yoctoproject.org>
CC: "rmikey@fb.com" <rmikey@fb.com>
Subject: Re: [poky] [PATCH] sstate: Switch to ZStandard compressor support
Thread-Topic: [poky] [PATCH] sstate: Switch to ZStandard compressor support
Thread-Index: AQHXtupPFE1e+c9X5kasS3qsDC8qNqu/skVw
Date: Sat, 2 Oct 2021 13:34:36 +0000
Message-ID: <0ae048e50e584275bd3511eda266f058@axis.com>
References: <20211001173152.3015007-1-hkleynhans@fb.com>
 <20211001173152.3015007-2-hkleynhans@fb.com>
In-Reply-To: <20211001173152.3015007-2-hkleynhans@fb.com>
Accept-Language: en-US, sv-SE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.0.5.60]
MIME-Version: 1.0
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

This patch should be sent to openembedded-core@lists.openembedded.org=20
instead.

Some further comments below.

> -----Original Message-----
> From: poky@lists.yoctoproject.org <poky@lists.yoctoproject.org> On Behalf
> Of Henry Kleynhans via lists.yoctoproject.org
> Sent: den 1 oktober 2021 19:32
> To: poky@lists.yoctoproject.org
> Cc: hkleynhans@fb.com; rmikey@fb.com
> Subject: [poky] [PATCH] sstate: Switch to ZStandard compressor support
>=20
> This patch switches the compressor from Gzip to ZStandard for ssate cache
> files.
>=20
> Zstandard compression provides a significant improvement in
> decompression speed as well as improvement in compression speed and disk
> usage over the 'tgz' format in use.  Furthermore, its configurable
> compression level offers a trade-off between time spent compressing
> sstate cache files and disk space used by those files.  The reduced disk
> usage also contributes to saving network traffic for those sharing their
> sstate cache with others.
>=20
> Zstandard should therefore be a good choice when:
> * disk space is at a premium
> * network speed / resources are limited
> * the CI server can sstate packages can be created at high compression
> * less CPU on the build server should be used for sstate decompression
>=20
> Signed-off-by: Henry Kleynhans <hkleynhans@fb.com>
> ---
>  meta/classes/sstate.bbclass        | 22 ++++++++--------
>  scripts/sstate-cache-management.sh | 40 +++++++++++++++---------------
>  2 files changed, 31 insertions(+), 31 deletions(-)
>=20
> diff --git a/meta/classes/sstate.bbclass b/meta/classes/sstate.bbclass
> index 92a73114bb..0068557927 100644
> --- a/meta/classes/sstate.bbclass
> +++ b/meta/classes/sstate.bbclass
> @@ -1,17 +1,19 @@
>  SSTATE_VERSION =3D "3"
>=20
> +SSTATE_ZSTD_CLEVEL =3D "8"
> +
>  SSTATE_MANIFESTS ?=3D "${TMPDIR}/sstate-control"
>  SSTATE_MANFILEPREFIX =3D "${SSTATE_MANIFESTS}/manifest-${SSTATE_MANMACH}=
-${PN}"
>=20
>  def generate_sstatefn(spec, hash, taskname, siginfo, d):
>      if taskname is None:
>         return ""
> -    extension =3D ".tgz"
> +    extension =3D ".tar.zst"
>      # 8 chars reserved for siginfo
>      limit =3D 254 - 8
>      if siginfo:
>          limit =3D 254
> -        extension =3D ".tgz.siginfo"
> +        extension =3D ".tar.zst.siginfo"
>      if not hash:
>          hash =3D "INVALID"
>      fn =3D spec + hash + "_" + taskname + extension
> @@ -37,7 +39,7 @@ SSTATE_PKGNAME    =3D
> "${SSTATE_EXTRAPATH}${@generate_sstatefn(d.getVar('SSTATE_PK
>  SSTATE_PKG        =3D "${SSTATE_DIR}/${SSTATE_PKGNAME}"
>  SSTATE_EXTRAPATH   =3D ""
>  SSTATE_EXTRAPATHWILDCARD =3D ""
> -SSTATE_PATHSPEC   =3D "${SSTATE_DIR}/${SSTATE_EXTRAPATHWILDCARD}*/*/${SS=
TATE_PKGSPEC}*_${SSTATE_PATH_CURRTASK}.tgz*"
> +SSTATE_PATHSPEC   =3D "${SSTATE_DIR}/${SSTATE_EXTRAPATHWILDCARD}*/*/${SS=
TATE_PKGSPEC}*_${SSTATE_PATH_CURRTASK}.tar.zst*"
>=20
>  # explicitly make PV to depend on evaluated value of PV variable
>  PV[vardepvalue] =3D "${PV}"
> @@ -825,23 +827,20 @@ sstate_create_package () {
>  	mkdir --mode=3D0775 -p `dirname ${SSTATE_PKG}`
>  	TFILE=3D`mktemp ${SSTATE_PKG}.XXXXXXXX`
>=20
> -	# Use pigz if available
> -	OPT=3D"-czS"
> -	if [ -x "$(command -v pigz)" ]; then
> -		OPT=3D"-I pigz -cS"
> -	fi
> +	OPT=3D"-cS"
> +	ZSTD=3D"zstd -${SSTATE_ZSTD_CLEVEL} -T${BB_NUMBER_THREADS}"
>=20
>  	# Need to handle empty directories
>  	if [ "$(ls -A)" ]; then
>  		set +e
> -		tar $OPT -f $TFILE *
> +		tar -I "${ZSTD}" $OPT -f $TFILE *

Use $ZSTD rather than ${ZSTD} as it is a shell variable.

>  		ret=3D$?
>  		if [ $ret -ne 0 ] && [ $ret -ne 1 ]; then
>  			exit 1
>  		fi
>  		set -e
>  	else
> -		tar $OPT --file=3D$TFILE --files-from=3D/dev/null
> +		tar -I "${ZSTD}" $OPT --file=3D$TFILE --files-from=3D/dev/null

Same here.

>  	fi
>  	chmod 0664 $TFILE
>  	# Skip if it was already created by some other process
> @@ -880,7 +879,8 @@ python sstate_report_unihash() {
>  # Will be run from within SSTATE_INSTDIR.
>  #
>  sstate_unpack_package () {
> -	tar -xvzf ${SSTATE_PKG}
> +	ZSTD=3D"zstd -T${BB_NUMBER_THREADS}"
> +	tar -I "${ZSTD}" -xvf ${SSTATE_PKG}

And here.

>  	# update .siginfo atime on local/NFS mirror
>  	[ -O ${SSTATE_PKG}.siginfo ] && [ -w ${SSTATE_PKG}.siginfo ] && [ -h ${=
SSTATE_PKG}.siginfo ] && touch -a ${SSTATE_PKG}.siginfo
>  	# Use "! -w ||" to return true for read only files
> diff --git a/scripts/sstate-cache-management.sh b/scripts/sstate-cache-ma=
nagement.sh
> index f1706a2229..d39671f7c6 100755
> --- a/scripts/sstate-cache-management.sh
> +++ b/scripts/sstate-cache-management.sh
> @@ -114,7 +114,7 @@ echo_error () {
>  # * Add .done/.siginfo to the remove list
>  # * Add destination of symlink to the remove list
>  #
> -# $1: output file, others: sstate cache file (.tgz)
> +# $1: output file, others: sstate cache file (.tar.zst)
>  gen_rmlist (){
>    local rmlist_file=3D"$1"
>    shift
> @@ -131,13 +131,13 @@ gen_rmlist (){
>                dest=3D"`readlink -e $i`"
>                if [ -n "$dest" ]; then
>                    echo $dest >> $rmlist_file
> -                  # Remove the .siginfo when .tgz is removed
> +                  # Remove the .siginfo when .tar.zst is removed
>                    if [ -f "$dest.siginfo" ]; then
>                        echo $dest.siginfo >> $rmlist_file
>                    fi
>                fi
>            fi
> -          # Add the ".tgz.done" and ".siginfo.done" (may exist in the fu=
ture)
> +          # Add the ".tar.zst.done" and ".siginfo.done" (may exist in th=
e future)
>            base_fn=3D"${i##/*/}"
>            t_fn=3D"$base_fn.done"
>            s_fn=3D"$base_fn.siginfo.done"
> @@ -188,10 +188,10 @@ remove_duplicated () {
>    total_files=3D`find $cache_dir -name 'sstate*' | wc -l`
>    # Save all the sstate files in a file
>    sstate_files_list=3D`mktemp` || exit 1
> -  find $cache_dir -name 'sstate:*:*:*:*:*:*:*.tgz*' >$sstate_files_list
> +  find $cache_dir -iname 'sstate:*:*:*:*:*:*:*.tar.zst*' >$sstate_files_=
list
>=20
>    echo "Figuring out the suffixes in the sstate cache dir ... "
> -  sstate_suffixes=3D"`sed 's%.*/sstate:[^:]*:[^:]*:[^:]*:[^:]*:[^:]*:[^:=
]*:[^_]*_\([^:]*\)\.tgz.*%\1%g' $sstate_files_list | sort -u`"
> +  sstate_suffixes=3D"`sed 's%.*/sstate:[^:]*:[^:]*:[^:]*:[^:]*:[^:]*:[^:=
]*:[^_]*_\([^:]*\)\.tar\.zst.*%\1%g' $sstate_files_list | sort -u`"
>    echo "Done"
>    echo "The following suffixes have been found in the cache dir:"
>    echo $sstate_suffixes
> @@ -200,10 +200,10 @@ remove_duplicated () {
>    # Using this SSTATE_PKGSPEC definition it's 6th colon separated field
>    # SSTATE_PKGSPEC    =3D "sstate:${PN}:${PACKAGE_ARCH}${TARGET_VENDOR}-=
${TARGET_OS}:${PV}:${PR}:${SSTATE_PKGARCH}:${SSTATE_VERSION}:"
>    for arch in $all_archs; do
> -      grep -q ".*/sstate:[^:]*:[^:]*:[^:]*:[^:]*:$arch:[^:]*:[^:]*\.tgz$=
" $sstate_files_list
> +      grep -q ".*/sstate:[^:]*:[^:]*:[^:]*:[^:]*:$arch:[^:]*:[^:]*\.tar\=
.zst$" $sstate_files_list
>        [ $? -eq 0 ] && ava_archs=3D"$ava_archs $arch"
>        # ${builder_arch}_$arch used by toolchain sstate
> -      grep -q ".*/sstate:[^:]*:[^:]*:[^:]*:[^:]*:${builder_arch}_$arch:[=
^:]*:[^:]*\.tgz$ " $sstate_files_list
> +      grep -q ".*/sstate:[^:]*:[^:]*:[^:]*:[^:]*:${builder_arch}_$arch:[=
^:]*:[^:]*\.tar\.zst$" $sstate_files_list
>        [ $? -eq 0 ] && ava_archs=3D"$ava_archs ${builder_arch}_$arch"
>    done
>    echo "Done"
> @@ -219,13 +219,13 @@ remove_duplicated () {
>            continue
>        fi
>        # Total number of files including .siginfo and .done files
> -      total_files_suffix=3D`grep ".*/sstate:[^:]*:[^:]*:[^:]*:[^:]*:[^:]=
*:[^:]*:[^:_]*_$suffix\.tgz.*" $sstate_files_list | wc -l 2>/dev/null`
> -      total_tgz_suffix=3D`grep ".*/sstate:[^:]*:[^:]*:[^:]*:[^:]*:[^:]*:=
[^:]*:[^:_]*_$suffix\.tgz$" $sstate_files_list | wc -l 2>/dev/null`
> +      total_files_suffix=3D`grep ".*/sstate:[^:]*:[^:]*:[^:]*:[^:]*:[^:]=
*:[^:]*:[^:_]*_$suffix\.tar\.zst.*" $sstate_files_list | wc -l 2>/dev/null`
> +      total_archive_suffix=3D`grep ".*/sstate:[^:]*:[^:]*:[^:]*:[^:]*:[^=
:]*:[^:]*:[^:_]*_$suffix\.tar\.zst$" $sstate_files_list | wc -l 2>/dev/null=
`
>        # Save the file list to a file, some suffix's file may not exist
> -      grep ".*/sstate:[^:]*:[^:]*:[^:]*:[^:]*:[^:]*:[^:]*:[^:_]*_$suffix=
\.tgz.*" $sstate_files_list >$list_suffix 2>/dev/null
> -      local deleted_tgz=3D0
> +      grep ".*/sstate:[^:]*:[^:]*:[^:]*:[^:]*:[^:]*:[^:]*:[^:_]*_$suffix=
\.tar\.zst.*" $sstate_files_list >$list_suffix 2>/dev/null
> +      local deleted_archives=3D0
>        local deleted_files=3D0
> -      for ext in tgz tgz.siginfo tgz.done; do
> +      for ext in tar.zst tar.zst.siginfo tar.zst.done; do
>            echo "Figuring out the sstate:xxx_$suffix.$ext ... "
>            # Uniq BPNs
>            file_names=3D`for arch in $ava_archs ""; do
> @@ -268,19 +268,19 @@ remove_duplicated () {
>                done
>            done
>        done
> -      deleted_tgz=3D`cat $rm_list.* 2>/dev/null | grep ".tgz$" | wc -l`
> +      deleted_archives=3D`cat $rm_list.* 2>/dev/null | grep "\.tar\.zst$=
" | wc -l`
>        deleted_files=3D`cat $rm_list.* 2>/dev/null | wc -l`
>        [ "$deleted_files" -gt 0 -a $debug -gt 0 ] && cat $rm_list.*
> -      echo "($deleted_tgz out of $total_tgz_suffix .tgz files for $suffi=
x suffix will be removed or $deleted_files out of $total_files_suffix when =
counting also .siginfo and .done files)"
> +      echo "($deleted_archives out of $total_archives_suffix .tar.zst fi=
les for $suffix suffix will be removed or $deleted_files out of $total_file=
s_suffix when counting also .siginfo and .done files)"
>        let total_deleted=3D$total_deleted+$deleted_files
>    done
> -  deleted_tgz=3D0
> +  deleted_archives=3D0
>    rm_old_list=3D$remove_listdir/sstate-old-filenames
> -  find $cache_dir -name 'sstate-*.tgz' >$rm_old_list
> -  [ -s "$rm_old_list" ] && deleted_tgz=3D`cat $rm_old_list | grep ".tgz$=
" | wc -l`
> +  find $cache_dir -name 'sstate-*.tar.zst' >$rm_old_list
> +  [ -s "$rm_old_list" ] && deleted_archives=3D`cat $rm_old_list | grep "=
\.tar\.zst$" | wc -l`
>    [ -s "$rm_old_list" ] && deleted_files=3D`cat $rm_old_list | wc -l`
>    [ -s "$rm_old_list" -a $debug -gt 0 ] && cat $rm_old_list
> -  echo "($deleted_tgz .tgz files with old sstate-* filenames will be rem=
oved or $deleted_files when counting also .siginfo and .done files)"
> +  echo "($deleted_archives or .tar.zst files with old sstate-* filenames=
 will be removed or $deleted_files when counting also .siginfo and .done fi=
les)"
>    let total_deleted=3D$total_deleted+$deleted_files
>=20
>    rm -f $list_suffix
> @@ -289,7 +289,7 @@ remove_duplicated () {
>        read_confirm
>        if [ "$confirm" =3D "y" -o "$confirm" =3D "Y" ]; then
>            for list in `ls $remove_listdir/`; do
> -              echo "Removing $list.tgz (`cat $remove_listdir/$list | wc =
-w` files) ... "
> +              echo "Removing $list.tar.zst archive (`cat $remove_listdir=
/$list | wc -w` files) ... "
>                # Remove them one by one to avoid the argument list too lo=
ng error
>                for i in `cat $remove_listdir/$list`; do
>                    rm -f $verbose $i
> @@ -322,7 +322,7 @@ rm_by_stamps (){
>    find $cache_dir -type f -name 'sstate*' | sort -u -o $cache_list
>=20
>    echo "Figuring out the suffixes in the sstate cache dir ... "
> -  local sstate_suffixes=3D"`sed 's%.*/sstate:[^:]*:[^:]*:[^:]*:[^:]*:[^:=
]*:[^:]*:[^_]*_\([^:]*\)\.tgz.*%\1%g' $cache_list | sort -u`"
> +  local sstate_suffixes=3D"`sed 's%.*/sstate:[^:]*:[^:]*:[^:]*:[^:]*:[^:=
]*:[^:]*:[^_]*_\([^:]*\)\.tar\.zst.*%\1%g' $cache_list | sort -u`"
>    echo "Done"
>    echo "The following suffixes have been found in the cache dir:"
>    echo $sstate_suffixes
> --
> 2.30.2

//Peter

