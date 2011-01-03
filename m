Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id D08004C80B70
	for <poky@yoctoproject.org>; Mon,  3 Jan 2011 13:56:51 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iyb26 with SMTP id 26so14793700iyb.35
	for <poky@yoctoproject.org>; Mon, 03 Jan 2011 11:56:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:received:received:in-reply-to
	:references:date:message-id:subject:from:to:cc:content-type;
	bh=jJ9KBYvo7eszjrLGpuUNiyc3ox8vh3uD3aMtBHo0zEI=;
	b=dtpe4YTtEZqdYg70oiPqEg2cl+MfUOBnI9C3CE5QXM3r3d/wfyRExbmaDTaEicTfqO
	Fw/sjlrveremAgMLvUL7IUbLqP6csKXaEUen38DUqZ2l0taFfej8oK2gzJA6Yzmt+yCe
	ConphGV4SvckSWHYFsS+Xcj87k4yx/oij9yec=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	b=wjhRUUcnLVFbF8Y0etzm3KAcBTsYlT3y+guf4ej+tBFyCfMxJEcKXzJJJsiJgmtVqN
	4E2NT+NJmBQy/L3HdcQDBevNqpUDMMRsfUdoZ0vGZPhpCdWm7N780EjYqDePMGDeGSnJ
	IRhAZgp4KJUv7akO1f7fm2cWxx6WjH8BUg/X4=
MIME-Version: 1.0
Received: by 10.231.35.131 with SMTP id p3mr20652906ibd.87.1294084605364; Mon,
	03 Jan 2011 11:56:45 -0800 (PST)
Received: by 10.231.156.136 with HTTP; Mon, 3 Jan 2011 11:56:45 -0800 (PST)
In-Reply-To: <4D222946.1070704@linux.intel.com>
References: <4D222946.1070704@linux.intel.com>
Date: Mon, 3 Jan 2011 14:56:45 -0500
Message-ID: <AANLkTimbjZ-J46qz+-0VAWoPPMyrWyjOKfmNt_xmOBHU@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Darren Hart <dvhart@linux.intel.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: linux-yocto for atom-pc configuration error
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
X-List-Received-Date: Mon, 03 Jan 2011 19:56:52 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Mon, Jan 3, 2011 at 2:53 PM, Darren Hart <dvhart@linux.intel.com> wrote:
> Bruce et all,
>
> I noticed ftrace and debugfs are not enabled in the standard branch as they
> are in the 2.6.34 repo. I've added debugfs and ftrace features to the meta
> branch and am trying to build the linux-yocto image.
>
> First I hit an issue where it was looking for standard/atom-pc - instead of
> standard/common-pc/atom-pc. I fixed this in linux-yocto_git.bb. Now I hit
> this during do_kernel_configme. I am using the meta-kernel-dev layer and a
> local repository for the kernel tools as well as the kernel repository.
>
> [INFO] doing kernel configme
> [INFO] Finding user(s) of branch "yocto/standard/common-pc/atom-pc"
> [INFO] Finding user(s) of target -- atom-pc -- common-pc -
> [INFO] Branch yocto/standard/common-pc/atom-pc used by atom-pc-standard.scc
> Failed to find meta series ./meta/cfg/meta/atom-pc-standard-meta
> config of yocto/standard/common-pc/atom-pc (atom-pc-standard.scc) failed
> ERROR: Task failed: ('function do_kernel_configme failed',
> '/vol/1/dvhart/poky.git/build/tmp/work/atom-pc-poky-linux/linux-yocto-2.6.37+git0+ee0a10ab687b29c4d22d47e5b28bc8b3ebb7a8d9_0+87aacc373557f8849dde8618fbe1f7f8f2af6038-r14/temp/log.do_kernel_configme.23114')
>
> Any thoughts on where to jump in and start debugging?

You are ahead of the cart here. I've got a whole set of updates that haven't
been pushed yet. So far 2.6.37 and related tools only work for the qemu*
targets, and this would be "expected".

I'd say wait for my changes, since they are already done, but I won't be in
the office full time until tomorrow to send anything out.

Bruce

>
> --
> Darren Hart
> Yocto Linux Kernel
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>



-- 
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

