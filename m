Return-Path: <anton@advancedtelematic.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5E2FAE009A5; Fri, 24 Feb 2017 06:50:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f177.google.com (mail-wr0-f177.google.com
	[209.85.128.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A723DE0049D
	for <poky@yoctoproject.org>; Fri, 24 Feb 2017 06:50:22 -0800 (PST)
Received: by mail-wr0-f177.google.com with SMTP id g10so12784636wrg.2
	for <poky@yoctoproject.org>; Fri, 24 Feb 2017 06:50:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=advancedtelematic.com; s=google;
	h=subject:to:references:cc:from:message-id:date:user-agent
	:mime-version:in-reply-to;
	bh=jckLEhDSk920RByXU3Xr2hoEmil1UMF1qti/wRDV944=;
	b=i+x7wHSKxpFxNVUP2iwazaPxrqGWCPio7rYP81Mksrx2GDXL/7n/hmeBGxV3cnvak9
	GkQJYu9l2Ft0k0ObfJ8pEVr2dCys4p0N6Yem8ad4bE9+vP8KZrnAUeTStVbr7FnXJdbE
	EmkoqUC/Ewqsxv06LsnrzgMZlWXyEQ+5qkGw4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:cc:from:message-id:date
	:user-agent:mime-version:in-reply-to;
	bh=jckLEhDSk920RByXU3Xr2hoEmil1UMF1qti/wRDV944=;
	b=aMSaJqIQ6A9XvrdgWS5egQX/fW2BnXhCHmxKjrL5WdlChABFx0R/EQFciwyND43Lmt
	anOtcWHMDoD2gGA6gOuRJoxM99Ugd7TK97/2M1/oFVl2aWgWeZz96XFhWZhEJHI/Msh8
	4p/vNECECz8bpAh02z1/lM9qT2CTsZQIY80G19r9YGy7Xw7Ssv0zu+UujnSa4hbsbf9O
	HUepaxFVzajuqOc2ykZmtsMAlENOKlVe/J/UH+w8lSRqUgQKsELDcc+WEHCP/Rg/hpaT
	TYgpYSp5SCNm/HsaQzIZIeXLa/wgW5040kLVp3oH1fZX34wVvNisPvN8U9jh0wf6E5UV
	Q6yQ==
X-Gm-Message-State: AMke39m69LaonOL5f0cqAtdica/HvxH80UJUnUWHKvxjqrZRwF5pTTl920uQgAQxc1E9pw==
X-Received: by 10.223.142.34 with SMTP id n31mr2774486wrb.11.1487947821429;
	Fri, 24 Feb 2017 06:50:21 -0800 (PST)
Received: from [192.168.1.109] (p57bf9f95.dip0.t-ipconnect.de.
	[87.191.159.149]) by smtp.gmail.com with ESMTPSA id
	k34sm9000409wrk.26.2017.02.24.06.50.20
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 24 Feb 2017 06:50:20 -0800 (PST)
To: "Burton, Ross" <ross.burton@intel.com>
References: <20170224092002.1059-1-anton@advancedtelematic.com>
	<CAJTo0LbVx-6eF1WQh6NxFuo1D1OBo5k5tpZVRBYWEqxWgLAe6w@mail.gmail.com>
From: Anton Gerasimov <anton@advancedtelematic.com>
Message-ID: <27ca2192-3d03-ed02-b811-96798dbe4c55@advancedtelematic.com>
Date: Fri, 24 Feb 2017 15:43:42 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.7.1
MIME-Version: 1.0
In-Reply-To: <CAJTo0LbVx-6eF1WQh6NxFuo1D1OBo5k5tpZVRBYWEqxWgLAe6w@mail.gmail.com>
Cc: Seebs <seebs@seebs.net>, Poky Project <poky@yoctoproject.org>
Subject: Re: [PATCH 1/1] Filter out erroneous POSIX ACLs
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
X-List-Received-Date: Fri, 24 Feb 2017 14:50:24 -0000
Content-Type: multipart/alternative;
	boundary="------------706354967DCB21F63B5154F0"

--------------706354967DCB21F63B5154F0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

Hi Ross,

thanks, I'll resubmit to yocto.

Best,
Anton


On 02/24/2017 03:47 PM, Burton, Ross wrote:
> Hi Anton,
>
> Thanks for the patch, but this should go to the yocto@ list, not poky@.
>
> Also please ensure that the subject line has [pseudo] in so that Peter
> notices it!
>
> Ross
>
> On 24 February 2017 at 09:20, <anton@advancedtelematic.com
> <mailto:anton@advancedtelematic.com>> wrote:
>
>     From: Anton Gerasimov <anton@advancedtelematic.com
>     <mailto:anton@advancedtelematic.com>>
>
>     The difference between what we see in pseudo and what happens without
>     pseudo can be seen by typing:
>
>         mkdir setfattr-test
>         setfattr -n system.posix_acl_default -v 0x02000000 setfattr-test
>         getfattr -n system.posix_acl_default setfattr-test
>
>     Under some kernel configurations this difference leads to annoying
>     errors, e.g. directories copied with 'cp -a' get broken in a fancy
>     way.
>
>     Signed-off-by: Anton Gerasimov <anton@advancedtelematic.com
>     <mailto:anton@advancedtelematic.com>>
>     ---
>      ports/linux/xattr/pseudo_wrappers.c | 23 +++++++++++++++++++++--
>      1 file changed, 21 insertions(+), 2 deletions(-)
>
>     diff --git a/ports/linux/xattr/pseudo_wrappers.c
>     b/ports/linux/xattr/pseudo_wrappers.c
>     index 46bc053..31a6baf 100644
>     --- a/ports/linux/xattr/pseudo_wrappers.c
>     +++ b/ports/linux/xattr/pseudo_wrappers.c
>     @@ -64,7 +64,7 @@ posix_permissions(const acl_header *header, int
>     entries, int *extra, int *mode)
>             if (le32(header->version) != 2) {
>                     pseudo_diag("Fatal: ACL support no available for
>     header version %d.\n",
>                             le32(header->version));
>     -               return 1;
>     +               return -1;
>             }
>             *mode = 0;
>             *extra = 0;
>     @@ -140,12 +140,27 @@ static int shared_setxattr(const char *path,
>     int fd, const char *name, const voi
>             pseudo_debug(PDBGF_XATTR, "setxattr(%s [fd %d], %s =>
>     '%.*s')\n",
>                     path ? path : "<no path>", fd, name, (int) size,
>     (char *) value);
>
>     +       /* Filter out erroneous sizes for POSIX ACL
>     +        *  see posix_acl_xattr_count in
>     include/linux/posix_acl_xattr.h of Linux source code */
>     +       if (!strcmp(name, "system.posix_acl_access") ||
>     !strcmp(name, "system.posix_acl_default")) {
>     +               // ACL is corrupt, issue an error
>     +               if(size < sizeof(acl_header) || (size -
>     sizeof(acl_header)) % sizeof(acl_entry) != 0) {
>     +                       errno = EINVAL;
>     +                       return -1;
>     +               }
>     +
>     +               // ACL is empty, do nothing
>     +               if((size - sizeof(acl_header)) / sizeof(acl_entry)
>     == 0) {
>     +                       return 0;
>     +               }
>     +       }
>             /* this may be a plain chmod */
>             if (!strcmp(name, "system.posix_acl_access")) {
>                     int extra;
>                     int mode;
>                     int entries = (size - sizeof(acl_header)) /
>     sizeof(acl_entry);
>     -               if (!posix_permissions(value, entries, &extra,
>     &mode)) {
>     +               int res = posix_permissions(value, entries,
>     &extra, &mode);
>     +               if (res == 0) {
>                             pseudo_debug(PDBGF_XATTR,
>     "posix_acl_access translated to mode %04o. Remaining attribute(s):
>     %d.\n",
>                                     mode, extra);
>                             buf.st_mode = mode;
>     @@ -164,8 +179,12 @@ static int shared_setxattr(const char *path,
>     int fd, const char *name, const voi
>                             if (!extra) {
>                                     return 0;
>                             }
>     +               } else if (res == -1) {
>     +                       errno = EOPNOTSUPP;
>     +                       return -1;
>                     }
>             }
>     +
>             if (!strcmp(name, "user.pseudo_data")) {
>                     pseudo_debug(PDBGF_XATTR | PDBGF_XATTRDB,
>     "user.pseudo_data xattribute does not get to go in database.\n");
>                     return -1;
>     --
>     2.11.1
>
>     --
>     _______________________________________________
>     poky mailing list
>     poky@yoctoproject.org <mailto:poky@yoctoproject.org>
>     https://lists.yoctoproject.org/listinfo/poky
>     <https://lists.yoctoproject.org/listinfo/poky>
>
>

-- 
Anton Gerasimov, ATS Advanced Telematic Systems GmbH
Kantstrasse 162, 10623 Berlin
Managing Directors: Dirk Pöschl, Armin G. Schmidt
Register Court: HRB 151501 B, Amtsgericht Charlottenburg


--------------706354967DCB21F63B5154F0
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <p>Hi Ross,</p>
    <p>thanks, I'll resubmit to yocto.</p>
    <p>Best,<br>
      Anton<br>
    </p>
    <br>
    <div class="moz-cite-prefix">On 02/24/2017 03:47 PM, Burton, Ross
      wrote:<br>
    </div>
    <blockquote
cite="mid:CAJTo0LbVx-6eF1WQh6NxFuo1D1OBo5k5tpZVRBYWEqxWgLAe6w@mail.gmail.com"
      type="cite">
      <div dir="ltr">Hi Anton,
        <div><br>
        </div>
        <div>Thanks for the patch, but this should go to the yocto@
          list, not poky@.
          <div><br>
          </div>
          <div>Also please ensure that the subject line has [pseudo] in
            so that Peter notices it!</div>
          <div><br>
          </div>
          <div>Ross</div>
        </div>
      </div>
      <div class="gmail_extra"><br>
        <div class="gmail_quote">On 24 February 2017 at 09:20, <span
            dir="ltr">&lt;<a moz-do-not-send="true"
              href="mailto:anton@advancedtelematic.com" target="_blank">anton@advancedtelematic.com</a>&gt;</span>
          wrote:<br>
          <blockquote class="gmail_quote" style="margin:0 0 0
            .8ex;border-left:1px #ccc solid;padding-left:1ex">From:
            Anton Gerasimov &lt;<a moz-do-not-send="true"
              href="mailto:anton@advancedtelematic.com">anton@advancedtelematic.com</a>&gt;<br>
            <br>
            The difference between what we see in pseudo and what
            happens without<br>
            pseudo can be seen by typing:<br>
            <br>
                mkdir setfattr-test<br>
                setfattr -n system.posix_acl_default -v 0x02000000
            setfattr-test<br>
                getfattr -n system.posix_acl_default setfattr-test<br>
            <br>
            Under some kernel configurations this difference leads to
            annoying<br>
            errors, e.g. directories copied with 'cp -a' get broken in a
            fancy way.<br>
            <br>
            Signed-off-by: Anton Gerasimov &lt;<a moz-do-not-send="true"
              href="mailto:anton@advancedtelematic.com">anton@advancedtelematic.com</a>&gt;<br>
            ---<br>
             ports/linux/xattr/pseudo_<wbr>wrappers.c | 23
            +++++++++++++++++++++--<br>
             1 file changed, 21 insertions(+), 2 deletions(-)<br>
            <br>
            diff --git a/ports/linux/xattr/pseudo_<wbr>wrappers.c
            b/ports/linux/xattr/pseudo_<wbr>wrappers.c<br>
            index 46bc053..31a6baf 100644<br>
            --- a/ports/linux/xattr/pseudo_<wbr>wrappers.c<br>
            +++ b/ports/linux/xattr/pseudo_<wbr>wrappers.c<br>
            @@ -64,7 +64,7 @@ posix_permissions(const acl_header
            *header, int entries, int *extra, int *mode)<br>
                    if (le32(header-&gt;version) != 2) {<br>
                            pseudo_diag("Fatal: ACL support no available
            for header version %d.\n",<br>
                                    le32(header-&gt;version));<br>
            -               return 1;<br>
            +               return -1;<br>
                    }<br>
                    *mode = 0;<br>
                    *extra = 0;<br>
            @@ -140,12 +140,27 @@ static int shared_setxattr(const char
            *path, int fd, const char *name, const voi<br>
                    pseudo_debug(PDBGF_XATTR, "setxattr(%s [fd %d], %s
            =&gt; '%.*s')\n",<br>
                            path ? path : "&lt;no path&gt;", fd, name,
            (int) size, (char *) value);<br>
            <br>
            +       /* Filter out erroneous sizes for POSIX ACL<br>
            +        *  see posix_acl_xattr_count in
            include/linux/posix_acl_xattr.<wbr>h of Linux source code */<br>
            +       if (!strcmp(name, "system.posix_acl_access") ||
            !strcmp(name, "system.posix_acl_default")) {<br>
            +               // ACL is corrupt, issue an error<br>
            +               if(size &lt; sizeof(acl_header) || (size -
            sizeof(acl_header)) % sizeof(acl_entry) != 0) {<br>
            +                       errno = EINVAL;<br>
            +                       return -1;<br>
            +               }<br>
            +<br>
            +               // ACL is empty, do nothing<br>
            +               if((size - sizeof(acl_header)) /
            sizeof(acl_entry) == 0) {<br>
            +                       return 0;<br>
            +               }<br>
            +       }<br>
                    /* this may be a plain chmod */<br>
                    if (!strcmp(name, "system.posix_acl_access")) {<br>
                            int extra;<br>
                            int mode;<br>
                            int entries = (size - sizeof(acl_header)) /
            sizeof(acl_entry);<br>
            -               if (!posix_permissions(value, entries,
            &amp;extra, &amp;mode)) {<br>
            +               int res = posix_permissions(value, entries,
            &amp;extra, &amp;mode);<br>
            +               if (res == 0) {<br>
                                    pseudo_debug(PDBGF_XATTR,
            "posix_acl_access translated to mode %04o. Remaining
            attribute(s): %d.\n",<br>
                                            mode, extra);<br>
                                    buf.st_mode = mode;<br>
            @@ -164,8 +179,12 @@ static int shared_setxattr(const char
            *path, int fd, const char *name, const voi<br>
                                    if (!extra) {<br>
                                            return 0;<br>
                                    }<br>
            +               } else if (res == -1) {<br>
            +                       errno = EOPNOTSUPP;<br>
            +                       return -1;<br>
                            }<br>
                    }<br>
            +<br>
                    if (!strcmp(name, "user.pseudo_data")) {<br>
                            pseudo_debug(PDBGF_XATTR | PDBGF_XATTRDB,
            "user.pseudo_data xattribute does not get to go in
            database.\n");<br>
                            return -1;<br>
            <span class="HOEnZb"><font color="#888888">--<br>
                2.11.1<br>
                <br>
                --<br>
                ______________________________<wbr>_________________<br>
                poky mailing list<br>
                <a moz-do-not-send="true"
                  href="mailto:poky@yoctoproject.org">poky@yoctoproject.org</a><br>
                <a moz-do-not-send="true"
                  href="https://lists.yoctoproject.org/listinfo/poky"
                  rel="noreferrer" target="_blank">https://lists.yoctoproject.<wbr>org/listinfo/poky</a><br>
              </font></span></blockquote>
        </div>
        <br>
      </div>
    </blockquote>
    <br>
    <pre class="moz-signature" cols="72">-- 
Anton Gerasimov, ATS Advanced Telematic Systems GmbH
Kantstrasse 162, 10623 Berlin
Managing Directors: Dirk Pöschl, Armin G. Schmidt
Register Court: HRB 151501 B, Amtsgericht Charlottenburg</pre>
  </body>
</html>

--------------706354967DCB21F63B5154F0--
