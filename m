Return-Path: <Liezhi.Yang@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CCE05E00876
	for <poky@yoctoproject.org>; Thu, 16 Jan 2014 23:50:32 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s0H7nueJ012379
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 16 Jan 2014 23:49:58 -0800 (PST)
Received: from [128.224.162.226] (128.224.162.226) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.2.347.0;
	Thu, 16 Jan 2014 23:49:55 -0800
Message-ID: <52D8E0A0.5050107@windriver.com>
Date: Fri, 17 Jan 2014 15:49:52 +0800
From: Robert Yang <liezhi.yang@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:24.0) Gecko/20100101 Thunderbird/24.0
MIME-Version: 1.0
To: Alexandre Belloni <alexandre.belloni@free-electrons.com>,
	<poky@yoctoproject.org>
References: <1389067342-25262-1-git-send-email-alexandre.belloni@free-electrons.com>
In-Reply-To: <1389067342-25262-1-git-send-email-alexandre.belloni@free-electrons.com>
Cc: jimwall@q.com, brian@crystalfontz.com
Subject: Re: [for-dora][PATCH] matchbox-keyboard: daemonize launch
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
X-List-Received-Date: Fri, 17 Jan 2014 07:50:41 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit


Hi Alexandre,

Sorry for the late response, I think that the master branch also has this
problem ? If so, we need fix it on master firstly, then backport it to dora.

// Robert

