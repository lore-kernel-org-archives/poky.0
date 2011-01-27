Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6731F4C81210
	for <poky@yoctoproject.org>; Thu, 27 Jan 2011 05:13:56 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0RBFpSB026216; Thu, 27 Jan 2011 11:15:51 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id Qpip4xuuPxMx; Thu, 27 Jan 2011 11:15:50 +0000 (GMT)
Received: from [192.168.1.45] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0RBFk0U026203
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Thu, 27 Jan 2011 11:15:48 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Dongxiao Xu <dongxiao.xu@intel.com>
In-Reply-To: <7a0a83046957272a5575afafe615a47c57eb5b85.1296115229.git.dongxiao.xu@intel.com>
References: <cover.1296115229.git.dongxiao.xu@intel.com>
	<7a0a83046957272a5575afafe615a47c57eb5b85.1296115229.git.dongxiao.xu@intel.com>
Date: Thu, 27 Jan 2011 11:13:23 +0000
Message-ID: <1296126803.27814.7071.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 2/3] rm_work.bbclass: handle stamp files while doing rm_work
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
X-List-Received-Date: Thu, 27 Jan 2011 11:13:56 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2011-01-27 at 16:04 +0800, Dongxiao Xu wrote:
> diff --git a/meta/classes/rm_work.bbclass b/meta/classes/rm_work.bbclass
> index 260ecb0..a151f4c 100644
> --- a/meta/classes/rm_work.bbclass
> +++ b/meta/classes/rm_work.bbclass
> @@ -26,6 +26,23 @@ do_rm_work () {
>      # Need to add pseudo back or subsqeuent work in this workdir
>      # might fail since setscene may not rerun to recreate it
>      mkdir ${WORKDIR}/pseudo/
> +
> +    rm -rf `ls ${STAMP}* | grep -v sigdata | grep -v do_populate_sysroot | grep -v do_package` ${STAMP}.do_package_write
> +
> +    for stamp in `ls ${STAMP}* | grep do_package_write_* | grep -v setscene`
> +    do
> +        mv $stamp $stamp\_setscene
> +    done
> +
> +    for task in do_populate_sysroot do_package
> +    do
> +        if [ -e ${STAMP}.$task ]; then
> +            mv ${STAMP}.$task ${STAMP}.$task\_setscene
> +        elif [ -e ${STAMP}.$task.${MACHINE} ]; then
> +            mv ${STAMP}.$task.${MACHINE} ${STAMP}.$task\_setscene.${MACHINE}
> +        fi
> +    done
> +
>  }
>  addtask rm_work after do_${RMWORK_ORIG_TASK}

This is the right approach, however, if I set BB_SIGNATURE_HANDLER =
"basichash" it will break since the stamps then look like:

ncurses-5.7-r0.do_populate_sysroot.59a5b1c1ce0a1bab23be44c27ba308a5.qemux86

and also, if we add new tasks to sstate, this code would then need to be
updated with the new tasknames.

I ended up writing http://git.pokylinux.org/cgit.cgi/poky/commit/?id=e8e9f56057f3732d2550375a23573ab7231eac22
which I merged into master to address the problem since its breaking the
autobuilder and people's builds out there. I'd have thought there would
be a neater way to do this but I can't find one at the moment. Any
improvements anyone can see are welcome.

Cheers,

Richard




