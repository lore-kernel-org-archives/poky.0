Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.5722.1582373606145753931
 for <poky@lists.yoctoproject.org>;
 Sat, 22 Feb 2020 04:13:26 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=ucfLU/S4;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: pawan4749@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 069C6E0172C; Sat, 22 Feb 2020 04:13:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (pawan4749[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.210.176 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3C66BE007AE;
	Sat, 22 Feb 2020 04:13:25 -0800 (PST)
Received: by mail-pf1-f176.google.com with SMTP id 2so2734304pfg.12;
        Sat, 22 Feb 2020 04:13:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=9B9vqZirGpAR+P3IS1P4y82br30Yd9a0L0EWUzcUjtY=;
        b=ucfLU/S4JnqDN/0v0AAxjzc/G0vk4AxCoQUea0vNBCYukto19Z49CAuWr1oPW/0S1n
         tBs+hL9Gpunz4+0unI8hE9nR9s+QpqYJFdr+R0qDALMFGxPtKSVlLrVLRWkokhP3ZD5W
         vkfF4vXob5MnJ+AUPpwOhhVoSnkLG7yyWZGnnGHv7EmkPmzcWoma2X/Rth2ILdLLa3zK
         spPvMBveB7WUiLko9DXZIMm98MwtDuBZNBlHo4WX4w5O3FILPirJhZAcc7UjvjozEySx
         s45FIbzcytxDPmlKARZ+ToBovwhhx5fNFV7fgbQ11iBAWv5YYsceWVd9e/YAikUOnOuJ
         gyUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=9B9vqZirGpAR+P3IS1P4y82br30Yd9a0L0EWUzcUjtY=;
        b=ekA9vcDKVsc7NnuJGKc6GFzYCIGMEZCpZ00wtlSamNIJi10JykrUFGy3dekSDUaACy
         MHKk6T6pjDfj+ZCgS9GW0cDZvaBWCqzHuzKbLF0Kfnz8yjHcNVbFtDOW1oY8YvxCw5lK
         vIpFea778kwTyUP+2WkGJXFlXLmB6JBstFUQPLICjhN3h2/xJ87dfNmAFpnkEKNjOzRb
         5TuwcdcpHlXJBSb9bEw5tHAKBXgFwGhSVh4HGtFqVgGpqS6WVgcsHhE6HAC0ftsqdcEy
         LqlGhW2qxaWynuG79PWP8KEkZX1Tmlj+5nxMCCLY1rAbUhc7ox7HEsf7psSnPJAehkaq
         C4yQ==
X-Gm-Message-State: APjAAAUTaqoRZRE3N+W4oDgWuOYobqhsE+h08yR4SkPDSPl9GCSEiD36
	UMPTMi4SCc0qUbRNQChOoImBUTOuFgIJlDz40kJOA3YUY7Q=
X-Google-Smtp-Source: APXvYqw5UeYIUIHD/GT2rwVw4dsJHbe4p7UdswtfYS0kNo+5PYsPQb/1d52MJtfL//DHOCjkGf5tY8Nd2Cw+0cWpRYE=
X-Received: by 2002:a63:dc0d:: with SMTP id s13mr41529845pgg.129.1582373604472;
 Sat, 22 Feb 2020 04:13:24 -0800 (PST)
MIME-Version: 1.0
From: "pavan" <pawan4749@gmail.com>
Date: Sat, 22 Feb 2020 20:13:13 +0800
Message-ID: <CALd6x_t8_hjHCH1vGuq98mJOi65VMsRXwYycNpwt+6BfrmTHYA@mail.gmail.com>
Subject: gcc error: unrecognized command line option -fno-trampolines
To: yocto@yoctoproject.org, poky@yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000098bd7d059f2910c1"

--00000000000098bd7d059f2910c1
Content-Type: text/plain; charset="UTF-8"

Hi Team,

grub is failing while compiling.
Error Log is as follows:


*ERROR: grub-efi-native-2.04-3 do_compile: oe_runmake failedERROR:
grub-efi-native-2.04-3 do_compile: Execution of
'/build/tmp-glibc/work/x86_64-linux/grub-efi-native/2.04-3/temp/run.do_compile.26150'
failed with exit code 1:*
make: 'grub_script.tab.h' is up to date.
make: Nothing to be done for 'grub_script.tab.c'.
make: 'grub_script.yy.h' is up to date.
make: Nothing to be done for 'grub_script.yy.c'.

*gcc  -DHAVE_CONFIG_H -I. -I../git  -Wall -W -DGRUB_UTIL=1
-D_FILE_OFFSET_BITS=64 -I./include
-DGRUB_FILE=\"grub-core/commands/blocklist.c\" -I. -I../git -I. -I../git
-I../git/include -I./include -I../git/grub-core/lib/libgcrypt-grub/src/
-Wall -W -DGRUB_UTIL=1 -D_FILE_OFFSET_BITS=64 -I./include
-I../git/grub-core/lib/minilzo -I../git/grub-core/lib/xzembed
-I../git/grub-core/lib/zstd -DMINILZO_HAVE_CONFIG_H  -fno-builtin-gettext
-Wall -W -Wshadow -Wpointer-arith -Wundef -Wchar-subscripts -Wcomment
-Wdeprecated-declarations -Wdisabled-optimization -Wdiv-by-zero
-Wfloat-equal -Wformat-extra-args -Wformat-security -Wformat-y2k -Wimplicit
-Wimplicit-function-declaration -Wimplicit-int -Wmain -Wmissing-braces
-Wmissing-format-attribute -Wmultichar -Wparentheses -Wreturn-type
-Wsequence-point -Wshadow -Wsign-compare -Wswitch -Wtrigraphs
-Wunknown-pragmas -Wunused -Wunused-function -Wunused-label
-Wunused-parameter -Wunused-value  -Wunused-variable -Wwrite-strings
-Wnested-externs -Wstrict-prototypes -Wcast-align  -Wextra -Wattributes
-Wendif-labels -Winit-self -Wint-to-pointer-cast -Winvalid-pch
-Wmissing-field-initializers -Wnonnull -Woverflow -Wvla
-Wpointer-to-int-cast -Wstrict-aliasing -Wvariadic-macros
-Wvolatile-register-var -Wpointer-sign -Wmissing-include-dirs
-Wmissing-prototypes -Wmissing-declarations -Wformat=2 -Wextra
-Werror=trampolines -fno-trampolines -fno-builtin -Wno-undef  -c -o
grub-core/commands/libgrubmods_a-blocklist.o `test -f
'grub-core/commands/blocklist.c' || echo
'../git/'`grub-core/commands/blocklist.c*


*gcc: error: unrecognized command line option '-fno-trampolines'; did you
mean '-Wno-trampolines'?Makefile:9084: recipe for target
'grub-core/commands/libgrubmods_a-blocklist.o' failedmake: ***
[grub-core/commands/libgrubmods_a-blocklist.o] Error 1*
My gcc version is 5.
I tried with installing updated gcc versions -7,-8, -9, but still facing
this issue.
Please let me know, how to resolve this.
Thanks in Advance

Regards,
PK

--00000000000098bd7d059f2910c1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=
=3D"gmail_signature"><div dir=3D"ltr"><div>Hi Team,</div><div><br></div><di=
v>grub is failing while compiling.<br></div><div>Error Log is as follows:</=
div><div><b>ERROR: grub-efi-native-2.04-3 do_compile: oe_runmake failed<br>=
ERROR: grub-efi-native-2.04-3 do_compile: Execution of &#39;<br>/build/tmp-=
glibc/work/x86_64-linux/grub-efi-native/2.04-3/temp/run.do_compile.26150&#3=
9; failed with exit code 1:</b><br>make: &#39;grub_script.tab.h&#39; is up =
to date.<br>make: Nothing to be done for &#39;grub_script.tab.c&#39;.<br>ma=
ke: &#39;grub_script.yy.h&#39; is up to date.<br>make: Nothing to be done f=
or &#39;grub_script.yy.c&#39;.<br><i>gcc =C2=A0-DHAVE_CONFIG_H -I. -I../git=
 =C2=A0-Wall -W -DGRUB_UTIL=3D1 -D_FILE_OFFSET_BITS=3D64 -I./include -DGRUB=
_FILE=3D\&quot;grub-core/commands/blocklist.c\&quot; -I. -I../git -I. -I../=
git -I../git/include -I./include -I../git/grub-core/lib/libgcrypt-grub/src/=
 -Wall -W -DGRUB_UTIL=3D1 -D_FILE_OFFSET_BITS=3D64 -I./include -I../git/gru=
b-core/lib/minilzo -I../git/grub-core/lib/xzembed -I../git/grub-core/lib/zs=
td -DMINILZO_HAVE_CONFIG_H =C2=A0-fno-builtin-gettext -Wall -W -Wshadow -Wp=
ointer-arith -Wundef -Wchar-subscripts -Wcomment -Wdeprecated-declarations =
-Wdisabled-optimization -Wdiv-by-zero -Wfloat-equal -Wformat-extra-args -Wf=
ormat-security -Wformat-y2k -Wimplicit -Wimplicit-function-declaration -Wim=
plicit-int -Wmain -Wmissing-braces -Wmissing-format-attribute -Wmultichar -=
Wparentheses -Wreturn-type -Wsequence-point -Wshadow -Wsign-compare -Wswitc=
h -Wtrigraphs -Wunknown-pragmas -Wunused -Wunused-function -Wunused-label -=
Wunused-parameter -Wunused-value =C2=A0-Wunused-variable -Wwrite-strings -W=
nested-externs -Wstrict-prototypes -Wcast-align =C2=A0-Wextra -Wattributes =
-Wendif-labels -Winit-self -Wint-to-pointer-cast -Winvalid-pch -Wmissing-fi=
eld-initializers -Wnonnull -Woverflow -Wvla -Wpointer-to-int-cast -Wstrict-=
aliasing -Wvariadic-macros -Wvolatile-register-var -Wpointer-sign -Wmissing=
-include-dirs -Wmissing-prototypes -Wmissing-declarations -Wformat=3D2 -Wex=
tra -Werror=3Dtrampolines <b>-fno-trampolines</b> -fno-builtin -Wno-undef =
=C2=A0-c -o grub-core/commands/libgrubmods_a-blocklist.o `test -f &#39;grub=
-core/commands/blocklist.c&#39; || echo &#39;../git/&#39;`grub-core/command=
s/blocklist.c<br></i><br><b><i>gcc: error: unrecognized command line option=
 &#39;-fno-trampolines&#39;; did you mean &#39;-Wno-trampolines&#39;?<br>Ma=
kefile:9084: recipe for target &#39;grub-core/commands/libgrubmods_a-blockl=
ist.o&#39; failed<br>make: *** [grub-core/commands/libgrubmods_a-blocklist.=
o] Error 1</i></b><br></div><div>My gcc version is 5.</div><div>I tried wit=
h installing updated gcc versions -7,-8, -9, but still facing this issue.</=
div><div>Please let me know, how to resolve this.</div><div>Thanks in Advan=
ce</div><div><br></div><div>Regards,</div><div>PK</div><div><br><br></div><=
/div></div></div>

--00000000000098bd7d059f2910c1--
