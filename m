Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
 by mx.groups.io with SMTP id smtpd.web09.8502.1633096374423424175
 for <poky@lists.yoctoproject.org>;
 Fri, 01 Oct 2021 06:52:54 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=U2WlUCyd;
 spf=pass (domain: gmail.com, ip: 209.85.128.50, mailfrom: jpewhacker@gmail.com)
Received: by mail-wm1-f50.google.com with SMTP id s24so7293182wmh.4
        for <poky@lists.yoctoproject.org>; Fri, 01 Oct 2021 06:52:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=L72aIZGsXoGNviDftJLjt/IYhmeL2yUjveMw9+A/xlo=;
        b=U2WlUCydjWDu+YpgaZ3TUybUD6xzv/GmkXHoicR5D9wB9hxqOHepOGvhMq6W6hay8Q
         DhUcPe4hG+L1CgmvFsQ87/XBWtXiw6OesHyg+U86PD9MmUkWO/NMvwRN+tOGQwyU9ngM
         3ZRdg1oPPxMnPaHHcC8sbrdZpMQ084R/roAh6XpauTzqHHC/5SLXWRqPxI9vVfAN+G8R
         vh6T9GDqFZxTKNPdU8Xw4e9TB6Z7fwrV43WaiR31D5G+Vww0QVD3aOmZdNtfmXMXyO6L
         xKt1ZEgjf9t149GF139Q5WRh7g+0YXSv0dxZkxmNlug7FoPndov8grrBUIsPPqhUJ7s9
         oLAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=L72aIZGsXoGNviDftJLjt/IYhmeL2yUjveMw9+A/xlo=;
        b=c7+/M8t6aXDGbnHw5ZND+uxoZzHcpBxqBrzNbYqkx9wqdH10SHztGOexqfN8nS4TlS
         fqDttvuR0XAma+5E+KeNZN1o066ojGry2Ui2JLvquKSE5kztRBFncx5A0X2huiDurnH0
         OGZGCwPVeV2K/a5gK4QUoIc5nqZ2l8wxfnMs8XInDZJ9W+S633igljotQUl4/6FxUBqb
         p6dHQdXeQrSSjPioJHSGUyDCZc9GLNJNxlH+XyOy3tILwOkyh6uR82gY3P1ca4/9iaOA
         UJWbZcGMY64yPBIS3o540vzr7mGJux/QrpuGMPnGyWuI2x3fxTHmy7BewCEozh9tL4Mm
         8wkA==
X-Gm-Message-State: AOAM531sQm6NLOWvQ6UYKhpIbTDFQS6FHZCLn/QZWCwAlVGW7JxJ5f/e
	upBz9UpDqvxVay36ncWiDAfKtZe7lcuv5G/uBZc=
X-Google-Smtp-Source: ABdhPJykvO2tU18rIv1enlnL8GCnsNa1I6txG7UUoSk4mwkrWZweDBHmSWW45YQzGe45Q46g7ECLgmJE4aO2lW5ZXrY=
X-Received: by 2002:a7b:c442:: with SMTP id l2mr4815780wmi.131.1633096372625;
 Fri, 01 Oct 2021 06:52:52 -0700 (PDT)
MIME-Version: 1.0
References: <20211001101118.2526538-1-hkleynhans@fb.com>
In-Reply-To: <20211001101118.2526538-1-hkleynhans@fb.com>
From: "Joshua Watt" <JPEWhacker@gmail.com>
Date: Fri, 1 Oct 2021 08:52:41 -0500
Message-ID: <CAJdd5GZxSRkBooOQBKRoVO1gkc2Keu8R5QdqwMBuPkX+7jLdTg@mail.gmail.com>
Subject: Re: [poky] [PATCH] sstate: Add ZStandard compressor support
To: hkleynhans@fb.com
Cc: poky@lists.yoctoproject.org, rmikey@fb.com
Content-Type: text/plain; charset="UTF-8"