On 01/07/2014 12:02 PM, Alexandre Belloni wrote:
> The .shbg extension is not properly supported by the Xsession script
> provided by xserver-common.
>
> Move the main part of the Xsession.d script to a script in usr/bin then
> add a Xsession.d script to start it in the background.
>
> See discussion here:
> https://lists.yoctoproject.org/pipermail/poky/2013-December/009463.html
>
> Bug here:
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=5546
>
> Signed-off-by: Alexandre Belloni <alexandre.belloni@free-electrons.com>
> ---
>   .../matchbox-keyboard/files/80matchboxkeyboard.sh  |  3 +++
>   .../files/80matchboxkeyboard.shbg                  | 23 ----------------------
>   .../files/matchbox-keyboard-daemon.sh              | 22 +++++++++++++++++++++
>   .../matchbox-keyboard/matchbox-keyboard_git.bb     |  8 ++++++--
>   4 files changed, 31 insertions(+), 25 deletions(-)
>   create mode 100755 meta/recipes-sato/matchbox-keyboard/files/80matchboxkeyboard.sh
>   delete mode 100755 meta/recipes-sato/matchbox-keyboard/files/80matchboxkeyboard.shbg
>   create mode 100755 meta/recipes-sato/matchbox-keyboard/files/matchbox-keyboard-daemon.sh
>
> diff --git a/meta/recipes-sato/matchbox-keyboard/files/80matchboxkeyboard.sh b/meta/recipes-sato/matchbox-keyboard/files/80matchboxkeyboard.sh
> new file mode 100755
> index 000000000000..d10fd8c32c0e
> --- /dev/null
> +++ b/meta/recipes-sato/matchbox-keyboard/files/80matchboxkeyboard.sh
> @@ -0,0 +1,3 @@
> +#!/bin/sh
> +
> +/usr/bin/matchbox-keyboard-daemon.sh &
> diff --git a/meta/recipes-sato/matchbox-keyboard/files/80matchboxkeyboard.shbg b/meta/recipes-sato/matchbox-keyboard/files/80matchboxkeyboard.shbg
> deleted file mode 100755
> index 43c5d3ed6a32..000000000000
> --- a/meta/recipes-sato/matchbox-keyboard/files/80matchboxkeyboard.shbg
> +++ /dev/null
> @@ -1,23 +0,0 @@
> -#!/bin/sh
> -
> -. /etc/formfactor/config
> -
> -CMD=""
> -
> -if [ "$HAVE_KEYBOARD" = "0" ]; then
> -    CMD="matchbox-keyboard -d"
> -elif [ "$DISPLAY_CAN_ROTATE" = "1" ]; then
> -    if [ "$HAVE_KEYBOARD_PORTRAIT" = "1" -a "$HAVE_KEYBOARD_LANDSCAPE" = "0" ]; then
> -        CMD="matchbox-keyboard -d -o landscape"
> -    elif [ "$HAVE_KEYBOARD_LANDSCAPE" = "1" -a "$HAVE_KEYBOARD_PORTRAIT" = "0" ]; then
> -        CMD="matchbox-keyboard -d -o portrait"
> -    fi
> -fi
> -					
> -
> -if [ "$CMD" ]; then
> -    # Delay to make sure the window manager is active
> -    # by waiting for the desktop to say its finished loading
> -    dbus-wait org.matchbox_project.desktop Loaded
> -    exec $CMD
> -fi
> diff --git a/meta/recipes-sato/matchbox-keyboard/files/matchbox-keyboard-daemon.sh b/meta/recipes-sato/matchbox-keyboard/files/matchbox-keyboard-daemon.sh
> new file mode 100755
> index 000000000000..2975cef7e38a
> --- /dev/null
> +++ b/meta/recipes-sato/matchbox-keyboard/files/matchbox-keyboard-daemon.sh
> @@ -0,0 +1,22 @@
> +#!/bin/sh
> +
> +. /etc/formfactor/config
> +
> +CMD=""
> +
> +if [ "$HAVE_KEYBOARD" = "0" ]; then
> +    CMD="matchbox-keyboard -d"
> +elif [ "$DISPLAY_CAN_ROTATE" = "1" ]; then
> +    if [ "$HAVE_KEYBOARD_PORTRAIT" = "1" -a "$HAVE_KEYBOARD_LANDSCAPE" = "0" ]; then
> +        CMD="matchbox-keyboard -d -o landscape"
> +    elif [ "$HAVE_KEYBOARD_LANDSCAPE" = "1" -a "$HAVE_KEYBOARD_PORTRAIT" = "0" ]; then
> +        CMD="matchbox-keyboard -d -o portrait"
> +    fi
> +fi
> +
> +if [ "$CMD" ]; then
> +    # Delay to make sure the window manager is active
> +    # by waiting for the desktop to say its finished loading
> +    dbus-wait org.matchbox_project.desktop Loaded
> +    exec $CMD
> +fi
> diff --git a/meta/recipes-sato/matchbox-keyboard/matchbox-keyboard_git.bb b/meta/recipes-sato/matchbox-keyboard/matchbox-keyboard_git.bb
> index ffcabcad2215..a56d99251077 100644
> --- a/meta/recipes-sato/matchbox-keyboard/matchbox-keyboard_git.bb
> +++ b/meta/recipes-sato/matchbox-keyboard/matchbox-keyboard_git.bb
> @@ -17,7 +17,8 @@ PR = "r4"
>   SRC_URI = "git://git.yoctoproject.org/${BPN} \
>              file://configure_fix.patch;maxrev=1819 \
>              file://single-instance.patch \
> -           file://80matchboxkeyboard.shbg \
> +           file://80matchboxkeyboard.sh \
> +		   file://matchbox-keyboard-daemon.sh \
>              file://png-fix.patch"
>
>   S = "${WORKDIR}/git"
> @@ -43,7 +44,10 @@ FILES_${PN}-applet = "${libdir}/matchbox-panel/*.so"
>
>   do_install_append () {
>   	install -d ${D}/${sysconfdir}/X11/Xsession.d/
> -	install -m 755 ${WORKDIR}/80matchboxkeyboard.shbg ${D}/${sysconfdir}/X11/Xsession.d/
> +	install -m 755 ${WORKDIR}/80matchboxkeyboard.sh ${D}/${sysconfdir}/X11/Xsession.d/
> +
> +	install -d ${D}${bindir}
> +	install -m 755 ${WORKDIR}/matchbox-keyboard-daemon.sh ${D}${bindir}/
>
>   	rm -f ${D}${libdir}/gtk-2.0/*/immodules/*.la
>   	rm -f ${D}${libdir}/matchbox-panel/*.la
>

