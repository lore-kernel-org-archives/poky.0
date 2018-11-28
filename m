Return-Path: <themichaeleden@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6E80EE0095C; Wed, 28 Nov 2018 07:45:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (themichaeleden[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.49 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com
	[209.85.210.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B3140E0095C
	for <poky@yoctoproject.org>; Wed, 28 Nov 2018 07:45:50 -0800 (PST)
Received: by mail-ot1-f49.google.com with SMTP id 81so23946625otj.2
	for <poky@yoctoproject.org>; Wed, 28 Nov 2018 07:45:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=JSY3DqtC8WdwyflcJ6SZjEB0sZ/13F9GFaJ0CLR1l8o=;
	b=jqj0ylUV2THDxWTTU5WFCuICUW2PcaX+tBORQMcEtpJDosNFyp5hu6ANLSJQCIud0a
	IxcC8jXoo7Ul09yrF2cm1xhVL0Q7efakDKc05t9jQCPGkPYALTZ1HuCDBl5jii1BxHeP
	WTzgUFhsb2l2zc6Nfp8ZMdkO0WbhaySAIuTS80sNkP7f53OXDDlE806OJ6X5JcUrN5XL
	aAfqsl3Xiptgq6M9alFQK5U71f9FjOMuV+oiFBS6+DvZ5cxP8xhHNFk6kRHmmT6tgDqQ
	Ss7t8++hP1dFeINAsQgH2yj0STs8VoG0/ExT8BdivosHfs48+SY72ONaK5xr2nmDXpxL
	zk4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=JSY3DqtC8WdwyflcJ6SZjEB0sZ/13F9GFaJ0CLR1l8o=;
	b=XljKovbx7BcFarSknAwnDOdFayaNFJuxi3coChs3Q5o4oA821/aMp7Q5wUgyVzDKGv
	5eF9gzdRNHx/7VwdJwVBhF4oPwdxTPV7H/QccbJ6XdhcUusjQWpFjfnSivwNxdgDMgQO
	TiojuMIIq/9PuHx2jYKwrSAee5b4nbp8Wggqa8vUEPeA/4DPiqkns9gSR3oJyaTqWrDu
	vsQqJGW6UyvhwPzcg8BKWmIY0xHscJ98+8W3fKHCYlRp3wFwBkuDxaiNI2V3z6NdvC1C
	825yr1aeqvIXIlSc4a+zNUENrZrly7RLTLykAbpZ5caZlghkQ9eUqjLK9mOh5SMEbN9a
	XHuw==
X-Gm-Message-State: AA+aEWakQVz9eJ4O0QMmltM/7l7PtKtc/TZU/TP9HXdAsnCLPMl+amwA
	YX9CcMq9m4vaFvWKp52W3cq5/Ci9hwU1alWM4nddIiBL
X-Google-Smtp-Source: AFSGD/XY77kU4zFhjcdNScLliMVYTXrUi/KVyXyY74/b9xkiDi+CqJbYgi+C4mW8S58EmPaCchRa0l+sKKkOr1Drrq4=
X-Received: by 2002:a9d:3ac:: with SMTP id f41mr16775885otf.98.1543419949634; 
	Wed, 28 Nov 2018 07:45:49 -0800 (PST)
MIME-Version: 1.0
From: Michael Eden <themichaeleden@gmail.com>
Date: Wed, 28 Nov 2018 10:45:38 -0500
Message-ID: <CALY5Q2sMKKzGREHOsLvLiV7Bn4qrdP+BQWHL3RDZoev86Fe2jQ@mail.gmail.com>
To: poky@yoctoproject.org
Subject: Small Patches to Poky
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
X-List-Received-Date: Wed, 28 Nov 2018 15:45:51 -0000
Content-Type: text/plain; charset="UTF-8"

Hi all,

Forgive me because I'm new, but I'm currently I'm maintaining 2
patches to issues that I'd like to officially fix.
The first is more of a convenience and changes `cp` to `cp -f` since
I've noticed that this operation sometimes fails (if the file already
exists):

diff --git a/meta/classes/autotools.bbclass b/meta/classes/autotools.bbclass
index cc857acc3e..0e234fae42 100644
--- a/meta/classes/autotools.bbclass
+++ b/meta/classes/autotools.bbclass
@@ -202,7 +202,7 @@ autotools_do_configure() {
                        fi
                elif [ "${BPN}" != "gettext" ] && grep -q
"^[[:space:]]*AM_GNU_GETTEXT" $CONFIGURE_AC; then
                        # We'd call gettextize here if it wasn't so broken...
-                       cp
${STAGING_DATADIR_NATIVE}/gettext/config.rpath ${AUTOTOOLS_AUXDIR}/
+                       cp -f
${STAGING_DATADIR_NATIVE}/gettext/config.rpath ${AUTOTOOLS_AUXDIR}/
                        if [ -d ${S}/po/ ]; then
                                cp -f
${STAGING_DATADIR_NATIVE}/gettext/po/Makefile.in.in ${S}/po/
                                if [ ! -e ${S}/po/remove-potcdate.sin ]; then

The second is more complex and I've been using the following workaround:

diff --git a/meta/classes/useradd_base.bbclass
b/meta/classes/useradd_base.bbclass
index 551c82c322..ef27ae6cae 100644
--- a/meta/classes/useradd_base.bbclass
+++ b/meta/classes/useradd_base.bbclass
@@ -34,6 +34,7 @@ perform_useradd () {
        local username=`echo "$opts" | awk '{ print $NF }'`
        local user_exists="`grep "^$username:" $rootdir/etc/passwd || true`"
        if test "x$user_exists" = "x"; then
+               export LD_LIBRARY_PATH="${LD_LIBRARY_PATH}:/usr/lib"
                eval flock -x $rootdir${sysconfdir} -c  \"$PSEUDO
useradd \$opts\" || true
                user_exists="`grep "^$username:" $rootdir/etc/passwd || true`"
                if test "x$user_exists" = "x"; then

The above is needed because useradd (native) depends on libattr.so.1
which is _not_ built and put in the native-sysroot.
Somewhere an attr-native dependency has to be added but I'm not sure
where since this is a class that can be inherited into many recipes.
I worked around this by installing attr on my machine and adding the
correct path to LD_LIBRARY_PATH.

I'd appreciate help in debugging and submitting the updated useradd
class to sumo.

Best,
Michael Eden

