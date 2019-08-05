Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 290B1E00D46; Mon,  5 Aug 2019 04:03:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (alex.kanavin[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.217.68 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-vs1-f68.google.com (mail-vs1-f68.google.com
	[209.85.217.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A3E6DE008F2
	for <poky@yoctoproject.org>; Mon,  5 Aug 2019 04:03:35 -0700 (PDT)
Received: by mail-vs1-f68.google.com with SMTP id u3so55617966vsh.6
	for <poky@yoctoproject.org>; Mon, 05 Aug 2019 04:03:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=55+prya5C7eFh5/5QxT81xrBA6rcC4XpMY/tDR5QEF4=;
	b=qAxI9Tbe+4Ultnte3mUABOmP/6cgASKBAZ33ThiXZ0S3hdfpASNqjz6SkQfEvsIFBy
	mbSf1y/QhqLwkLpoT1sXoJLYES4btU5VGjn9DrysBNC6WsDfaVfcYJDUUmxIQY7CY2yY
	HsK0an+f3GjA2UchIhmnDg3n03BbRwJW+YeicOwvj/7nWopGxXU4NAcDI+Kbv/ZU2OQq
	+81H+dDqnPPvQpAp1UlweWZQZ87JQFII0edpzSNQufud3/sjN/tUb+XxLsridsnJ6s4C
	Sw8XBAtBewFuacCCQJrMaH51TpBqj2qMHNO3U0JTuvQdnT/+4TxdL5k/hdbhKwdPW9/h
	I5jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=55+prya5C7eFh5/5QxT81xrBA6rcC4XpMY/tDR5QEF4=;
	b=JyIxChstqCBBAWjiU1p8cNSFoTHHAOQm2EBkhvv1ZHrJTIKRPEDr/i4CL2IISjX1oU
	rrdUpVFMw0NbE5a82QRLzO80kXdzOclEog6+8k/UIJVf8hGXM9ZUllJmL+OzSiCYC9Qr
	hmWQidSJ5LTkFjMCvRzlUz15YeTiQqZf0FnEVH1SNqUM5OzPtzBfcQiFSUG9fdVx9SMn
	naQl799Iz8ASd3iovIO25brwI4Ey69kwYmvgjRvGzeMbG5+2fXm+CRq8u6L5CR/qaKL9
	2ZkAqzfkXJx2Dq2e3eD0ynlw1DD+vWvaofiUTM9TwRgEQWmacN9QVswBFRUNKlgzDOzQ
	Gyug==
X-Gm-Message-State: APjAAAXvR7VbK27Jrp587GiyezbaU4bbgbW5qZHIwc7HXN85cKBy3Xik
	5Lg1/e7j5shgM75m/LTMQw3kzHO7nz/InoHefbk=
X-Google-Smtp-Source: APXvYqyo0LLvkgoQHjyBhoShWqxXylwxOU3gWkKfmuQ/lb2LgT8051Vyh8PLjQ3+oVyg1FjHnZp8T1arBqT99CVpzXc=
X-Received: by 2002:a67:e8c3:: with SMTP id y3mr90630215vsn.94.1565003014807; 
	Mon, 05 Aug 2019 04:03:34 -0700 (PDT)
MIME-Version: 1.0
References: <20190805051628.6341-1-eduardo.abinader@gmail.com>
In-Reply-To: <20190805051628.6341-1-eduardo.abinader@gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 5 Aug 2019 13:03:23 +0200
Message-ID: <CANNYZj-wCxeKi6O3ciZVB=WFULjk=38V0Rdj9aH3WDGsu1opfA@mail.gmail.com>
To: Eduardo Abinader <eduardoabinader@gmail.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: [PATCH] devtool: add ssh key option do deploy-target
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
X-List-Received-Date: Mon, 05 Aug 2019 11:03:36 -0000
Content-Type: multipart/alternative; boundary="000000000000c526e3058f5ca852"

--000000000000c526e3058f5ca852
Content-Type: text/plain; charset="UTF-8"

This should go to the openembedded-core mailing list.

Alex

On Mon, 5 Aug 2019 at 07:16, Eduardo Abinader <eduardoabinader@gmail.com>
wrote:

> Signed-off-by: Eduardo Abinader <eduardo.abinader@gmail.com>
> ---
>  scripts/lib/devtool/deploy.py | 8 ++++++++
>  1 file changed, 8 insertions(+)
>
> diff --git a/scripts/lib/devtool/deploy.py b/scripts/lib/devtool/deploy.py
> index d1ce2309f9..6a997735fc 100644
> --- a/scripts/lib/devtool/deploy.py
> +++ b/scripts/lib/devtool/deploy.py
> @@ -212,6 +212,9 @@ def deploy(args, config, basepath, workspace):
>              scp_port = "-P %s" % args.port
>              ssh_port = "-p %s" % args.port
>
> +        if args.key:
> +            extraoptions += ' -i %s' % args.key
> +
>          # In order to delete previously deployed files and have the
> manifest file on
>          # the target, we write out a shell script and then copy it to the
> target
>          # so we can then run it (piping tar output to it).
> @@ -326,6 +329,8 @@ def register_commands(subparsers, context):
>      parser_deploy.add_argument('--no-check-space', help='Do not check for
> available space before deploying', action='store_true')
>      parser_deploy.add_argument('-e', '--ssh-exec', help='Executable to
> use in place of ssh')
>      parser_deploy.add_argument('-P', '--port', help='Specify port to use
> for connection to the target')
> +    parser_deploy.add_argument('-I', '--key',
> +                               help='Specifiy ssh private key for
> connection to the target')
>
>      strip_opts =
> parser_deploy.add_mutually_exclusive_group(required=False)
>      strip_opts.add_argument('-S', '--strip',
> @@ -349,4 +354,7 @@ def register_commands(subparsers, context):
>      parser_undeploy.add_argument('-n', '--dry-run', help='List files to
> be undeployed only', action='store_true')
>      parser_undeploy.add_argument('-e', '--ssh-exec', help='Executable to
> use in place of ssh')
>      parser_undeploy.add_argument('-P', '--port', help='Specify port to
> use for connection to the target')
> +    parser_undeploy.add_argument('-I', '--key',
> +                               help='Specifiy ssh private key for
> connection to the target')
> +
>      parser_undeploy.set_defaults(func=undeploy)
> --
> 2.20.1
>
> --
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>

--000000000000c526e3058f5ca852
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>This should go to the openembedded-core mailing list.=
</div><div><br></div><div>Alex<br></div></div><br><div class=3D"gmail_quote=
"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, 5 Aug 2019 at 07:16, Eduard=
o Abinader &lt;<a href=3D"mailto:eduardoabinader@gmail.com">eduardoabinader=
@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">Signed-off-by: Eduardo Abinader &lt;<a href=3D"mailto:eduardo.ab=
inader@gmail.com" target=3D"_blank">eduardo.abinader@gmail.com</a>&gt;<br>
---<br>
=C2=A0scripts/lib/devtool/deploy.py | 8 ++++++++<br>
=C2=A01 file changed, 8 insertions(+)<br>
<br>
diff --git a/scripts/lib/devtool/deploy.py b/scripts/lib/devtool/deploy.py<=
br>
index d1ce2309f9..6a997735fc 100644<br>
--- a/scripts/lib/devtool/deploy.py<br>
+++ b/scripts/lib/devtool/deploy.py<br>
@@ -212,6 +212,9 @@ def deploy(args, config, basepath, workspace):<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0scp_port =3D &quot;-P %s&qu=
ot; % args.port<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ssh_port =3D &quot;-p %s&qu=
ot; % args.port<br>
<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 if args.key:<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 extraoptions +=3D &#39; -i %s&#3=
9; % args.key<br>
+<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# In order to delete previously deployed =
files and have the manifest file on<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# the target, we write out a shell script=
 and then copy it to the target<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# so we can then run it (piping tar outpu=
t to it).<br>
@@ -326,6 +329,8 @@ def register_commands(subparsers, context):<br>
=C2=A0 =C2=A0 =C2=A0parser_deploy.add_argument(&#39;--no-check-space&#39;, =
help=3D&#39;Do not check for available space before deploying&#39;, action=
=3D&#39;store_true&#39;)<br>
=C2=A0 =C2=A0 =C2=A0parser_deploy.add_argument(&#39;-e&#39;, &#39;--ssh-exe=
c&#39;, help=3D&#39;Executable to use in place of ssh&#39;)<br>
=C2=A0 =C2=A0 =C2=A0parser_deploy.add_argument(&#39;-P&#39;, &#39;--port&#3=
9;, help=3D&#39;Specify port to use for connection to the target&#39;)<br>
+=C2=A0 =C2=A0 parser_deploy.add_argument(&#39;-I&#39;, &#39;--key&#39;,<br=
>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0help=3D&#39;Specifiy ssh private key =
for connection to the target&#39;)<br>
<br>
=C2=A0 =C2=A0 =C2=A0strip_opts =3D parser_deploy.add_mutually_exclusive_gro=
up(required=3DFalse)<br>
=C2=A0 =C2=A0 =C2=A0strip_opts.add_argument(&#39;-S&#39;, &#39;--strip&#39;=
,<br>
@@ -349,4 +354,7 @@ def register_commands(subparsers, context):<br>
=C2=A0 =C2=A0 =C2=A0parser_undeploy.add_argument(&#39;-n&#39;, &#39;--dry-r=
un&#39;, help=3D&#39;List files to be undeployed only&#39;, action=3D&#39;s=
tore_true&#39;)<br>
=C2=A0 =C2=A0 =C2=A0parser_undeploy.add_argument(&#39;-e&#39;, &#39;--ssh-e=
xec&#39;, help=3D&#39;Executable to use in place of ssh&#39;)<br>
=C2=A0 =C2=A0 =C2=A0parser_undeploy.add_argument(&#39;-P&#39;, &#39;--port&=
#39;, help=3D&#39;Specify port to use for connection to the target&#39;)<br=
>
+=C2=A0 =C2=A0 parser_undeploy.add_argument(&#39;-I&#39;, &#39;--key&#39;,<=
br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0help=3D&#39;Specifiy ssh private key =
for connection to the target&#39;)<br>
+<br>
=C2=A0 =C2=A0 =C2=A0parser_undeploy.set_defaults(func=3Dundeploy)<br>
-- <br>
2.20.1<br>
<br>
-- <br>
_______________________________________________<br>
poky mailing list<br>
<a href=3D"mailto:poky@yoctoproject.org" target=3D"_blank">poky@yoctoprojec=
t.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/poky" rel=3D"noreferrer"=
 target=3D"_blank">https://lists.yoctoproject.org/listinfo/poky</a><br>
</blockquote></div>

--000000000000c526e3058f5ca852--
