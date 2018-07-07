Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 88697E00E8D; Sat,  7 Jul 2018 08:06:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f51.google.com (mail-oi0-f51.google.com
	[209.85.218.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6BA13E0086E
	for <poky@yoctoproject.org>; Sat,  7 Jul 2018 08:06:02 -0700 (PDT)
Received: by mail-oi0-f51.google.com with SMTP id k81-v6so28701229oib.4
	for <poky@yoctoproject.org>; Sat, 07 Jul 2018 08:06:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=2lJF/+uStlS9AQy9KS5tLJr39iXBWbeh3JtbBFnidxA=;
	b=dV4dkaFOsr40L5ZwmFMVnByDsNfsd4MpUEYK7pU8tYu6m/HEYHoogMpSyrwqg5r5Dd
	/Eg2NerwgN71cVB3QS+CPh8iQLjNeUT9cd7Cko1TP6ySb/eeMgPasD5vjy+Z6n71VNoz
	sXy2WX8vMM3xp9QLULrWK3JAgvFk+Z1aqvbMnkmzaeQuuW82wBe8WXaSQdsJzFhKPFgr
	eL2cgvLfJqqcfdp4Agj3qEcdP0KQOpoxSSqSIu9cbJL4tVY8OGDJai9N10cQY0u2duzJ
	mIWQkxuXY0HTRqAIIDs56xaiHf4inopqXh9gW4IKdniSX3xtomRtTvj2EVYUMyvnBG7L
	xoQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-language;
	bh=2lJF/+uStlS9AQy9KS5tLJr39iXBWbeh3JtbBFnidxA=;
	b=A6cq7trvbmpHT9qPpzDdxxeyIIl1gvTgembadVBqF+MEhRRMkkuYkia6XqfOhlNrnD
	HwB9r5mvLAL2E7J6OgyXiQuAnFvvY7B1sQPyQZiAZndSxDwMK5bvg74alYfagFuYaTO4
	6BiopJEqrvsezhQoDCicKIpHymfU8btTGmts4Ceq5dtuc2Ye7DEbt8VfzoFn/ORTDM57
	G4R+w8VvTgSfwO1mJIUFp8TnKvydu/nEQqn3udj8RJEj6QqlGOpWaR2k18uA20TsjlfQ
	V7KcJCHo2U3QHHuMUKbAYJV7omrWC+sB3AmS7PtUXydn6bvlbK4DNBPXgDUUfSv9Ki2P
	xuqQ==
X-Gm-Message-State: APt69E0b5H3rQruaeEL/qAQvdj7M6eIJaHE1k7vBA+osFjwQB9S5rztC
	WKRhQ6qZtucnJLPG59cBjYo=
X-Google-Smtp-Source: AAOMgpfv2QPLMExsTMppb13ugPoNR4YtPjoYzLqEJ7TcP4rLEHjnjwaXbQr/ECl9zrURPIgCToK3sA==
X-Received: by 2002:aca:390a:: with SMTP id
	g10-v6mr5750610oia.145.1530975961706; 
	Sat, 07 Jul 2018 08:06:01 -0700 (PDT)
Received: from ?IPv6:2601:202:4000:1184:41a9:b69d:a923:c699?
	([2601:202:4000:1184:41a9:b69d:a923:c699])
	by smtp.gmail.com with ESMTPSA id
	u144-v6sm984653oie.14.2018.07.07.08.05.59
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 07 Jul 2018 08:06:01 -0700 (PDT)
To: Thiruvadi Rajaraman <trajaraman@mvista.com>, poky@yoctoproject.org
References: <CADhVsC5fWzvRLiOsw1hQwA-VXNg+mWwd9jj8Y2pJWwHNFHsiKA@mail.gmail.com>
From: akuster808 <akuster808@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
	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
	8CS2NxU=
Message-ID: <224d9b41-bafa-808d-8a8d-91bea8e09dca@gmail.com>
Date: Sat, 7 Jul 2018 08:05:59 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.8.0
MIME-Version: 1.0
In-Reply-To: <CADhVsC5fWzvRLiOsw1hQwA-VXNg+mWwd9jj8Y2pJWwHNFHsiKA@mail.gmail.com>
Cc: Premchand Koneru <pkoneru@mvista.com>,
	Robert Joslyn <robert_joslyn@selinc.com>, akuster <akuster@mvista.com>,
	Juro Bystricky <juro.bystricky@intel.com>
Subject: Re: grub: Added libdevmapper support [ poky rocko branch ]
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 07 Jul 2018 15:06:03 -0000
Content-Type: multipart/alternative;
	boundary="------------26CD16E27857A9F38427DA00"
Content-Language: en-US

--------------26CD16E27857A9F38427DA00
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable



On 07/06/2018 12:43 AM, Thiruvadi Rajaraman wrote:
> Hi,
>
> Found libdevmapper was explicitly disabled on configure process and
> these causes failure in loading/install the grub on lvm/device mapper
> disks.

Correct, its done on purpose. That lvm2 recipe resides in
meta-openembedded so we can not enable it in core. That must be done in
a local.conf or at the distro level.


>
> Though the following commit changes in poky mater branch changes lvm2
> to libdevmapper, Found issue still exist.
The original fix can be backported to Rocko if it is in Sumo.

Please note, that patches should not be sent via an attachment. Please
use 'git send-patch'=C2=A0 instead.=C2=A0 Also, please use the
openembedded-core@lists.openembedded.org mailing list for core patches.

- Armin
>
> < snip >
>
> commit 9bfe9dadfe929c9d1d15008597ef9d49be4c0fe4
> Author: Robert Joslyn <robert_joslyn@selinc.com
> <mailto:robert_joslyn@selinc.com>>
> Date:=C2=A0 =C2=A0Wed Jan 17 13:12:34 2018 -0800
>
> =C2=A0 =C2=A0 grub: Fix device mapper dependency
>
> < snip >
>
> The attached patch resolves the issue. found the grub binaries are
> cross compiled with libdevmapper.so* support by LDflasgs and LIBS.
>
> Test logs without attached fix patch ( do_configure process )
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D
> From=C2=A0log.do_configure logs,
>
> *******************************************************
> GRUB2 will be compiled with following components:
> Platform: i386-pc
> With devmapper support: No (explicitly disabled)
> <snip>
> *********************************************************
> $ ldd ./image/usr/sbin/grub-install
> linux-vdso.so.1 =3D>=C2=A0 (0x00007ffc32df9000)
> libc.so.6 =3D> /lib/x86_64-linux-gnu/libc.so.6 (0x00007f2cb01d0000)
> /lib64/ld-linux-x86-64.so.2 (0x00005576a79df000)
> $=C2=A0
>
>
>
> Test logs with attached fix patch ( do_configure process )
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D
> From=C2=A0log.do_configure logs,
>
> *******************************************************
> GRUB2 will be compiled with following components:
> Platform: i386-pc
> With devmapper support: Yes
> < snip>
> ***********************************************************
> $ ldd ../build/grub-install=20
> tmp/work/corei7-64-montavista-linux/grub/2.02-r0.3/build/grub-install: =

> /lib/x86_64-linux-gnu/libc.so.6: version `GLIBC_2.22' not found (requir=
ed by=20
> /usr/lib/libdevmapper.so.1.02)
>     linux-vdso.so.1 =3D>  (0x00007ffc0b0db000)
>     libdevmapper.so.1.02 =3D> /usr/lib/libdevmapper.so.1.02=20
> (0x00007fabd40fb000)
>     libc.so.6 =3D> /lib/x86_64-linux-gnu/libc.so.6 (0x00007fabd3d32000)=

>     librt.so.1 =3D> /lib/x86_64-linux-gnu/librt.so.1 (0x00007fabd3b2a00=
0)
>     libselinux.so.1 =3D> /lib/x86_64-linux-gnu/libselinux.so.1=20
> (0x00007fabd3906000)
>     libudev.so.1 =3D> /lib/x86_64-linux-gnu/libudev.so.1 (0x00007fabd36=
f5000)
>     libpthread.so.0 =3D> /lib/x86_64-linux-gnu/libpthread.so.0=20
> (0x00007fabd34d7000)
>     libm.so.6 =3D> /lib/x86_64-linux-gnu/libm.so.6 (0x00007fabd31d0000)=

>     /lib64/ld-linux-x86-64.so.2 (0x000055cd824d8000)
>     libpcre.so.3 =3D> /lib/x86_64-linux-gnu/libpcre.so.3 (0x00007fabd2f=
92000)
>     libdl.so.2 =3D> /lib/x86_64-linux-gnu/libdl.so.2 (0x00007fabd2d8e00=
0)
>     libcgmanager.so.0 =3D> /lib/x86_64-linux-gnu/libcgmanager.so.0=20
> (0x00007fabd2b72000)
>     libnih.so.1 =3D> /lib/x86_64-linux-gnu/libnih.so.1 (0x00007fabd295a=
000)
>     libnih-dbus.so.1 =3D> /lib/x86_64-linux-gnu/libnih-dbus.so.1=20
> (0x00007fabd2750000)
>     libdbus-1.so.3 =3D> /lib/x86_64-linux-gnu/libdbus-1.so.3=20
> (0x00007fabd250a000)
> $
>
> Please kindly review and suggest comments.
>
> Thanks,
> Thiruvadi Rajaraman
>
>
>


--------------26CD16E27857A9F38427DA00
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p><br>
    </p>
    <br>
    <div class="moz-cite-prefix">On 07/06/2018 12:43 AM, Thiruvadi
      Rajaraman wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CADhVsC5fWzvRLiOsw1hQwA-VXNg+mWwd9jj8Y2pJWwHNFHsiKA@mail.gmail.com">
      <div dir="ltr">Hi,
        <div><br>
          <div>
            <div>Found libdevmapper was explicitly disabled on configure
              process and these causes failure in loading/install the
              grub on lvm/device mapper disks.</div>
          </div>
        </div>
      </div>
    </blockquote>
    <br>
    Correct, its done on purpose. That lvm2 recipe resides in
    meta-openembedded so we can not enable it in core. That must be done
    in a local.conf or at the distro level.<br>
    <br>
    <br>
    <blockquote type="cite"
cite="mid:CADhVsC5fWzvRLiOsw1hQwA-VXNg+mWwd9jj8Y2pJWwHNFHsiKA@mail.gmail.com">
      <div dir="ltr">
        <div>
          <div>
            <div><br>
            </div>
            <div>Though the following commit changes in poky mater
              branch changes lvm2 to libdevmapper, Found issue still
              exist.</div>
          </div>
        </div>
      </div>
    </blockquote>
    The original fix can be backported to Rocko if it is in Sumo.<br>
    <br>
    Please note, that patches should not be sent via an attachment.
    Please use 'git send-patch'  instead.  Also, please use the
    <a class="moz-txt-link-abbreviated" href="mailto:openembedded-core@lists.openembedded.org">openembedded-core@lists.openembedded.org</a> mailing list for core
    patches. <br>
    <br>
    - Armin<br>
    <blockquote type="cite"
cite="mid:CADhVsC5fWzvRLiOsw1hQwA-VXNg+mWwd9jj8Y2pJWwHNFHsiKA@mail.gmail.com">
      <div dir="ltr">
        <div>
          <div>
            <div><br>
            </div>
            <div>&lt; snip &gt;</div>
            <div><br>
            </div>
            <div>commit 9bfe9dadfe929c9d1d15008597ef9d49be4c0fe4</div>
            <div>Author: Robert Joslyn &lt;<a
                href="mailto:robert_joslyn@selinc.com"
                moz-do-not-send="true">robert_joslyn@selinc.com</a>&gt;</div>
            <div>Date:   Wed Jan 17 13:12:34 2018 -0800</div>
            <div><br>
            </div>
            <div>    grub: Fix device mapper dependency</div>
            <div><br>
            </div>
            <div>&lt; snip &gt;</div>
          </div>
          <div><br>
          </div>
          <div>The attached patch resolves the issue. found the grub
            binaries are cross compiled with libdevmapper.so* support by
            LDflasgs and LIBS.</div>
        </div>
        <div><span
style="font-size:small;background-color:rgb(255,255,255);text-decoration-style:initial;text-decoration-color:initial;float:none;display:inline"><br>
          </span></div>
        <div>
          <div
style="font-size:small;text-decoration-style:initial;text-decoration-color:initial">
            <div
style="font-size:small;text-decoration-style:initial;text-decoration-color:initial">Test
              logs without attached fix patch ( do_configure process )</div>
            <div
style="font-size:small;text-decoration-style:initial;text-decoration-color:initial">===========================</div>
            From log.do_configure logs,</div>
          <div
style="font-size:small;text-decoration-style:initial;text-decoration-color:initial"><br>
          </div>
          <div
style="font-size:small;text-decoration-style:initial;text-decoration-color:initial">
            <div>*******************************************************</div>
            <div>GRUB2 will be compiled with following components:</div>
            <div>Platform: i386-pc</div>
            <div>With devmapper support: No (explicitly disabled)</div>
            <div>&lt;snip&gt;</div>
          </div>
          <div
style="font-size:small;text-decoration-style:initial;text-decoration-color:initial">*********************************************************</div>
          <div>$ ldd ./image/usr/sbin/grub-install</div>
          <div><span style="white-space:pre">	</span>linux-vdso.so.1
            =&gt;  (0x00007ffc32df9000)</div>
          <div><span style="white-space:pre">	</span>libc.so.6 =&gt;
            /lib/x86_64-linux-gnu/libc.so.6 (0x00007f2cb01d0000)</div>
          <div><span style="white-space:pre">	</span>/lib64/ld-linux-x86-64.so.2
            (0x00005576a79df000)</div>
          <div>$ </div>
        </div>
        <div><br>
        </div>
        <div><br>
        </div>
        <div><br>
        </div>
        <div>Test logs with attached fix patch ( do_configure process )</div>
        <div>==========================</div>
        <div><span
style="font-size:small;background-color:rgb(255,255,255);text-decoration-style:initial;text-decoration-color:initial;float:none;display:inline">From log.do_configure
            logs,</span><br>
        </div>
        <div><span
style="font-size:small;background-color:rgb(255,255,255);text-decoration-style:initial;text-decoration-color:initial;float:none;display:inline"><br>
          </span></div>
        <div>
          <div>*******************************************************</div>
          <div>GRUB2 will be compiled with following components:</div>
          <div>Platform: i386-pc</div>
          <div>With devmapper support: Yes</div>
        </div>
        <div>&lt; snip&gt;</div>
        <div>***********************************************************</div>
        <div>
          <pre class="gmail-bz_comment_text" id="gmail-comment_text_22" style="font-size:small;font-family:monospace;white-space:pre-wrap;width:50em;color:rgb(0,0,0);background-color:rgb(255,255,255);text-decoration-style:initial;text-decoration-color:initial">$ ldd ../build/grub-install 
tmp/work/corei7-64-montavista-linux/grub/2.02-r0.3/build/grub-install: 
/lib/x86_64-linux-gnu/libc.so.6: version `GLIBC_2.22' not found (required by 
/usr/lib/libdevmapper.so.1.02)
    linux-vdso.so.1 =&gt;  (0x00007ffc0b0db000)
    libdevmapper.so.1.02 =&gt; /usr/lib/libdevmapper.so.1.02 
(0x00007fabd40fb000)
    libc.so.6 =&gt; /lib/x86_64-linux-gnu/libc.so.6 (0x00007fabd3d32000)
    librt.so.1 =&gt; /lib/x86_64-linux-gnu/librt.so.1 (0x00007fabd3b2a000)
    libselinux.so.1 =&gt; /lib/x86_64-linux-gnu/libselinux.so.1 
(0x00007fabd3906000)
    libudev.so.1 =&gt; /lib/x86_64-linux-gnu/libudev.so.1 (0x00007fabd36f5000)
    libpthread.so.0 =&gt; /lib/x86_64-linux-gnu/libpthread.so.0 
(0x00007fabd34d7000)
    libm.so.6 =&gt; /lib/x86_64-linux-gnu/libm.so.6 (0x00007fabd31d0000)
    /lib64/ld-linux-x86-64.so.2 (0x000055cd824d8000)
    libpcre.so.3 =&gt; /lib/x86_64-linux-gnu/libpcre.so.3 (0x00007fabd2f92000)
    libdl.so.2 =&gt; /lib/x86_64-linux-gnu/libdl.so.2 (0x00007fabd2d8e000)
    libcgmanager.so.0 =&gt; /lib/x86_64-linux-gnu/libcgmanager.so.0 
(0x00007fabd2b72000)
    libnih.so.1 =&gt; /lib/x86_64-linux-gnu/libnih.so.1 (0x00007fabd295a000)
    libnih-dbus.so.1 =&gt; /lib/x86_64-linux-gnu/libnih-dbus.so.1 
(0x00007fabd2750000)
    libdbus-1.so.3 =&gt; /lib/x86_64-linux-gnu/libdbus-1.so.3 
(0x00007fabd250a000)
$</pre>
          <br>
        </div>
        <div>Please kindly review and suggest comments.</div>
        <div><br>
        </div>
        <div>Thanks,</div>
        <div>Thiruvadi Rajaraman</div>
        <div>
          <div
style="font-size:small;text-decoration-style:initial;text-decoration-color:initial"><br>
          </div>
        </div>
        <div><br>
        </div>
        <div><br>
        </div>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------26CD16E27857A9F38427DA00--
