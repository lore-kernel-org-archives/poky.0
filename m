Return-Path: <JPEWhacker@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F3576C36000
	for <webhook@archiver.kernel.org>; Thu, 20 Mar 2025 14:01:48 +0000 (UTC)
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
 by mx.groups.io with SMTP id smtpd.web11.8392.1742479300604336088
 for <poky@lists.yoctoproject.org>;
 Thu, 20 Mar 2025 07:01:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=fuTzurM9;
 spf=pass (domain: gmail.com, ip: 209.85.167.48, mailfrom: jpewhacker@gmail.com)
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-54991d85f99so2142869e87.1
        for <poky@lists.yoctoproject.org>; Thu, 20 Mar 2025 07:01:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1742479299; x=1743084099; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RLo50r4z+9n4KL1biEzMVnur5IPXFxrO0thmRNuKCKI=;
        b=fuTzurM9K+ub6VCxaPaVo7g8S98iNBMVJnCHbsPouNxKjEBDx47BO6LsLHXNa03mMU
         JKATTdxFkwXN6OMTIDRFJsIbhKwM4pgh0aVAMCQlXtjbCd1mHdyOQ6rKodiy6MPvDiyR
         Kvmzc5SDKENGJWPglwE/eEOwkh9H26tzoNvrjPxqG54fjsYvVP+3CMxywQybmY+hMitB
         ovPoysC77imRaR9IlN25Zznh1LoPW4Zci63ikq0c9YEiOMGTIzXPsyuyxGNz7Z7v6UUa
         1Z9SvRVmf5xDKXpmCbPh9pVPwCvfOVc63pwlJ0WqUcb7WL27TPlI4lTu0YendJUC7Uf/
         NLUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742479299; x=1743084099;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RLo50r4z+9n4KL1biEzMVnur5IPXFxrO0thmRNuKCKI=;
        b=mtGTn2xNa5rSdZ3tMbTNjquOTbL7/0EBcYzV7saeEbCWV3C9sAB/23YsGQvvTBKg3L
         z6HFYpOItcHr11H6qToEpikMDo+3YSOI5Xai8JMfZzDtSzM2jHEDcIRruOdLQhvcru+d
         YfOjbyNetlefSo5SFKrm2JU8H8hFlisAEh58G73gTu/g979HgjyVvjZBT2tvVtrUhXIQ
         k2cy5gloo/ENNlCNHPB6T8msAMnLhe68CDY62nMcKTqdcxYMI8SKjUfGgS4hfkZElHXD
         DN5uqjiTVdelWtvmadCBSTR0Eoyzvu7BiAeMGrWPiXCMWZmyzu+OW/LCpc4Mm8LRb4ur
         ZkLA==
X-Forwarded-Encrypted: i=1; AJvYcCVg2Blp7Tul+gr4jtMj4mJhwedpDXqWNgfvJOq/ilfjK53SJtyAhut1xokphRsZpSAK3DF+@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YwQURBUYe+fjo1YJYOjM85wQp8/Zz4ZiYksTClBb+7ut4n4TFcd
	gzGw4W5oqnSnhwnFe3KW+N1mk3KngWE0OvaTE4n8HOpMs7jyq6+KhU9nK5vhJOTul6GCLh0ZdNr
	3oOJ0Ojcn/+a+HrzCpjI9Dk9TZjY=
X-Gm-Gg: ASbGncupvrCtv/F2XlF1ABb0PH3OATXKoGi7BtdpCRKwN2Oy/8LFitUg/1pDSnfFPGb
	LUNzgzDLAIo9zd3v17JW1nDfIIZZLoVG1Hwjkzu3H2tEBQ9Ce1mHsNwRHJZ2RksrdGDuldW3L5n
	4QhKMOB64QRcs3a7PQbfzIlnsqpvY=
X-Google-Smtp-Source: AGHT+IGWzHODzrok+ZmMlpRXDNAck1Rg1PqEZhwBCZTkYmC2BsVplwUmQbq27FkSoB1zoqHRmoapw1xDRZlfvKsdaeU=
X-Received: by 2002:a05:6512:e9c:b0:545:2474:2c9b with SMTP id
 2adb3069b0e04-54acfac93ecmr1596054e87.22.1742479296702; Thu, 20 Mar 2025
 07:01:36 -0700 (PDT)
