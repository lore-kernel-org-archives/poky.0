Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.1664.1582397200554708886
 for <poky@lists.yoctoproject.org>;
 Sat, 22 Feb 2020 10:46:40 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=rZhr8NtM;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: raj.khem@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 26826E0173C; Sat, 22 Feb 2020 10:46:40 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.222.172 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com [209.85.222.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CBC66E01739;
	Sat, 22 Feb 2020 10:46:36 -0800 (PST)
Received: by mail-qk1-f172.google.com with SMTP id c188so5140920qkg.4;
        Sat, 22 Feb 2020 10:46:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=rVM/NlpQKJQWt0WOLXJjClKLOZRTotlkGRfffHd2nV8=;
        b=rZhr8NtMPmjWEJG5XVyfe0sopTFDCOzucDBlogBG7uKoxcY6X+TBMicKjUKd3x6kN9
         TfsJ5JFVIj9x/bkEMsgDIksFRG6k3T8Fnw2HWNG3+joG/BsLrYEfpc6SdaMcvBao+fyF
         OC/Yl5ugDnicj8gMyy1iML5fMKNjwqhXQxGpxBGoy6r49scmoB97hcnZuecUWf/pkUvh
         j+wKqvWLJc/SunOuyZyUmPqucbwFIRbBPUO7lB39JAqvtT33mTUm8XVFQbiLFq/pbzam
         XtWMb7n5IEmbu01HI1OmerzvSBBvET/IqarKZynqlFi8LBUN5bXcym9z4QYjxw9ugiPY
         KvQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=rVM/NlpQKJQWt0WOLXJjClKLOZRTotlkGRfffHd2nV8=;
        b=t3XzI/CC7fs3vjy1z5NRA8Q28aA3YSdkgwgz2qnNsxTxibAECDW4q6gzLhisrUVAqO
         VlcPaqf5pQjYPatZ0QLOuw9xZARj0GLyblouSs20LHQgvhNLXitGrZhF/fcY89IFW2LW
         jM6qOqMMQxS5dvW7ZvZ2ulouoQdB5W9Ei/ty+j7Bq3eejjPW9RG0gCbSHTj0cqg5Oe31
         9pxwTwlDZDFK8M9wUkTO2OGL7VmfV+8RDF+tMhDVwy9ZY7QK2j8qIsA4tis74Eo//VZ9
         /WztdPEeSsKOx/GyXEI5QalFqrKRTE5RBKQJylHgjC0FbrcUwAhtRFZ2sdjX2jlEfSQB
         o6jQ==
X-Gm-Message-State: APjAAAUWkMxIVdO1WjbDW2lMg9eV4D9u+OB7dXqviDtt/GRl4/L/gwzg
	JIEIfz0KXfpqjnwcb33rZAC31CmgWo6T4+ghWy4=
X-Google-Smtp-Source: APXvYqwHrBnnuw/J91ScsJ0rweDaQslj4BMyTHLzwBho1l39U7YiARWLPKU1LIdutgdBo2yOqOnQLyoG43lP/TI4Mmk=
X-Received: by 2002:a37:e47:: with SMTP id 68mr17038054qko.17.1582397195468;
 Sat, 22 Feb 2020 10:46:35 -0800 (PST)
MIME-Version: 1.0
References: <CALd6x_t8_hjHCH1vGuq98mJOi65VMsRXwYycNpwt+6BfrmTHYA@mail.gmail.com>
In-Reply-To: <CALd6x_t8_hjHCH1vGuq98mJOi65VMsRXwYycNpwt+6BfrmTHYA@mail.gmail.com>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Sat, 22 Feb 2020 10:46:22 -0800
Message-ID: <CAMKF1sqP9=a5ob+m6XkkzDk=B5W0ezT15QRp_fGttZkyU-MwmA@mail.gmail.com>
Subject: Re: [poky] gcc error: unrecognized command line option -fno-trampolines
To: pavan <pawan4749@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>, Poky Project <poky@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Feb 22, 2020 at 4:13 AM pavan <pawan4749@gmail.com> wrote:
>
> Hi Team,
>
> grub is failing while compiling.
> Error Log is as follows:
> ERROR: grub-efi-native-2.04-3 do_compile: oe_runmake failed
> ERROR: grub-efi-native-2.04-3 do_compile: Execution of '
> /build/tmp-glibc/work/x86_64-linux/grub-efi-native/2.04-3/temp/run.do_co=
mpile.26150' failed with exit code 1:
> make: 'grub_script.tab.h' is up to date.
> make: Nothing to be done for 'grub_script.tab.c'.
> make: 'grub_script.yy.h' is up to date.
> make: Nothing to be done for 'grub_script.yy.c'.
> gcc  -DHAVE_CONFIG_H -I. -I../git  -Wall -W -DGRUB_UTIL=3D1 -D_FILE_OFFS=
ET_BITS=3D64 -I./include -DGRUB_FILE=3D\"grub-core/commands/blocklist.c\" -=
I. -I../git -I. -I../git -I../git/include -I./include -I../git/grub-core/li=
b/libgcrypt-grub/src/ -Wall -W -DGRUB_UTIL=3D1 -D_FILE_OFFSET_BITS=3D64 -I.=
/include -I../git/grub-core/lib/minilzo -I../git/grub-core/lib/xzembed -I..=
/git/grub-core/lib/zstd -DMINILZO_HAVE_CONFIG_H  -fno-builtin-gettext -Wall=
 -W -Wshadow -Wpointer-arith -Wundef -Wchar-subscripts -Wcomment -Wdeprecat=
ed-declarations -Wdisabled-optimization -Wdiv-by-zero -Wfloat-equal -Wforma=
t-extra-args -Wformat-security -Wformat-y2k -Wimplicit -Wimplicit-function-=
declaration -Wimplicit-int -Wmain -Wmissing-braces -Wmissing-format-attribu=
te -Wmultichar -Wparentheses -Wreturn-type -Wsequence-point -Wshadow -Wsign=
-compare -Wswitch -Wtrigraphs -Wunknown-pragmas -Wunused -Wunused-function =
-Wunused-label -Wunused-parameter -Wunused-value  -Wunused-variable -Wwrite=
-strings -Wnested-externs -Wstrict-prototypes -Wcast-align  -Wextra -Wattri=
butes -Wendif-labels -Winit-self -Wint-to-pointer-cast -Winvalid-pch -Wmiss=
ing-field-initializers -Wnonnull -Woverflow -Wvla -Wpointer-to-int-cast -Ws=
trict-aliasing -Wvariadic-macros -Wvolatile-register-var -Wpointer-sign -Wm=
issing-include-dirs -Wmissing-prototypes -Wmissing-declarations -Wformat=3D=
2 -Wextra -Werror=3Dtrampolines -fno-trampolines -fno-builtin -Wno-undef  -=
c -o grub-core/commands/libgrubmods_a-blocklist.o `test -f 'grub-core/comma=
nds/blocklist.c' || echo '../git/'`grub-core/commands/blocklist.c
>
> gcc: error: unrecognized command line option '-fno-trampolines'; did you=
 mean '-Wno-trampolines'?
> Makefile:9084: recipe for target 'grub-core/commands/libgrubmods_a-block=
list.o' failed
> make: *** [grub-core/commands/libgrubmods_a-blocklist.o] Error 1
> My gcc version is 5.
> I tried with installing updated gcc versions -7,-8, -9, but still facing=
 this issue.
> Please let me know, how to resolve this.

perhaps you are using an old distro to compile new yocto. This option
may not exist in gcc5, so perhaps you should write a patch to grub-efi
to remove using these options in configure.ac and conf/Makefile.common
and perhaps only apply this patch when building native or nativesdk
variant.


> Thanks in Advance
>
> Regards,
> PK
>
>
>=20
