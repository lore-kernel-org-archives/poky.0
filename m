Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.10789.1594884770233483879
 for <poky@lists.yoctoproject.org>;
 Thu, 16 Jul 2020 00:32:50 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: berg-solutions.de, ip: 140.211.169.56, mailfrom: rberg@berg-solutions.de)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0F40FE01E8C; Thu, 16 Jul 2020 00:32:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/, low
	*      trust
	*      [80.237.132.155 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from wp148.webpack.hosteurope.de (wp148.webpack.hosteurope.de [80.237.132.155])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DD974E01E8A
	for <poky@yoctoproject.org>; Thu, 16 Jul 2020 00:32:47 -0700 (PDT)
Received: from ip1f126570.dynamic.kabel-deutschland.de ([31.18.101.112] helo=roelofs-mbp.fritz.box); authenticated
	by wp148.webpack.hosteurope.de running ExIM with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
	id 1jvyNq-0000b1-Fk; Thu, 16 Jul 2020 09:32:46 +0200
From: "Roelof" <rberg@berg-solutions.de>
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.1\))
Subject: Re: [poky] do_image_wic failed with exit code '1', Codepage 850
Date: Thu, 16 Jul 2020 09:32:45 +0200
References: <4C5E3FDA-E32C-40CB-81CC-D647E53DB9D7@berg-solutions.de>
 <14e9e6f37e9bc9478772f3d67ebb50642eb83625.camel@linuxfoundation.org>
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
 poky@yoctoproject.org
In-Reply-To: <14e9e6f37e9bc9478772f3d67ebb50642eb83625.camel@linuxfoundation.org>
Message-Id: <82D0D9E4-D18E-4AB5-BC6F-3EEBB391DD69@berg-solutions.de>
X-Mailer: Apple Mail (2.3608.120.23.2.1)
X-bounce-key: webpack.hosteurope.de;rberg@berg-solutions.de;1594884767;e8253a19;
X-HE-SMSGID: 1jvyNq-0000b1-Fk
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Thanks so much.

DISTRO_VERSION =3D "2.7.4"
DISTRO_CODENAME =3D =E2=80=9Ewarrior

The same image runs on: Ubuntu 18.1
Does not run on: opensuse/leap:15.1

Docker images, the Ubuntu is compatible, the SUSE not yet.=20

=3D=3D SUSE =
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

FROM opensuse/leap:15.1

USER root


ENV USER_NAME "remux"
ENV EXCH_PATH "/${USER_NAME}"
ENV EXCH_PATH_INPUT "${EXCH_PATH}/input"
ENV EXCH_PATH_OUTPUT "${EXCH_PATH}/output"

# Upgrade system and set locale
RUN zypper -n dup
RUN sed -i "s/\(RC_LANG *=3D *\).*/\1\\\"en_US.utf8\\\"/" =
/etc/sysconfig/language
RUN sed -i "s/\(RC_LC_ALL *=3D *\).*/\1\\\"en_US.utf8\\\"/" =
/etc/sysconfig/language
ENV LANG en_US.UTF-8
ENV LC_ALL en_US.UTF-8


# Install recommendations from yocto project
RUN zypper -n install python gcc gcc-c++ git chrpath make wget =
python-xml   \
    diffstat makeinfo python-curses patch socat

# Install what we want to add to Remux
RUN zypper -n install sudo vim tmux nano bash-completion iputils xterm =
tree \
    nfs-client subversion qt-creator curl sudo python3 python3-curses =
bzip2 \
    gzip hostname tar which

# Configure time zone
RUN rm -rf /etc/localtime
RUN ln -s /usr/share/zoneinfo/Europe/Berlin /etc/localtime

# Configure vim (show line-numbers and tab characters)
RUN echo -e "OCset number\nset list\nset lcs=3Dtab:\\|\\" > ~/.vimrc

# Add passwordless group wheel to sudoers file
RUN echo '%wheel ALL=3D(ALL) NOPASSWD: ALL' | (EDITOR=3D'tee -a' visudo)

