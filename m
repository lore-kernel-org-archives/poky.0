Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com [209.85.160.171])
 by mx.groups.io with SMTP id smtpd.web10.11998.1644943726562850634
 for <poky@lists.yoctoproject.org>;
 Tue, 15 Feb 2022 08:48:46 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=NPNrlHnE;
 spf=pass (domain: gmail.com, ip: 209.85.160.171, mailfrom: raj.khem@gmail.com)
Received: by mail-qt1-f171.google.com with SMTP id j12so19169378qtr.2
        for <poky@lists.yoctoproject.org>; Tue, 15 Feb 2022 08:48:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=6BBj98pwEzs584PGiIZ+Nduh3ZBT2xuBc9V6PMR9LY8=;
        b=NPNrlHnE7aMdk0PqwfKxODArUJceUn8gQRV6p/6ulddU6CeKBoIyTxDGAWCsfTqJF2
         PtgQ46ulkerFXXBfMdtgqN+Ulj8VSJUAsKa6eQu2Vvo8qejw3yzQNqs9ZsR5IDS1o541
         /ts53NztEAuRnLs4y+OuxBjMI6nR3eyHLfZrx2qOVk9hmkWJh//DYrwQvF0PiQUUuoNY
         8v3s+MldMkFDCert3dr6Mf/lzlmSnyXqbli8q5iKaYVf9hvjCA62FkRZEo6rhem4GW7M
         4PSUFWH0ZF7QBLTIGSmltTW/ynWC7GchzgRYctk4fL92iKWWaZgWasN7JSZbN9Y9malm
         1Qqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=6BBj98pwEzs584PGiIZ+Nduh3ZBT2xuBc9V6PMR9LY8=;
        b=RkgdFQBYcbSx6Hvr1cgn9EnEH2YQLRZsL4tOjmVajOS3VtRk2XzKLxdZ0doRJLiI3s
         IccBx0Gw+RmolOszjug8g3+Hq5T3ozXTgDFiQqZ/HoL2u85a1oeUezR9+TBkSiIS7UJl
         iMyxn58gl8Ucu8bb/dE7n6NVdY/4yHLIHBGAM5rdXH6zjYT3kGFvrcw4y+oTeZAFX3j3
         3NlJ+boBkCDU3FFYa/77ZVYWkde1PW0EU+XcfjGrtrrE082tfGMBQ4hbxbhXbdrb3mjG
         6u61ltbaw2T/PiEkn3zvxT6Zb5mTUBc8E26BpX9UDYZnIA3EaxOK7yB8YPhVnrPIcOHe
         GkCQ==
X-Gm-Message-State: AOAM533Gyhvt6tCt2iZC7IDyGhhvaQFz+UApdVOn/mxh06YuEONAVGbp
	yohPfoaH8wfQr8xlYv8H/m+hIPfq2Br6Iht5jl/TE8Cn5S8=
X-Google-Smtp-Source: ABdhPJymdGL2H+Rx4B45Eiuv+Hbw5So9HDNGZGDHQpbdzIkN+H2tpEkrIQeQJBDZmJPDKbRUhMYlRI04x/lITxX+h7Q=
X-Received: by 2002:a05:622a:547:: with SMTP id m7mr574286qtx.532.1644943725483;
 Tue, 15 Feb 2022 08:48:45 -0800 (PST)
MIME-Version: 1.0
References: <20220214075859.8593-1-ceggers@arri.de> <CAMKF1sookosR5xzWjeT0zBtDWV8RgW+Waq38dHxuArJ4UCd-GA@mail.gmail.com>
 <4181846.ejJDZkT8p0@localhost.localdomain> <4415795.cEBGB3zze1@localhost.localdomain>