On Fri, Oct 1, 2021 at 5:11 AM Henry Kleynhans via
lists.yoctoproject.org <hkleynhans=fb.com@lists.yoctoproject.org>
wrote:
>
> This patch adds support to optionally use the Zstandard compressor for
> ssate cache files.
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
>  meta/classes/sstate.bbclass        | 49 +++++++++++++++++++++++-------
>  scripts/sstate-cache-management.sh | 40 ++++++++++++------------
>  2 files changed, 58 insertions(+), 31 deletions(-)
>
> diff --git a/meta/classes/sstate.bbclass b/meta/classes/sstate.bbclass
> index 92a73114bb..a73d631679 100644
> --- a/meta/classes/sstate.bbclass
> +++ b/meta/classes/sstate.bbclass
> @@ -1,17 +1,30 @@
>  SSTATE_VERSION = "3"
>
> +SSTATE_USE_ZSTD ?= "0"
> +SSTATE_ZSTD_CLEVEL ?= "3"
> +SSTATE_ZSTD_NTHREADS ?= "0"
> +
>  SSTATE_MANIFESTS ?= "${TMPDIR}/sstate-control"
>  SSTATE_MANFILEPREFIX = "${SSTATE_MANIFESTS}/manifest-${SSTATE_MANMACH}-${PN}"
>
> -def generate_sstatefn(spec, hash, taskname, siginfo, d):
> +def generate_sstate_ext(use_zstd, d):
> +    if use_zstd == "1":
> +        return "tar.zst"
> +    return "tgz"
> +
> +def generate_sstatefn(spec, hash, taskname, siginfo, use_zstd, d):
>      if taskname is None:
>         return ""
>      extension = ".tgz"
> +    if use_zstd == "1":
> +       extension = ".tar.zst"
>      # 8 chars reserved for siginfo
>      limit = 254 - 8
>      if siginfo:
>          limit = 254
>          extension = ".tgz.siginfo"
> +        if use_zstd == "1":
> +           extension = ".tar.zst.siginfo"
>      if not hash:
>          hash = "INVALID"
>      fn = spec + hash + "_" + taskname + extension
> @@ -33,11 +46,12 @@ def generate_sstatefn(spec, hash, taskname, siginfo, d):
>  SSTATE_PKGARCH    = "${PACKAGE_ARCH}"
>  SSTATE_PKGSPEC    = "sstate:${PN}:${PACKAGE_ARCH}${TARGET_VENDOR}-${TARGET_OS}:${PV}:${PR}:${SSTATE_PKGARCH}:${SSTATE_VERSION}:"
>  SSTATE_SWSPEC     = "sstate:${PN}::${PV}:${PR}::${SSTATE_VERSION}:"
> -SSTATE_PKGNAME    = "${SSTATE_EXTRAPATH}${@generate_sstatefn(d.getVar('SSTATE_PKGSPEC'), d.getVar('BB_UNIHASH'), d.getVar('SSTATE_CURRTASK'), False, d)}"
> +SSTATE_PKGNAME    = "${SSTATE_EXTRAPATH}${@generate_sstatefn(d.getVar('SSTATE_PKGSPEC'), d.getVar('BB_UNIHASH'), d.getVar('SSTATE_CURRTASK'), False, d.getVar('SSTATE_USE_ZSTD'), d)}"
>  SSTATE_PKG        = "${SSTATE_DIR}/${SSTATE_PKGNAME}"
>  SSTATE_EXTRAPATH   = ""
>  SSTATE_EXTRAPATHWILDCARD = ""
> -SSTATE_PATHSPEC   = "${SSTATE_DIR}/${SSTATE_EXTRAPATHWILDCARD}*/*/${SSTATE_PKGSPEC}*_${SSTATE_PATH_CURRTASK}.tgz*"
> +SSTATE_PKG_EXT    = "${@generate_sstate_ext(d.getVar('SSTATE_USE_ZSTD'), d)}"
> +SSTATE_PATHSPEC   = "${SSTATE_DIR}/${SSTATE_EXTRAPATHWILDCARD}*/*/${SSTATE_PKGSPEC}*_${SSTATE_PATH_CURRTASK}.${SSTATE_PKG_EXT}*"
>
>  # explicitly make PV to depend on evaluated value of PV variable
>  PV[vardepvalue] = "${PV}"
> @@ -825,12 +839,20 @@ sstate_create_package () {
>         mkdir --mode=0775 -p `dirname ${SSTATE_PKG}`
>         TFILE=`mktemp ${SSTATE_PKG}.XXXXXXXX`
>
> -       # Use pigz if available
> -       OPT="-czS"
> -       if [ -x "$(command -v pigz)" ]; then
> -               OPT="-I pigz -cS"
> +       if [ x"${SSTATE_USE_ZSTD}" != x"0" ]; then
> +               export ZSTD_CLEVEL="${SSTATE_ZSTD_CLEVEL}"
> +               export ZSTD_NBTHREADS="${SSTATE_ZSTD_NTHREADS}"
> +               OPT="-I zstd -cS"

I'm not sure this is going to work in parallel like we want. I can't
see any reference to ZSTD_NBTHREADS in my zstd man page, and by
default zstd is only going to use one core. I think that we probably
want something like:

  OPT="-I 'zstd -T${BB_NUMBER_THREADS}' -cS"

Also, depending on host compatibility, we may need to use pzstd instead

  OPT="-I 'pzstd -p${BB_NUMBER_THREADS}' -cS"

> +       else
> +               # Use pigz if available
> +               OPT="-czS"
> +               if [ -x "$(command -v pigz)" ]; then
> +                       OPT="-I pigz -cS"
> +               fi
>         fi
>
> +  echo "OPTS=${OPTS}"
> +
>         # Need to handle empty directories
>         if [ "$(ls -A)" ]; then
>                 set +e
> @@ -880,7 +902,12 @@ python sstate_report_unihash() {
>  # Will be run from within SSTATE_INSTDIR.
>  #
>  sstate_unpack_package () {
> -       tar -xvzf ${SSTATE_PKG}
> +       if [[ "${SSTATE_PKG}" == *.tar.zst ]]; then
> +               export ZSTD_NBTHREADS="${SSTATE_ZSTD_NTHREADS}"
> +               tar -I zstd -xvf ${SSTATE_PKG}

Make sure to specify the number of threads here also

> +       else
> +               tar -xvzf ${SSTATE_PKG}
> +       fi
>         # update .siginfo atime on local/NFS mirror
>         [ -O ${SSTATE_PKG}.siginfo ] && [ -w ${SSTATE_PKG}.siginfo ] && [ -h ${SSTATE_PKG}.siginfo ] && touch -a ${SSTATE_PKG}.siginfo
>         # Use "! -w ||" to return true for read only files
> @@ -922,7 +949,7 @@ def sstate_checkhashes(sq_data, d, siginfo=False, currentcount=0, summary=True,
>
>          spec, extrapath, tname = getpathcomponents(tid, d)
>
> -        sstatefile = d.expand("${SSTATE_DIR}/" + extrapath + generate_sstatefn(spec, gethash(tid), tname, siginfo, d))
> +        sstatefile = d.expand("${SSTATE_DIR}/" + extrapath + generate_sstatefn(spec, gethash(tid), tname, siginfo, d.getVar('SSTATE_USE_ZSTD'), d))
>
>          if os.path.exists(sstatefile):
>              bb.debug(2, "SState: Found valid sstate file %s" % sstatefile)
> @@ -1016,11 +1043,11 @@ def sstate_checkhashes(sq_data, d, siginfo=False, currentcount=0, summary=True,
>          evdata = {'missed': [], 'found': []};
>          for tid in missed:
>              spec, extrapath, tname = getpathcomponents(tid, d)
> -            sstatefile = d.expand(extrapath + generate_sstatefn(spec, gethash(tid), tname, False, d))
> +            sstatefile = d.expand(extrapath + generate_sstatefn(spec, gethash(tid), tname, siginfo, False, d))
>              evdata['missed'].append((bb.runqueue.fn_from_tid(tid), bb.runqueue.taskname_from_tid(tid), gethash(tid), sstatefile ) )
>          for tid in found:
>              spec, extrapath, tname = getpathcomponents(tid, d)
> -            sstatefile = d.expand(extrapath + generate_sstatefn(spec, gethash(tid), tname, False, d))
> +            sstatefile = d.expand(extrapath + generate_sstatefn(spec, gethash(tid), tname, siginfo, False, d))
>              evdata['found'].append((bb.runqueue.fn_from_tid(tid), bb.runqueue.taskname_from_tid(tid), gethash(tid), sstatefile ) )
>          bb.event.fire(bb.event.MetadataEvent("MissedSstate", evdata), d)
>
> diff --git a/scripts/sstate-cache-management.sh b/scripts/sstate-cache-management.sh
> index f1706a2229..61c7f9f763 100755
> --- a/scripts/sstate-cache-management.sh
> +++ b/scripts/sstate-cache-management.sh
> @@ -114,7 +114,7 @@ echo_error () {
>  # * Add .done/.siginfo to the remove list
>  # * Add destination of symlink to the remove list
>  #
> -# $1: output file, others: sstate cache file (.tgz)
> +# $1: output file, others: sstate cache file (.tgz or .tar.zstd)
>  gen_rmlist (){
>    local rmlist_file="$1"
>    shift
> @@ -131,13 +131,13 @@ gen_rmlist (){
>                dest="`readlink -e $i`"
>                if [ -n "$dest" ]; then
>                    echo $dest >> $rmlist_file
> -                  # Remove the .siginfo when .tgz is removed
> +                  # Remove the .siginfo when .tgz or .tar.zst is removed
>                    if [ -f "$dest.siginfo" ]; then
>                        echo $dest.siginfo >> $rmlist_file
>                    fi
>                fi
>            fi
> -          # Add the ".tgz.done" and ".siginfo.done" (may exist in the future)
> +          # Add the ".tgz.done" or ".tar.zst.done" and ".siginfo.done" (may exist in the future)
>            base_fn="${i##/*/}"
>            t_fn="$base_fn.done"
>            s_fn="$base_fn.siginfo.done"
> @@ -188,10 +188,10 @@ remove_duplicated () {
>    total_files=`find $cache_dir -name 'sstate*' | wc -l`
>    # Save all the sstate files in a file
>    sstate_files_list=`mktemp` || exit 1
> -  find $cache_dir -name 'sstate:*:*:*:*:*:*:*.tgz*' >$sstate_files_list
> +  find $cache_dir -name 'sstate:*:*:*:*:*:*:*.tgz*' -o -iname 'sstate:*:*:*:*:*:*:*.tar.zst*' >$sstate_files_list
>
>    echo "Figuring out the suffixes in the sstate cache dir ... "
> -  sstate_suffixes="`sed 's%.*/sstate:[^:]*:[^:]*:[^:]*:[^:]*:[^:]*:[^:]*:[^_]*_\([^:]*\)\.tgz.*%\1%g' $sstate_files_list | sort -u`"
> +  sstate_suffixes="`sed 's%.*/sstate:[^:]*:[^:]*:[^:]*:[^:]*:[^:]*:[^:]*:[^_]*_\([^:]*\)\.\(tgz\|tar\.\zst\).*%\1%g' $sstate_files_list | sort -u`"
>    echo "Done"
>    echo "The following suffixes have been found in the cache dir:"
>    echo $sstate_suffixes
> @@ -200,10 +200,10 @@ remove_duplicated () {
>    # Using this SSTATE_PKGSPEC definition it's 6th colon separated field
>    # SSTATE_PKGSPEC    = "sstate:${PN}:${PACKAGE_ARCH}${TARGET_VENDOR}-${TARGET_OS}:${PV}:${PR}:${SSTATE_PKGARCH}:${SSTATE_VERSION}:"
>    for arch in $all_archs; do
> -      grep -q ".*/sstate:[^:]*:[^:]*:[^:]*:[^:]*:$arch:[^:]*:[^:]*\.tgz$" $sstate_files_list
> +      grep -q ".*/sstate:[^:]*:[^:]*:[^:]*:[^:]*:$arch:[^:]*:[^:]*\.\(tgz\|tar\.\zst\)$" $sstate_files_list
>        [ $? -eq 0 ] && ava_archs="$ava_archs $arch"
>        # ${builder_arch}_$arch used by toolchain sstate
> -      grep -q ".*/sstate:[^:]*:[^:]*:[^:]*:[^:]*:${builder_arch}_$arch:[^:]*:[^:]*\.tgz$" $sstate_files_list
> +      grep -q ".*/sstate:[^:]*:[^:]*:[^:]*:[^:]*:${builder_arch}_$arch:[^:]*:[^:]*\.\(tgz\|tar\.zst\)$" $sstate_files_list
>        [ $? -eq 0 ] && ava_archs="$ava_archs ${builder_arch}_$arch"
>    done
>    echo "Done"
> @@ -219,13 +219,13 @@ remove_duplicated () {
>            continue
>        fi
>        # Total number of files including .siginfo and .done files
> -      total_files_suffix=`grep ".*/sstate:[^:]*:[^:]*:[^:]*:[^:]*:[^:]*:[^:]*:[^:_]*_$suffix\.tgz.*" $sstate_files_list | wc -l 2>/dev/null`
> -      total_tgz_suffix=`grep ".*/sstate:[^:]*:[^:]*:[^:]*:[^:]*:[^:]*:[^:]*:[^:_]*_$suffix\.tgz$" $sstate_files_list | wc -l 2>/dev/null`
> +      total_files_suffix=`grep ".*/sstate:[^:]*:[^:]*:[^:]*:[^:]*:[^:]*:[^:]*:[^:_]*_$suffix\.\(tgz\|tar\.zst\).*" $sstate_files_list | wc -l 2>/dev/null`
> +      total_archive_suffix=`grep ".*/sstate:[^:]*:[^:]*:[^:]*:[^:]*:[^:]*:[^:]*:[^:_]*_$suffix\.\(tgz\|tar\.zst\)$" $sstate_files_list | wc -l 2>/dev/null`
>        # Save the file list to a file, some suffix's file may not exist
> -      grep ".*/sstate:[^:]*:[^:]*:[^:]*:[^:]*:[^:]*:[^:]*:[^:_]*_$suffix\.tgz.*" $sstate_files_list >$list_suffix 2>/dev/null
> -      local deleted_tgz=0
> +      grep ".*/sstate:[^:]*:[^:]*:[^:]*:[^:]*:[^:]*:[^:]*:[^:_]*_$suffix\.\(tgz\|tar\.zst\).*" $sstate_files_list >$list_suffix 2>/dev/null
> +      local deleted_archives=0
>        local deleted_files=0
> -      for ext in tgz tgz.siginfo tgz.done; do
> +      for ext in tgz tgz.siginfo tgz.done tar.zst tar.zst.siginfo tar.zst.done; do
>            echo "Figuring out the sstate:xxx_$suffix.$ext ... "
>            # Uniq BPNs
>            file_names=`for arch in $ava_archs ""; do
> @@ -268,19 +268,19 @@ remove_duplicated () {
>                done
>            done
>        done
> -      deleted_tgz=`cat $rm_list.* 2>/dev/null | grep ".tgz$" | wc -l`
> +      deleted_archives=`cat $rm_list.* 2>/dev/null | grep ".\(tgz\|tar\.zst\)$" | wc -l`
>        deleted_files=`cat $rm_list.* 2>/dev/null | wc -l`
>        [ "$deleted_files" -gt 0 -a $debug -gt 0 ] && cat $rm_list.*
> -      echo "($deleted_tgz out of $total_tgz_suffix .tgz files for $suffix suffix will be removed or $deleted_files out of $total_files_suffix when counting also .siginfo and .done files)"
> +      echo "($deleted_archives out of $total_archives_suffix .tgz or .tar.zst files for $suffix suffix will be removed or $deleted_files out of $total_files_suffix when counting also .siginfo and .done files)"
>        let total_deleted=$total_deleted+$deleted_files
>    done
> -  deleted_tgz=0
> +  deleted_archives=0
>    rm_old_list=$remove_listdir/sstate-old-filenames
> -  find $cache_dir -name 'sstate-*.tgz' >$rm_old_list
> -  [ -s "$rm_old_list" ] && deleted_tgz=`cat $rm_old_list | grep ".tgz$" | wc -l`
> +  find $cache_dir -name 'sstate-*.tgz' -o -name 'sstate-*.tar.zst' >$rm_old_list
> +  [ -s "$rm_old_list" ] && deleted_archives=`cat $rm_old_list | grep ".\(tgz\|tar\.zst\)$" | wc -l`
>    [ -s "$rm_old_list" ] && deleted_files=`cat $rm_old_list | wc -l`
>    [ -s "$rm_old_list" -a $debug -gt 0 ] && cat $rm_old_list
> -  echo "($deleted_tgz .tgz files with old sstate-* filenames will be removed or $deleted_files when counting also .siginfo and .done files)"
> +  echo "($deleted_archives .tgz or .tar.zst files with old sstate-* filenames will be removed or $deleted_files when counting also .siginfo and .done files)"
>    let total_deleted=$total_deleted+$deleted_files
>
>    rm -f $list_suffix
> @@ -289,7 +289,7 @@ remove_duplicated () {
>        read_confirm
>        if [ "$confirm" = "y" -o "$confirm" = "Y" ]; then
>            for list in `ls $remove_listdir/`; do
> -              echo "Removing $list.tgz (`cat $remove_listdir/$list | wc -w` files) ... "
> +              echo "Removing $list archive (`cat $remove_listdir/$list | wc -w` files) ... "
>                # Remove them one by one to avoid the argument list too long error
>                for i in `cat $remove_listdir/$list`; do
>                    rm -f $verbose $i
> @@ -322,7 +322,7 @@ rm_by_stamps (){
>    find $cache_dir -type f -name 'sstate*' | sort -u -o $cache_list
>
>    echo "Figuring out the suffixes in the sstate cache dir ... "
> -  local sstate_suffixes="`sed 's%.*/sstate:[^:]*:[^:]*:[^:]*:[^:]*:[^:]*:[^:]*:[^_]*_\([^:]*\)\.tgz.*%\1%g' $cache_list | sort -u`"
> +  local sstate_suffixes="`sed 's%.*/sstate:[^:]*:[^:]*:[^:]*:[^:]*:[^:]*:[^:]*:[^_]*_\([^:]*\)\.\(tgz\|tar\.zst\).*%\1%g' $cache_list | sort -u`"
>    echo "Done"
>    echo "The following suffixes have been found in the cache dir:"
>    echo $sstate_suffixes
> --
> 2.30.2
>
>
> 
>
