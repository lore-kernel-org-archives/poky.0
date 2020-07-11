Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.6640.1594462172096864457
 for <poky@lists.yoctoproject.org>;
 Sat, 11 Jul 2020 03:09:32 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: berg-solutions.de, ip: 140.211.169.56, mailfrom: rberg@berg-solutions.de)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EF08EE01E4C; Sat, 11 Jul 2020 03:09:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	MIME_QP_LONG_LINE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/, low
	*      trust
	*      [80.237.132.155 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.0 MIME_QP_LONG_LINE RAW: Quoted-printable line longer than 76 chars
Received: from wp148.webpack.hosteurope.de (wp148.webpack.hosteurope.de [80.237.132.155])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EA7EFE01E07
	for <poky@yoctoproject.org>; Sat, 11 Jul 2020 03:09:30 -0700 (PDT)
Received: from ip1f126570.dynamic.kabel-deutschland.de ([31.18.101.112] helo=roelofs-mbp.fritz.box); authenticated
	by wp148.webpack.hosteurope.de running ExIM with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
	id 1juCRl-0007EK-W3; Sat, 11 Jul 2020 12:09:30 +0200
From: "Roelof" <rberg@berg-solutions.de>
Message-Id: <648A0F01-7A4E-4E80-A4A6-B35206D5FE04@berg-solutions.de>
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.80.23.2.2\))
Subject: Re: [poky] yocto under WSL
Date: Sat, 11 Jul 2020 12:09:29 +0200
In-Reply-To: <CAGNn0hZ5VcKRx7uq1P1Ome-TP9FF9zmudRDaCHO39u1M=VvH3A@mail.gmail.com>
Cc: poky@yoctoproject.org
To: R Srinivasan <s@srin.me>
References: <CAGNn0hYDMk+pSXarT1XbUOPmhyajUvcwTt7FmD78BEmeqZySzg@mail.gmail.com>
 <6753B8CB-00FC-44E2-821D-59E58DA45DE1@berg-solutions.de>
 <CAGNn0hZ5VcKRx7uq1P1Ome-TP9FF9zmudRDaCHO39u1M=VvH3A@mail.gmail.com>
X-Mailer: Apple Mail (2.3608.80.23.2.2)
X-bounce-key: webpack.hosteurope.de;rberg@berg-solutions.de;1594462171;765d8caf;
X-HE-SMSGID: 1juCRl-0007EK-W3
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_D604234C-20D7-4B93-ACCF-4000353DC3AA"