# Clean up and set shell and user options.
RUN rm -rf /tmp/* /var/tmp/*                                             =
   \
        && rm /bin/sh && ln -s /bin/bash /bin/sh                         =
   \
	&& groupadd -g 1001 wheel                                        =
   \
	&& groupadd -g 1000 ${USER_NAME}                                 =
   \
        && useradd -u 1000 -g 1000 -ms /bin/bash ${USER_NAME}            =
   \
        && usermod -a -G wheel ${USER_NAME}                              =
   \
        && usermod -a -G users ${USER_NAME}                              =
   \
        && usermod --password ${USER_NAME} ${USER_NAME}                  =
   \
        && usermod --password toor root                                  =
   \
        && passwd -d root                                                =
   \
        && passwd -d ${USER_NAME}                          =20

# Install mount point for NFS
RUN mkdir /mnt/filer && chown ${USER_NAME}:${USER_NAME} /mnt/filer       =
   \
        && chmod 777 /mnt/filer

# Install repo
RUN curl -o /usr/local/bin/repo =
https://storage.googleapis.com/git-repo-downloads/repo \
        && chmod a+x /usr/local/bin/repo

# Run as yocto  user from the installation path
RUN install -o 1000 -g 1000 -m 2777  -d ${EXCH_PATH}                     =
   \
        && install -o 1000 -g 1000 -m 2777 -d ${EXCH_PATH_INPUT}         =
   \
        && install -o 1000 -g 1000 -m 2777 -d ${EXCH_PATH_OUTPUT}


USER ${USER_NAME}

WORKDIR ${EXCH_PATH}

#ENTRYPOINT /bin/bash
CMD [ "bash", "/srv/.dockerjob_nostromo.sh=E2=80=9C]

=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

=3D UBUNTU =
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

FROM ubuntu:18.04

USER root


ENV USER_NAME "remux"
ENV EXCH_PATH "/${USER_NAME}"
ENV EXCH_PATH_INPUT "${EXCH_PATH}/input"
ENV EXCH_PATH_OUTPUT "${EXCH_PATH}/output"
ARG DEBIAN_FRONTEND=3Dnoninteractive

# Upgrade system and Yocto Proyect basic dependencies and set to locals
RUN apt-get -o Acquire::Check-Valid-Until=3Dfalse -o =
Acquire::Check-Date=3Dfalse -o Acquire::Max-FutureTime=3D86400 update \
        && apt-get -y upgrade && apt-get clean                           =
   \
        && apt-get -y install locales apt-utils sudo                     =
   \
        && dpkg-reconfigure locales                                      =
   \
        && locale-gen en_US.UTF-8                                        =
   \
        && update-locale LC_ALL=3Den_US.UTF-8 LANG=3Den_US.UTF-8


ENV LANG en_US.UTF-8
ENV LC_ALL en_US.UTF-8


# Install packedes into the image
RUN apt-get -y install gawk wget git diffstat unzip texinfo              =
    \=20
        gcc-multilib build-essential chrpath socat cpio python3-lxml =
python3 \
        python3-pip python3-pexpect xz-utils debianutils iputils-ping    =
    \
        libsdl1.2-dev xterm curl vim bash-completion tree apt-utils      =
    \
        python3-git python3-jinja2 libegl1-mesa libsdl1.2-dev  pylint    =
    \
        python python-lxml tmux subversion git-core g++-multilib         =
    \=20
        g++-5-multilib syslinux zip nano                                 =
    \
        qtcreator nfs-common

# Configure time zone
RUN rm -rf /etc/localtime
RUN ln -s /usr/share/zoneinfo/Europe/Berlin /etc/localtime

# Configure vim (show line-numbers and tab characters)
RUN echo -e "OCset number\nset list\nset lcs=3Dtab:\\|\\" > ~/.vimrc

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
        && passwd -d ${USER_NAME}                          =20

# Install mount point for NFS
RUN mkdir /mnt/filer && chown ${USER_NAME}:${USER_NAME} /mnt/filer       =
   \
        && chmod 777 /mnt/filer

# Install repo
RUN curl -o /usr/local/bin/repo =
https://storage.googleapis.com/git-repo-downloads/repo \
        && chmod a+x /usr/local/bin/repo

# Run as yocto  user from the installation path
RUN install -o 1000 -g 1000 -m 2777  -d ${EXCH_PATH}                     =
   \
        && install -o 1000 -g 1000 -m 2777 -d ${EXCH_PATH_INPUT}         =
   \
        && install -o 1000 -g 1000 -m 2777 -d ${EXCH_PATH_OUTPUT}


USER ${USER_NAME}

WORKDIR ${EXCH_PATH}

#ENTRYPOINT /bin/bash
CMD [ "bash", "/srv/.dockerjob_nostromo.sh"]

=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

> Am 16.07.2020 um 08:44 schrieb Richard Purdie =
<richard.purdie@linuxfoundation.org>:
>=20
> On Thu, 2020-07-16 at 08:39 +0200, Roelof wrote:
>> Error in do_image_wic when building in an openSUSE based docker image
>> (the customers IT only allows SUSE). Any ideas where this might be
>> coming from ? Thanks a lot.
>>=20
>> mcopy outputs
>> output: Error converting to codepage 850 Invalid argument
>> Cannot initialize '::'
>> Bad target ::/
>>=20
>>=20
>=20
> Which release of the project is this? Are you using any buildtools
> tarball? Is uninative enabled?
>=20
> It sounds like there is missing codepage/locale data. Whether that is
> on the host system or from the project, its hard to say based on the
> limited info about the version/configuration.
>=20
> Cheers,
>=20
> Richard