In-Reply-To: <4415795.cEBGB3zze1@localhost.localdomain>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Tue, 15 Feb 2022 08:48:19 -0800
Message-ID: <CAMKF1sr4ipnW8Cci=7HBrgUpGnnbUJrtRuOLX=EN=-osn4n2EQ@mail.gmail.com>
Subject: Re: [poky] [PATCH] gcsections: add nativesdk-cairo to exclude list
To: Christian Eggers <ceggers@arri.de>
Cc: poky <poky@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Feb 15, 2022 at 12:25 AM Christian Eggers <ceggers@arri.de> wrote:
>
> On Monday, 14 February 2022, 18:16:57 CET, Khem Raj wrote:
> > see if you can compile and find the string in resulting binary
> >
> > % cat a.c
> > double d __attribute__((used)) =3D
> > 90904234967036810337470478905505011476211692735615632014797120844053488=
865816695273723469097858056257517020191247487429516932130503560650002327564=
517570778480236724525140520121371739201496540132640109977779420565776568942=
592.0;
> > int main() { return 0; }
> >
> > % gcc a.c -O2 -g -grecord-gcc-switches -pipe -Wall
> > -Werror=3Dformat-security -Wp,-D_FORTIFY_SOURCE=3D2
> > -Wp,-D_GLIBCXX_ASSERTIONS  -fstack-protector-strong -m64
> > -mtune=3Dgeneric -fasynchronous-unwind-tables -fstack-clash-protection
> > -fcf-protection -fdata-sections -ffunction-sections -flto=3Dauto
> > -flto-partition=3Dnone | strings a.out | grep seesnoon
> >
> > if it prints out
> > seesnoonGCC: (GNU) ....
> >
> > then the test is fine. If it does not then there is something wrong the=
re.
> >
> > I have done this test on gcc 11.1.0 and clang 13.0.1 on my archlinux
> > host and it worked all ok.
> You forgot to enable garbage collection on the linker (-Wl,--gc-sections)=
.
>
>
> On Monday, 14 February 2022, 19:59:35 CET, Christian Eggers wrote:
> > Summary: Linker garbage collection seems to work fine :-)
> >
> > I have almost no knowledge about autoconf. Would it be possible
> > to compile this test without linking ('-c') and to analyze the
> > .o file instead?
>
> This seems to cause other problems:
> https://github.com/freedesktop/cairo/commit/7cfebce152
>
> >  build: Fix float endian configure test when using clang -O4
> >
> > When using clang -O4, the compiled test object is output in bitcode
> > format rather than as an ELF object, so when we grep the test value fro=
m
> > the object it fails.  To work around this, go ahead and link the test
> > object into an executable, and then grep against this native binary
> > instead of the compiler's intermediary object.
> >
> > We need to add __attribute__((used)) to ensure the d variable doesn't
> > get optimized out during linking, since it's not referenced in the
> > test's main().
>
> So how can the compiler ask the linker to keep a section instead of
> garbage collecting it?
>
> I had a short look in the possible ELF section flags and found SHF_GNU_RE=
TAIN:
>
> https://sourceware.org/git/?p=3Dbinutils-gdb.git;a=3Dblob;f=3Dinclude/elf=
/common.h#l572
> https://sourceware.org/git/?p=3Dbinutils-gdb.git;a=3Dblob;f=3Dgas/config/=
obj-elf.c#l902
>
> Compiling conftest.c with -save-temps showed that this flag is not set:
>
> conftest.s
> -------------------------------------8<----------------------------------=
------
>         .globl  d
>         .section        .data.d,"aw"  <-- "R" (SHF_GNU_RETAIN) is missing
>         .align 8
>         .type   d, @object
>         .size   d, 8
> d:
>         .long   1936024947
>         .long   1852796782
> ------------------------------------->8----------------------------------=
------
>
> Google found a quite dirty hack to set the section flag from C code:
>
> https://stackoverflow.com/questions/6252812/what-does-the-aw-flag-in-the-=
section-attribute-mean
>
> > unsigned int __attribute__((section(".myVarSection,\"aw\",@nobits#"))) =
myVar;
> Note the '#' sign which is used to terminate the assembler command before
> GCC inserts its own "aw" flag:
> > .section    .myVarSection,"aw",@nobits#,"aw",@progbits
>
> Regarding the float byte ordering test, the following works with
> -ffunction-sections + -fdata-sections (for me):
>
> -------------------------------------8<----------------------------------=
------
> double d __attribute__((used,section(".data,\"awR\"#"))) =3D ...
> int main() { return 0; }
> ------------------------------------->8----------------------------------=
------
>
> Looking for other ways to set the section flags from GCC showed that
> a new "retain" attribute has recently been added to GCC (included in 11.2=
.0):
>
> https://gcc.gnu.org/git/?p=3Dgcc.git;a=3Dcommit;h=3D6347f4a0904fce17eedf5=
c071be6f3c118680290
>
> > @item retain
> > @cindex @code{retain} variable attribute
> > For ELF targets that support the GNU or FreeBSD OSABIs, this attribute
> > will save the variable from linker garbage collection.  To support
> > this behavior, variables that have not been placed in specific sections
> > (e.g. by the @code{section} attribute, or the @code{-fdata-sections}
> > option), 7515 will be placed in new, unique sections.
>
> Interestingly this text was not added by the commit, it was only moved
> from the "used" attribute to the new "retain" attribute. It looks like
> that during development of GCC-11, at first the "used" attribute was
> assigned for this and later they switched to the new "retain" attribute:
>
> https://gcc.gnu.org/git/?p=3Dgcc.git;a=3Dcommit;f=3Dgcc/output.h;h=3D6fbe=
c038f7a7ddf29f074943611b53210d17c40c
>
>
> What shall we do with this information now?
>
> Option 1:
> don't use linker garbage collection with cairo/nativesdk-cairo (current s=
tate)
>
> Option 2:
> Set ax_cv_c_float_words_bigendian manually (per platform).
>
> Option 3:
> Use the "section" attribute hack above. Would this work with clang?
> Is the '#' comment character suitable for all architectures?
>
> Option 4:
> Use the new "retain" attribute. Could this be upstreamed? GCC < 11 emits
> a warning:
> conftest.c:2:1: warning: =E2=80=98retain=E2=80=99 attribute directive ign=
ored [-Wattributes]
> For hardknott (GCC 10.2.0), we still need another solution.
>

lets use options 1