MIME-Version: 1.0
References: <8OKr.1742469855469420609.ChUh@lists.yoctoproject.org> <AS1PR10MB5697E40D7D3212866F3BAF7FFDD82@AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM>
In-Reply-To: <AS1PR10MB5697E40D7D3212866F3BAF7FFDD82@AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM>
From: Joshua Watt <jpewhacker@gmail.com>
Date: Thu, 20 Mar 2025 08:01:24 -0600
X-Gm-Features: AQ5f1Jq9nDCBxh94RKc3QunO__7CwGgZHSDYHsw0pSQVLExhZ6jP9YAa4fQzLgY
Message-ID: <CAJdd5GbdqvuxwLTxhK_FLCtxTtet+S7VsY1jZVY91BKnmP0yPg@mail.gmail.com>
Subject: Re: [poky] Problem creating spdx #poky #bitbake #spdx
To: "Marko, Peter" <Peter.Marko@siemens.com>
Cc: "thomas-kilian@gmx.net" <thomas-kilian@gmx.net>, 
	"poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 20 Mar 2025 14:01:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13574

On Thu, Mar 20, 2025 at 6:27=E2=80=AFAM Marko, Peter <Peter.Marko@siemens.c=
om> wrote:
>
> I have sent a patch for spdx-3.
>
>
>
> Spdx-2.2 was broken by https://git.openembedded.org/openembedded-core/com=
mit/?id=3Deb597bf61cbcb0a4d43149404c93eec0894fb4c7

I can update the SPDX 2.2 code to use the deps

>
> This commit seems to have more things wrong:
>
> * not adapting spdx-2.2 codebase
>
> * importing spdx30_tasks in init even if spdx-2.2 (or no spdx) is used

This is needed so that bitbake can properly track the variable
dependencies in the Python code used by SPDX 3. It shouldn't affect
any output, regardless of whether SPDX 3, SPDX 2.2, or no SPDX is
used.

>
> Unless there is an easy fix, it should be probably reverted.

It should be an easy fix.

>
>
>
> Problem with spdx-2.2 is that it=E2=80=99s not enabled so also not tested=
.
>
> I think it should be either added to tests or removed completely as it wi=
ll get broken a lot when extending spdx-3 code.

It has tests, see meta/lib/oeqa/selftest/cases/spdx.py. I'm not sure
why the test case didn't catch this though; I'll take a look at that
also.

>
>
>
> Peter
>
>
>
>
>
> From: poky@lists.yoctoproject.org <poky@lists.yoctoproject.org> On Behalf=
 Of Thomas Kilian via lists.yoctoproject.org
> Sent: Thursday, March 20, 2025 12:24
> To: poky@lists.yoctoproject.org
> Subject: [poky] Problem creating spdx #poky #bitbake #spdx
>
>
>
> Hi,
>
>
>
> On Poky master when I have a root filesystem containing symlinks i get th=
e following spdx creation error:
>
>
>
> ERROR: image-debug-1.0-r0 do_create_rootfs_spdx: Error executing a python=
 function in exec_func_python() autogenerated:
>
> The stack trace of python calls that resulted in this exception/failure w=
as:
> File: 'exec_func_python() autogenerated', lineno: 2, function: <module>
>      0001:
>  *** 0002:do_create_rootfs_spdx(d)
>      0003:
> File: '/workspaces/build/../sources/poky/meta/classes-recipe/create-spdx-=
image-3.0.bbclass', lineno: 31, function: do_create_rootfs_spdx
>      0027:ROOTFS_POSTUNINSTALL_COMMAND =3D+ "spdx_collect_rootfs_packages=
"
>      0028:
>      0029:python do_create_rootfs_spdx() {
>      0030:    import oe.spdx30_tasks
>  *** 0031:    oe.spdx30_tasks.create_rootfs_spdx(d)
>      0032:}
>      0033:addtask do_create_rootfs_spdx after do_rootfs before do_image
>      0034:SSTATETASKS +=3D "do_create_rootfs_spdx"
>      0035:do_create_rootfs_spdx[sstate-inputdirs] =3D "${SPDXROOTFSDEPLOY=
}"
> File: '/workspaces/build/../sources/poky/meta/lib/oe/spdx30_tasks.py', li=
neno: 1071, function: create_rootfs_spdx
>      1067:        dirnames.sort()
>      1068:        filenames.sort()
>      1069:        for fn in filenames:
>      1070:            fpath =3D Path(dirpath) / fn
>  *** 1071:            if not fpath.is_file() or fpath.is_symlink():
>      1072:                continue
>      1073:
>      1074:            relpath =3D str(fpath.relative_to(image_rootfs))
>      1075:            h =3D bb.utils.sha256_file(fpath)
> File: '/usr/lib/python3.12/pathlib.py', lineno: 894, function: is_file
>      0890:        Whether this path is a regular file (also True for syml=
inks pointing
>      0891:        to regular files).
>      0892:        """
>      0893:        try:
>  *** 0894:            return S_ISREG(self.stat().st_mode)
>      0895:        except OSError as e:
>      0896:            if not _ignore_error(e):
>      0897:                raise
>      0898:            # Path doesn't exist or is a broken symlink
> File: '/usr/lib/python3.12/pathlib.py', lineno: 842, function: stat
>      0838:        """
>      0839:        Return the result of the stat() system call on this pat=
h, like
>      0840:        os.stat() does.
>      0841:        """
>  *** 0842:        return os.stat(self, follow_symlinks=3Dfollow_symlinks)
>      0843:
>      0844:    def lstat(self):
>      0845:        """
>      0846:        Like stat(), except if the path points to a symlink, th=
e symlink's
> Exception: PermissionError: [Errno 13] Permission denied: '/workspaces/bu=
ild/tmp/work/poky-linux/image-debug/1.0/rootfs/root/.vs-debugger/vs2019'
>
>
>
> This could be fixed if the check order in spdx30_tasks.py is switched to
>
> 1071:            if not fpath.is_symlink() or fpath.is_file():
>
>
>
> If I use "create-spdx-2.2.bbclass" I get the following error:
>
>
>
> ERROR: m4-native-1.4.19-r0 do_create_spdx: Error executing a python funct=
ion in exec_func_python() autogenerated:
>
> The stack trace of python calls that resulted in this exception/failure w=
as:
> File: 'exec_func_python() autogenerated', lineno: 2, function: <module>
>      0001:
>  *** 0002:do_create_spdx(d)
>      0003:
> File: '/workspaces/build/../sources/poky/meta/classes/create-spdx-2.2.bbc=
lass', lineno: 509, function: do_create_spdx
>      0505:
>      0506:            if archive is not None:
>      0507:                recipe.packageFileName =3D str(recipe_archive.n=
ame)
>      0508:
>  *** 0509:    dep_recipes =3D collect_dep_recipes(d, doc, recipe)
>      0510:
>      0511:    doc_sha1 =3D oe.sbom.write_doc(d, doc, pkg_arch, "recipes",=
 indent=3Dget_json_indent(d))
>      0512:    dep_recipes.append(oe.sbom.DepRecipe(doc, doc_sha1, recipe)=
)
>      0513:
> File: '/workspaces/build/../sources/poky/meta/classes/create-spdx-2.2.bbc=
lass', lineno: 282, function: collect_dep_recipes
>      0278:    dep_recipes =3D []
>      0279:
>      0280:    deps =3D oe.spdx_common.get_spdx_deps(d)
>      0281:
>  *** 0282:    for dep_pn, dep_hashfn, in_taskhash in deps:
>      0283:        # If this dependency is not calculated in the taskhash =
skip it.
>      0284:        # Otherwise, it can result in broken links since this t=
ask won't
>      0285:        # rebuild and see the new SPDX ID if the dependency cha=
nges
>      0286:        if not in_taskhash:
> Exception: TypeError: cannot unpack non-iterable Dep object
>
> ERROR: Logfile of failure stored in: /workspaces/build/tmp/work/x86_64-li=
nux/m4-native/1.4.19/temp/log.do_create_spdx.213270
> ERROR: Task (/workspaces/build/../sources/poky/meta/recipes-devtools/m4/m=
4-native_1.4.19.bb:do_create_spdx) failed with exit code '1'
>
> What can I do to get the spdx creation working again?
>
>
>
>
>
> Greetings,
>
> Thomas Kilian

