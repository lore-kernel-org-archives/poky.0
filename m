Return-Path: <jigar.chokshi89@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CD66CE004EB; Wed, 30 Apr 2014 01:23:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jigar.chokshi89[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.172 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ob0-f172.google.com (mail-ob0-f172.google.com
	[209.85.214.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9546AE003C7;
	Wed, 30 Apr 2014 01:23:55 -0700 (PDT)
Received: by mail-ob0-f172.google.com with SMTP id wo20so1584975obc.17
	for <multiple recipients>; Wed, 30 Apr 2014 01:23:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=Vm7mYdbuPz4zmZF1L1IRKvVri7oA2lMIbmPGkatAjgc=;
	b=RxUYWMGVb9AROpv2qrBtm67XQxKM3ccXGXMzu68GeOKoDf7hcjRbOr/nRIAye/wgxv
	KSMmbPP+ShkSPow5dR2xErWmwhoWOuQpmPkInWFITWTc8ArIFITmA7q2Akom2/TYvKdD
	GmN3yDjC2CaOieP+HFqcm9SZKENb1rKpd9gyc6NcuQUvJzbtfJiTTaXPIPx/nY7D8wSw
	Xh+CFTX24Qo4EduFDmGDtj66s8a1RAGwkN1zyVmrjSC3WNE3KuexasHltqQxUuimqDEK
	9QHf42TTXFcr6UsJBfpPBS3sHZ+4NlC9V/+L/oLKujDOnhxNy264uhdM7JgiaULBwtl0
	nW/w==
MIME-Version: 1.0
X-Received: by 10.60.144.200 with SMTP id so8mr3893344oeb.31.1398846234643;
	Wed, 30 Apr 2014 01:23:54 -0700 (PDT)
Received: by 10.182.126.130 with HTTP; Wed, 30 Apr 2014 01:23:54 -0700 (PDT)
In-Reply-To: <534FE2AF.7000309@gmail.com>
References: <CAAEo+ZoHzSUzKO-GLiuO3gBPmE4oEj6s_TLnTt=i-d0XfaZgFA@mail.gmail.com>
	<534E8B91.1040805@gmail.com>
	<CAAEo+ZoSTQZU34m_gx9JDT39at1M-5eigRUX3Vpj9Urd7wK5JA@mail.gmail.com>
	<534FE2AF.7000309@gmail.com>
Date: Wed, 30 Apr 2014 10:23:54 +0200
Message-ID: <CAAEo+Zr7gcQJdPTM-yqSQjEkoBKx9YiRDbt0+i_GhyDzunoFYA@mail.gmail.com>
From: jigar chokshi <jigar.chokshi89@gmail.com>
To: John Weber <rjohnweber@gmail.com>, meta-freescale@yoctoproject.org, 
	poky@yoctoproject.org
Subject: [meta-freescale] About Yocto and Imx6
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
X-List-Received-Date: Wed, 30 Apr 2014 08:23:59 -0000
Content-Type: multipart/alternative; boundary=047d7b472148e955be04f83e44f1

--047d7b472148e955be04f83e44f1
Content-Type: text/plain; charset=UTF-8

---------- Forwarded message ----------
From: John Weber <rjohnweber@gmail.com>
Date: Thu, Apr 17, 2014 at 4:18 PM
Subject: Re: [meta-freescale] About Yocto and Imx6
To: "meta-freescale@yoctoproject.org" <meta-freescale@yoctoproject.org>


 Hi Jigar,

Please do not top post.  This means we prefer that you reply with
comments/responses inline with the previous message so that others in the
list can more easily follow the conversation.


On 4/17/14, 4:43 AM, jigar chokshi wrote:

   Hello John,
 I have a question regarding your suggestion.

 Do i have to create another directory for bitbake meta-ide-support or i
have to do bitbake in the same directory where i did bitbake core-image
-minimal??

   No.
Bitbake needs to be run in the build directory always.

>Hello sorry for late response. i was busy in another work.
>First i did    bitbake core-image-base in build directory.
>after that i created 1 more directory called buildcoreimage in this
directory i did
>bitbake core-image -minimal.
>So now, i did bitbake meta-ide-support in build directory as you told me.


  I am confused because i think bitbake core-image-minimal
will also generate new image then if i want to use core-image-minimal then
what i have to do?

If you run bitbake core-image-minimal again, and if you changed something
in any of the image dependencies, then it will build a new image.

Running bitbake meta-ide-support does not require that you rebuild your
image - you wanted to be able to build applications using the toolchain and
libraries in the sysroot and this step builds an environment file that you
can source which does that.


 Thank you,
 Jigar Chokshi

 No problem.  I hope it helps.  In the future, you might want to email the
oe-core mailing list as this question does not specifically pertain to the
Freescale BSP but is more of an general OE question.

>still in /opt/poky/1.5.1/sysroots/cortexa9hf-vfp-neon-poky-linux-gnueabi i
cold not find glib library
>and gllib library in /opt/poky/1.5.1/sysroots/x86_64-pokysdk-linux/usr/lib
is for X86-64. so it is not useful for me.
>In
/home/x-chokshij/fsl-community-bsp/build/tmp/sysroots/imx6qsabreauto/usr/lib
i can see libglib-2.0.so.0.3600 and that is for >ARM i checked with file
command. so, i need this library i am sure.
>Now when i tried to cross compile my library using
>./configure --prefix=/home/x-chokshij/hmi_rbg/libudcu-arm/_Install
CC=arm-poky-linux-gnueabi-gcc CXX=arm-poky-linux-gnueabi-g++
--host=arm-poky-linux-gnueabi --enable-shared --disable-static
LDFLAGS=-L/home/x-chokshij/fsl-community-bsp/build/tmp/sysroots/imx6qsabreauto/usr/lib/
>i got error.
>configure: error: in `/home/x-chokshij/Desktop/hmi_rbg/libudcu':
>configure: error: C compiler cannot create executables
>See `config.log' for more details
>i checked config.log file and i found 3 errors as following

>configure:3117: arm-poky-linux-gnueabi-gcc -V >&5
>arm-poky-linux-gnueabi-gcc: error: unrecognized command line option '-V'
>arm-poky-linux-gnueabi-gcc: fatal error: no input files
>compilation terminated.
>configure:3128: $? = 1
>configure:3117: arm-poky-linux-gnueabi-gcc -qversion >&5
>arm-poky-linux-gnueabi-gcc: error: unrecognized command line option
'-qversion'
>arm-poky-linux-gnueabi-gcc: fatal error: no input files
>compilation terminated.
>configure:3128: $? = 1
>configure:3148: checking whether the C compiler works
>configure:3170: arm-poky-linux-gnueabi-gcc
-L/home/x-chokshij/fsl-community-bsp/build/tmp/sysroots/imx6qsabreauto/usr/lib
>conftest.c  >&5
>/opt/poky/1.5.1/sysroots/x86_64-pokysdk-linux/usr/libexec/arm-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.8.1/ld:
cannot >find /lib/libc.so.6
>/opt/poky/1.5.1/sysroots/x86_64-pokysdk-linux/usr/libexec/arm-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.8.1/ld:
cannot >find /usr/lib/libc_nonshared.a
>/opt/poky/1.5.1/sysroots/x86_64-pokysdk-linux/usr/libexec/arm-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.8.1/ld:
cannot >find /lib/ld-linux-armhf.so.3
>collect2: error: ld returned 1 exit status

 On Wed, Apr 16, 2014 at 3:54 PM, John Weber <rjohnweber@gmail.com> wrote:

> Hi Jigar,
>
>
> On 4/16/14, 7:49 AM, jigar chokshi wrote:
>
>> Hello,
>>
>> Here i attached important parameter of my local.conf file of
>> core-image-minimal.
>>
>> MACHINE ??= 'imx6qsabreauto'
>> DISTRO ?= 'poky'
>> PACKAGE_CLASSES ?= "package_rpm"
>> EXTRA_IMAGE_FEATURES = "debug-tweaks ssh-server-openssh"
>> IMAGE_INSTALL_append = " gcc g++ binutils libgcc libgcc-dev libstdc++
>> libstdc++-dev glib-2.0 libsigc++-2.0-dev libstdc++-staticdev tslib-conf
>> tslib-tests tslib-calibrate openssh-sftp-server alsa-lib alsa-tools
>> alsa-state alsa-utils-alsaconf tslib evtest dbus nano qtbase qtbase-fonts
>> qtbase-plugins qtbase-examples cinematicexperience gstreamer cairo pango
>> fontconfig freetype pulseaudio "
>> DISTRO_FEATURES_remove = "x11 wayland"
>>
>>
>> I tried to cross compile qt5 using poky tool chain and it was successful.
>> Now when i tried build an application using same tool chain it required
>> an library that is developed by my colleague.
>> so, when i tried to configured that library.
>>
>> echo $PATH
>>
>> /usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/opt/poky/1.5.1/sysroots/x86_64-pokysdk-linux/usr/bin/arm-poky-linux-gnueabi
>> ./configure --prefix=/home/x-chokshij/hmi_rbg/libudcu-arm/_Install
>> CC=arm-poky-linux-gnueabi-gcc CXX=arm-poky-linux-gnueabi-g++
>> --host=arm-poky-linux-gnueabi --enable-shared --disable-static
>>
>> Now when i am giving make all
>>
>> i am getting following error
>>
>> /opt/poky/1.5.1/sysroots/x86_64-pokysdk-linux/usr/libexec/arm-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.8.1/ld:
>> cannot find -lglib-2.0
>>
>> I understand this error is because poky cant find glib-2.0 library. but
>> as you can see in local.conf file i installed glib-2.0 lib.
>>
>  I think you need other environment variables set in order for your
> configure script to find the shared libraries (e.g. PKGCONFIG).  You might
> give this a try:
>
> bitbake meta-ide-support
>
> then
>
> source ./tmp/environment-setup-cortexa9hf-vfp-neon-poky-linux-gnueabi
>
> I believe that this should take care of most of it.  Let us know how it
> goes.
>
> John
> --
> _______________________________________________
> meta-freescale mailing list
> meta-freescale@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/meta-freescale
>



--
_______________________________________________
meta-freescale mailing list
meta-freescale@yoctoproject.org
https://lists.yoctoproject.org/listinfo/meta-freescale

--047d7b472148e955be04f83e44f1
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br><div class=3D"gmail_quote">---------- Forwarded me=
ssage ----------<br>From: <b class=3D"gmail_sendername">John Weber</b> <spa=
n dir=3D"ltr">&lt;<a href=3D"mailto:rjohnweber@gmail.com">rjohnweber@gmail.=
com</a>&gt;</span><br>
Date: Thu, Apr 17, 2014 at 4:18 PM<br>Subject: Re: [meta-freescale] About Y=
octo and Imx6<br>To: &quot;<a href=3D"mailto:meta-freescale@yoctoproject.or=
g">meta-freescale@yoctoproject.org</a>&quot; &lt;<a href=3D"mailto:meta-fre=
escale@yoctoproject.org">meta-freescale@yoctoproject.org</a>&gt;<br>
<br><br>
 =20
   =20
 =20
  <div text=3D"#000000" bgcolor=3D"#FFFFFF">
    Hi Jigar,<br>
    <br>
    Please do not top post.=C2=A0 This means we prefer that you reply with
    comments/responses inline with the previous message so that others
    in the list can more easily follow the conversation.<div class=3D""><br=
>
    <br>
    On 4/17/14, 4:43 AM, jigar chokshi wrote:<br>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div>
          <div>
            <div>
              <div>
                <div>Hello John,<br>
                </div>
                I have a question regarding your suggestion.<br>
                <br>
              </div>
              Do i have to create another directory for bitbake
              meta-ide-support or i have to do bitbake in the same
              directory where i did bitbake core-image -minimal??<br>
              <br>
            </div>
          </div>
        </div>
      </div>
    </blockquote></div>
    No.<br>
    Bitbake needs to be run in the build directory always.<br><div class=3D=
"">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <br>
    </div><div class=3D"">&gt;Hello sorry for late response. i was busy in =
another work.<br></div><div class=3D"">&gt;First i did=C2=A0=C2=A0=C2=A0 <s=
pan style=3D"font-family:&#39;courier new&#39;,courier">bitbake core-image-=
base in build directory.<br>
</span></div><div class=3D""><span style=3D"font-family:&#39;courier new&#3=
9;,courier">&gt;after that i created 1 more directory called buildcoreimage=
 in this directory i did <br></span>&gt;bitbake core-image -minimal.<br></d=
iv>
<div class=3D"">&gt;So now, i did bitbake
              meta-ide-support in build directory as you told me.<br></div>=
<div class=3D""><br><br></div><div class=3D"">
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div>
          <div>I am confused because i think bitbake core-image-minimal
            <br>
            will also generate new image then if i want to use
            core-image-minimal then what i have to do?<br>
          </div>
        </div>
      </div>
    </blockquote></div>
    If you run bitbake core-image-minimal again, and if you changed
    something in any of the image dependencies, then it will build a new
    image.=C2=A0 <br>
    <br>
    Running bitbake meta-ide-support does not require that you rebuild
    your image - you wanted to be able to build applications using the
    toolchain and libraries in the sysroot and this step builds an
    environment file that you can source which does that.<br>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div>
          <div><br>
          </div>
          Thank you,<br>
        </div>
        Jigar Chokshi<br>
      </div>
      <div class=3D"gmail_extra"><br>
      </div>
    </blockquote>
    No problem.=C2=A0 I hope it helps.=C2=A0 In the future, you might want =
to
    email the oe-core mailing list as this question does not
    specifically pertain to the Freescale BSP but is more of an general
    OE question.<br><br>&gt;still in /opt/poky/1.5.1/sysroots/cortexa9hf-vf=
p-neon-poky-linux-gnueabi i cold not find glib library<br></div><div text=
=3D"#000000" bgcolor=3D"#FFFFFF">&gt;and gllib library in /opt/poky/1.5.1/s=
ysroots/x86_64-pokysdk-linux/usr/lib is for X86-64. so it is not useful for=
 me.<br>
</div><div text=3D"#000000" bgcolor=3D"#FFFFFF"><div class=3D"">&gt;In /hom=
e/x-chokshij/fsl-community-bsp/build/tmp/sysroots/imx6qsabreauto/usr/lib i =
can see libglib-2.0.so.0.3600 and that is for &gt;ARM i checked with file c=
ommand. so, i need this library i am sure.<br>
</div><div class=3D"">&gt;Now when i tried to cross compile my library usin=
g<br>&gt;./configure
 --prefix=3D/home/x-chokshij/hmi_rbg/libudcu-arm/_Install=20
CC=3Darm-poky-linux-gnueabi-gcc CXX=3Darm-poky-linux-gnueabi-g++=20
--host=3Darm-poky-linux-gnueabi --enable-shared --disable-static=20
LDFLAGS=3D-L/home/x-chokshij/fsl-community-bsp/build/tmp/sysroots/imx6qsabr=
eauto/usr/lib/<br></div><div class=3D"">&gt;i got error. <br>&gt;configure:=
 error: in `/home/x-chokshij/Desktop/hmi_rbg/libudcu&#39;:<br>&gt;configure=
: error: C compiler cannot create executables<br>
&gt;See `config.log&#39; for more details<br></div>&gt;i checked config.log=
 file and i found 3 errors as following<br><br>&gt;configure:3117: arm-poky=
-linux-gnueabi-gcc -V &gt;&amp;5<br>&gt;arm-poky-linux-gnueabi-gcc: error: =
unrecognized command line option &#39;-V&#39;<br>
&gt;arm-poky-linux-gnueabi-gcc: fatal error: no input files<br>&gt;compilat=
ion terminated.<br>&gt;configure:3128: $? =3D 1<br>&gt;configure:3117: arm-=
poky-linux-gnueabi-gcc -qversion &gt;&amp;5<br>&gt;arm-poky-linux-gnueabi-g=
cc: error: unrecognized command line option &#39;-qversion&#39;<br>
&gt;arm-poky-linux-gnueabi-gcc: fatal error: no input files<br>&gt;compilat=
ion terminated.<br>&gt;configure:3128: $? =3D 1<br>&gt;configure:3148: chec=
king whether the C compiler works<br>&gt;configure:3170:
 arm-poky-linux-gnueabi-gcc=C2=A0=C2=A0=20
-L/home/x-chokshij/fsl-community-bsp/build/tmp/sysroots/imx6qsabreauto/usr/=
lib
 &gt;conftest.c=C2=A0 &gt;&amp;5<br>&gt;/opt/poky/1.5.1/sysroots/x86_64-pok=
ysdk-linux/usr/libexec/arm-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.=
8.1/ld:
 cannot &gt;find /lib/libc.so.6<br>&gt;/opt/poky/1.5.1/sysroots/x86_64-poky=
sdk-linux/usr/libexec/arm-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.8=
.1/ld:
 cannot &gt;find /usr/lib/libc_nonshared.a<br>&gt;/opt/poky/1.5.1/sysroots/=
x86_64-pokysdk-linux/usr/libexec/arm-poky-linux-gnueabi/gcc/arm-poky-linux-=
gnueabi/4.8.1/ld:
 cannot &gt;find /lib/ld-linux-armhf.so.3<br>&gt;collect2: error: ld return=
ed 1 exit status<br><div><div class=3D"h5"><br>
    <blockquote type=3D"cite">
      <div class=3D"gmail_extra">
        <div class=3D"gmail_quote">On Wed, Apr 16, 2014 at 3:54 PM, John
          Weber <span dir=3D"ltr">&lt;<a href=3D"mailto:rjohnweber@gmail.co=
m" target=3D"_blank">rjohnweber@gmail.com</a>&gt;</span>
          wrote:<br>
          <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi Jigar,
            <div>
              <div><br>
                <br>
                On 4/16/14, 7:49 AM, jigar chokshi wrote:<br>
                <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
                  Hello,<br>
                  <br>
                  Here i attached important parameter of my local.conf
                  file of core-image-minimal.<br>
                  <br>
                  MACHINE ??=3D &#39;imx6qsabreauto&#39;<br>
                  DISTRO ?=3D &#39;poky&#39;<br>
                  PACKAGE_CLASSES ?=3D &quot;package_rpm&quot;<br>
                  EXTRA_IMAGE_FEATURES =3D &quot;debug-tweaks
                  ssh-server-openssh&quot;<br>
                  IMAGE_INSTALL_append =3D &quot; gcc g++ binutils libgcc
                  libgcc-dev libstdc++ libstdc++-dev glib-2.0
                  libsigc++-2.0-dev libstdc++-staticdev tslib-conf
                  tslib-tests tslib-calibrate openssh-sftp-server
                  alsa-lib alsa-tools alsa-state alsa-utils-alsaconf
                  tslib evtest dbus nano qtbase qtbase-fonts
                  qtbase-plugins qtbase-examples cinematicexperience
                  gstreamer cairo pango fontconfig freetype pulseaudio &quo=
t;<br>
                  DISTRO_FEATURES_remove =3D &quot;x11 wayland&quot;<br>
                  <br>
                  <br>
                  I tried to cross compile qt5 using poky tool chain and
                  it was successful.<br>
                  Now when i tried build an application using same tool
                  chain it required an library that is developed by my
                  colleague.<br>
                  so, when i tried to configured that library.<br>
                  <br>
                  echo $PATH<br>
                  /usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/=
usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/opt/poky/1.5.1/sysroots/x86_64-pok=
ysdk-linux/usr/bin/arm-poky-linux-gnueabi<br>
                  ./configure --prefix=3D/home/x-chokshij/hmi_rbg/libudcu-a=
rm/_Install
                  CC=3Darm-poky-linux-gnueabi-gcc
                  CXX=3Darm-poky-linux-gnueabi-g++
                  --host=3Darm-poky-linux-gnueabi --enable-shared
                  --disable-static<br>
                  <br>
                  Now when i am giving make all<br>
                  <br>
                  i am getting following error<br>
                  <br>
                  /opt/poky/1.5.1/sysroots/x86_64-pokysdk-linux/usr/libexec=
/arm-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.8.1/ld:
                  cannot find -lglib-2.0<br>
                  <br>
                  I understand this error is because poky cant find
                  glib-2.0 library. but as you can see in local.conf
                  file i installed glib-2.0 lib.<br>
                </blockquote>
              </div>
            </div>
            I think you need other environment variables set in order
            for your configure script to find the shared libraries (e.g.
            PKGCONFIG). =C2=A0You might give this a try:<br>
            <br>
            bitbake meta-ide-support<br>
            <br>
            then<br>
            <br>
            source ./tmp/environment-setup-cortexa9hf-vfp-neon-poky-linux-g=
nueabi<br>
            <br>
            I believe that this should take care of most of it. =C2=A0Let u=
s
            know how it goes.<span><font color=3D"#888888"><br>
                <br>
                John<br>
                -- <br>
                _______________________________________________<br>
                meta-freescale mailing list<br>
                <a href=3D"mailto:meta-freescale@yoctoproject.org" target=
=3D"_blank">meta-freescale@yoctoproject.org</a><br>
                <a href=3D"https://lists.yoctoproject.org/listinfo/meta-fre=
escale" target=3D"_blank">https://lists.yoctoproject.org/listinfo/meta-free=
scale</a><br>
              </font></span></blockquote>
        </div>
        <br>
      </div>
    </blockquote>
    <br>
  </div></div></div>

<br>--<br>
_______________________________________________<br>
meta-freescale mailing list<br>
<a href=3D"mailto:meta-freescale@yoctoproject.org">meta-freescale@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/meta-freescale" target=
=3D"_blank">https://lists.yoctoproject.org/listinfo/meta-freescale</a><br>
<br></div><br></div>

--047d7b472148e955be04f83e44f1--
