Return-Path: <magnificopaddy@gmail.com>
Received: from mail-vw0-f48.google.com (mail-vw0-f48.google.com
	[209.85.212.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 18B9CE003E3
	for <poky@yoctoproject.org>; Sat,  4 Feb 2012 02:53:15 -0800 (PST)
Received: by vbjk13 with SMTP id k13so4527021vbj.35
	for <poky@yoctoproject.org>; Sat, 04 Feb 2012 02:53:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:sender:date:x-google-sender-auth:message-id:subject
	:from:to:cc:content-type;
	bh=FNbAaTsPtcNE9UvAHvL45ZQmOsuKLmIMJUZW+1ft+JI=;
	b=kBhydE70dDbFIOdp8psfP4/zJYCmOou4Ss/OIT+Q48Fb2863VtGOP/BMaofjZo8APY
	NoT1iVvyHQ7ibKczvrci+qMnZpq0NYJxN1jRxXYKpNfC8VQG9pa1qhB0fvuomzc9Ck6g
	149g/rjvd9dqIZUA17LRfZjB5Q/SfCTRVFZRc=
MIME-Version: 1.0
Received: by 10.52.26.199 with SMTP id n7mr5632734vdg.17.1328352794605; Sat,
	04 Feb 2012 02:53:14 -0800 (PST)
Sender: magnificopaddy@gmail.com
Received: by 10.52.38.233 with HTTP; Sat, 4 Feb 2012 02:53:14 -0800 (PST)
Date: Sat, 4 Feb 2012 10:53:14 +0000
X-Google-Sender-Auth: Tj3zLblUOmdc4uNlO5hB5Mzzap8
Message-ID: <CAMeAviSsRcsO8283-tKYWudpEFJVfeNHTNMAnUsU1H3K5Ln_sw@mail.gmail.com>
From: "Bryan O'Donoghue" <bryan.odonoghue@intel.com>
To: poky@yoctoproject.org
Subject: Applying a defconfig easily to a kernel
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 04 Feb 2012 10:53:15 -0000
Content-Type: text/plain; charset=ISO-8859-1

Greetings list.

I've had a hard time applying a complete - unmodified defconfig to my
local git kernel config. So rather than dig through the internals of
the build process, I took the following short-cut.

It works - is it "wrong" though ? I like it because it's
easy/straightforward. Basically if I define a defconfig - the system
will trust the file and apply it directly - which I suspect is what
99% of people who supply a defconfig will want anyway.

Consider applying.

diff --git a/meta/classes/kernel-yocto.bbclass
b/meta/classes/kernel-yocto.bbclass
index 1b73e6e..f278472 100644
--- a/meta/classes/kernel-yocto.bbclass
+++ b/meta/classes/kernel-yocto.bbclass
@@ -178,8 +178,15 @@ do_kernel_configme() {
               exit 1
       fi

-       echo "# Global settings from linux recipe" >> ${B}/.config
-       echo "CONFIG_LOCALVERSION="\"${LINUX_VERSION_EXTENSION}\" >>
${B}/.config
+       if [ -f ${WORKDIR}/defconfig ]; then
+               echo "[INFO] HAVE A DEFCONFIG - copying verbatim"
+               cat ${WORKDIR}/defconfig
+               cp ${WORKDIR}/defconfig ${B}/.config
+       else
+               echo "# Global settings from linux recipe" >> ${B}/.config
+               echo
"CONFIG_LOCALVERSION="\"${LINUX_VERSION_EXTENSION}\" >> ${B}/.config
+       fi
+
 }

 python do_kernel_configcheck()

