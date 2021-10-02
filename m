Received: from mail-vs1-f49.google.com (mail-vs1-f49.google.com [209.85.217.49])
 by mx.groups.io with SMTP id smtpd.web08.9090.1633168749932069156
 for <poky@lists.yoctoproject.org>;
 Sat, 02 Oct 2021 02:59:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=ZJnfhAJ2;
 spf=pass (domain: gmail.com, ip: 209.85.217.49, mailfrom: alex.kanavin@gmail.com)
Received: by mail-vs1-f49.google.com with SMTP id 66so14091109vsd.11
        for <poky@lists.yoctoproject.org>; Sat, 02 Oct 2021 02:59:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=9UR4rymCYqpm1UHOiM1jE6+QKCb2+LNcIG6prHdoSVs=;
        b=ZJnfhAJ2xxVdLZaUW8P4YFu8JkS+27OPDDYYpPd9qGiCXBgdQW4xIbeHU3C2h7r+k0
         L94rraDny0XzjL210m4+G++r53LOE+mSVUcIMJ07+N3kSLUy+vK9swFt2gQPx9ohGxZ7
         mtxe3f2fk2/MqfsbAHm0LEnXxHeGFH8V6QbtpnW4Ho8fQYaprLS3Z7f+uQ6TrSSwswiY
         hmvwK0AT1tf8cXGg8Wee4HUQChUmWvwrcmsadS82yH2vEwuwzOJpiVB3r1hY4aQPuEsf
         XDU2t1UEXQ7JezUgNW85mcnlBgWej0W9qYj+EFh+JCP0XgkAfpjt3+zaWkxG0RjPWNMs
         4iPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=9UR4rymCYqpm1UHOiM1jE6+QKCb2+LNcIG6prHdoSVs=;
        b=cL/uRQYr5zYiYjx12p/oc5lTDjQN7RsyBrbxSO69Rvj7P4k5KCg/jzG+q5lCWgfY/J
         4Lh73gJF240r21KfTLVLRzL0qcp13s8xLFZDRNj46/7hQdR77m62zL1GtcEyL6X1BB/a
         VPxjF1cZtJ06xuYfrane+GX2FnW7gSMbxJF4IEkKaMMtBEX/tdAeOJHSrmVU0h1XY69l
         DGbpuUw2tIXKR8UF2Uf2Zy41WSmOMYTeYxMnBgJIm9nSdmML+GDJH0S9O7IijizDdiqp
         PQWPGZK6rNRi7qn6z2dqvZR7A5Jht9Lg5BtLfM/tZ5o2eo75ga6atuuYvWMbQAMYgwkP
         3iog==
X-Gm-Message-State: AOAM530KKRo8DAB5zO+29o1+azkZNMwvxr3Q38VAAYGhsOuVzModYGGd
	36XR/ym8O6y2MNeZdaZguTBB+vii3fAZknKyiX8=
X-Google-Smtp-Source: ABdhPJw9OwjFvTBtPnXUNQCrCquYqfd7KJ+Ts91mpu+KvZ7OxE1ateWyeCRrReJPJo1qyoLL5aBecaS4pTHPsnejTm4=
X-Received: by 2002:a05:6102:21ce:: with SMTP id r14mr7752584vsg.40.1633168749001;
 Sat, 02 Oct 2021 02:59:09 -0700 (PDT)
MIME-Version: 1.0
References: <20211001173152.3015007-1-hkleynhans@fb.com> <20211001173152.3015007-2-hkleynhans@fb.com>
In-Reply-To: <20211001173152.3015007-2-hkleynhans@fb.com>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Sat, 2 Oct 2021 11:58:57 +0200
Message-ID: <CANNYZj_Cp-Jm4SyXQdpSBfUv9s+jJuuWS6HRojvAQ_ni-kqAjw@mail.gmail.com>
Subject: Re: [poky] [PATCH] sstate: Switch to ZStandard compressor support
To: hkleynhans@fb.com
Cc: poky@lists.yoctoproject.org, rmikey@fb.com
Content-Type: multipart/alternative; boundary="000000000000247fe705cd5bbb9f"

--000000000000247fe705cd5bbb9f
Content-Type: text/plain; charset="UTF-8"

I think it might be better to use ZSTD_THREADS? BB_NUMBER is for
controlling bitbake tasks, and ZSTD_THREADS is already defined in
kirkstone-next.

Alex

On Fri, 1 Oct 2021 at 19:32, Henry Kleynhans via lists.yoctoproject.org
<hkleynhans=fb.com@lists.yoctoproject.org> wrote:

> This patch switches the compressor from Gzip to ZStandard for ssate cache
> files.
>
> Zstandard compression provides a significant improvement in
> decompression speed as well as improvement in compression speed and disk
> usage over the 'tgz' format in use.  Furthermore, its configurable
> compression level offers a trade-off between time spent compressing
> sstate cache files and disk space used by those files.  The reduced disk
> usage also contributes to saving network traffic for those sharing their
> sstate cache with others.
>
> Zstandard should therefore be a good choice when:
> * disk space is at a premium
> * network speed / resources are limited
> * the CI server can sstate packages can be created at high compression
> * less CPU on the build server should be used for sstate decompression
>
> Signed-off-by: Henry Kleynhans <hkleynhans@fb.com>
> ---
>  meta/classes/sstate.bbclass        | 22 ++++++++--------
>  scripts/sstate-cache-management.sh | 40 +++++++++++++++---------------
>  2 files changed, 31 insertions(+), 31 deletions(-)
>
> diff --git a/meta/classes/sstate.bbclass b/meta/classes/sstate.bbclass
> index 92a73114bb..0068557927 100644
> --- a/meta/classes/sstate.bbclass
> +++ b/meta/classes/sstate.bbclass
> @@ -1,17 +1,19 @@
>  SSTATE_VERSION = "3"
>
> +SSTATE_ZSTD_CLEVEL = "8"
> +
>  SSTATE_MANIFESTS ?= "${TMPDIR}/sstate-control"
>  SSTATE_MANFILEPREFIX =
> "${SSTATE_MANIFESTS}/manifest-${SSTATE_MANMACH}-${PN}"
>
>  def generate_sstatefn(spec, hash, taskname, siginfo, d):
>      if taskname is None:
>         return ""
> -    extension = ".tgz"
> +    extension = ".tar.zst"
>      # 8 chars reserved for siginfo
>      limit = 254 - 8
>      if siginfo:
>          limit = 254
> -        extension = ".tgz.siginfo"
> +        extension = ".tar.zst.siginfo"
>      if not hash:
>          hash = "INVALID"
>      fn = spec + hash + "_" + taskname + extension
> @@ -37,7 +39,7 @@ SSTATE_PKGNAME    =
> "${SSTATE_EXTRAPATH}${@generate_sstatefn(d.getVar('SSTATE_PK
>  SSTATE_PKG        = "${SSTATE_DIR}/${SSTATE_PKGNAME}"
>  SSTATE_EXTRAPATH   = ""
>  SSTATE_EXTRAPATHWILDCARD = ""
> -SSTATE_PATHSPEC   =
> "${SSTATE_DIR}/${SSTATE_EXTRAPATHWILDCARD}*/*/${SSTATE_PKGSPEC}*_${SSTATE_PATH_CURRTASK}.tgz*"
> +SSTATE_PATHSPEC   =
> "${SSTATE_DIR}/${SSTATE_EXTRAPATHWILDCARD}*/*/${SSTATE_PKGSPEC}*_${SSTATE_PATH_CURRTASK}.tar.zst*"
>
>  # explicitly make PV to depend on evaluated value of PV variable
>  PV[vardepvalue] = "${PV}"
> @@ -825,23 +827,20 @@ sstate_create_package () {
>         mkdir --mode=0775 -p `dirname ${SSTATE_PKG}`
>         TFILE=`mktemp ${SSTATE_PKG}.XXXXXXXX`
>
> -       # Use pigz if available
> -       OPT="-czS"
> -       if [ -x "$(command -v pigz)" ]; then
> -               OPT="-I pigz -cS"
> -       fi
> +       OPT="-cS"
> +       ZSTD="zstd -${SSTATE_ZSTD_CLEVEL} -T${BB_NUMBER_THREADS}"
>
>         # Need to handle empty directories
>         if [ "$(ls -A)" ]; then
>                 set +e
> -               tar $OPT -f $TFILE *
> +               tar -I "${ZSTD}" $OPT -f $TFILE *
>                 ret=$?
>                 if [ $ret -ne 0 ] && [ $ret -ne 1 ]; then
>                         exit 1
>                 fi
>                 set -e
>         else
> -               tar $OPT --file=$TFILE --files-from=/dev/null
> +               tar -I "${ZSTD}" $OPT --file=$TFILE --files-from=/dev/null
>         fi
>         chmod 0664 $TFILE
>         # Skip if it was already created by some other process
> @@ -880,7 +879,8 @@ python sstate_report_unihash() {
>  # Will be run from within SSTATE_INSTDIR.
>  #
>  sstate_unpack_package () {
> -       tar -xvzf ${SSTATE_PKG}
> +       ZSTD="zstd -T${BB_NUMBER_THREADS}"
> +       tar -I "${ZSTD}" -xvf ${SSTATE_PKG}
>         # update .siginfo atime on local/NFS mirror
>         [ -O ${SSTATE_PKG}.siginfo ] && [ -w ${SSTATE_PKG}.siginfo ] && [
> -h ${SSTATE_PKG}.siginfo ] && touch -a ${SSTATE_PKG}.siginfo
>         # Use "! -w ||" to return true for read only files
> diff --git a/scripts/sstate-cache-management.sh
> b/scripts/sstate-cache-management.sh
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
>    local rmlist_file="$1"
>    shift
> @@ -131,13 +131,13 @@ gen_rmlist (){
>                dest="`readlink -e $i`"
>                if [ -n "$dest" ]; then
>                    echo $dest >> $rmlist_file
> -                  # Remove the .siginfo when .tgz is removed
> +                  # Remove the .siginfo when .tar.zst is removed
>                    if [ -f "$dest.siginfo" ]; then
>                        echo $dest.siginfo >> $rmlist_file
>                    fi
>                fi
>            fi
> -          # Add the ".tgz.done" and ".siginfo.done" (may exist in the
> future)
> +          # Add the ".tar.zst.done" and ".siginfo.done" (may exist in the
> future)
>            base_fn="${i##/*/}"
>            t_fn="$base_fn.done"
>            s_fn="$base_fn.siginfo.done"
> @@ -188,10 +188,10 @@ remove_duplicated () {
>    total_files=`find $cache_dir -name 'sstate*' | wc -l`
>    # Save all the sstate files in a file
>    sstate_files_list=`mktemp` || exit 1
> -  find $cache_dir -name 'sstate:*:*:*:*:*:*:*.tgz*' >$sstate_files_list
> +  find $cache_dir -iname 'sstate:*:*:*:*:*:*:*.tar.zst*'
> >$sstate_files_list
>
>    echo "Figuring out the suffixes in the sstate cache dir ... "
> -  sstate_suffixes="`sed
> 's%.*/sstate:[^:]*:[^:]*:[^:]*:[^:]*:[^:]*:[^:]*:[^_]*_\([^:]*\)\.tgz.*%\1%g'
> $sstate_files_list | sort -u`"
> +  sstate_suffixes="`sed
> 's%.*/sstate:[^:]*:[^:]*:[^:]*:[^:]*:[^:]*:[^:]*:[^_]*_\([^:]*\)\.tar\.zst.*%\1%g'
> $sstate_files_list | sort -u`"
>    echo "Done"
>    echo "The following suffixes have been found in the cache dir:"
>    echo $sstate_suffixes
> @@ -200,10 +200,10 @@ remove_duplicated () {
>    # Using this SSTATE_PKGSPEC definition it's 6th colon separated field
>    # SSTATE_PKGSPEC    =
> "sstate:${PN}:${PACKAGE_ARCH}${TARGET_VENDOR}-${TARGET_OS}:${PV}:${PR}:${SSTATE_PKGARCH}:${SSTATE_VERSION}:"
>    for arch in $all_archs; do
> -      grep -q ".*/sstate:[^:]*:[^:]*:[^:]*:[^:]*:$arch:[^:]*:[^:]*\.tgz$"
> $sstate_files_list
> +      grep -q
> ".*/sstate:[^:]*:[^:]*:[^:]*:[^:]*:$arch:[^:]*:[^:]*\.tar\.zst$"
> $sstate_files_list
>        [ $? -eq 0 ] && ava_archs="$ava_archs $arch"
>        # ${builder_arch}_$arch used by toolchain sstate
> -      grep -q
> ".*/sstate:[^:]*:[^:]*:[^:]*:[^:]*:${builder_arch}_$arch:[^:]*:[^:]*\.tgz$"
> $sstate_files_list
> +      grep -q
> ".*/sstate:[^:]*:[^:]*:[^:]*:[^:]*:${builder_arch}_$arch:[^:]*:[^:]*\.tar\.zst$"
> $sstate_files_list
>        [ $? -eq 0 ] && ava_archs="$ava_archs ${builder_arch}_$arch"
>    done
>    echo "Done"
> @@ -219,13 +219,13 @@ remove_duplicated () {
>            continue
>        fi
>        # Total number of files including .siginfo and .done files
> -      total_files_suffix=`grep
> ".*/sstate:[^:]*:[^:]*:[^:]*:[^:]*:[^:]*:[^:]*:[^:_]*_$suffix\.tgz.*"
> $sstate_files_list | wc -l 2>/dev/null`
> -      total_tgz_suffix=`grep
> ".*/sstate:[^:]*:[^:]*:[^:]*:[^:]*:[^:]*:[^:]*:[^:_]*_$suffix\.tgz$"
> $sstate_files_list | wc -l 2>/dev/null`
> +      total_files_suffix=`grep
> ".*/sstate:[^:]*:[^:]*:[^:]*:[^:]*:[^:]*:[^:]*:[^:_]*_$suffix\.tar\.zst.*"
> $sstate_files_list | wc -l 2>/dev/null`
> +      total_archive_suffix=`grep
> ".*/sstate:[^:]*:[^:]*:[^:]*:[^:]*:[^:]*:[^:]*:[^:_]*_$suffix\.tar\.zst$"
> $sstate_files_list | wc -l 2>/dev/null`
>        # Save the file list to a file, some suffix's file may not exist
> -      grep
> ".*/sstate:[^:]*:[^:]*:[^:]*:[^:]*:[^:]*:[^:]*:[^:_]*_$suffix\.tgz.*"
> $sstate_files_list >$list_suffix 2>/dev/null
> -      local deleted_tgz=0
> +      grep
> ".*/sstate:[^:]*:[^:]*:[^:]*:[^:]*:[^:]*:[^:]*:[^:_]*_$suffix\.tar\.zst.*"
> $sstate_files_list >$list_suffix 2>/dev/null
> +      local deleted_archives=0
>        local deleted_files=0
> -      for ext in tgz tgz.siginfo tgz.done; do
> +      for ext in tar.zst tar.zst.siginfo tar.zst.done; do
>            echo "Figuring out the sstate:xxx_$suffix.$ext ... "
>            # Uniq BPNs
>            file_names=`for arch in $ava_archs ""; do
> @@ -268,19 +268,19 @@ remove_duplicated () {
>                done
>            done
>        done
> -      deleted_tgz=`cat $rm_list.* 2>/dev/null | grep ".tgz$" | wc -l`
> +      deleted_archives=`cat $rm_list.* 2>/dev/null | grep "\.tar\.zst$" |
> wc -l`
>        deleted_files=`cat $rm_list.* 2>/dev/null | wc -l`
>        [ "$deleted_files" -gt 0 -a $debug -gt 0 ] && cat $rm_list.*
> -      echo "($deleted_tgz out of $total_tgz_suffix .tgz files for $suffix
> suffix will be removed or $deleted_files out of $total_files_suffix when
> counting also .siginfo and .done files)"
> +      echo "($deleted_archives out of $total_archives_suffix .tar.zst
> files for $suffix suffix will be removed or $deleted_files out of
> $total_files_suffix when counting also .siginfo and .done files)"
>        let total_deleted=$total_deleted+$deleted_files
>    done
> -  deleted_tgz=0
> +  deleted_archives=0
>    rm_old_list=$remove_listdir/sstate-old-filenames
> -  find $cache_dir -name 'sstate-*.tgz' >$rm_old_list
> -  [ -s "$rm_old_list" ] && deleted_tgz=`cat $rm_old_list | grep ".tgz$" |
> wc -l`
> +  find $cache_dir -name 'sstate-*.tar.zst' >$rm_old_list
> +  [ -s "$rm_old_list" ] && deleted_archives=`cat $rm_old_list | grep
> "\.tar\.zst$" | wc -l`
>    [ -s "$rm_old_list" ] && deleted_files=`cat $rm_old_list | wc -l`
>    [ -s "$rm_old_list" -a $debug -gt 0 ] && cat $rm_old_list
> -  echo "($deleted_tgz .tgz files with old sstate-* filenames will be
> removed or $deleted_files when counting also .siginfo and .done files)"
> +  echo "($deleted_archives or .tar.zst files with old sstate-* filenames
> will be removed or $deleted_files when counting also .siginfo and .done
> files)"
>    let total_deleted=$total_deleted+$deleted_files
>
>    rm -f $list_suffix
> @@ -289,7 +289,7 @@ remove_duplicated () {
>        read_confirm
>        if [ "$confirm" = "y" -o "$confirm" = "Y" ]; then
>            for list in `ls $remove_listdir/`; do
> -              echo "Removing $list.tgz (`cat $remove_listdir/$list | wc
> -w` files) ... "
> +              echo "Removing $list.tar.zst archive (`cat
> $remove_listdir/$list | wc -w` files) ... "
>                # Remove them one by one to avoid the argument list too
> long error
>                for i in `cat $remove_listdir/$list`; do
>                    rm -f $verbose $i
> @@ -322,7 +322,7 @@ rm_by_stamps (){
>    find $cache_dir -type f -name 'sstate*' | sort -u -o $cache_list
>
>    echo "Figuring out the suffixes in the sstate cache dir ... "
> -  local sstate_suffixes="`sed
> 's%.*/sstate:[^:]*:[^:]*:[^:]*:[^:]*:[^:]*:[^:]*:[^_]*_\([^:]*\)\.tgz.*%\1%g'
> $cache_list | sort -u`"
> +  local sstate_suffixes="`sed
> 's%.*/sstate:[^:]*:[^:]*:[^:]*:[^:]*:[^:]*:[^:]*:[^_]*_\([^:]*\)\.tar\.zst.*%\1%g'
> $cache_list | sort -u`"
>    echo "Done"
>    echo "The following suffixes have been found in the cache dir:"
>    echo $sstate_suffixes
> --
> 2.30.2
>
>
> 
>
>

--000000000000247fe705cd5bbb9f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I think it might be better to use ZSTD_THREADS? BB_NU=
MBER is for controlling bitbake tasks, and ZSTD_THREADS is already defined =
in kirkstone-next.</div><div><br></div><div>Alex<br></div></div><br><div cl=
ass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, 1 Oct 202=
1 at 19:32, Henry Kleynhans via <a href=3D"http://lists.yoctoproject.org">l=
ists.yoctoproject.org</a> &lt;hkleynhans=3D<a href=3D"mailto:fb.com@lists.y=
octoproject.org">fb.com@lists.yoctoproject.org</a>&gt; wrote:<br></div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex">This patch switches the compr=
essor from Gzip to ZStandard for ssate cache<br>
files.<br>
<br>
Zstandard compression provides a significant improvement in<br>
decompression speed as well as improvement in compression speed and disk<br=
>
usage over the &#39;tgz&#39; format in use.=C2=A0 Furthermore, its configur=
able<br>
compression level offers a trade-off between time spent compressing<br>
sstate cache files and disk space used by those files.=C2=A0 The reduced di=
sk<br>
usage also contributes to saving network traffic for those sharing their<br=
>
sstate cache with others.<br>
<br>
Zstandard should therefore be a good choice when:<br>
* disk space is at a premium<br>
* network speed / resources are limited<br>
* the CI server can sstate packages can be created at high compression<br>
* less CPU on the build server should be used for sstate decompression<br>
<br>
Signed-off-by: Henry Kleynhans &lt;<a href=3D"mailto:hkleynhans@fb.com" tar=
get=3D"_blank">hkleynhans@fb.com</a>&gt;<br>
---<br>
=C2=A0meta/classes/sstate.bbclass=C2=A0 =C2=A0 =C2=A0 =C2=A0 | 22 ++++++++-=
-------<br>
=C2=A0scripts/sstate-cache-management.sh | 40 +++++++++++++++--------------=
-<br>
=C2=A02 files changed, 31 insertions(+), 31 deletions(-)<br>
<br>
diff --git a/meta/classes/sstate.bbclass b/meta/classes/sstate.bbclass<br>
index 92a73114bb..0068557927 100644<br>
--- a/meta/classes/sstate.bbclass<br>
+++ b/meta/classes/sstate.bbclass<br>
@@ -1,17 +1,19 @@<br>
=C2=A0SSTATE_VERSION =3D &quot;3&quot;<br>
<br>
+SSTATE_ZSTD_CLEVEL =3D &quot;8&quot;<br>
+<br>
=C2=A0SSTATE_MANIFESTS ?=3D &quot;${TMPDIR}/sstate-control&quot;<br>
=C2=A0SSTATE_MANFILEPREFIX =3D &quot;${SSTATE_MANIFESTS}/manifest-${SSTATE_=
MANMACH}-${PN}&quot;<br>
<br>
=C2=A0def generate_sstatefn(spec, hash, taskname, siginfo, d):<br>
=C2=A0 =C2=A0 =C2=A0if taskname is None:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 return &quot;&quot;<br>
-=C2=A0 =C2=A0 extension =3D &quot;.tgz&quot;<br>
+=C2=A0 =C2=A0 extension =3D &quot;.tar.zst&quot;<br>
=C2=A0 =C2=A0 =C2=A0# 8 chars reserved for siginfo<br>
=C2=A0 =C2=A0 =C2=A0limit =3D 254 - 8<br>
=C2=A0 =C2=A0 =C2=A0if siginfo:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0limit =3D 254<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 extension =3D &quot;.tgz.siginfo&quot;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 extension =3D &quot;.tar.zst.siginfo&quot;<br>
=C2=A0 =C2=A0 =C2=A0if not hash:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0hash =3D &quot;INVALID&quot;<br>
=C2=A0 =C2=A0 =C2=A0fn =3D spec + hash + &quot;_&quot; + taskname + extensi=
on<br>
@@ -37,7 +39,7 @@ SSTATE_PKGNAME=C2=A0 =C2=A0 =3D &quot;${SSTATE_EXTRAPATH}=
${@generate_sstatefn(d.getVar(&#39;SSTATE_PK<br>
=C2=A0SSTATE_PKG=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;${SSTATE_DIR}/${SSTAT=
E_PKGNAME}&quot;<br>
=C2=A0SSTATE_EXTRAPATH=C2=A0 =C2=A0=3D &quot;&quot;<br>
=C2=A0SSTATE_EXTRAPATHWILDCARD =3D &quot;&quot;<br>
-SSTATE_PATHSPEC=C2=A0 =C2=A0=3D &quot;${SSTATE_DIR}/${SSTATE_EXTRAPATHWILD=
CARD}*/*/${SSTATE_PKGSPEC}*_${SSTATE_PATH_CURRTASK}.tgz*&quot;<br>
+SSTATE_PATHSPEC=C2=A0 =C2=A0=3D &quot;${SSTATE_DIR}/${SSTATE_EXTRAPATHWILD=
CARD}*/*/${SSTATE_PKGSPEC}*_${SSTATE_PATH_CURRTASK}.tar.zst*&quot;<br>
<br>
=C2=A0# explicitly make PV to depend on evaluated value of PV variable<br>
=C2=A0PV[vardepvalue] =3D &quot;${PV}&quot;<br>
@@ -825,23 +827,20 @@ sstate_create_package () {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 mkdir --mode=3D0775 -p `dirname ${SSTATE_PKG}`<=
br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 TFILE=3D`mktemp ${SSTATE_PKG}.XXXXXXXX`<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0# Use pigz if available<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0OPT=3D&quot;-czS&quot;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0if [ -x &quot;$(command -v pigz)&quot; ]; then<=
br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0OPT=3D&quot;-I pigz=
 -cS&quot;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0fi<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0OPT=3D&quot;-cS&quot;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0ZSTD=3D&quot;zstd -${SSTATE_ZSTD_CLEVEL} -T${BB=
_NUMBER_THREADS}&quot;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 # Need to handle empty directories<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if [ &quot;$(ls -A)&quot; ]; then<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 set +e<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0tar $OPT -f $TFILE =
*<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0tar -I &quot;${ZSTD=
}&quot; $OPT -f $TFILE *<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ret=3D$?<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if [ $ret -ne 0 ] &=
amp;&amp; [ $ret -ne 1 ]; then<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 exit 1<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 fi<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 set -e<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 else<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0tar $OPT --file=3D$=
TFILE --files-from=3D/dev/null<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0tar -I &quot;${ZSTD=
}&quot; $OPT --file=3D$TFILE --files-from=3D/dev/null<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 fi<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 chmod 0664 $TFILE<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 # Skip if it was already created by some other =
process<br>
@@ -880,7 +879,8 @@ python sstate_report_unihash() {<br>
=C2=A0# Will be run from within SSTATE_INSTDIR.<br>
=C2=A0#<br>
=C2=A0sstate_unpack_package () {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0tar -xvzf ${SSTATE_PKG}<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0ZSTD=3D&quot;zstd -T${BB_NUMBER_THREADS}&quot;<=
br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0tar -I &quot;${ZSTD}&quot; -xvf ${SSTATE_PKG}<b=
r>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 # update .siginfo atime on local/NFS mirror<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 [ -O ${SSTATE_PKG}.siginfo ] &amp;&amp; [ -w ${=
SSTATE_PKG}.siginfo ] &amp;&amp; [ -h ${SSTATE_PKG}.siginfo ] &amp;&amp; to=
uch -a ${SSTATE_PKG}.siginfo<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 # Use &quot;! -w ||&quot; to return true for re=
ad only files<br>
diff --git a/scripts/sstate-cache-management.sh b/scripts/sstate-cache-mana=
gement.sh<br>
index f1706a2229..d39671f7c6 100755<br>
--- a/scripts/sstate-cache-management.sh<br>
+++ b/scripts/sstate-cache-management.sh<br>
@@ -114,7 +114,7 @@ echo_error () {<br>
=C2=A0# * Add .done/.siginfo to the remove list<br>
=C2=A0# * Add destination of symlink to the remove list<br>
=C2=A0#<br>
-# $1: output file, others: sstate cache file (.tgz)<br>
+# $1: output file, others: sstate cache file (.tar.zst)<br>
=C2=A0gen_rmlist (){<br>
=C2=A0 =C2=A0local rmlist_file=3D&quot;$1&quot;<br>
=C2=A0 =C2=A0shift<br>
@@ -131,13 +131,13 @@ gen_rmlist (){<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0dest=3D&quot;`readli=
nk -e $i`&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if [ -n &quot;$dest&=
quot; ]; then<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0echo $=
dest &gt;&gt; $rmlist_file<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # Remove th=
e .siginfo when .tgz is removed<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # Remove th=
e .siginfo when .tar.zst is removed<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if [ -=
f &quot;$dest.siginfo&quot; ]; then<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0echo $dest.siginfo &gt;&gt; $rmlist_file<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0fi<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0fi<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0fi<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # Add the &quot;.tgz.done&quot; and &qu=
ot;.siginfo.done&quot; (may exist in the future)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # Add the &quot;.tar.zst.done&quot; and=
 &quot;.siginfo.done&quot; (may exist in the future)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0base_fn=3D&quot;${i##/*/}&quot;<br=
>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0t_fn=3D&quot;$base_fn.done&quot;<b=
r>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0s_fn=3D&quot;$base_fn.siginfo.done=
&quot;<br>
@@ -188,10 +188,10 @@ remove_duplicated () {<br>
=C2=A0 =C2=A0total_files=3D`find $cache_dir -name &#39;sstate*&#39; | wc -l=
`<br>
=C2=A0 =C2=A0# Save all the sstate files in a file<br>
=C2=A0 =C2=A0sstate_files_list=3D`mktemp` || exit 1<br>
-=C2=A0 find $cache_dir -name &#39;sstate:*:*:*:*:*:*:*.tgz*&#39; &gt;$ssta=
te_files_list<br>
+=C2=A0 find $cache_dir -iname &#39;sstate:*:*:*:*:*:*:*.tar.zst*&#39; &gt;=
$sstate_files_list<br>
<br>
=C2=A0 =C2=A0echo &quot;Figuring out the suffixes in the sstate cache dir .=
.. &quot;<br>
-=C2=A0 sstate_suffixes=3D&quot;`sed &#39;s%.*/sstate:[^:]*:[^:]*:[^:]*:[^:=
]*:[^:]*:[^:]*:[^_]*_\([^:]*\)\.tgz.*%\1%g&#39; $sstate_files_list | sort -=
u`&quot;<br>
+=C2=A0 sstate_suffixes=3D&quot;`sed &#39;s%.*/sstate:[^:]*:[^:]*:[^:]*:[^:=
]*:[^:]*:[^:]*:[^_]*_\([^:]*\)\.tar\.zst.*%\1%g&#39; $sstate_files_list | s=
ort -u`&quot;<br>
=C2=A0 =C2=A0echo &quot;Done&quot;<br>
=C2=A0 =C2=A0echo &quot;The following suffixes have been found in the cache=
 dir:&quot;<br>
=C2=A0 =C2=A0echo $sstate_suffixes<br>
@@ -200,10 +200,10 @@ remove_duplicated () {<br>
=C2=A0 =C2=A0# Using this SSTATE_PKGSPEC definition it&#39;s 6th colon sepa=
rated field<br>
=C2=A0 =C2=A0# SSTATE_PKGSPEC=C2=A0 =C2=A0 =3D &quot;sstate:${PN}:${PACKAGE=
_ARCH}${TARGET_VENDOR}-${TARGET_OS}:${PV}:${PR}:${SSTATE_PKGARCH}:${SSTATE_=
VERSION}:&quot;<br>
=C2=A0 =C2=A0for arch in $all_archs; do<br>
-=C2=A0 =C2=A0 =C2=A0 grep -q &quot;.*/sstate:[^:]*:[^:]*:[^:]*:[^:]*:$arch=
:[^:]*:[^:]*\.tgz$&quot; $sstate_files_list<br>
+=C2=A0 =C2=A0 =C2=A0 grep -q &quot;.*/sstate:[^:]*:[^:]*:[^:]*:[^:]*:$arch=
:[^:]*:[^:]*\.tar\.zst$&quot; $sstate_files_list<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0[ $? -eq 0 ] &amp;&amp; ava_archs=3D&quot;$ava_a=
rchs $arch&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0# ${builder_arch}_$arch used by toolchain sstate=
<br>
-=C2=A0 =C2=A0 =C2=A0 grep -q &quot;.*/sstate:[^:]*:[^:]*:[^:]*:[^:]*:${bui=
lder_arch}_$arch:[^:]*:[^:]*\.tgz$&quot; $sstate_files_list<br>
+=C2=A0 =C2=A0 =C2=A0 grep -q &quot;.*/sstate:[^:]*:[^:]*:[^:]*:[^:]*:${bui=
lder_arch}_$arch:[^:]*:[^:]*\.tar\.zst$&quot; $sstate_files_list<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0[ $? -eq 0 ] &amp;&amp; ava_archs=3D&quot;$ava_a=
rchs ${builder_arch}_$arch&quot;<br>
=C2=A0 =C2=A0done<br>
=C2=A0 =C2=A0echo &quot;Done&quot;<br>
@@ -219,13 +219,13 @@ remove_duplicated () {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0continue<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0fi<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0# Total number of files including .siginfo and .=
done files<br>
-=C2=A0 =C2=A0 =C2=A0 total_files_suffix=3D`grep &quot;.*/sstate:[^:]*:[^:]=
*:[^:]*:[^:]*:[^:]*:[^:]*:[^:_]*_$suffix\.tgz.*&quot; $sstate_files_list | =
wc -l 2&gt;/dev/null`<br>
-=C2=A0 =C2=A0 =C2=A0 total_tgz_suffix=3D`grep &quot;.*/sstate:[^:]*:[^:]*:=
[^:]*:[^:]*:[^:]*:[^:]*:[^:_]*_$suffix\.tgz$&quot; $sstate_files_list | wc =
-l 2&gt;/dev/null`<br>
+=C2=A0 =C2=A0 =C2=A0 total_files_suffix=3D`grep &quot;.*/sstate:[^:]*:[^:]=
*:[^:]*:[^:]*:[^:]*:[^:]*:[^:_]*_$suffix\.tar\.zst.*&quot; $sstate_files_li=
st | wc -l 2&gt;/dev/null`<br>
+=C2=A0 =C2=A0 =C2=A0 total_archive_suffix=3D`grep &quot;.*/sstate:[^:]*:[^=
:]*:[^:]*:[^:]*:[^:]*:[^:]*:[^:_]*_$suffix\.tar\.zst$&quot; $sstate_files_l=
ist | wc -l 2&gt;/dev/null`<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0# Save the file list to a file, some suffix&#39;=
s file may not exist<br>
-=C2=A0 =C2=A0 =C2=A0 grep &quot;.*/sstate:[^:]*:[^:]*:[^:]*:[^:]*:[^:]*:[^=
:]*:[^:_]*_$suffix\.tgz.*&quot; $sstate_files_list &gt;$list_suffix 2&gt;/d=
ev/null<br>
-=C2=A0 =C2=A0 =C2=A0 local deleted_tgz=3D0<br>
+=C2=A0 =C2=A0 =C2=A0 grep &quot;.*/sstate:[^:]*:[^:]*:[^:]*:[^:]*:[^:]*:[^=
:]*:[^:_]*_$suffix\.tar\.zst.*&quot; $sstate_files_list &gt;$list_suffix 2&=
gt;/dev/null<br>
+=C2=A0 =C2=A0 =C2=A0 local deleted_archives=3D0<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0local deleted_files=3D0<br>
-=C2=A0 =C2=A0 =C2=A0 for ext in tgz tgz.siginfo tgz.done; do<br>
+=C2=A0 =C2=A0 =C2=A0 for ext in tar.zst tar.zst.siginfo tar.zst.done; do<b=
r>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0echo &quot;Figuring out the sstate=
:xxx_$suffix.$ext ... &quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# Uniq BPNs<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0file_names=3D`for arch in $ava_arc=
hs &quot;&quot;; do<br>
@@ -268,19 +268,19 @@ remove_duplicated () {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0done<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0done<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0done<br>
-=C2=A0 =C2=A0 =C2=A0 deleted_tgz=3D`cat $rm_list.* 2&gt;/dev/null | grep &=
quot;.tgz$&quot; | wc -l`<br>
+=C2=A0 =C2=A0 =C2=A0 deleted_archives=3D`cat $rm_list.* 2&gt;/dev/null | g=
rep &quot;\.tar\.zst$&quot; | wc -l`<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0deleted_files=3D`cat $rm_list.* 2&gt;/dev/null |=
 wc -l`<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0[ &quot;$deleted_files&quot; -gt 0 -a $debug -gt=
 0 ] &amp;&amp; cat $rm_list.*<br>
-=C2=A0 =C2=A0 =C2=A0 echo &quot;($deleted_tgz out of $total_tgz_suffix .tg=
z files for $suffix suffix will be removed or $deleted_files out of $total_=
files_suffix when counting also .siginfo and .done files)&quot;<br>
+=C2=A0 =C2=A0 =C2=A0 echo &quot;($deleted_archives out of $total_archives_=
suffix .tar.zst files for $suffix suffix will be removed or $deleted_files =
out of $total_files_suffix when counting also .siginfo and .done files)&quo=
t;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0let total_deleted=3D$total_deleted+$deleted_file=
s<br>
=C2=A0 =C2=A0done<br>
-=C2=A0 deleted_tgz=3D0<br>
+=C2=A0 deleted_archives=3D0<br>
=C2=A0 =C2=A0rm_old_list=3D$remove_listdir/sstate-old-filenames<br>
-=C2=A0 find $cache_dir -name &#39;sstate-*.tgz&#39; &gt;$rm_old_list<br>
-=C2=A0 [ -s &quot;$rm_old_list&quot; ] &amp;&amp; deleted_tgz=3D`cat $rm_o=
ld_list | grep &quot;.tgz$&quot; | wc -l`<br>
+=C2=A0 find $cache_dir -name &#39;sstate-*.tar.zst&#39; &gt;$rm_old_list<b=
r>
+=C2=A0 [ -s &quot;$rm_old_list&quot; ] &amp;&amp; deleted_archives=3D`cat =
$rm_old_list | grep &quot;\.tar\.zst$&quot; | wc -l`<br>
=C2=A0 =C2=A0[ -s &quot;$rm_old_list&quot; ] &amp;&amp; deleted_files=3D`ca=
t $rm_old_list | wc -l`<br>
=C2=A0 =C2=A0[ -s &quot;$rm_old_list&quot; -a $debug -gt 0 ] &amp;&amp; cat=
 $rm_old_list<br>
-=C2=A0 echo &quot;($deleted_tgz .tgz files with old sstate-* filenames wil=
l be removed or $deleted_files when counting also .siginfo and .done files)=
&quot;<br>
+=C2=A0 echo &quot;($deleted_archives or .tar.zst files with old sstate-* f=
ilenames will be removed or $deleted_files when counting also .siginfo and =
.done files)&quot;<br>
=C2=A0 =C2=A0let total_deleted=3D$total_deleted+$deleted_files<br>
<br>
=C2=A0 =C2=A0rm -f $list_suffix<br>
@@ -289,7 +289,7 @@ remove_duplicated () {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0read_confirm<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0if [ &quot;$confirm&quot; =3D &quot;y&quot; -o &=
quot;$confirm&quot; =3D &quot;Y&quot; ]; then<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0for list in `ls $remove_listdir/`;=
 do<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 echo &quot;Removing $list=
.tgz (`cat $remove_listdir/$list | wc -w` files) ... &quot;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 echo &quot;Removing $list=
.tar.zst archive (`cat $remove_listdir/$list | wc -w` files) ... &quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# Remove them one by=
 one to avoid the argument list too long error<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0for i in `cat $remov=
e_listdir/$list`; do<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0rm -f =
$verbose $i<br>
@@ -322,7 +322,7 @@ rm_by_stamps (){<br>
=C2=A0 =C2=A0find $cache_dir -type f -name &#39;sstate*&#39; | sort -u -o $=
cache_list<br>
<br>
=C2=A0 =C2=A0echo &quot;Figuring out the suffixes in the sstate cache dir .=
.. &quot;<br>
-=C2=A0 local sstate_suffixes=3D&quot;`sed &#39;s%.*/sstate:[^:]*:[^:]*:[^:=
]*:[^:]*:[^:]*:[^:]*:[^_]*_\([^:]*\)\.tgz.*%\1%g&#39; $cache_list | sort -u=
`&quot;<br>
+=C2=A0 local sstate_suffixes=3D&quot;`sed &#39;s%.*/sstate:[^:]*:[^:]*:[^:=
]*:[^:]*:[^:]*:[^:]*:[^_]*_\([^:]*\)\.tar\.zst.*%\1%g&#39; $cache_list | so=
rt -u`&quot;<br>
=C2=A0 =C2=A0echo &quot;Done&quot;<br>
=C2=A0 =C2=A0echo &quot;The following suffixes have been found in the cache=
 dir:&quot;<br>
=C2=A0 =C2=A0echo $sstate_suffixes<br>
-- <br>
2.30.2<br>
<br>
<br>
<br>
<br>
</blockquote></div>

--000000000000247fe705cd5bbb9f--