--Apple-Mail=_D604234C-20D7-4B93-ACCF-4000353DC3AA
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Quickstart example on Windows WSL2 Ubuntu bash (Ensure with winver.exe =
that Win10 build 2004 at least is installed, install and start WSL2, =
Docker for Windows:

Run Powershell as Admin, then:
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform =
/all /norestart
wsl --set-default-version 2
If asked for, update wsl2 kernel component and repeat the wsl command
Install Ubuntu V18.04 from https://aka.ms/wslstore=20
After installation, double check that it is WSL Version 2.
wsl -l -v
(If version 2, proceed. If it is still Version 1 update with: wsl =
--set-version ubuntu 2)
wsl --setdefault ubuntu

Activate WSL2 in Docker for Windows options (tray icon).

Place the file all below to the C: drive into a file called =
=E2=80=9EDockerfile=E2=80=9C. Then start =E2=80=9Ebash=E2=80=9C in a =
Windows console and about this should get you there:

sudo mkdir /srinux
cd /srinux
mkdir docker
cd docker
cp /mnt/c/Dockerfile .
docker build --tag srinux:1.0 .
cd ..
docker run --name srinux -it --rm -v /srinux:/srinux srinux:1.0 bash
cd /srinux

Now you are in a Ubuntu bash and can proceed. like wget =E2=80=A6 =
oe-init-build-env =E2=80=A6 vim /conf/local.conf ... bitbake =E2=80=A6 =
etc.

I did not try to build yocto directly in WSL2 and I saw that it might be =
incompatible, compared to a docker solution (e.g. =
https://github.com/microsoft/WSL/issues/5108 =
<https://github.com/microsoft/WSL/issues/5108>).

Best regards,
R

Dockerfile example: =
=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=
=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=
=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=
=E2=80=94=E2=80=94

FROM ubuntu:18.04

USER root

ENV USER_NAME "srinux"

RUN \
    apt-get update \
    apt-get install -y -q --no-install-recommends \
        -o Dpkg::Options::=3D"--force-confdef" -o =
Dpkg::Options::=3D"--force-confold" \
        build-essential \
        chrpath \
        cpio \
        diffstat \
        file \
        g++-multilib \
        gawk \
        gcc-multilib \
        git-core \
        locales \
        openssh-client \
        python \
        python3 \
        socat \
        sudo \
        texinfo \
        tmux \
        unzip \
        wget \
        vim \
    && rm -rf /var/lib/apt/lists/* && \
    locale-gen en_US.UTF-8

    ENV LANG=3D'en_US.UTF-8' LANGUAGE=3D'en_US:en' LC_ALL=3D'en_US.UTF-8'

RUN \
    apt-get update && \
    apt-get install -y -q --no-install-recommends \
        -o Dpkg::Options::=3D"--force-confdef" -o =
Dpkg::Options::=3D"--force-confold" \
        ca-certificates \
    && rm -rf /var/lib/apt/lists/* && \
    wget -O /usr/local/bin/repo =
https://storage.googleapis.com/git-repo-downloads/repo && \
    chmod a+x /usr/local/bin/repo

# Clean up APT when done and set shell and user options.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*       =
   \
        && rm /bin/sh && ln -s /bin/bash /bin/sh                         =
   \
        && groupadd -g 1000 ${USER_NAME}                                 =
   \
        && useradd -u 1000 -g 1000 -ms /bin/bash ${USER_NAME}            =
   \
        && usermod -a -G sudo ${USER_NAME}                               =
   \
        && usermod -a -G users ${USER_NAME}                              =
   \
        && usermod --password ${USER_NAME} ${USER_NAME}                  =
   \
        && usermod --password toor root                                  =
   \
        && passwd -d root                                                =
   \
        && passwd -d ${USER_NAME}


# Run as yocto  user from the installation path
RUN install -o 1000 -g 1000 -m 2777  -d ${EXCH_PATH}                     =
   \
        && install -o 1000 -g 1000 -m 2777 -d ${EXCH_PATH_INPUT}         =
   \
        && install -o 1000 -g 1000 -m 2777 -d ${EXCH_PATH_OUTPUT}


USER ${USER_NAME}


>=20
> On Sat, Jul 11, 2020 at 5:36 AM Roelof Berg <rberg@berg-solutions.de =
<mailto:rberg@berg-solutions.de>> wrote:
> Hi Srini,
>=20
> you can use docker [=E2=80=A6]
>=20
> >=20
> > I got myself a new laptop. Trying to decide whether to setup a VM =
for yocto development.
> >=20
> > Will the above work?
> >=20
> > thanks, srini
>=20


--Apple-Mail=_D604234C-20D7-4B93-ACCF-4000353DC3AA
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;" =
class=3D""><div>Quickstart example on Windows WSL2 Ubuntu bash (Ensure =
with winver.exe that Win10 build 2004 at least is installed, install and =
start WSL2, Docker for Windows:</div><div><br class=3D""></div><div>Run =
Powershell as Admin, then:</div><div>dism.exe /online /enable-feature =
/featurename:VirtualMachinePlatform /all /norestart<br class=3D"">wsl =
--set-default-version 2<br class=3D"">If asked for, update wsl2 kernel =
component and repeat the wsl command<br class=3D"">Install Ubuntu V18.04 =
from <a href=3D"https://aka.ms/wslstore" =
class=3D"">https://aka.ms/wslstore</a>&nbsp;<br class=3D"">After =
installation, double check that it is WSL Version 2.<br class=3D"">wsl =
-l -v<br class=3D"">(If version 2, proceed. If it is still Version 1 =
update with: wsl --set-version ubuntu 2)<br class=3D"">wsl --setdefault =
ubuntu<br class=3D""></div><div><br class=3D""></div><div>Activate WSL2 =
in Docker for Windows options (tray icon).</div><div><br =
class=3D""></div><div>Place the file all below to the C: drive into a =
file called =E2=80=9EDockerfile=E2=80=9C. Then start =E2=80=9Ebash=E2=80=9C=
 in a Windows console and about this should get you there:</div><div><br =
class=3D""></div><div><div class=3D"">sudo mkdir /srinux</div><div =
class=3D"">cd /srinux</div><div class=3D"">mkdir docker</div><div =
class=3D"">cd docker</div><div class=3D"">cp /mnt/c/Dockerfile =
.</div><div class=3D""><span style=3D"caret-color: rgb(0, 0, 0); color: =
rgb(0, 0, 0);" class=3D"">docker build --tag srinux:1.0 =
.</span></div><div class=3D"">cd ..</div><div class=3D"">docker run =
--name srinux -it --rm -v /srinux:/srinux srinux:1.0 bash</div><div =
class=3D"">cd /srinux</div><div class=3D""><br class=3D""></div><div =
class=3D"">Now you are in a Ubuntu bash and can proceed. like wget =E2=80=A6=
 oe-init-build-env =E2=80=A6 vim /conf/local.conf ... bitbake =E2=80=A6 =
etc.</div><div class=3D""><br class=3D""></div><div class=3D"">I did not =
try to build yocto directly in WSL2 and I saw that it might be =
incompatible, compared to a docker solution (e.g.&nbsp;<a =
href=3D"https://github.com/microsoft/WSL/issues/5108" =
class=3D"">https://github.com/microsoft/WSL/issues/5108</a>).</div><div =
class=3D""><br class=3D""></div><div class=3D""><div>Best =
regards,</div><div>R</div></div><div><br class=3D""></div><div>Dockerfile =
example: =
=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=
=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=
=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=
=E2=80=94=E2=80=94</div><div><br class=3D""></div><div><div>FROM =
ubuntu:18.04</div><div><br class=3D""></div><div>USER root</div><div><br =
class=3D""></div><div>ENV USER_NAME "srinux"</div><div><br =
class=3D""></div><div>RUN \</div><div>&nbsp; &nbsp; apt-get update =
\</div><div>&nbsp; &nbsp; apt-get install -y -q --no-install-recommends =
\</div><div>&nbsp; &nbsp; &nbsp; &nbsp; -o =
Dpkg::Options::=3D"--force-confdef" -o Dpkg::Options::=3D"--force-confold"=
 \</div><div>&nbsp; &nbsp; &nbsp; &nbsp; build-essential =
\</div><div>&nbsp; &nbsp; &nbsp; &nbsp; chrpath \</div><div>&nbsp; =
&nbsp; &nbsp; &nbsp; cpio \</div><div>&nbsp; &nbsp; &nbsp; &nbsp; =
diffstat \</div><div>&nbsp; &nbsp; &nbsp; &nbsp; file \</div><div>&nbsp; =
&nbsp; &nbsp; &nbsp; g++-multilib \</div><div>&nbsp; &nbsp; &nbsp; =
&nbsp; gawk \</div><div>&nbsp; &nbsp; &nbsp; &nbsp; gcc-multilib =
\</div><div>&nbsp; &nbsp; &nbsp; &nbsp; git-core \</div><div>&nbsp; =
&nbsp; &nbsp; &nbsp; locales \</div><div>&nbsp; &nbsp; &nbsp; &nbsp; =
openssh-client \</div><div>&nbsp; &nbsp; &nbsp; &nbsp; python =
\</div><div>&nbsp; &nbsp; &nbsp; &nbsp; python3 \</div><div>&nbsp; =
&nbsp; &nbsp; &nbsp; socat \</div><div>&nbsp; &nbsp; &nbsp; &nbsp; sudo =
\</div><div>&nbsp; &nbsp; &nbsp; &nbsp; texinfo \</div><div>&nbsp; =
&nbsp; &nbsp; &nbsp; tmux \</div><div>&nbsp; &nbsp; &nbsp; &nbsp; unzip =
\</div><div>&nbsp; &nbsp; &nbsp; &nbsp; wget \</div><div>&nbsp; &nbsp; =
&nbsp; &nbsp; vim \</div><div>&nbsp; &nbsp; &amp;&amp; rm -rf =
/var/lib/apt/lists/* &amp;&amp; \</div><div>&nbsp; &nbsp; locale-gen =
en_US.UTF-8</div><div><br class=3D""></div><div>&nbsp; &nbsp; ENV =
LANG=3D'en_US.UTF-8' LANGUAGE=3D'en_US:en' =
LC_ALL=3D'en_US.UTF-8'</div><div><br class=3D""></div><div>RUN =
\</div><div>&nbsp; &nbsp; apt-get update &amp;&amp; \</div><div>&nbsp; =
&nbsp; apt-get install -y -q --no-install-recommends \</div><div>&nbsp; =
&nbsp; &nbsp; &nbsp; -o Dpkg::Options::=3D"--force-confdef" -o =
Dpkg::Options::=3D"--force-confold" \</div><div>&nbsp; &nbsp; &nbsp; =
&nbsp; ca-certificates \</div><div>&nbsp; &nbsp; &amp;&amp; rm -rf =
/var/lib/apt/lists/* &amp;&amp; \</div><div>&nbsp; &nbsp; wget -O =
/usr/local/bin/repo <a =
href=3D"https://storage.googleapis.com/git-repo-downloads/repo" =
class=3D"">https://storage.googleapis.com/git-repo-downloads/repo</a> =
&amp;&amp; \</div><div>&nbsp; &nbsp; chmod a+x =
/usr/local/bin/repo</div><div><br class=3D""></div><div># Clean up APT =
when done and set shell and user options.</div><div>RUN apt-get clean =
&amp;&amp; rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp;\</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &amp;&amp; =
rm /bin/sh &amp;&amp; ln -s /bin/bash /bin/sh &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;\</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &amp;&amp; groupadd -g =
1000 ${USER_NAME} &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;\</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &amp;&amp; useradd -u 1000 =
-g 1000 -ms /bin/bash ${USER_NAME} &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; \</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &amp;&amp; usermod =
-a -G sudo ${USER_NAME} &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;\</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &amp;&amp; usermod -a -G =
users ${USER_NAME} &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
\</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &amp;&amp; usermod --password =
${USER_NAME} ${USER_NAME} &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; \</div><div>&nbsp; &nbsp; &nbsp; &nbsp; =
&amp;&amp; usermod --password toor root &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; \</div><div>&nbsp; &nbsp; &nbsp; &nbsp; =
&amp;&amp; passwd -d root &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
\</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &amp;&amp; passwd -d =
${USER_NAME}</div><div><br class=3D""></div><div><br =
class=3D""></div><div># Run as yocto &nbsp;user from the installation =
path</div><div>RUN install -o 1000 -g 1000 -m 2777 &nbsp;-d ${EXCH_PATH} =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp;\</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &amp;&amp; install =
-o 1000 -g 1000 -m 2777 -d ${EXCH_PATH_INPUT} &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp;\</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &amp;&amp; =
install -o 1000 -g 1000 -m 2777 -d ${EXCH_PATH_OUTPUT}</div><div><br =
class=3D""></div><div><br class=3D""></div><div>USER =
${USER_NAME}</div><div class=3D""><br =
class=3D""></div></div></div><div><br class=3D""><blockquote type=3D"cite"=
 class=3D""><div class=3D""><br class=3D""><div class=3D"gmail_quote"><div=
 dir=3D"ltr" class=3D"gmail_attr">On Sat, Jul 11, 2020 at 5:36 AM Roelof =
Berg &lt;<a href=3D"mailto:rberg@berg-solutions.de" =
class=3D"">rberg@berg-solutions.de</a>&gt; wrote:<br =
class=3D""></div><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px =
0.8ex;border-left-width:1px;border-left-style:solid;border-left-color:rgb(=
204,204,204);padding-left:1ex">Hi Srini,<br class=3D"">
<br class=3D"">
you can use docker [=E2=80=A6]<br class=3D"">
<br class=3D"">
&gt; <br class=3D"">
&gt; I got myself a new laptop. Trying to decide whether to setup a VM =
for yocto development.<br class=3D"">
&gt; <br class=3D"">
&gt; Will the above work?<br class=3D"">
&gt; <br class=3D"">
&gt; thanks, srini<br class=3D"">
<br class=3D"">
</blockquote></div>
</div></blockquote></div><br class=3D""></body></html>=

--Apple-Mail=_D604234C-20D7-4B93-ACCF-4000353DC3AA--
